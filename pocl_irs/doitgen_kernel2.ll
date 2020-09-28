; ModuleID = './EC/AOFIJPJJDGBDGAAGPPJIBOAFNDFEMPBMCHKBI/doitgen_kernel2/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_doitgen_kernel2(i32 %0, i32 %1, i32 %2, float* nocapture %3, float* nocapture readnone %4, float* nocapture readonly %5, i32 %6, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %7, i64 %8, i64 %9, i64 %10) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %8, 5
  %mul3.i.i = shl i64 %9, 3
  %mul6.i = mul i32 %6, %1
  %conv.i.us = trunc i64 %mul.i.i to i32
  %cmp.i.us = icmp slt i32 %conv.i.us, %2
  %12 = trunc i64 %mul.i.i to i32
  %conv.i.us.1 = or i32 %12, 1
  %cmp.i.us.1 = icmp slt i32 %conv.i.us.1, %2
  %13 = trunc i64 %mul.i.i to i32
  %conv.i.us.2 = or i32 %13, 2
  %cmp.i.us.2 = icmp slt i32 %conv.i.us.2, %2
  %14 = trunc i64 %mul.i.i to i32
  %conv.i.us.3 = or i32 %14, 3
  %cmp.i.us.3 = icmp slt i32 %conv.i.us.3, %2
  %15 = trunc i64 %mul.i.i to i32
  %conv.i.us.4 = or i32 %15, 4
  %cmp.i.us.4 = icmp slt i32 %conv.i.us.4, %2
  %16 = trunc i64 %mul.i.i to i32
  %conv.i.us.5 = or i32 %16, 5
  %cmp.i.us.5 = icmp slt i32 %conv.i.us.5, %2
  %17 = trunc i64 %mul.i.i to i32
  %conv.i.us.6 = or i32 %17, 6
  %cmp.i.us.6 = icmp slt i32 %conv.i.us.6, %2
  %18 = trunc i64 %mul.i.i to i32
  %conv.i.us.7 = or i32 %18, 7
  %cmp.i.us.7 = icmp slt i32 %conv.i.us.7, %2
  %19 = trunc i64 %mul.i.i to i32
  %conv.i.us.8 = or i32 %19, 8
  %cmp.i.us.8 = icmp slt i32 %conv.i.us.8, %2
  %20 = trunc i64 %mul.i.i to i32
  %conv.i.us.9 = or i32 %20, 9
  %cmp.i.us.9 = icmp slt i32 %conv.i.us.9, %2
  %21 = trunc i64 %mul.i.i to i32
  %conv.i.us.10 = or i32 %21, 10
  %cmp.i.us.10 = icmp slt i32 %conv.i.us.10, %2
  %22 = trunc i64 %mul.i.i to i32
  %conv.i.us.11 = or i32 %22, 11
  %cmp.i.us.11 = icmp slt i32 %conv.i.us.11, %2
  %23 = trunc i64 %mul.i.i to i32
  %conv.i.us.12 = or i32 %23, 12
  %cmp.i.us.12 = icmp slt i32 %conv.i.us.12, %2
  %24 = trunc i64 %mul.i.i to i32
  %conv.i.us.13 = or i32 %24, 13
  %cmp.i.us.13 = icmp slt i32 %conv.i.us.13, %2
  %25 = trunc i64 %mul.i.i to i32
  %conv.i.us.14 = or i32 %25, 14
  %cmp.i.us.14 = icmp slt i32 %conv.i.us.14, %2
  %26 = trunc i64 %mul.i.i to i32
  %conv.i.us.15 = or i32 %26, 15
  %cmp.i.us.15 = icmp slt i32 %conv.i.us.15, %2
  %27 = trunc i64 %mul.i.i to i32
  %conv.i.us.16 = or i32 %27, 16
  %cmp.i.us.16 = icmp slt i32 %conv.i.us.16, %2
  %28 = trunc i64 %mul.i.i to i32
  %conv.i.us.17 = or i32 %28, 17
  %cmp.i.us.17 = icmp slt i32 %conv.i.us.17, %2
  %29 = trunc i64 %mul.i.i to i32
  %conv.i.us.18 = or i32 %29, 18
  %cmp.i.us.18 = icmp slt i32 %conv.i.us.18, %2
  %30 = trunc i64 %mul.i.i to i32
  %conv.i.us.19 = or i32 %30, 19
  %cmp.i.us.19 = icmp slt i32 %conv.i.us.19, %2
  %31 = trunc i64 %mul.i.i to i32
  %conv.i.us.20 = or i32 %31, 20
  %cmp.i.us.20 = icmp slt i32 %conv.i.us.20, %2
  %32 = trunc i64 %mul.i.i to i32
  %conv.i.us.21 = or i32 %32, 21
  %cmp.i.us.21 = icmp slt i32 %conv.i.us.21, %2
  %33 = trunc i64 %mul.i.i to i32
  %conv.i.us.22 = or i32 %33, 22
  %cmp.i.us.22 = icmp slt i32 %conv.i.us.22, %2
  %34 = trunc i64 %mul.i.i to i32
  %conv.i.us.23 = or i32 %34, 23
  %cmp.i.us.23 = icmp slt i32 %conv.i.us.23, %2
  %35 = trunc i64 %mul.i.i to i32
  %conv.i.us.24 = or i32 %35, 24
  %cmp.i.us.24 = icmp slt i32 %conv.i.us.24, %2
  %36 = trunc i64 %mul.i.i to i32
  %conv.i.us.25 = or i32 %36, 25
  %cmp.i.us.25 = icmp slt i32 %conv.i.us.25, %2
  %37 = trunc i64 %mul.i.i to i32
  %conv.i.us.26 = or i32 %37, 26
  %cmp.i.us.26 = icmp slt i32 %conv.i.us.26, %2
  %38 = trunc i64 %mul.i.i to i32
  %conv.i.us.27 = or i32 %38, 27
  %cmp.i.us.27 = icmp slt i32 %conv.i.us.27, %2
  %39 = trunc i64 %mul.i.i to i32
  %conv.i.us.28 = or i32 %39, 28
  %cmp.i.us.28 = icmp slt i32 %conv.i.us.28, %2
  %40 = trunc i64 %mul.i.i to i32
  %conv.i.us.29 = or i32 %40, 29
  %cmp.i.us.29 = icmp slt i32 %conv.i.us.29, %2
  %41 = trunc i64 %mul.i.i to i32
  %conv.i.us.30 = or i32 %41, 30
  %cmp.i.us.30 = icmp slt i32 %conv.i.us.30, %2
  %42 = trunc i64 %mul.i.i to i32
  %conv.i.us.31 = or i32 %42, 31
  %cmp.i.us.31 = icmp slt i32 %conv.i.us.31, %2
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %11
  %_local_id_y.0 = phi i64 [ 0, %11 ], [ %46, %pregion_for_end.i ]
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %cmp4.i = icmp slt i32 %conv2.i, %1
  %reass.add.i = add i32 %mul6.i, %conv2.i
  %reass.mul.i = mul i32 %reass.add.i, %2
  br i1 %cmp4.i, label %pregion_for_entry.entry.i.us.preheader, label %pregion_for_end.i

pregion_for_entry.entry.i.us.preheader:           ; preds = %pregion_for_entry.pregion_for_init.i
  br i1 %cmp.i.us, label %if.then.i.us, label %if.end.r_exit.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us.preheader
  %add8.i.us = add i32 %reass.mul.i, %conv.i.us
  %idxprom.i.us = sext i32 %add8.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %5, i64 %idxprom.i.us
  %43 = bitcast float* %arrayidx.i.us to i32*
  %44 = load i32, i32* %43, align 4, !tbaa !12
  %arrayidx15.i.us = getelementptr inbounds float, float* %3, i64 %idxprom.i.us
  %45 = bitcast float* %arrayidx15.i.us to i32*
  store i32 %44, i32* %45, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us

if.end.r_exit.i.us:                               ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us.preheader
  br i1 %cmp.i.us.1, label %if.then.i.us.1, label %if.end.r_exit.i.us.1

pregion_for_end.i:                                ; preds = %if.then.i.us.31, %if.end.r_exit.i.us.30, %pregion_for_entry.pregion_for_init.i
  %46 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond.not = icmp eq i64 %46, 8
  br i1 %exitcond.not, label %doitgen_kernel2.exit, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !19

doitgen_kernel2.exit:                             ; preds = %pregion_for_end.i
  ret void

if.then.i.us.1:                                   ; preds = %if.end.r_exit.i.us
  %add8.i.us.1 = add i32 %reass.mul.i, %conv.i.us.1
  %idxprom.i.us.1 = sext i32 %add8.i.us.1 to i64
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.1
  %47 = bitcast float* %arrayidx.i.us.1 to i32*
  %48 = load i32, i32* %47, align 4, !tbaa !12
  %arrayidx15.i.us.1 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.1
  %49 = bitcast float* %arrayidx15.i.us.1 to i32*
  store i32 %48, i32* %49, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.1

if.end.r_exit.i.us.1:                             ; preds = %if.then.i.us.1, %if.end.r_exit.i.us
  br i1 %cmp.i.us.2, label %if.then.i.us.2, label %if.end.r_exit.i.us.2

if.then.i.us.2:                                   ; preds = %if.end.r_exit.i.us.1
  %add8.i.us.2 = add i32 %reass.mul.i, %conv.i.us.2
  %idxprom.i.us.2 = sext i32 %add8.i.us.2 to i64
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.2
  %50 = bitcast float* %arrayidx.i.us.2 to i32*
  %51 = load i32, i32* %50, align 4, !tbaa !12
  %arrayidx15.i.us.2 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.2
  %52 = bitcast float* %arrayidx15.i.us.2 to i32*
  store i32 %51, i32* %52, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.2

if.end.r_exit.i.us.2:                             ; preds = %if.then.i.us.2, %if.end.r_exit.i.us.1
  br i1 %cmp.i.us.3, label %if.then.i.us.3, label %if.end.r_exit.i.us.3

if.then.i.us.3:                                   ; preds = %if.end.r_exit.i.us.2
  %add8.i.us.3 = add i32 %reass.mul.i, %conv.i.us.3
  %idxprom.i.us.3 = sext i32 %add8.i.us.3 to i64
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.3
  %53 = bitcast float* %arrayidx.i.us.3 to i32*
  %54 = load i32, i32* %53, align 4, !tbaa !12
  %arrayidx15.i.us.3 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.3
  %55 = bitcast float* %arrayidx15.i.us.3 to i32*
  store i32 %54, i32* %55, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.3

if.end.r_exit.i.us.3:                             ; preds = %if.then.i.us.3, %if.end.r_exit.i.us.2
  br i1 %cmp.i.us.4, label %if.then.i.us.4, label %if.end.r_exit.i.us.4

if.then.i.us.4:                                   ; preds = %if.end.r_exit.i.us.3
  %add8.i.us.4 = add i32 %reass.mul.i, %conv.i.us.4
  %idxprom.i.us.4 = sext i32 %add8.i.us.4 to i64
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.4
  %56 = bitcast float* %arrayidx.i.us.4 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !12
  %arrayidx15.i.us.4 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.4
  %58 = bitcast float* %arrayidx15.i.us.4 to i32*
  store i32 %57, i32* %58, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.4

if.end.r_exit.i.us.4:                             ; preds = %if.then.i.us.4, %if.end.r_exit.i.us.3
  br i1 %cmp.i.us.5, label %if.then.i.us.5, label %if.end.r_exit.i.us.5

if.then.i.us.5:                                   ; preds = %if.end.r_exit.i.us.4
  %add8.i.us.5 = add i32 %reass.mul.i, %conv.i.us.5
  %idxprom.i.us.5 = sext i32 %add8.i.us.5 to i64
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.5
  %59 = bitcast float* %arrayidx.i.us.5 to i32*
  %60 = load i32, i32* %59, align 4, !tbaa !12
  %arrayidx15.i.us.5 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.5
  %61 = bitcast float* %arrayidx15.i.us.5 to i32*
  store i32 %60, i32* %61, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.5

if.end.r_exit.i.us.5:                             ; preds = %if.then.i.us.5, %if.end.r_exit.i.us.4
  br i1 %cmp.i.us.6, label %if.then.i.us.6, label %if.end.r_exit.i.us.6

if.then.i.us.6:                                   ; preds = %if.end.r_exit.i.us.5
  %add8.i.us.6 = add i32 %reass.mul.i, %conv.i.us.6
  %idxprom.i.us.6 = sext i32 %add8.i.us.6 to i64
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.6
  %62 = bitcast float* %arrayidx.i.us.6 to i32*
  %63 = load i32, i32* %62, align 4, !tbaa !12
  %arrayidx15.i.us.6 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.6
  %64 = bitcast float* %arrayidx15.i.us.6 to i32*
  store i32 %63, i32* %64, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.6

if.end.r_exit.i.us.6:                             ; preds = %if.then.i.us.6, %if.end.r_exit.i.us.5
  br i1 %cmp.i.us.7, label %if.then.i.us.7, label %if.end.r_exit.i.us.7

if.then.i.us.7:                                   ; preds = %if.end.r_exit.i.us.6
  %add8.i.us.7 = add i32 %reass.mul.i, %conv.i.us.7
  %idxprom.i.us.7 = sext i32 %add8.i.us.7 to i64
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.7
  %65 = bitcast float* %arrayidx.i.us.7 to i32*
  %66 = load i32, i32* %65, align 4, !tbaa !12
  %arrayidx15.i.us.7 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.7
  %67 = bitcast float* %arrayidx15.i.us.7 to i32*
  store i32 %66, i32* %67, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.7

if.end.r_exit.i.us.7:                             ; preds = %if.then.i.us.7, %if.end.r_exit.i.us.6
  br i1 %cmp.i.us.8, label %if.then.i.us.8, label %if.end.r_exit.i.us.8

if.then.i.us.8:                                   ; preds = %if.end.r_exit.i.us.7
  %add8.i.us.8 = add i32 %reass.mul.i, %conv.i.us.8
  %idxprom.i.us.8 = sext i32 %add8.i.us.8 to i64
  %arrayidx.i.us.8 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.8
  %68 = bitcast float* %arrayidx.i.us.8 to i32*
  %69 = load i32, i32* %68, align 4, !tbaa !12
  %arrayidx15.i.us.8 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.8
  %70 = bitcast float* %arrayidx15.i.us.8 to i32*
  store i32 %69, i32* %70, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.8

if.end.r_exit.i.us.8:                             ; preds = %if.then.i.us.8, %if.end.r_exit.i.us.7
  br i1 %cmp.i.us.9, label %if.then.i.us.9, label %if.end.r_exit.i.us.9

if.then.i.us.9:                                   ; preds = %if.end.r_exit.i.us.8
  %add8.i.us.9 = add i32 %reass.mul.i, %conv.i.us.9
  %idxprom.i.us.9 = sext i32 %add8.i.us.9 to i64
  %arrayidx.i.us.9 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.9
  %71 = bitcast float* %arrayidx.i.us.9 to i32*
  %72 = load i32, i32* %71, align 4, !tbaa !12
  %arrayidx15.i.us.9 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.9
  %73 = bitcast float* %arrayidx15.i.us.9 to i32*
  store i32 %72, i32* %73, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.9

if.end.r_exit.i.us.9:                             ; preds = %if.then.i.us.9, %if.end.r_exit.i.us.8
  br i1 %cmp.i.us.10, label %if.then.i.us.10, label %if.end.r_exit.i.us.10

if.then.i.us.10:                                  ; preds = %if.end.r_exit.i.us.9
  %add8.i.us.10 = add i32 %reass.mul.i, %conv.i.us.10
  %idxprom.i.us.10 = sext i32 %add8.i.us.10 to i64
  %arrayidx.i.us.10 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.10
  %74 = bitcast float* %arrayidx.i.us.10 to i32*
  %75 = load i32, i32* %74, align 4, !tbaa !12
  %arrayidx15.i.us.10 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.10
  %76 = bitcast float* %arrayidx15.i.us.10 to i32*
  store i32 %75, i32* %76, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.10

if.end.r_exit.i.us.10:                            ; preds = %if.then.i.us.10, %if.end.r_exit.i.us.9
  br i1 %cmp.i.us.11, label %if.then.i.us.11, label %if.end.r_exit.i.us.11

if.then.i.us.11:                                  ; preds = %if.end.r_exit.i.us.10
  %add8.i.us.11 = add i32 %reass.mul.i, %conv.i.us.11
  %idxprom.i.us.11 = sext i32 %add8.i.us.11 to i64
  %arrayidx.i.us.11 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.11
  %77 = bitcast float* %arrayidx.i.us.11 to i32*
  %78 = load i32, i32* %77, align 4, !tbaa !12
  %arrayidx15.i.us.11 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.11
  %79 = bitcast float* %arrayidx15.i.us.11 to i32*
  store i32 %78, i32* %79, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.11

if.end.r_exit.i.us.11:                            ; preds = %if.then.i.us.11, %if.end.r_exit.i.us.10
  br i1 %cmp.i.us.12, label %if.then.i.us.12, label %if.end.r_exit.i.us.12

if.then.i.us.12:                                  ; preds = %if.end.r_exit.i.us.11
  %add8.i.us.12 = add i32 %reass.mul.i, %conv.i.us.12
  %idxprom.i.us.12 = sext i32 %add8.i.us.12 to i64
  %arrayidx.i.us.12 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.12
  %80 = bitcast float* %arrayidx.i.us.12 to i32*
  %81 = load i32, i32* %80, align 4, !tbaa !12
  %arrayidx15.i.us.12 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.12
  %82 = bitcast float* %arrayidx15.i.us.12 to i32*
  store i32 %81, i32* %82, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.12

if.end.r_exit.i.us.12:                            ; preds = %if.then.i.us.12, %if.end.r_exit.i.us.11
  br i1 %cmp.i.us.13, label %if.then.i.us.13, label %if.end.r_exit.i.us.13

if.then.i.us.13:                                  ; preds = %if.end.r_exit.i.us.12
  %add8.i.us.13 = add i32 %reass.mul.i, %conv.i.us.13
  %idxprom.i.us.13 = sext i32 %add8.i.us.13 to i64
  %arrayidx.i.us.13 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.13
  %83 = bitcast float* %arrayidx.i.us.13 to i32*
  %84 = load i32, i32* %83, align 4, !tbaa !12
  %arrayidx15.i.us.13 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.13
  %85 = bitcast float* %arrayidx15.i.us.13 to i32*
  store i32 %84, i32* %85, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.13

if.end.r_exit.i.us.13:                            ; preds = %if.then.i.us.13, %if.end.r_exit.i.us.12
  br i1 %cmp.i.us.14, label %if.then.i.us.14, label %if.end.r_exit.i.us.14

if.then.i.us.14:                                  ; preds = %if.end.r_exit.i.us.13
  %add8.i.us.14 = add i32 %reass.mul.i, %conv.i.us.14
  %idxprom.i.us.14 = sext i32 %add8.i.us.14 to i64
  %arrayidx.i.us.14 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.14
  %86 = bitcast float* %arrayidx.i.us.14 to i32*
  %87 = load i32, i32* %86, align 4, !tbaa !12
  %arrayidx15.i.us.14 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.14
  %88 = bitcast float* %arrayidx15.i.us.14 to i32*
  store i32 %87, i32* %88, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.14

if.end.r_exit.i.us.14:                            ; preds = %if.then.i.us.14, %if.end.r_exit.i.us.13
  br i1 %cmp.i.us.15, label %if.then.i.us.15, label %if.end.r_exit.i.us.15

if.then.i.us.15:                                  ; preds = %if.end.r_exit.i.us.14
  %add8.i.us.15 = add i32 %reass.mul.i, %conv.i.us.15
  %idxprom.i.us.15 = sext i32 %add8.i.us.15 to i64
  %arrayidx.i.us.15 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.15
  %89 = bitcast float* %arrayidx.i.us.15 to i32*
  %90 = load i32, i32* %89, align 4, !tbaa !12
  %arrayidx15.i.us.15 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.15
  %91 = bitcast float* %arrayidx15.i.us.15 to i32*
  store i32 %90, i32* %91, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.15

if.end.r_exit.i.us.15:                            ; preds = %if.then.i.us.15, %if.end.r_exit.i.us.14
  br i1 %cmp.i.us.16, label %if.then.i.us.16, label %if.end.r_exit.i.us.16

if.then.i.us.16:                                  ; preds = %if.end.r_exit.i.us.15
  %add8.i.us.16 = add i32 %reass.mul.i, %conv.i.us.16
  %idxprom.i.us.16 = sext i32 %add8.i.us.16 to i64
  %arrayidx.i.us.16 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.16
  %92 = bitcast float* %arrayidx.i.us.16 to i32*
  %93 = load i32, i32* %92, align 4, !tbaa !12
  %arrayidx15.i.us.16 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.16
  %94 = bitcast float* %arrayidx15.i.us.16 to i32*
  store i32 %93, i32* %94, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.16

if.end.r_exit.i.us.16:                            ; preds = %if.then.i.us.16, %if.end.r_exit.i.us.15
  br i1 %cmp.i.us.17, label %if.then.i.us.17, label %if.end.r_exit.i.us.17

if.then.i.us.17:                                  ; preds = %if.end.r_exit.i.us.16
  %add8.i.us.17 = add i32 %reass.mul.i, %conv.i.us.17
  %idxprom.i.us.17 = sext i32 %add8.i.us.17 to i64
  %arrayidx.i.us.17 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.17
  %95 = bitcast float* %arrayidx.i.us.17 to i32*
  %96 = load i32, i32* %95, align 4, !tbaa !12
  %arrayidx15.i.us.17 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.17
  %97 = bitcast float* %arrayidx15.i.us.17 to i32*
  store i32 %96, i32* %97, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.17

if.end.r_exit.i.us.17:                            ; preds = %if.then.i.us.17, %if.end.r_exit.i.us.16
  br i1 %cmp.i.us.18, label %if.then.i.us.18, label %if.end.r_exit.i.us.18

if.then.i.us.18:                                  ; preds = %if.end.r_exit.i.us.17
  %add8.i.us.18 = add i32 %reass.mul.i, %conv.i.us.18
  %idxprom.i.us.18 = sext i32 %add8.i.us.18 to i64
  %arrayidx.i.us.18 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.18
  %98 = bitcast float* %arrayidx.i.us.18 to i32*
  %99 = load i32, i32* %98, align 4, !tbaa !12
  %arrayidx15.i.us.18 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.18
  %100 = bitcast float* %arrayidx15.i.us.18 to i32*
  store i32 %99, i32* %100, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.18

if.end.r_exit.i.us.18:                            ; preds = %if.then.i.us.18, %if.end.r_exit.i.us.17
  br i1 %cmp.i.us.19, label %if.then.i.us.19, label %if.end.r_exit.i.us.19

if.then.i.us.19:                                  ; preds = %if.end.r_exit.i.us.18
  %add8.i.us.19 = add i32 %reass.mul.i, %conv.i.us.19
  %idxprom.i.us.19 = sext i32 %add8.i.us.19 to i64
  %arrayidx.i.us.19 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.19
  %101 = bitcast float* %arrayidx.i.us.19 to i32*
  %102 = load i32, i32* %101, align 4, !tbaa !12
  %arrayidx15.i.us.19 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.19
  %103 = bitcast float* %arrayidx15.i.us.19 to i32*
  store i32 %102, i32* %103, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.19

if.end.r_exit.i.us.19:                            ; preds = %if.then.i.us.19, %if.end.r_exit.i.us.18
  br i1 %cmp.i.us.20, label %if.then.i.us.20, label %if.end.r_exit.i.us.20

if.then.i.us.20:                                  ; preds = %if.end.r_exit.i.us.19
  %add8.i.us.20 = add i32 %reass.mul.i, %conv.i.us.20
  %idxprom.i.us.20 = sext i32 %add8.i.us.20 to i64
  %arrayidx.i.us.20 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.20
  %104 = bitcast float* %arrayidx.i.us.20 to i32*
  %105 = load i32, i32* %104, align 4, !tbaa !12
  %arrayidx15.i.us.20 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.20
  %106 = bitcast float* %arrayidx15.i.us.20 to i32*
  store i32 %105, i32* %106, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.20

if.end.r_exit.i.us.20:                            ; preds = %if.then.i.us.20, %if.end.r_exit.i.us.19
  br i1 %cmp.i.us.21, label %if.then.i.us.21, label %if.end.r_exit.i.us.21

if.then.i.us.21:                                  ; preds = %if.end.r_exit.i.us.20
  %add8.i.us.21 = add i32 %reass.mul.i, %conv.i.us.21
  %idxprom.i.us.21 = sext i32 %add8.i.us.21 to i64
  %arrayidx.i.us.21 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.21
  %107 = bitcast float* %arrayidx.i.us.21 to i32*
  %108 = load i32, i32* %107, align 4, !tbaa !12
  %arrayidx15.i.us.21 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.21
  %109 = bitcast float* %arrayidx15.i.us.21 to i32*
  store i32 %108, i32* %109, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.21

if.end.r_exit.i.us.21:                            ; preds = %if.then.i.us.21, %if.end.r_exit.i.us.20
  br i1 %cmp.i.us.22, label %if.then.i.us.22, label %if.end.r_exit.i.us.22

if.then.i.us.22:                                  ; preds = %if.end.r_exit.i.us.21
  %add8.i.us.22 = add i32 %reass.mul.i, %conv.i.us.22
  %idxprom.i.us.22 = sext i32 %add8.i.us.22 to i64
  %arrayidx.i.us.22 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.22
  %110 = bitcast float* %arrayidx.i.us.22 to i32*
  %111 = load i32, i32* %110, align 4, !tbaa !12
  %arrayidx15.i.us.22 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.22
  %112 = bitcast float* %arrayidx15.i.us.22 to i32*
  store i32 %111, i32* %112, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.22

if.end.r_exit.i.us.22:                            ; preds = %if.then.i.us.22, %if.end.r_exit.i.us.21
  br i1 %cmp.i.us.23, label %if.then.i.us.23, label %if.end.r_exit.i.us.23

if.then.i.us.23:                                  ; preds = %if.end.r_exit.i.us.22
  %add8.i.us.23 = add i32 %reass.mul.i, %conv.i.us.23
  %idxprom.i.us.23 = sext i32 %add8.i.us.23 to i64
  %arrayidx.i.us.23 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.23
  %113 = bitcast float* %arrayidx.i.us.23 to i32*
  %114 = load i32, i32* %113, align 4, !tbaa !12
  %arrayidx15.i.us.23 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.23
  %115 = bitcast float* %arrayidx15.i.us.23 to i32*
  store i32 %114, i32* %115, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.23

if.end.r_exit.i.us.23:                            ; preds = %if.then.i.us.23, %if.end.r_exit.i.us.22
  br i1 %cmp.i.us.24, label %if.then.i.us.24, label %if.end.r_exit.i.us.24

if.then.i.us.24:                                  ; preds = %if.end.r_exit.i.us.23
  %add8.i.us.24 = add i32 %reass.mul.i, %conv.i.us.24
  %idxprom.i.us.24 = sext i32 %add8.i.us.24 to i64
  %arrayidx.i.us.24 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.24
  %116 = bitcast float* %arrayidx.i.us.24 to i32*
  %117 = load i32, i32* %116, align 4, !tbaa !12
  %arrayidx15.i.us.24 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.24
  %118 = bitcast float* %arrayidx15.i.us.24 to i32*
  store i32 %117, i32* %118, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.24

if.end.r_exit.i.us.24:                            ; preds = %if.then.i.us.24, %if.end.r_exit.i.us.23
  br i1 %cmp.i.us.25, label %if.then.i.us.25, label %if.end.r_exit.i.us.25

if.then.i.us.25:                                  ; preds = %if.end.r_exit.i.us.24
  %add8.i.us.25 = add i32 %reass.mul.i, %conv.i.us.25
  %idxprom.i.us.25 = sext i32 %add8.i.us.25 to i64
  %arrayidx.i.us.25 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.25
  %119 = bitcast float* %arrayidx.i.us.25 to i32*
  %120 = load i32, i32* %119, align 4, !tbaa !12
  %arrayidx15.i.us.25 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.25
  %121 = bitcast float* %arrayidx15.i.us.25 to i32*
  store i32 %120, i32* %121, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.25

if.end.r_exit.i.us.25:                            ; preds = %if.then.i.us.25, %if.end.r_exit.i.us.24
  br i1 %cmp.i.us.26, label %if.then.i.us.26, label %if.end.r_exit.i.us.26

if.then.i.us.26:                                  ; preds = %if.end.r_exit.i.us.25
  %add8.i.us.26 = add i32 %reass.mul.i, %conv.i.us.26
  %idxprom.i.us.26 = sext i32 %add8.i.us.26 to i64
  %arrayidx.i.us.26 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.26
  %122 = bitcast float* %arrayidx.i.us.26 to i32*
  %123 = load i32, i32* %122, align 4, !tbaa !12
  %arrayidx15.i.us.26 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.26
  %124 = bitcast float* %arrayidx15.i.us.26 to i32*
  store i32 %123, i32* %124, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.26

if.end.r_exit.i.us.26:                            ; preds = %if.then.i.us.26, %if.end.r_exit.i.us.25
  br i1 %cmp.i.us.27, label %if.then.i.us.27, label %if.end.r_exit.i.us.27

if.then.i.us.27:                                  ; preds = %if.end.r_exit.i.us.26
  %add8.i.us.27 = add i32 %reass.mul.i, %conv.i.us.27
  %idxprom.i.us.27 = sext i32 %add8.i.us.27 to i64
  %arrayidx.i.us.27 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.27
  %125 = bitcast float* %arrayidx.i.us.27 to i32*
  %126 = load i32, i32* %125, align 4, !tbaa !12
  %arrayidx15.i.us.27 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.27
  %127 = bitcast float* %arrayidx15.i.us.27 to i32*
  store i32 %126, i32* %127, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.27

if.end.r_exit.i.us.27:                            ; preds = %if.then.i.us.27, %if.end.r_exit.i.us.26
  br i1 %cmp.i.us.28, label %if.then.i.us.28, label %if.end.r_exit.i.us.28

if.then.i.us.28:                                  ; preds = %if.end.r_exit.i.us.27
  %add8.i.us.28 = add i32 %reass.mul.i, %conv.i.us.28
  %idxprom.i.us.28 = sext i32 %add8.i.us.28 to i64
  %arrayidx.i.us.28 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.28
  %128 = bitcast float* %arrayidx.i.us.28 to i32*
  %129 = load i32, i32* %128, align 4, !tbaa !12
  %arrayidx15.i.us.28 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.28
  %130 = bitcast float* %arrayidx15.i.us.28 to i32*
  store i32 %129, i32* %130, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.28

if.end.r_exit.i.us.28:                            ; preds = %if.then.i.us.28, %if.end.r_exit.i.us.27
  br i1 %cmp.i.us.29, label %if.then.i.us.29, label %if.end.r_exit.i.us.29

if.then.i.us.29:                                  ; preds = %if.end.r_exit.i.us.28
  %add8.i.us.29 = add i32 %reass.mul.i, %conv.i.us.29
  %idxprom.i.us.29 = sext i32 %add8.i.us.29 to i64
  %arrayidx.i.us.29 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.29
  %131 = bitcast float* %arrayidx.i.us.29 to i32*
  %132 = load i32, i32* %131, align 4, !tbaa !12
  %arrayidx15.i.us.29 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.29
  %133 = bitcast float* %arrayidx15.i.us.29 to i32*
  store i32 %132, i32* %133, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.29

if.end.r_exit.i.us.29:                            ; preds = %if.then.i.us.29, %if.end.r_exit.i.us.28
  br i1 %cmp.i.us.30, label %if.then.i.us.30, label %if.end.r_exit.i.us.30

if.then.i.us.30:                                  ; preds = %if.end.r_exit.i.us.29
  %add8.i.us.30 = add i32 %reass.mul.i, %conv.i.us.30
  %idxprom.i.us.30 = sext i32 %add8.i.us.30 to i64
  %arrayidx.i.us.30 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.30
  %134 = bitcast float* %arrayidx.i.us.30 to i32*
  %135 = load i32, i32* %134, align 4, !tbaa !12
  %arrayidx15.i.us.30 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.30
  %136 = bitcast float* %arrayidx15.i.us.30 to i32*
  store i32 %135, i32* %136, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.us.30

if.end.r_exit.i.us.30:                            ; preds = %if.then.i.us.30, %if.end.r_exit.i.us.29
  br i1 %cmp.i.us.31, label %if.then.i.us.31, label %pregion_for_end.i

if.then.i.us.31:                                  ; preds = %if.end.r_exit.i.us.30
  %add8.i.us.31 = add i32 %reass.mul.i, %conv.i.us.31
  %idxprom.i.us.31 = sext i32 %add8.i.us.31 to i64
  %arrayidx.i.us.31 = getelementptr inbounds float, float* %5, i64 %idxprom.i.us.31
  %137 = bitcast float* %arrayidx.i.us.31 to i32*
  %138 = load i32, i32* %137, align 4, !tbaa !12
  %arrayidx15.i.us.31 = getelementptr inbounds float, float* %3, i64 %idxprom.i.us.31
  %139 = bitcast float* %arrayidx15.i.us.31 to i32*
  store i32 %138, i32* %139, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i
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
  %mul6.i.i = mul i32 %25, %9
  %conv.i.i.us = trunc i64 %mul.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %13, %conv.i.i.us
  %26 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.1 = or i32 %26, 1
  %cmp.i.i.us.1 = icmp sgt i32 %13, %conv.i.i.us.1
  %27 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.2 = or i32 %27, 2
  %cmp.i.i.us.2 = icmp sgt i32 %13, %conv.i.i.us.2
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.3 = or i32 %28, 3
  %cmp.i.i.us.3 = icmp sgt i32 %13, %conv.i.i.us.3
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.4 = or i32 %29, 4
  %cmp.i.i.us.4 = icmp sgt i32 %13, %conv.i.i.us.4
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.5 = or i32 %30, 5
  %cmp.i.i.us.5 = icmp sgt i32 %13, %conv.i.i.us.5
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.6 = or i32 %31, 6
  %cmp.i.i.us.6 = icmp sgt i32 %13, %conv.i.i.us.6
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.7 = or i32 %32, 7
  %cmp.i.i.us.7 = icmp sgt i32 %13, %conv.i.i.us.7
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.8 = or i32 %33, 8
  %cmp.i.i.us.8 = icmp sgt i32 %13, %conv.i.i.us.8
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.9 = or i32 %34, 9
  %cmp.i.i.us.9 = icmp sgt i32 %13, %conv.i.i.us.9
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.10 = or i32 %35, 10
  %cmp.i.i.us.10 = icmp sgt i32 %13, %conv.i.i.us.10
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.11 = or i32 %36, 11
  %cmp.i.i.us.11 = icmp sgt i32 %13, %conv.i.i.us.11
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.12 = or i32 %37, 12
  %cmp.i.i.us.12 = icmp sgt i32 %13, %conv.i.i.us.12
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.13 = or i32 %38, 13
  %cmp.i.i.us.13 = icmp sgt i32 %13, %conv.i.i.us.13
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.14 = or i32 %39, 14
  %cmp.i.i.us.14 = icmp sgt i32 %13, %conv.i.i.us.14
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.15 = or i32 %40, 15
  %cmp.i.i.us.15 = icmp sgt i32 %13, %conv.i.i.us.15
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.16 = or i32 %41, 16
  %cmp.i.i.us.16 = icmp sgt i32 %13, %conv.i.i.us.16
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.17 = or i32 %42, 17
  %cmp.i.i.us.17 = icmp sgt i32 %13, %conv.i.i.us.17
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.18 = or i32 %43, 18
  %cmp.i.i.us.18 = icmp sgt i32 %13, %conv.i.i.us.18
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.19 = or i32 %44, 19
  %cmp.i.i.us.19 = icmp sgt i32 %13, %conv.i.i.us.19
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.20 = or i32 %45, 20
  %cmp.i.i.us.20 = icmp sgt i32 %13, %conv.i.i.us.20
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.21 = or i32 %46, 21
  %cmp.i.i.us.21 = icmp sgt i32 %13, %conv.i.i.us.21
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.22 = or i32 %47, 22
  %cmp.i.i.us.22 = icmp sgt i32 %13, %conv.i.i.us.22
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.23 = or i32 %48, 23
  %cmp.i.i.us.23 = icmp sgt i32 %13, %conv.i.i.us.23
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.24 = or i32 %49, 24
  %cmp.i.i.us.24 = icmp sgt i32 %13, %conv.i.i.us.24
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.25 = or i32 %50, 25
  %cmp.i.i.us.25 = icmp sgt i32 %13, %conv.i.i.us.25
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.26 = or i32 %51, 26
  %cmp.i.i.us.26 = icmp sgt i32 %13, %conv.i.i.us.26
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.27 = or i32 %52, 27
  %cmp.i.i.us.27 = icmp sgt i32 %13, %conv.i.i.us.27
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.28 = or i32 %53, 28
  %cmp.i.i.us.28 = icmp sgt i32 %13, %conv.i.i.us.28
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.29 = or i32 %54, 29
  %cmp.i.i.us.29 = icmp sgt i32 %13, %conv.i.i.us.29
  %55 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.30 = or i32 %55, 30
  %cmp.i.i.us.30 = icmp sgt i32 %13, %conv.i.i.us.30
  %56 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.31 = or i32 %56, 31
  %cmp.i.i.us.31 = icmp sgt i32 %13, %conv.i.i.us.31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %60, %pregion_for_end.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp4.i.i = icmp sgt i32 %9, %conv2.i.i
  %reass.add.i.i = add i32 %mul6.i.i, %conv2.i.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %13
  br i1 %cmp4.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us.preheader
  %add8.i.i.us = add i32 %reass.mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add8.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us
  %57 = bitcast float* %arrayidx.i.i.us to i32*
  %58 = load i32, i32* %57, align 4, !tbaa !12
  %arrayidx15.i.i.us = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us
  %59 = bitcast float* %arrayidx15.i.i.us to i32*
  store i32 %58, i32* %59, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  br i1 %cmp.i.i.us.1, label %if.then.i.i.us.1, label %if.end.r_exit.i.i.us.1

pregion_for_end.i.i:                              ; preds = %if.then.i.i.us.31, %if.end.r_exit.i.i.us.30, %pregion_for_entry.pregion_for_init.i.i
  %60 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond.not = icmp eq i64 %60, 8
  br i1 %exitcond.not, label %_pocl_kernel_doitgen_kernel2.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !19

_pocl_kernel_doitgen_kernel2.exit:                ; preds = %pregion_for_end.i.i
  ret void

if.then.i.i.us.1:                                 ; preds = %if.end.r_exit.i.i.us
  %add8.i.i.us.1 = add i32 %reass.mul.i.i, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add8.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.1
  %61 = bitcast float* %arrayidx.i.i.us.1 to i32*
  %62 = load i32, i32* %61, align 4, !tbaa !12
  %arrayidx15.i.i.us.1 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.1
  %63 = bitcast float* %arrayidx15.i.i.us.1 to i32*
  store i32 %62, i32* %63, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %if.then.i.i.us.1, %if.end.r_exit.i.i.us
  br i1 %cmp.i.i.us.2, label %if.then.i.i.us.2, label %if.end.r_exit.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %if.end.r_exit.i.i.us.1
  %add8.i.i.us.2 = add i32 %reass.mul.i.i, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add8.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.2
  %64 = bitcast float* %arrayidx.i.i.us.2 to i32*
  %65 = load i32, i32* %64, align 4, !tbaa !12
  %arrayidx15.i.i.us.2 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.2
  %66 = bitcast float* %arrayidx15.i.i.us.2 to i32*
  store i32 %65, i32* %66, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.2

if.end.r_exit.i.i.us.2:                           ; preds = %if.then.i.i.us.2, %if.end.r_exit.i.i.us.1
  br i1 %cmp.i.i.us.3, label %if.then.i.i.us.3, label %if.end.r_exit.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %if.end.r_exit.i.i.us.2
  %add8.i.i.us.3 = add i32 %reass.mul.i.i, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add8.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.3
  %67 = bitcast float* %arrayidx.i.i.us.3 to i32*
  %68 = load i32, i32* %67, align 4, !tbaa !12
  %arrayidx15.i.i.us.3 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.3
  %69 = bitcast float* %arrayidx15.i.i.us.3 to i32*
  store i32 %68, i32* %69, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.3

if.end.r_exit.i.i.us.3:                           ; preds = %if.then.i.i.us.3, %if.end.r_exit.i.i.us.2
  br i1 %cmp.i.i.us.4, label %if.then.i.i.us.4, label %if.end.r_exit.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %if.end.r_exit.i.i.us.3
  %add8.i.i.us.4 = add i32 %reass.mul.i.i, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add8.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.4
  %70 = bitcast float* %arrayidx.i.i.us.4 to i32*
  %71 = load i32, i32* %70, align 4, !tbaa !12
  %arrayidx15.i.i.us.4 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.4
  %72 = bitcast float* %arrayidx15.i.i.us.4 to i32*
  store i32 %71, i32* %72, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.4

if.end.r_exit.i.i.us.4:                           ; preds = %if.then.i.i.us.4, %if.end.r_exit.i.i.us.3
  br i1 %cmp.i.i.us.5, label %if.then.i.i.us.5, label %if.end.r_exit.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %if.end.r_exit.i.i.us.4
  %add8.i.i.us.5 = add i32 %reass.mul.i.i, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add8.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.5
  %73 = bitcast float* %arrayidx.i.i.us.5 to i32*
  %74 = load i32, i32* %73, align 4, !tbaa !12
  %arrayidx15.i.i.us.5 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.5
  %75 = bitcast float* %arrayidx15.i.i.us.5 to i32*
  store i32 %74, i32* %75, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.5

if.end.r_exit.i.i.us.5:                           ; preds = %if.then.i.i.us.5, %if.end.r_exit.i.i.us.4
  br i1 %cmp.i.i.us.6, label %if.then.i.i.us.6, label %if.end.r_exit.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %if.end.r_exit.i.i.us.5
  %add8.i.i.us.6 = add i32 %reass.mul.i.i, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add8.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.6
  %76 = bitcast float* %arrayidx.i.i.us.6 to i32*
  %77 = load i32, i32* %76, align 4, !tbaa !12
  %arrayidx15.i.i.us.6 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.6
  %78 = bitcast float* %arrayidx15.i.i.us.6 to i32*
  store i32 %77, i32* %78, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.6

if.end.r_exit.i.i.us.6:                           ; preds = %if.then.i.i.us.6, %if.end.r_exit.i.i.us.5
  br i1 %cmp.i.i.us.7, label %if.then.i.i.us.7, label %if.end.r_exit.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %if.end.r_exit.i.i.us.6
  %add8.i.i.us.7 = add i32 %reass.mul.i.i, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add8.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.7
  %79 = bitcast float* %arrayidx.i.i.us.7 to i32*
  %80 = load i32, i32* %79, align 4, !tbaa !12
  %arrayidx15.i.i.us.7 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.7
  %81 = bitcast float* %arrayidx15.i.i.us.7 to i32*
  store i32 %80, i32* %81, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.7

if.end.r_exit.i.i.us.7:                           ; preds = %if.then.i.i.us.7, %if.end.r_exit.i.i.us.6
  br i1 %cmp.i.i.us.8, label %if.then.i.i.us.8, label %if.end.r_exit.i.i.us.8

if.then.i.i.us.8:                                 ; preds = %if.end.r_exit.i.i.us.7
  %add8.i.i.us.8 = add i32 %reass.mul.i.i, %conv.i.i.us.8
  %idxprom.i.i.us.8 = sext i32 %add8.i.i.us.8 to i64
  %arrayidx.i.i.us.8 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.8
  %82 = bitcast float* %arrayidx.i.i.us.8 to i32*
  %83 = load i32, i32* %82, align 4, !tbaa !12
  %arrayidx15.i.i.us.8 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.8
  %84 = bitcast float* %arrayidx15.i.i.us.8 to i32*
  store i32 %83, i32* %84, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.8

if.end.r_exit.i.i.us.8:                           ; preds = %if.then.i.i.us.8, %if.end.r_exit.i.i.us.7
  br i1 %cmp.i.i.us.9, label %if.then.i.i.us.9, label %if.end.r_exit.i.i.us.9

if.then.i.i.us.9:                                 ; preds = %if.end.r_exit.i.i.us.8
  %add8.i.i.us.9 = add i32 %reass.mul.i.i, %conv.i.i.us.9
  %idxprom.i.i.us.9 = sext i32 %add8.i.i.us.9 to i64
  %arrayidx.i.i.us.9 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.9
  %85 = bitcast float* %arrayidx.i.i.us.9 to i32*
  %86 = load i32, i32* %85, align 4, !tbaa !12
  %arrayidx15.i.i.us.9 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.9
  %87 = bitcast float* %arrayidx15.i.i.us.9 to i32*
  store i32 %86, i32* %87, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.9

if.end.r_exit.i.i.us.9:                           ; preds = %if.then.i.i.us.9, %if.end.r_exit.i.i.us.8
  br i1 %cmp.i.i.us.10, label %if.then.i.i.us.10, label %if.end.r_exit.i.i.us.10

if.then.i.i.us.10:                                ; preds = %if.end.r_exit.i.i.us.9
  %add8.i.i.us.10 = add i32 %reass.mul.i.i, %conv.i.i.us.10
  %idxprom.i.i.us.10 = sext i32 %add8.i.i.us.10 to i64
  %arrayidx.i.i.us.10 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.10
  %88 = bitcast float* %arrayidx.i.i.us.10 to i32*
  %89 = load i32, i32* %88, align 4, !tbaa !12
  %arrayidx15.i.i.us.10 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.10
  %90 = bitcast float* %arrayidx15.i.i.us.10 to i32*
  store i32 %89, i32* %90, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.10

if.end.r_exit.i.i.us.10:                          ; preds = %if.then.i.i.us.10, %if.end.r_exit.i.i.us.9
  br i1 %cmp.i.i.us.11, label %if.then.i.i.us.11, label %if.end.r_exit.i.i.us.11

if.then.i.i.us.11:                                ; preds = %if.end.r_exit.i.i.us.10
  %add8.i.i.us.11 = add i32 %reass.mul.i.i, %conv.i.i.us.11
  %idxprom.i.i.us.11 = sext i32 %add8.i.i.us.11 to i64
  %arrayidx.i.i.us.11 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.11
  %91 = bitcast float* %arrayidx.i.i.us.11 to i32*
  %92 = load i32, i32* %91, align 4, !tbaa !12
  %arrayidx15.i.i.us.11 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.11
  %93 = bitcast float* %arrayidx15.i.i.us.11 to i32*
  store i32 %92, i32* %93, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.11

if.end.r_exit.i.i.us.11:                          ; preds = %if.then.i.i.us.11, %if.end.r_exit.i.i.us.10
  br i1 %cmp.i.i.us.12, label %if.then.i.i.us.12, label %if.end.r_exit.i.i.us.12

if.then.i.i.us.12:                                ; preds = %if.end.r_exit.i.i.us.11
  %add8.i.i.us.12 = add i32 %reass.mul.i.i, %conv.i.i.us.12
  %idxprom.i.i.us.12 = sext i32 %add8.i.i.us.12 to i64
  %arrayidx.i.i.us.12 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.12
  %94 = bitcast float* %arrayidx.i.i.us.12 to i32*
  %95 = load i32, i32* %94, align 4, !tbaa !12
  %arrayidx15.i.i.us.12 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.12
  %96 = bitcast float* %arrayidx15.i.i.us.12 to i32*
  store i32 %95, i32* %96, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.12

if.end.r_exit.i.i.us.12:                          ; preds = %if.then.i.i.us.12, %if.end.r_exit.i.i.us.11
  br i1 %cmp.i.i.us.13, label %if.then.i.i.us.13, label %if.end.r_exit.i.i.us.13

if.then.i.i.us.13:                                ; preds = %if.end.r_exit.i.i.us.12
  %add8.i.i.us.13 = add i32 %reass.mul.i.i, %conv.i.i.us.13
  %idxprom.i.i.us.13 = sext i32 %add8.i.i.us.13 to i64
  %arrayidx.i.i.us.13 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.13
  %97 = bitcast float* %arrayidx.i.i.us.13 to i32*
  %98 = load i32, i32* %97, align 4, !tbaa !12
  %arrayidx15.i.i.us.13 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.13
  %99 = bitcast float* %arrayidx15.i.i.us.13 to i32*
  store i32 %98, i32* %99, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.13

if.end.r_exit.i.i.us.13:                          ; preds = %if.then.i.i.us.13, %if.end.r_exit.i.i.us.12
  br i1 %cmp.i.i.us.14, label %if.then.i.i.us.14, label %if.end.r_exit.i.i.us.14

if.then.i.i.us.14:                                ; preds = %if.end.r_exit.i.i.us.13
  %add8.i.i.us.14 = add i32 %reass.mul.i.i, %conv.i.i.us.14
  %idxprom.i.i.us.14 = sext i32 %add8.i.i.us.14 to i64
  %arrayidx.i.i.us.14 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.14
  %100 = bitcast float* %arrayidx.i.i.us.14 to i32*
  %101 = load i32, i32* %100, align 4, !tbaa !12
  %arrayidx15.i.i.us.14 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.14
  %102 = bitcast float* %arrayidx15.i.i.us.14 to i32*
  store i32 %101, i32* %102, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.14

if.end.r_exit.i.i.us.14:                          ; preds = %if.then.i.i.us.14, %if.end.r_exit.i.i.us.13
  br i1 %cmp.i.i.us.15, label %if.then.i.i.us.15, label %if.end.r_exit.i.i.us.15

if.then.i.i.us.15:                                ; preds = %if.end.r_exit.i.i.us.14
  %add8.i.i.us.15 = add i32 %reass.mul.i.i, %conv.i.i.us.15
  %idxprom.i.i.us.15 = sext i32 %add8.i.i.us.15 to i64
  %arrayidx.i.i.us.15 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.15
  %103 = bitcast float* %arrayidx.i.i.us.15 to i32*
  %104 = load i32, i32* %103, align 4, !tbaa !12
  %arrayidx15.i.i.us.15 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.15
  %105 = bitcast float* %arrayidx15.i.i.us.15 to i32*
  store i32 %104, i32* %105, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.15

if.end.r_exit.i.i.us.15:                          ; preds = %if.then.i.i.us.15, %if.end.r_exit.i.i.us.14
  br i1 %cmp.i.i.us.16, label %if.then.i.i.us.16, label %if.end.r_exit.i.i.us.16

if.then.i.i.us.16:                                ; preds = %if.end.r_exit.i.i.us.15
  %add8.i.i.us.16 = add i32 %reass.mul.i.i, %conv.i.i.us.16
  %idxprom.i.i.us.16 = sext i32 %add8.i.i.us.16 to i64
  %arrayidx.i.i.us.16 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.16
  %106 = bitcast float* %arrayidx.i.i.us.16 to i32*
  %107 = load i32, i32* %106, align 4, !tbaa !12
  %arrayidx15.i.i.us.16 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.16
  %108 = bitcast float* %arrayidx15.i.i.us.16 to i32*
  store i32 %107, i32* %108, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.16

if.end.r_exit.i.i.us.16:                          ; preds = %if.then.i.i.us.16, %if.end.r_exit.i.i.us.15
  br i1 %cmp.i.i.us.17, label %if.then.i.i.us.17, label %if.end.r_exit.i.i.us.17

if.then.i.i.us.17:                                ; preds = %if.end.r_exit.i.i.us.16
  %add8.i.i.us.17 = add i32 %reass.mul.i.i, %conv.i.i.us.17
  %idxprom.i.i.us.17 = sext i32 %add8.i.i.us.17 to i64
  %arrayidx.i.i.us.17 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.17
  %109 = bitcast float* %arrayidx.i.i.us.17 to i32*
  %110 = load i32, i32* %109, align 4, !tbaa !12
  %arrayidx15.i.i.us.17 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.17
  %111 = bitcast float* %arrayidx15.i.i.us.17 to i32*
  store i32 %110, i32* %111, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.17

if.end.r_exit.i.i.us.17:                          ; preds = %if.then.i.i.us.17, %if.end.r_exit.i.i.us.16
  br i1 %cmp.i.i.us.18, label %if.then.i.i.us.18, label %if.end.r_exit.i.i.us.18

if.then.i.i.us.18:                                ; preds = %if.end.r_exit.i.i.us.17
  %add8.i.i.us.18 = add i32 %reass.mul.i.i, %conv.i.i.us.18
  %idxprom.i.i.us.18 = sext i32 %add8.i.i.us.18 to i64
  %arrayidx.i.i.us.18 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.18
  %112 = bitcast float* %arrayidx.i.i.us.18 to i32*
  %113 = load i32, i32* %112, align 4, !tbaa !12
  %arrayidx15.i.i.us.18 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.18
  %114 = bitcast float* %arrayidx15.i.i.us.18 to i32*
  store i32 %113, i32* %114, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.18

if.end.r_exit.i.i.us.18:                          ; preds = %if.then.i.i.us.18, %if.end.r_exit.i.i.us.17
  br i1 %cmp.i.i.us.19, label %if.then.i.i.us.19, label %if.end.r_exit.i.i.us.19

if.then.i.i.us.19:                                ; preds = %if.end.r_exit.i.i.us.18
  %add8.i.i.us.19 = add i32 %reass.mul.i.i, %conv.i.i.us.19
  %idxprom.i.i.us.19 = sext i32 %add8.i.i.us.19 to i64
  %arrayidx.i.i.us.19 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.19
  %115 = bitcast float* %arrayidx.i.i.us.19 to i32*
  %116 = load i32, i32* %115, align 4, !tbaa !12
  %arrayidx15.i.i.us.19 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.19
  %117 = bitcast float* %arrayidx15.i.i.us.19 to i32*
  store i32 %116, i32* %117, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.19

if.end.r_exit.i.i.us.19:                          ; preds = %if.then.i.i.us.19, %if.end.r_exit.i.i.us.18
  br i1 %cmp.i.i.us.20, label %if.then.i.i.us.20, label %if.end.r_exit.i.i.us.20

if.then.i.i.us.20:                                ; preds = %if.end.r_exit.i.i.us.19
  %add8.i.i.us.20 = add i32 %reass.mul.i.i, %conv.i.i.us.20
  %idxprom.i.i.us.20 = sext i32 %add8.i.i.us.20 to i64
  %arrayidx.i.i.us.20 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.20
  %118 = bitcast float* %arrayidx.i.i.us.20 to i32*
  %119 = load i32, i32* %118, align 4, !tbaa !12
  %arrayidx15.i.i.us.20 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.20
  %120 = bitcast float* %arrayidx15.i.i.us.20 to i32*
  store i32 %119, i32* %120, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.20

if.end.r_exit.i.i.us.20:                          ; preds = %if.then.i.i.us.20, %if.end.r_exit.i.i.us.19
  br i1 %cmp.i.i.us.21, label %if.then.i.i.us.21, label %if.end.r_exit.i.i.us.21

if.then.i.i.us.21:                                ; preds = %if.end.r_exit.i.i.us.20
  %add8.i.i.us.21 = add i32 %reass.mul.i.i, %conv.i.i.us.21
  %idxprom.i.i.us.21 = sext i32 %add8.i.i.us.21 to i64
  %arrayidx.i.i.us.21 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.21
  %121 = bitcast float* %arrayidx.i.i.us.21 to i32*
  %122 = load i32, i32* %121, align 4, !tbaa !12
  %arrayidx15.i.i.us.21 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.21
  %123 = bitcast float* %arrayidx15.i.i.us.21 to i32*
  store i32 %122, i32* %123, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.21

if.end.r_exit.i.i.us.21:                          ; preds = %if.then.i.i.us.21, %if.end.r_exit.i.i.us.20
  br i1 %cmp.i.i.us.22, label %if.then.i.i.us.22, label %if.end.r_exit.i.i.us.22

if.then.i.i.us.22:                                ; preds = %if.end.r_exit.i.i.us.21
  %add8.i.i.us.22 = add i32 %reass.mul.i.i, %conv.i.i.us.22
  %idxprom.i.i.us.22 = sext i32 %add8.i.i.us.22 to i64
  %arrayidx.i.i.us.22 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.22
  %124 = bitcast float* %arrayidx.i.i.us.22 to i32*
  %125 = load i32, i32* %124, align 4, !tbaa !12
  %arrayidx15.i.i.us.22 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.22
  %126 = bitcast float* %arrayidx15.i.i.us.22 to i32*
  store i32 %125, i32* %126, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.22

if.end.r_exit.i.i.us.22:                          ; preds = %if.then.i.i.us.22, %if.end.r_exit.i.i.us.21
  br i1 %cmp.i.i.us.23, label %if.then.i.i.us.23, label %if.end.r_exit.i.i.us.23

if.then.i.i.us.23:                                ; preds = %if.end.r_exit.i.i.us.22
  %add8.i.i.us.23 = add i32 %reass.mul.i.i, %conv.i.i.us.23
  %idxprom.i.i.us.23 = sext i32 %add8.i.i.us.23 to i64
  %arrayidx.i.i.us.23 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.23
  %127 = bitcast float* %arrayidx.i.i.us.23 to i32*
  %128 = load i32, i32* %127, align 4, !tbaa !12
  %arrayidx15.i.i.us.23 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.23
  %129 = bitcast float* %arrayidx15.i.i.us.23 to i32*
  store i32 %128, i32* %129, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.23

if.end.r_exit.i.i.us.23:                          ; preds = %if.then.i.i.us.23, %if.end.r_exit.i.i.us.22
  br i1 %cmp.i.i.us.24, label %if.then.i.i.us.24, label %if.end.r_exit.i.i.us.24

if.then.i.i.us.24:                                ; preds = %if.end.r_exit.i.i.us.23
  %add8.i.i.us.24 = add i32 %reass.mul.i.i, %conv.i.i.us.24
  %idxprom.i.i.us.24 = sext i32 %add8.i.i.us.24 to i64
  %arrayidx.i.i.us.24 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.24
  %130 = bitcast float* %arrayidx.i.i.us.24 to i32*
  %131 = load i32, i32* %130, align 4, !tbaa !12
  %arrayidx15.i.i.us.24 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.24
  %132 = bitcast float* %arrayidx15.i.i.us.24 to i32*
  store i32 %131, i32* %132, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.24

if.end.r_exit.i.i.us.24:                          ; preds = %if.then.i.i.us.24, %if.end.r_exit.i.i.us.23
  br i1 %cmp.i.i.us.25, label %if.then.i.i.us.25, label %if.end.r_exit.i.i.us.25

if.then.i.i.us.25:                                ; preds = %if.end.r_exit.i.i.us.24
  %add8.i.i.us.25 = add i32 %reass.mul.i.i, %conv.i.i.us.25
  %idxprom.i.i.us.25 = sext i32 %add8.i.i.us.25 to i64
  %arrayidx.i.i.us.25 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.25
  %133 = bitcast float* %arrayidx.i.i.us.25 to i32*
  %134 = load i32, i32* %133, align 4, !tbaa !12
  %arrayidx15.i.i.us.25 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.25
  %135 = bitcast float* %arrayidx15.i.i.us.25 to i32*
  store i32 %134, i32* %135, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.25

if.end.r_exit.i.i.us.25:                          ; preds = %if.then.i.i.us.25, %if.end.r_exit.i.i.us.24
  br i1 %cmp.i.i.us.26, label %if.then.i.i.us.26, label %if.end.r_exit.i.i.us.26

if.then.i.i.us.26:                                ; preds = %if.end.r_exit.i.i.us.25
  %add8.i.i.us.26 = add i32 %reass.mul.i.i, %conv.i.i.us.26
  %idxprom.i.i.us.26 = sext i32 %add8.i.i.us.26 to i64
  %arrayidx.i.i.us.26 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.26
  %136 = bitcast float* %arrayidx.i.i.us.26 to i32*
  %137 = load i32, i32* %136, align 4, !tbaa !12
  %arrayidx15.i.i.us.26 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.26
  %138 = bitcast float* %arrayidx15.i.i.us.26 to i32*
  store i32 %137, i32* %138, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.26

if.end.r_exit.i.i.us.26:                          ; preds = %if.then.i.i.us.26, %if.end.r_exit.i.i.us.25
  br i1 %cmp.i.i.us.27, label %if.then.i.i.us.27, label %if.end.r_exit.i.i.us.27

if.then.i.i.us.27:                                ; preds = %if.end.r_exit.i.i.us.26
  %add8.i.i.us.27 = add i32 %reass.mul.i.i, %conv.i.i.us.27
  %idxprom.i.i.us.27 = sext i32 %add8.i.i.us.27 to i64
  %arrayidx.i.i.us.27 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.27
  %139 = bitcast float* %arrayidx.i.i.us.27 to i32*
  %140 = load i32, i32* %139, align 4, !tbaa !12
  %arrayidx15.i.i.us.27 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.27
  %141 = bitcast float* %arrayidx15.i.i.us.27 to i32*
  store i32 %140, i32* %141, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.27

if.end.r_exit.i.i.us.27:                          ; preds = %if.then.i.i.us.27, %if.end.r_exit.i.i.us.26
  br i1 %cmp.i.i.us.28, label %if.then.i.i.us.28, label %if.end.r_exit.i.i.us.28

if.then.i.i.us.28:                                ; preds = %if.end.r_exit.i.i.us.27
  %add8.i.i.us.28 = add i32 %reass.mul.i.i, %conv.i.i.us.28
  %idxprom.i.i.us.28 = sext i32 %add8.i.i.us.28 to i64
  %arrayidx.i.i.us.28 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.28
  %142 = bitcast float* %arrayidx.i.i.us.28 to i32*
  %143 = load i32, i32* %142, align 4, !tbaa !12
  %arrayidx15.i.i.us.28 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.28
  %144 = bitcast float* %arrayidx15.i.i.us.28 to i32*
  store i32 %143, i32* %144, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.28

if.end.r_exit.i.i.us.28:                          ; preds = %if.then.i.i.us.28, %if.end.r_exit.i.i.us.27
  br i1 %cmp.i.i.us.29, label %if.then.i.i.us.29, label %if.end.r_exit.i.i.us.29

if.then.i.i.us.29:                                ; preds = %if.end.r_exit.i.i.us.28
  %add8.i.i.us.29 = add i32 %reass.mul.i.i, %conv.i.i.us.29
  %idxprom.i.i.us.29 = sext i32 %add8.i.i.us.29 to i64
  %arrayidx.i.i.us.29 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.29
  %145 = bitcast float* %arrayidx.i.i.us.29 to i32*
  %146 = load i32, i32* %145, align 4, !tbaa !12
  %arrayidx15.i.i.us.29 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.29
  %147 = bitcast float* %arrayidx15.i.i.us.29 to i32*
  store i32 %146, i32* %147, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.29

if.end.r_exit.i.i.us.29:                          ; preds = %if.then.i.i.us.29, %if.end.r_exit.i.i.us.28
  br i1 %cmp.i.i.us.30, label %if.then.i.i.us.30, label %if.end.r_exit.i.i.us.30

if.then.i.i.us.30:                                ; preds = %if.end.r_exit.i.i.us.29
  %add8.i.i.us.30 = add i32 %reass.mul.i.i, %conv.i.i.us.30
  %idxprom.i.i.us.30 = sext i32 %add8.i.i.us.30 to i64
  %arrayidx.i.i.us.30 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.30
  %148 = bitcast float* %arrayidx.i.i.us.30 to i32*
  %149 = load i32, i32* %148, align 4, !tbaa !12
  %arrayidx15.i.i.us.30 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.30
  %150 = bitcast float* %arrayidx15.i.i.us.30 to i32*
  store i32 %149, i32* %150, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.30

if.end.r_exit.i.i.us.30:                          ; preds = %if.then.i.i.us.30, %if.end.r_exit.i.i.us.29
  br i1 %cmp.i.i.us.31, label %if.then.i.i.us.31, label %pregion_for_end.i.i

if.then.i.i.us.31:                                ; preds = %if.end.r_exit.i.i.us.30
  %add8.i.i.us.31 = add i32 %reass.mul.i.i, %conv.i.i.us.31
  %idxprom.i.i.us.31 = sext i32 %add8.i.i.us.31 to i64
  %arrayidx.i.i.us.31 = getelementptr inbounds float, float* %21, i64 %idxprom.i.i.us.31
  %151 = bitcast float* %arrayidx.i.i.us.31 to i32*
  %152 = load i32, i32* %151, align 4, !tbaa !12
  %arrayidx15.i.i.us.31 = getelementptr inbounds float, float* %17, i64 %idxprom.i.i.us.31
  %153 = bitcast float* %arrayidx15.i.i.us.31 to i32*
  store i32 %152, i32* %153, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i
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
  %mul6.i.i = mul i32 %23, %9
  %conv.i.i.us = trunc i64 %mul.i.i.i to i32
  %cmp.i.i.us = icmp sgt i32 %13, %conv.i.i.us
  %24 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.1 = or i32 %24, 1
  %cmp.i.i.us.1 = icmp sgt i32 %13, %conv.i.i.us.1
  %25 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.2 = or i32 %25, 2
  %cmp.i.i.us.2 = icmp sgt i32 %13, %conv.i.i.us.2
  %26 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.3 = or i32 %26, 3
  %cmp.i.i.us.3 = icmp sgt i32 %13, %conv.i.i.us.3
  %27 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.4 = or i32 %27, 4
  %cmp.i.i.us.4 = icmp sgt i32 %13, %conv.i.i.us.4
  %28 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.5 = or i32 %28, 5
  %cmp.i.i.us.5 = icmp sgt i32 %13, %conv.i.i.us.5
  %29 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.6 = or i32 %29, 6
  %cmp.i.i.us.6 = icmp sgt i32 %13, %conv.i.i.us.6
  %30 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.7 = or i32 %30, 7
  %cmp.i.i.us.7 = icmp sgt i32 %13, %conv.i.i.us.7
  %31 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.8 = or i32 %31, 8
  %cmp.i.i.us.8 = icmp sgt i32 %13, %conv.i.i.us.8
  %32 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.9 = or i32 %32, 9
  %cmp.i.i.us.9 = icmp sgt i32 %13, %conv.i.i.us.9
  %33 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.10 = or i32 %33, 10
  %cmp.i.i.us.10 = icmp sgt i32 %13, %conv.i.i.us.10
  %34 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.11 = or i32 %34, 11
  %cmp.i.i.us.11 = icmp sgt i32 %13, %conv.i.i.us.11
  %35 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.12 = or i32 %35, 12
  %cmp.i.i.us.12 = icmp sgt i32 %13, %conv.i.i.us.12
  %36 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.13 = or i32 %36, 13
  %cmp.i.i.us.13 = icmp sgt i32 %13, %conv.i.i.us.13
  %37 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.14 = or i32 %37, 14
  %cmp.i.i.us.14 = icmp sgt i32 %13, %conv.i.i.us.14
  %38 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.15 = or i32 %38, 15
  %cmp.i.i.us.15 = icmp sgt i32 %13, %conv.i.i.us.15
  %39 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.16 = or i32 %39, 16
  %cmp.i.i.us.16 = icmp sgt i32 %13, %conv.i.i.us.16
  %40 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.17 = or i32 %40, 17
  %cmp.i.i.us.17 = icmp sgt i32 %13, %conv.i.i.us.17
  %41 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.18 = or i32 %41, 18
  %cmp.i.i.us.18 = icmp sgt i32 %13, %conv.i.i.us.18
  %42 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.19 = or i32 %42, 19
  %cmp.i.i.us.19 = icmp sgt i32 %13, %conv.i.i.us.19
  %43 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.20 = or i32 %43, 20
  %cmp.i.i.us.20 = icmp sgt i32 %13, %conv.i.i.us.20
  %44 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.21 = or i32 %44, 21
  %cmp.i.i.us.21 = icmp sgt i32 %13, %conv.i.i.us.21
  %45 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.22 = or i32 %45, 22
  %cmp.i.i.us.22 = icmp sgt i32 %13, %conv.i.i.us.22
  %46 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.23 = or i32 %46, 23
  %cmp.i.i.us.23 = icmp sgt i32 %13, %conv.i.i.us.23
  %47 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.24 = or i32 %47, 24
  %cmp.i.i.us.24 = icmp sgt i32 %13, %conv.i.i.us.24
  %48 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.25 = or i32 %48, 25
  %cmp.i.i.us.25 = icmp sgt i32 %13, %conv.i.i.us.25
  %49 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.26 = or i32 %49, 26
  %cmp.i.i.us.26 = icmp sgt i32 %13, %conv.i.i.us.26
  %50 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.27 = or i32 %50, 27
  %cmp.i.i.us.27 = icmp sgt i32 %13, %conv.i.i.us.27
  %51 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.28 = or i32 %51, 28
  %cmp.i.i.us.28 = icmp sgt i32 %13, %conv.i.i.us.28
  %52 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.29 = or i32 %52, 29
  %cmp.i.i.us.29 = icmp sgt i32 %13, %conv.i.i.us.29
  %53 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.30 = or i32 %53, 30
  %cmp.i.i.us.30 = icmp sgt i32 %13, %conv.i.i.us.30
  %54 = trunc i64 %mul.i.i.i to i32
  %conv.i.i.us.31 = or i32 %54, 31
  %cmp.i.i.us.31 = icmp sgt i32 %13, %conv.i.i.us.31
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %58, %pregion_for_end.i.i ]
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp4.i.i = icmp sgt i32 %9, %conv2.i.i
  %reass.add.i.i = add i32 %mul6.i.i, %conv2.i.i
  %reass.mul.i.i = mul i32 %reass.add.i.i, %13
  br i1 %cmp4.i.i, label %pregion_for_entry.entry.i.i.us.preheader, label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %pregion_for_entry.pregion_for_init.i.i
  br i1 %cmp.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us.preheader
  %add8.i.i.us = add i32 %reass.mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add8.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us
  %55 = bitcast float* %arrayidx.i.i.us to i32*
  %56 = load i32, i32* %55, align 4, !tbaa !12
  %arrayidx15.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us
  %57 = bitcast float* %arrayidx15.i.i.us to i32*
  store i32 %56, i32* %57, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  br i1 %cmp.i.i.us.1, label %if.then.i.i.us.1, label %if.end.r_exit.i.i.us.1

pregion_for_end.i.i:                              ; preds = %if.then.i.i.us.31, %if.end.r_exit.i.i.us.30, %pregion_for_entry.pregion_for_init.i.i
  %58 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond.not = icmp eq i64 %58, 8
  br i1 %exitcond.not, label %_pocl_kernel_doitgen_kernel2.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !19

_pocl_kernel_doitgen_kernel2.exit:                ; preds = %pregion_for_end.i.i
  ret void

if.then.i.i.us.1:                                 ; preds = %if.end.r_exit.i.i.us
  %add8.i.i.us.1 = add i32 %reass.mul.i.i, %conv.i.i.us.1
  %idxprom.i.i.us.1 = sext i32 %add8.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.1
  %59 = bitcast float* %arrayidx.i.i.us.1 to i32*
  %60 = load i32, i32* %59, align 4, !tbaa !12
  %arrayidx15.i.i.us.1 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.1
  %61 = bitcast float* %arrayidx15.i.i.us.1 to i32*
  store i32 %60, i32* %61, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %if.then.i.i.us.1, %if.end.r_exit.i.i.us
  br i1 %cmp.i.i.us.2, label %if.then.i.i.us.2, label %if.end.r_exit.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %if.end.r_exit.i.i.us.1
  %add8.i.i.us.2 = add i32 %reass.mul.i.i, %conv.i.i.us.2
  %idxprom.i.i.us.2 = sext i32 %add8.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.2
  %62 = bitcast float* %arrayidx.i.i.us.2 to i32*
  %63 = load i32, i32* %62, align 4, !tbaa !12
  %arrayidx15.i.i.us.2 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.2
  %64 = bitcast float* %arrayidx15.i.i.us.2 to i32*
  store i32 %63, i32* %64, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.2

if.end.r_exit.i.i.us.2:                           ; preds = %if.then.i.i.us.2, %if.end.r_exit.i.i.us.1
  br i1 %cmp.i.i.us.3, label %if.then.i.i.us.3, label %if.end.r_exit.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %if.end.r_exit.i.i.us.2
  %add8.i.i.us.3 = add i32 %reass.mul.i.i, %conv.i.i.us.3
  %idxprom.i.i.us.3 = sext i32 %add8.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.3
  %65 = bitcast float* %arrayidx.i.i.us.3 to i32*
  %66 = load i32, i32* %65, align 4, !tbaa !12
  %arrayidx15.i.i.us.3 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.3
  %67 = bitcast float* %arrayidx15.i.i.us.3 to i32*
  store i32 %66, i32* %67, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.3

if.end.r_exit.i.i.us.3:                           ; preds = %if.then.i.i.us.3, %if.end.r_exit.i.i.us.2
  br i1 %cmp.i.i.us.4, label %if.then.i.i.us.4, label %if.end.r_exit.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %if.end.r_exit.i.i.us.3
  %add8.i.i.us.4 = add i32 %reass.mul.i.i, %conv.i.i.us.4
  %idxprom.i.i.us.4 = sext i32 %add8.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.4
  %68 = bitcast float* %arrayidx.i.i.us.4 to i32*
  %69 = load i32, i32* %68, align 4, !tbaa !12
  %arrayidx15.i.i.us.4 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.4
  %70 = bitcast float* %arrayidx15.i.i.us.4 to i32*
  store i32 %69, i32* %70, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.4

if.end.r_exit.i.i.us.4:                           ; preds = %if.then.i.i.us.4, %if.end.r_exit.i.i.us.3
  br i1 %cmp.i.i.us.5, label %if.then.i.i.us.5, label %if.end.r_exit.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %if.end.r_exit.i.i.us.4
  %add8.i.i.us.5 = add i32 %reass.mul.i.i, %conv.i.i.us.5
  %idxprom.i.i.us.5 = sext i32 %add8.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.5
  %71 = bitcast float* %arrayidx.i.i.us.5 to i32*
  %72 = load i32, i32* %71, align 4, !tbaa !12
  %arrayidx15.i.i.us.5 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.5
  %73 = bitcast float* %arrayidx15.i.i.us.5 to i32*
  store i32 %72, i32* %73, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.5

if.end.r_exit.i.i.us.5:                           ; preds = %if.then.i.i.us.5, %if.end.r_exit.i.i.us.4
  br i1 %cmp.i.i.us.6, label %if.then.i.i.us.6, label %if.end.r_exit.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %if.end.r_exit.i.i.us.5
  %add8.i.i.us.6 = add i32 %reass.mul.i.i, %conv.i.i.us.6
  %idxprom.i.i.us.6 = sext i32 %add8.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.6
  %74 = bitcast float* %arrayidx.i.i.us.6 to i32*
  %75 = load i32, i32* %74, align 4, !tbaa !12
  %arrayidx15.i.i.us.6 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.6
  %76 = bitcast float* %arrayidx15.i.i.us.6 to i32*
  store i32 %75, i32* %76, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.6

if.end.r_exit.i.i.us.6:                           ; preds = %if.then.i.i.us.6, %if.end.r_exit.i.i.us.5
  br i1 %cmp.i.i.us.7, label %if.then.i.i.us.7, label %if.end.r_exit.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %if.end.r_exit.i.i.us.6
  %add8.i.i.us.7 = add i32 %reass.mul.i.i, %conv.i.i.us.7
  %idxprom.i.i.us.7 = sext i32 %add8.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.7
  %77 = bitcast float* %arrayidx.i.i.us.7 to i32*
  %78 = load i32, i32* %77, align 4, !tbaa !12
  %arrayidx15.i.i.us.7 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.7
  %79 = bitcast float* %arrayidx15.i.i.us.7 to i32*
  store i32 %78, i32* %79, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.7

if.end.r_exit.i.i.us.7:                           ; preds = %if.then.i.i.us.7, %if.end.r_exit.i.i.us.6
  br i1 %cmp.i.i.us.8, label %if.then.i.i.us.8, label %if.end.r_exit.i.i.us.8

if.then.i.i.us.8:                                 ; preds = %if.end.r_exit.i.i.us.7
  %add8.i.i.us.8 = add i32 %reass.mul.i.i, %conv.i.i.us.8
  %idxprom.i.i.us.8 = sext i32 %add8.i.i.us.8 to i64
  %arrayidx.i.i.us.8 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.8
  %80 = bitcast float* %arrayidx.i.i.us.8 to i32*
  %81 = load i32, i32* %80, align 4, !tbaa !12
  %arrayidx15.i.i.us.8 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.8
  %82 = bitcast float* %arrayidx15.i.i.us.8 to i32*
  store i32 %81, i32* %82, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.8

if.end.r_exit.i.i.us.8:                           ; preds = %if.then.i.i.us.8, %if.end.r_exit.i.i.us.7
  br i1 %cmp.i.i.us.9, label %if.then.i.i.us.9, label %if.end.r_exit.i.i.us.9

if.then.i.i.us.9:                                 ; preds = %if.end.r_exit.i.i.us.8
  %add8.i.i.us.9 = add i32 %reass.mul.i.i, %conv.i.i.us.9
  %idxprom.i.i.us.9 = sext i32 %add8.i.i.us.9 to i64
  %arrayidx.i.i.us.9 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.9
  %83 = bitcast float* %arrayidx.i.i.us.9 to i32*
  %84 = load i32, i32* %83, align 4, !tbaa !12
  %arrayidx15.i.i.us.9 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.9
  %85 = bitcast float* %arrayidx15.i.i.us.9 to i32*
  store i32 %84, i32* %85, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.9

if.end.r_exit.i.i.us.9:                           ; preds = %if.then.i.i.us.9, %if.end.r_exit.i.i.us.8
  br i1 %cmp.i.i.us.10, label %if.then.i.i.us.10, label %if.end.r_exit.i.i.us.10

if.then.i.i.us.10:                                ; preds = %if.end.r_exit.i.i.us.9
  %add8.i.i.us.10 = add i32 %reass.mul.i.i, %conv.i.i.us.10
  %idxprom.i.i.us.10 = sext i32 %add8.i.i.us.10 to i64
  %arrayidx.i.i.us.10 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.10
  %86 = bitcast float* %arrayidx.i.i.us.10 to i32*
  %87 = load i32, i32* %86, align 4, !tbaa !12
  %arrayidx15.i.i.us.10 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.10
  %88 = bitcast float* %arrayidx15.i.i.us.10 to i32*
  store i32 %87, i32* %88, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.10

if.end.r_exit.i.i.us.10:                          ; preds = %if.then.i.i.us.10, %if.end.r_exit.i.i.us.9
  br i1 %cmp.i.i.us.11, label %if.then.i.i.us.11, label %if.end.r_exit.i.i.us.11

if.then.i.i.us.11:                                ; preds = %if.end.r_exit.i.i.us.10
  %add8.i.i.us.11 = add i32 %reass.mul.i.i, %conv.i.i.us.11
  %idxprom.i.i.us.11 = sext i32 %add8.i.i.us.11 to i64
  %arrayidx.i.i.us.11 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.11
  %89 = bitcast float* %arrayidx.i.i.us.11 to i32*
  %90 = load i32, i32* %89, align 4, !tbaa !12
  %arrayidx15.i.i.us.11 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.11
  %91 = bitcast float* %arrayidx15.i.i.us.11 to i32*
  store i32 %90, i32* %91, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.11

if.end.r_exit.i.i.us.11:                          ; preds = %if.then.i.i.us.11, %if.end.r_exit.i.i.us.10
  br i1 %cmp.i.i.us.12, label %if.then.i.i.us.12, label %if.end.r_exit.i.i.us.12

if.then.i.i.us.12:                                ; preds = %if.end.r_exit.i.i.us.11
  %add8.i.i.us.12 = add i32 %reass.mul.i.i, %conv.i.i.us.12
  %idxprom.i.i.us.12 = sext i32 %add8.i.i.us.12 to i64
  %arrayidx.i.i.us.12 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.12
  %92 = bitcast float* %arrayidx.i.i.us.12 to i32*
  %93 = load i32, i32* %92, align 4, !tbaa !12
  %arrayidx15.i.i.us.12 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.12
  %94 = bitcast float* %arrayidx15.i.i.us.12 to i32*
  store i32 %93, i32* %94, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.12

if.end.r_exit.i.i.us.12:                          ; preds = %if.then.i.i.us.12, %if.end.r_exit.i.i.us.11
  br i1 %cmp.i.i.us.13, label %if.then.i.i.us.13, label %if.end.r_exit.i.i.us.13

if.then.i.i.us.13:                                ; preds = %if.end.r_exit.i.i.us.12
  %add8.i.i.us.13 = add i32 %reass.mul.i.i, %conv.i.i.us.13
  %idxprom.i.i.us.13 = sext i32 %add8.i.i.us.13 to i64
  %arrayidx.i.i.us.13 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.13
  %95 = bitcast float* %arrayidx.i.i.us.13 to i32*
  %96 = load i32, i32* %95, align 4, !tbaa !12
  %arrayidx15.i.i.us.13 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.13
  %97 = bitcast float* %arrayidx15.i.i.us.13 to i32*
  store i32 %96, i32* %97, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.13

if.end.r_exit.i.i.us.13:                          ; preds = %if.then.i.i.us.13, %if.end.r_exit.i.i.us.12
  br i1 %cmp.i.i.us.14, label %if.then.i.i.us.14, label %if.end.r_exit.i.i.us.14

if.then.i.i.us.14:                                ; preds = %if.end.r_exit.i.i.us.13
  %add8.i.i.us.14 = add i32 %reass.mul.i.i, %conv.i.i.us.14
  %idxprom.i.i.us.14 = sext i32 %add8.i.i.us.14 to i64
  %arrayidx.i.i.us.14 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.14
  %98 = bitcast float* %arrayidx.i.i.us.14 to i32*
  %99 = load i32, i32* %98, align 4, !tbaa !12
  %arrayidx15.i.i.us.14 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.14
  %100 = bitcast float* %arrayidx15.i.i.us.14 to i32*
  store i32 %99, i32* %100, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.14

if.end.r_exit.i.i.us.14:                          ; preds = %if.then.i.i.us.14, %if.end.r_exit.i.i.us.13
  br i1 %cmp.i.i.us.15, label %if.then.i.i.us.15, label %if.end.r_exit.i.i.us.15

if.then.i.i.us.15:                                ; preds = %if.end.r_exit.i.i.us.14
  %add8.i.i.us.15 = add i32 %reass.mul.i.i, %conv.i.i.us.15
  %idxprom.i.i.us.15 = sext i32 %add8.i.i.us.15 to i64
  %arrayidx.i.i.us.15 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.15
  %101 = bitcast float* %arrayidx.i.i.us.15 to i32*
  %102 = load i32, i32* %101, align 4, !tbaa !12
  %arrayidx15.i.i.us.15 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.15
  %103 = bitcast float* %arrayidx15.i.i.us.15 to i32*
  store i32 %102, i32* %103, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.15

if.end.r_exit.i.i.us.15:                          ; preds = %if.then.i.i.us.15, %if.end.r_exit.i.i.us.14
  br i1 %cmp.i.i.us.16, label %if.then.i.i.us.16, label %if.end.r_exit.i.i.us.16

if.then.i.i.us.16:                                ; preds = %if.end.r_exit.i.i.us.15
  %add8.i.i.us.16 = add i32 %reass.mul.i.i, %conv.i.i.us.16
  %idxprom.i.i.us.16 = sext i32 %add8.i.i.us.16 to i64
  %arrayidx.i.i.us.16 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.16
  %104 = bitcast float* %arrayidx.i.i.us.16 to i32*
  %105 = load i32, i32* %104, align 4, !tbaa !12
  %arrayidx15.i.i.us.16 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.16
  %106 = bitcast float* %arrayidx15.i.i.us.16 to i32*
  store i32 %105, i32* %106, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.16

if.end.r_exit.i.i.us.16:                          ; preds = %if.then.i.i.us.16, %if.end.r_exit.i.i.us.15
  br i1 %cmp.i.i.us.17, label %if.then.i.i.us.17, label %if.end.r_exit.i.i.us.17

if.then.i.i.us.17:                                ; preds = %if.end.r_exit.i.i.us.16
  %add8.i.i.us.17 = add i32 %reass.mul.i.i, %conv.i.i.us.17
  %idxprom.i.i.us.17 = sext i32 %add8.i.i.us.17 to i64
  %arrayidx.i.i.us.17 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.17
  %107 = bitcast float* %arrayidx.i.i.us.17 to i32*
  %108 = load i32, i32* %107, align 4, !tbaa !12
  %arrayidx15.i.i.us.17 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.17
  %109 = bitcast float* %arrayidx15.i.i.us.17 to i32*
  store i32 %108, i32* %109, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.17

if.end.r_exit.i.i.us.17:                          ; preds = %if.then.i.i.us.17, %if.end.r_exit.i.i.us.16
  br i1 %cmp.i.i.us.18, label %if.then.i.i.us.18, label %if.end.r_exit.i.i.us.18

if.then.i.i.us.18:                                ; preds = %if.end.r_exit.i.i.us.17
  %add8.i.i.us.18 = add i32 %reass.mul.i.i, %conv.i.i.us.18
  %idxprom.i.i.us.18 = sext i32 %add8.i.i.us.18 to i64
  %arrayidx.i.i.us.18 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.18
  %110 = bitcast float* %arrayidx.i.i.us.18 to i32*
  %111 = load i32, i32* %110, align 4, !tbaa !12
  %arrayidx15.i.i.us.18 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.18
  %112 = bitcast float* %arrayidx15.i.i.us.18 to i32*
  store i32 %111, i32* %112, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.18

if.end.r_exit.i.i.us.18:                          ; preds = %if.then.i.i.us.18, %if.end.r_exit.i.i.us.17
  br i1 %cmp.i.i.us.19, label %if.then.i.i.us.19, label %if.end.r_exit.i.i.us.19

if.then.i.i.us.19:                                ; preds = %if.end.r_exit.i.i.us.18
  %add8.i.i.us.19 = add i32 %reass.mul.i.i, %conv.i.i.us.19
  %idxprom.i.i.us.19 = sext i32 %add8.i.i.us.19 to i64
  %arrayidx.i.i.us.19 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.19
  %113 = bitcast float* %arrayidx.i.i.us.19 to i32*
  %114 = load i32, i32* %113, align 4, !tbaa !12
  %arrayidx15.i.i.us.19 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.19
  %115 = bitcast float* %arrayidx15.i.i.us.19 to i32*
  store i32 %114, i32* %115, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.19

if.end.r_exit.i.i.us.19:                          ; preds = %if.then.i.i.us.19, %if.end.r_exit.i.i.us.18
  br i1 %cmp.i.i.us.20, label %if.then.i.i.us.20, label %if.end.r_exit.i.i.us.20

if.then.i.i.us.20:                                ; preds = %if.end.r_exit.i.i.us.19
  %add8.i.i.us.20 = add i32 %reass.mul.i.i, %conv.i.i.us.20
  %idxprom.i.i.us.20 = sext i32 %add8.i.i.us.20 to i64
  %arrayidx.i.i.us.20 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.20
  %116 = bitcast float* %arrayidx.i.i.us.20 to i32*
  %117 = load i32, i32* %116, align 4, !tbaa !12
  %arrayidx15.i.i.us.20 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.20
  %118 = bitcast float* %arrayidx15.i.i.us.20 to i32*
  store i32 %117, i32* %118, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.20

if.end.r_exit.i.i.us.20:                          ; preds = %if.then.i.i.us.20, %if.end.r_exit.i.i.us.19
  br i1 %cmp.i.i.us.21, label %if.then.i.i.us.21, label %if.end.r_exit.i.i.us.21

if.then.i.i.us.21:                                ; preds = %if.end.r_exit.i.i.us.20
  %add8.i.i.us.21 = add i32 %reass.mul.i.i, %conv.i.i.us.21
  %idxprom.i.i.us.21 = sext i32 %add8.i.i.us.21 to i64
  %arrayidx.i.i.us.21 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.21
  %119 = bitcast float* %arrayidx.i.i.us.21 to i32*
  %120 = load i32, i32* %119, align 4, !tbaa !12
  %arrayidx15.i.i.us.21 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.21
  %121 = bitcast float* %arrayidx15.i.i.us.21 to i32*
  store i32 %120, i32* %121, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.21

if.end.r_exit.i.i.us.21:                          ; preds = %if.then.i.i.us.21, %if.end.r_exit.i.i.us.20
  br i1 %cmp.i.i.us.22, label %if.then.i.i.us.22, label %if.end.r_exit.i.i.us.22

if.then.i.i.us.22:                                ; preds = %if.end.r_exit.i.i.us.21
  %add8.i.i.us.22 = add i32 %reass.mul.i.i, %conv.i.i.us.22
  %idxprom.i.i.us.22 = sext i32 %add8.i.i.us.22 to i64
  %arrayidx.i.i.us.22 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.22
  %122 = bitcast float* %arrayidx.i.i.us.22 to i32*
  %123 = load i32, i32* %122, align 4, !tbaa !12
  %arrayidx15.i.i.us.22 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.22
  %124 = bitcast float* %arrayidx15.i.i.us.22 to i32*
  store i32 %123, i32* %124, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.22

if.end.r_exit.i.i.us.22:                          ; preds = %if.then.i.i.us.22, %if.end.r_exit.i.i.us.21
  br i1 %cmp.i.i.us.23, label %if.then.i.i.us.23, label %if.end.r_exit.i.i.us.23

if.then.i.i.us.23:                                ; preds = %if.end.r_exit.i.i.us.22
  %add8.i.i.us.23 = add i32 %reass.mul.i.i, %conv.i.i.us.23
  %idxprom.i.i.us.23 = sext i32 %add8.i.i.us.23 to i64
  %arrayidx.i.i.us.23 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.23
  %125 = bitcast float* %arrayidx.i.i.us.23 to i32*
  %126 = load i32, i32* %125, align 4, !tbaa !12
  %arrayidx15.i.i.us.23 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.23
  %127 = bitcast float* %arrayidx15.i.i.us.23 to i32*
  store i32 %126, i32* %127, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.23

if.end.r_exit.i.i.us.23:                          ; preds = %if.then.i.i.us.23, %if.end.r_exit.i.i.us.22
  br i1 %cmp.i.i.us.24, label %if.then.i.i.us.24, label %if.end.r_exit.i.i.us.24

if.then.i.i.us.24:                                ; preds = %if.end.r_exit.i.i.us.23
  %add8.i.i.us.24 = add i32 %reass.mul.i.i, %conv.i.i.us.24
  %idxprom.i.i.us.24 = sext i32 %add8.i.i.us.24 to i64
  %arrayidx.i.i.us.24 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.24
  %128 = bitcast float* %arrayidx.i.i.us.24 to i32*
  %129 = load i32, i32* %128, align 4, !tbaa !12
  %arrayidx15.i.i.us.24 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.24
  %130 = bitcast float* %arrayidx15.i.i.us.24 to i32*
  store i32 %129, i32* %130, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.24

if.end.r_exit.i.i.us.24:                          ; preds = %if.then.i.i.us.24, %if.end.r_exit.i.i.us.23
  br i1 %cmp.i.i.us.25, label %if.then.i.i.us.25, label %if.end.r_exit.i.i.us.25

if.then.i.i.us.25:                                ; preds = %if.end.r_exit.i.i.us.24
  %add8.i.i.us.25 = add i32 %reass.mul.i.i, %conv.i.i.us.25
  %idxprom.i.i.us.25 = sext i32 %add8.i.i.us.25 to i64
  %arrayidx.i.i.us.25 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.25
  %131 = bitcast float* %arrayidx.i.i.us.25 to i32*
  %132 = load i32, i32* %131, align 4, !tbaa !12
  %arrayidx15.i.i.us.25 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.25
  %133 = bitcast float* %arrayidx15.i.i.us.25 to i32*
  store i32 %132, i32* %133, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.25

if.end.r_exit.i.i.us.25:                          ; preds = %if.then.i.i.us.25, %if.end.r_exit.i.i.us.24
  br i1 %cmp.i.i.us.26, label %if.then.i.i.us.26, label %if.end.r_exit.i.i.us.26

if.then.i.i.us.26:                                ; preds = %if.end.r_exit.i.i.us.25
  %add8.i.i.us.26 = add i32 %reass.mul.i.i, %conv.i.i.us.26
  %idxprom.i.i.us.26 = sext i32 %add8.i.i.us.26 to i64
  %arrayidx.i.i.us.26 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.26
  %134 = bitcast float* %arrayidx.i.i.us.26 to i32*
  %135 = load i32, i32* %134, align 4, !tbaa !12
  %arrayidx15.i.i.us.26 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.26
  %136 = bitcast float* %arrayidx15.i.i.us.26 to i32*
  store i32 %135, i32* %136, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.26

if.end.r_exit.i.i.us.26:                          ; preds = %if.then.i.i.us.26, %if.end.r_exit.i.i.us.25
  br i1 %cmp.i.i.us.27, label %if.then.i.i.us.27, label %if.end.r_exit.i.i.us.27

if.then.i.i.us.27:                                ; preds = %if.end.r_exit.i.i.us.26
  %add8.i.i.us.27 = add i32 %reass.mul.i.i, %conv.i.i.us.27
  %idxprom.i.i.us.27 = sext i32 %add8.i.i.us.27 to i64
  %arrayidx.i.i.us.27 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.27
  %137 = bitcast float* %arrayidx.i.i.us.27 to i32*
  %138 = load i32, i32* %137, align 4, !tbaa !12
  %arrayidx15.i.i.us.27 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.27
  %139 = bitcast float* %arrayidx15.i.i.us.27 to i32*
  store i32 %138, i32* %139, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.27

if.end.r_exit.i.i.us.27:                          ; preds = %if.then.i.i.us.27, %if.end.r_exit.i.i.us.26
  br i1 %cmp.i.i.us.28, label %if.then.i.i.us.28, label %if.end.r_exit.i.i.us.28

if.then.i.i.us.28:                                ; preds = %if.end.r_exit.i.i.us.27
  %add8.i.i.us.28 = add i32 %reass.mul.i.i, %conv.i.i.us.28
  %idxprom.i.i.us.28 = sext i32 %add8.i.i.us.28 to i64
  %arrayidx.i.i.us.28 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.28
  %140 = bitcast float* %arrayidx.i.i.us.28 to i32*
  %141 = load i32, i32* %140, align 4, !tbaa !12
  %arrayidx15.i.i.us.28 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.28
  %142 = bitcast float* %arrayidx15.i.i.us.28 to i32*
  store i32 %141, i32* %142, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.28

if.end.r_exit.i.i.us.28:                          ; preds = %if.then.i.i.us.28, %if.end.r_exit.i.i.us.27
  br i1 %cmp.i.i.us.29, label %if.then.i.i.us.29, label %if.end.r_exit.i.i.us.29

if.then.i.i.us.29:                                ; preds = %if.end.r_exit.i.i.us.28
  %add8.i.i.us.29 = add i32 %reass.mul.i.i, %conv.i.i.us.29
  %idxprom.i.i.us.29 = sext i32 %add8.i.i.us.29 to i64
  %arrayidx.i.i.us.29 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.29
  %143 = bitcast float* %arrayidx.i.i.us.29 to i32*
  %144 = load i32, i32* %143, align 4, !tbaa !12
  %arrayidx15.i.i.us.29 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.29
  %145 = bitcast float* %arrayidx15.i.i.us.29 to i32*
  store i32 %144, i32* %145, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.29

if.end.r_exit.i.i.us.29:                          ; preds = %if.then.i.i.us.29, %if.end.r_exit.i.i.us.28
  br i1 %cmp.i.i.us.30, label %if.then.i.i.us.30, label %if.end.r_exit.i.i.us.30

if.then.i.i.us.30:                                ; preds = %if.end.r_exit.i.i.us.29
  %add8.i.i.us.30 = add i32 %reass.mul.i.i, %conv.i.i.us.30
  %idxprom.i.i.us.30 = sext i32 %add8.i.i.us.30 to i64
  %arrayidx.i.i.us.30 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.30
  %146 = bitcast float* %arrayidx.i.i.us.30 to i32*
  %147 = load i32, i32* %146, align 4, !tbaa !12
  %arrayidx15.i.i.us.30 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.30
  %148 = bitcast float* %arrayidx15.i.i.us.30 to i32*
  store i32 %147, i32* %148, align 4, !tbaa !12, !llvm.access.group !16
  br label %if.end.r_exit.i.i.us.30

if.end.r_exit.i.i.us.30:                          ; preds = %if.then.i.i.us.30, %if.end.r_exit.i.i.us.29
  br i1 %cmp.i.i.us.31, label %if.then.i.i.us.31, label %pregion_for_end.i.i

if.then.i.i.us.31:                                ; preds = %if.end.r_exit.i.i.us.30
  %add8.i.i.us.31 = add i32 %reass.mul.i.i, %conv.i.i.us.31
  %idxprom.i.i.us.31 = sext i32 %add8.i.i.us.31 to i64
  %arrayidx.i.i.us.31 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.us.31
  %149 = bitcast float* %arrayidx.i.i.us.31 to i32*
  %150 = load i32, i32* %149, align 4, !tbaa !12
  %arrayidx15.i.i.us.31 = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us.31
  %151 = bitcast float* %arrayidx15.i.i.us.31 to i32*
  store i32 %150, i32* %151, align 4, !tbaa !12, !llvm.access.group !16
  br label %pregion_for_end.i.i
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
