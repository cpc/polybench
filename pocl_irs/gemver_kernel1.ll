; ModuleID = './OM/KBEGAJBBAALIMPLKDCOKKOGOMEPCEPLPNLGKF/gemver_kernel1/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_gemver_kernel1(float* nocapture %0, float* nocapture readonly %1, float* nocapture readonly %2, float* nocapture readonly %3, float* nocapture readonly %4, i32 %5, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %6, i64 %7, i64 %8, i64 %9) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
pregion_for_entry.pregion_for_init.i:
  %mul.i.i = shl i64 %7, 5
  %mul3.i.i = shl i64 %8, 3
  %conv2.i = trunc i64 %mul3.i.i to i32
  %cmp.i = icmp slt i32 %conv2.i, %5
  %sext.i = shl i64 %8, 35
  %idxprom.i = ashr exact i64 %sext.i, 32
  %arrayidx.i = getelementptr inbounds float, float* %3, i64 %idxprom.i
  %arrayidx9.i = getelementptr inbounds float, float* %4, i64 %idxprom.i
  %mul.i = mul nsw i32 %conv2.i, %5
  br i1 %cmp.i, label %vector.scevcheck, label %pregion_for_end.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i
  %10 = trunc i64 %8 to i32
  %11 = mul i32 %10, %5
  %12 = shl i32 %11, 3
  %13 = trunc i64 %7 to i32
  %14 = shl i32 %13, 5
  %15 = add i32 %12, %14
  %16 = icmp sgt i32 %15, 2147483616
  br i1 %16, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %sext508 = shl i64 %8, 35
  %17 = ashr exact i64 %sext508, 32
  %scevgep = getelementptr float, float* %3, i64 %17
  %scevgep3 = bitcast float* %scevgep to i8*
  %uglygep = getelementptr i8, i8* %scevgep3, i64 1
  %18 = trunc i64 %8 to i32
  %19 = mul i32 %18, %5
  %20 = shl i32 %19, 3
  %21 = trunc i64 %7 to i32
  %22 = shl i32 %21, 5
  %23 = add i32 %20, %22
  %24 = sext i32 %23 to i64
  %scevgep4 = getelementptr float, float* %0, i64 %24
  %scevgep45 = bitcast float* %scevgep4 to i8*
  %25 = add nsw i64 %24, 32
  %scevgep6 = getelementptr float, float* %0, i64 %25
  %26 = sext i32 %22 to i64
  %scevgep8 = getelementptr float, float* %1, i64 %26
  %27 = add nsw i64 %26, 32
  %scevgep10 = getelementptr float, float* %1, i64 %27
  %scevgep12 = getelementptr float, float* %4, i64 %17
  %scevgep1213 = bitcast float* %scevgep12 to i8*
  %uglygep14 = getelementptr i8, i8* %scevgep1213, i64 1
  %scevgep15 = getelementptr float, float* %2, i64 %26
  %scevgep17 = getelementptr float, float* %2, i64 %27
  %bound0 = icmp ult float* %arrayidx.i, %scevgep6
  %bound1 = icmp ugt i8* %uglygep, %scevgep45
  %found.conflict = and i1 %bound0, %bound1
  %bound019 = icmp ult float* %scevgep8, %scevgep6
  %bound120 = icmp ult float* %scevgep4, %scevgep10
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  %bound023 = icmp ult float* %arrayidx9.i, %scevgep6
  %bound124 = icmp ugt i8* %uglygep14, %scevgep45
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  %bound027 = icmp ult float* %scevgep15, %scevgep6
  %bound128 = icmp ult float* %scevgep4, %scevgep17
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx30 = or i1 %conflict.rdx26, %found.conflict29
  br i1 %conflict.rdx30, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat32 = shufflevector <8 x i32> %broadcast.splatinsert31, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert33 = insertelement <8 x float*> undef, float* %arrayidx.i, i32 0
  %broadcast.splat34 = shufflevector <8 x float*> %broadcast.splatinsert33, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert35 = insertelement <8 x float*> undef, float* %arrayidx9.i, i32 0
  %broadcast.splat36 = shufflevector <8 x float*> %broadcast.splatinsert35, <8 x float*> undef, <8 x i32> zeroinitializer
  %28 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %29 = trunc <8 x i64> %28 to <8 x i32>
  %30 = icmp sgt <8 x i32> %broadcast.splat32, %29
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %31 = extractelement <8 x i64> %28, i32 0
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds float, float* %1, i64 %33
  %35 = bitcast float* %34 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %35, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !21, !noalias !19
  %wide.masked.gather37 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !23, !noalias !19
  %36 = getelementptr inbounds float, float* %2, i64 %33
  %37 = bitcast float* %36 to <8 x float>*
  %wide.masked.load38 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %37, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !25, !noalias !19
  %38 = fmul <8 x float> %wide.masked.gather37, %wide.masked.load38
  %39 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather, <8 x float> %wide.masked.load, <8 x float> %38)
  %40 = extractelement <8 x i32> %29, i32 0
  %41 = add nsw i32 %mul.i, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %0, i64 %42
  %44 = bitcast float* %43 to <8 x float>*
  %wide.masked.load39 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %44, i32 4, <8 x i1> %30, <8 x float> undef), !tbaa !12, !alias.scope !19
  %45 = fadd <8 x float> %wide.masked.load39, %39
  %46 = bitcast float* %43 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %45, <8 x float>* %46, i32 4, <8 x i1> %30), !tbaa !12, !alias.scope !19, !llvm.access.group !27
  %47 = or <8 x i64> %broadcast.splat, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %48 = trunc <8 x i64> %47 to <8 x i32>
  %49 = icmp sgt <8 x i32> %broadcast.splat32, %48
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %50 = extractelement <8 x i64> %47, i32 0
  %51 = shl i64 %50, 32
  %52 = ashr exact i64 %51, 32
  %53 = getelementptr inbounds float, float* %1, i64 %52
  %54 = bitcast float* %53 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %54, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !21, !noalias !19
  %wide.masked.gather37.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !23, !noalias !19
  %55 = getelementptr inbounds float, float* %2, i64 %52
  %56 = bitcast float* %55 to <8 x float>*
  %wide.masked.load38.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %56, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !25, !noalias !19
  %57 = fmul <8 x float> %wide.masked.gather37.1, %wide.masked.load38.1
  %58 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather.1, <8 x float> %wide.masked.load.1, <8 x float> %57)
  %59 = extractelement <8 x i32> %48, i32 0
  %60 = add nsw i32 %mul.i, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %0, i64 %61
  %63 = bitcast float* %62 to <8 x float>*
  %wide.masked.load39.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %63, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !19
  %64 = fadd <8 x float> %wide.masked.load39.1, %58
  %65 = bitcast float* %62 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %64, <8 x float>* %65, i32 4, <8 x i1> %49), !tbaa !12, !alias.scope !19, !llvm.access.group !27
  %66 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %67 = trunc <8 x i64> %66 to <8 x i32>
  %68 = icmp sgt <8 x i32> %broadcast.splat32, %67
  %wide.masked.gather.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %69 = extractelement <8 x i64> %66, i32 0
  %70 = shl i64 %69, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds float, float* %1, i64 %71
  %73 = bitcast float* %72 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %73, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !21, !noalias !19
  %wide.masked.gather37.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !23, !noalias !19
  %74 = getelementptr inbounds float, float* %2, i64 %71
  %75 = bitcast float* %74 to <8 x float>*
  %wide.masked.load38.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %75, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !25, !noalias !19
  %76 = fmul <8 x float> %wide.masked.gather37.2, %wide.masked.load38.2
  %77 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather.2, <8 x float> %wide.masked.load.2, <8 x float> %76)
  %78 = extractelement <8 x i32> %67, i32 0
  %79 = add nsw i32 %mul.i, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %0, i64 %80
  %82 = bitcast float* %81 to <8 x float>*
  %wide.masked.load39.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %82, i32 4, <8 x i1> %68, <8 x float> undef), !tbaa !12, !alias.scope !19
  %83 = fadd <8 x float> %wide.masked.load39.2, %77
  %84 = bitcast float* %81 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %83, <8 x float>* %84, i32 4, <8 x i1> %68), !tbaa !12, !alias.scope !19, !llvm.access.group !27
  %85 = or <8 x i64> %broadcast.splat, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %86 = trunc <8 x i64> %85 to <8 x i32>
  %87 = icmp sgt <8 x i32> %broadcast.splat32, %86
  %wide.masked.gather.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %87, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %88 = extractelement <8 x i64> %85, i32 0
  %89 = shl i64 %88, 32
  %90 = ashr exact i64 %89, 32
  %91 = getelementptr inbounds float, float* %1, i64 %90
  %92 = bitcast float* %91 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %92, i32 4, <8 x i1> %87, <8 x float> undef), !tbaa !12, !alias.scope !21, !noalias !19
  %wide.masked.gather37.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %87, <8 x float> undef), !tbaa !12, !alias.scope !23, !noalias !19
  %93 = getelementptr inbounds float, float* %2, i64 %90
  %94 = bitcast float* %93 to <8 x float>*
  %wide.masked.load38.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %94, i32 4, <8 x i1> %87, <8 x float> undef), !tbaa !12, !alias.scope !25, !noalias !19
  %95 = fmul <8 x float> %wide.masked.gather37.3, %wide.masked.load38.3
  %96 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather.3, <8 x float> %wide.masked.load.3, <8 x float> %95)
  %97 = extractelement <8 x i32> %86, i32 0
  %98 = add nsw i32 %mul.i, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %0, i64 %99
  %101 = bitcast float* %100 to <8 x float>*
  %wide.masked.load39.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %101, i32 4, <8 x i1> %87, <8 x float> undef), !tbaa !12, !alias.scope !19
  %102 = fadd <8 x float> %wide.masked.load39.3, %96
  %103 = bitcast float* %100 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %102, <8 x float>* %103, i32 4, <8 x i1> %87), !tbaa !12, !alias.scope !19, !llvm.access.group !27
  br label %pregion_for_end.i

pregion_for_entry.entry.i.us:                     ; preds = %if.end.r_exit.i.us.1532, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.us.preheader ], [ %852, %if.end.r_exit.i.us.1532 ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp4.i.us = icmp slt i32 %conv.i.us, %5
  br i1 %cmp4.i.us, label %if.then.i.us, label %if.end.r_exit.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %104 = load float, float* %arrayidx.i, align 4, !tbaa !12
  %sext26.i.us = shl i64 %add1.i.i.us, 32
  %idxprom6.i.us = ashr exact i64 %sext26.i.us, 32
  %arrayidx7.i.us = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us
  %105 = load float, float* %arrayidx7.i.us, align 4, !tbaa !12
  %106 = load float, float* %arrayidx9.i, align 4, !tbaa !12
  %arrayidx11.i.us = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us
  %107 = load float, float* %arrayidx11.i.us, align 4, !tbaa !12
  %mul12.i.us = fmul float %106, %107
  %108 = tail call float @llvm.fmuladd.f32(float %104, float %105, float %mul12.i.us) #6
  %add.i.us = add nsw i32 %mul.i, %conv.i.us
  %idxprom13.i.us = sext i32 %add.i.us to i64
  %arrayidx14.i.us = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us
  %109 = load float, float* %arrayidx14.i.us, align 4, !tbaa !12
  %add15.i.us = fadd float %109, %108
  store float %add15.i.us, float* %arrayidx14.i.us, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us

if.end.r_exit.i.us:                               ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us
  %110 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1518 = add nuw nsw i64 %110, %mul.i.i
  %conv.i.us.1519 = trunc i64 %add1.i.i.us.1518 to i32
  %cmp4.i.us.1520 = icmp slt i32 %conv.i.us.1519, %5
  br i1 %cmp4.i.us.1520, label %if.then.i.us.1531, label %if.end.r_exit.i.us.1532

pregion_for_end.i.loopexit:                       ; preds = %if.end.r_exit.i.us.1532
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i
  %add6.i.i.1 = or i64 %mul3.i.i, 1
  %conv2.i.1 = trunc i64 %add6.i.i.1 to i32
  %cmp.i.1 = icmp slt i32 %conv2.i.1, %5
  %sext.i.1 = shl i64 %add6.i.i.1, 32
  %idxprom.i.1 = ashr exact i64 %sext.i.1, 32
  %arrayidx.i.1 = getelementptr inbounds float, float* %3, i64 %idxprom.i.1
  %arrayidx9.i.1 = getelementptr inbounds float, float* %4, i64 %idxprom.i.1
  %mul.i.1 = mul nsw i32 %conv2.i.1, %5
  br i1 %cmp.i.1, label %vector.scevcheck47, label %pregion_for_end.i.1

vector.scevcheck47:                               ; preds = %pregion_for_end.i
  %111 = mul i32 %conv2.i.1, %5
  %112 = trunc i64 %7 to i32
  %113 = shl i32 %112, 5
  %114 = add i32 %111, %113
  %115 = icmp sgt i32 %114, 2147483616
  br i1 %115, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.memcheck85

pregion_for_entry.entry.i.us.1.preheader:         ; preds = %vector.memcheck85, %vector.scevcheck47
  br label %pregion_for_entry.entry.i.us.1

vector.memcheck85:                                ; preds = %vector.scevcheck47
  %sext507 = shl i64 %8, 35
  %116 = ashr exact i64 %sext507, 32
  %117 = or i64 %116, 1
  %scevgep49 = getelementptr float, float* %3, i64 %117
  %scevgep4950 = bitcast float* %scevgep49 to i8*
  %uglygep51 = getelementptr i8, i8* %scevgep4950, i64 1
  %118 = mul i32 %conv2.i.1, %5
  %119 = trunc i64 %7 to i32
  %120 = shl i32 %119, 5
  %121 = add i32 %118, %120
  %122 = sext i32 %121 to i64
  %scevgep52 = getelementptr float, float* %0, i64 %122
  %scevgep5253 = bitcast float* %scevgep52 to i8*
  %123 = add nsw i64 %122, 32
  %scevgep54 = getelementptr float, float* %0, i64 %123
  %124 = sext i32 %120 to i64
  %scevgep56 = getelementptr float, float* %1, i64 %124
  %125 = add nsw i64 %124, 32
  %scevgep58 = getelementptr float, float* %1, i64 %125
  %scevgep60 = getelementptr float, float* %4, i64 %117
  %scevgep6061 = bitcast float* %scevgep60 to i8*
  %uglygep62 = getelementptr i8, i8* %scevgep6061, i64 1
  %scevgep63 = getelementptr float, float* %2, i64 %124
  %scevgep65 = getelementptr float, float* %2, i64 %125
  %bound068 = icmp ult float* %arrayidx.i.1, %scevgep54
  %bound169 = icmp ugt i8* %uglygep51, %scevgep5253
  %found.conflict70 = and i1 %bound068, %bound169
  %bound071 = icmp ult float* %scevgep56, %scevgep54
  %bound172 = icmp ult float* %scevgep52, %scevgep58
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %found.conflict70, %found.conflict73
  %bound076 = icmp ult float* %arrayidx9.i.1, %scevgep54
  %bound177 = icmp ugt i8* %uglygep62, %scevgep5253
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx74, %found.conflict78
  %bound080 = icmp ult float* %scevgep63, %scevgep54
  %bound181 = icmp ult float* %scevgep52, %scevgep65
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx79, %found.conflict82
  br i1 %conflict.rdx83, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck85
  %broadcast.splatinsert93 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat94 = shufflevector <8 x i64> %broadcast.splatinsert93, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat96 = shufflevector <8 x i32> %broadcast.splatinsert95, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <8 x float*> undef, float* %arrayidx.i.1, i32 0
  %broadcast.splat98 = shufflevector <8 x float*> %broadcast.splatinsert97, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <8 x float*> undef, float* %arrayidx9.i.1, i32 0
  %broadcast.splat102 = shufflevector <8 x float*> %broadcast.splatinsert101, <8 x float*> undef, <8 x i32> zeroinitializer
  %126 = or <8 x i64> %broadcast.splat94, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %127 = trunc <8 x i64> %126 to <8 x i32>
  %128 = icmp sgt <8 x i32> %broadcast.splat96, %127
  %wide.masked.gather99 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !33
  %129 = extractelement <8 x i64> %126, i32 0
  %130 = shl i64 %129, 32
  %131 = ashr exact i64 %130, 32
  %132 = getelementptr inbounds float, float* %1, i64 %131
  %133 = bitcast float* %132 to <8 x float>*
  %wide.masked.load100 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %133, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !33
  %wide.masked.gather103 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12, !alias.scope !37, !noalias !33
  %134 = getelementptr inbounds float, float* %2, i64 %131
  %135 = bitcast float* %134 to <8 x float>*
  %wide.masked.load104 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %135, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !33
  %136 = fmul <8 x float> %wide.masked.gather103, %wide.masked.load104
  %137 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99, <8 x float> %wide.masked.load100, <8 x float> %136)
  %138 = extractelement <8 x i32> %127, i32 0
  %139 = add nsw i32 %mul.i.1, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %0, i64 %140
  %142 = bitcast float* %141 to <8 x float>*
  %wide.masked.load105 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %142, i32 4, <8 x i1> %128, <8 x float> undef), !tbaa !12, !alias.scope !33
  %143 = fadd <8 x float> %wide.masked.load105, %137
  %144 = bitcast float* %141 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %143, <8 x float>* %144, i32 4, <8 x i1> %128), !tbaa !12, !alias.scope !33, !llvm.access.group !27
  %145 = or <8 x i64> %broadcast.splat94, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %146 = trunc <8 x i64> %145 to <8 x i32>
  %147 = icmp sgt <8 x i32> %broadcast.splat96, %146
  %wide.masked.gather99.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %147, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !33
  %148 = extractelement <8 x i64> %145, i32 0
  %149 = shl i64 %148, 32
  %150 = ashr exact i64 %149, 32
  %151 = getelementptr inbounds float, float* %1, i64 %150
  %152 = bitcast float* %151 to <8 x float>*
  %wide.masked.load100.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %152, i32 4, <8 x i1> %147, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !33
  %wide.masked.gather103.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %147, <8 x float> undef), !tbaa !12, !alias.scope !37, !noalias !33
  %153 = getelementptr inbounds float, float* %2, i64 %150
  %154 = bitcast float* %153 to <8 x float>*
  %wide.masked.load104.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %154, i32 4, <8 x i1> %147, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !33
  %155 = fmul <8 x float> %wide.masked.gather103.1, %wide.masked.load104.1
  %156 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99.1, <8 x float> %wide.masked.load100.1, <8 x float> %155)
  %157 = extractelement <8 x i32> %146, i32 0
  %158 = add nsw i32 %mul.i.1, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %0, i64 %159
  %161 = bitcast float* %160 to <8 x float>*
  %wide.masked.load105.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %161, i32 4, <8 x i1> %147, <8 x float> undef), !tbaa !12, !alias.scope !33
  %162 = fadd <8 x float> %wide.masked.load105.1, %156
  %163 = bitcast float* %160 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %162, <8 x float>* %163, i32 4, <8 x i1> %147), !tbaa !12, !alias.scope !33, !llvm.access.group !27
  %164 = or <8 x i64> %broadcast.splat94, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %165 = trunc <8 x i64> %164 to <8 x i32>
  %166 = icmp sgt <8 x i32> %broadcast.splat96, %165
  %wide.masked.gather99.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !33
  %167 = extractelement <8 x i64> %164, i32 0
  %168 = shl i64 %167, 32
  %169 = ashr exact i64 %168, 32
  %170 = getelementptr inbounds float, float* %1, i64 %169
  %171 = bitcast float* %170 to <8 x float>*
  %wide.masked.load100.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %171, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !33
  %wide.masked.gather103.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !37, !noalias !33
  %172 = getelementptr inbounds float, float* %2, i64 %169
  %173 = bitcast float* %172 to <8 x float>*
  %wide.masked.load104.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %173, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !33
  %174 = fmul <8 x float> %wide.masked.gather103.2, %wide.masked.load104.2
  %175 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99.2, <8 x float> %wide.masked.load100.2, <8 x float> %174)
  %176 = extractelement <8 x i32> %165, i32 0
  %177 = add nsw i32 %mul.i.1, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %0, i64 %178
  %180 = bitcast float* %179 to <8 x float>*
  %wide.masked.load105.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %180, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !33
  %181 = fadd <8 x float> %wide.masked.load105.2, %175
  %182 = bitcast float* %179 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %181, <8 x float>* %182, i32 4, <8 x i1> %166), !tbaa !12, !alias.scope !33, !llvm.access.group !27
  %183 = or <8 x i64> %broadcast.splat94, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %184 = trunc <8 x i64> %183 to <8 x i32>
  %185 = icmp sgt <8 x i32> %broadcast.splat96, %184
  %wide.masked.gather99.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %185, <8 x float> undef), !tbaa !12, !alias.scope !30, !noalias !33
  %186 = extractelement <8 x i64> %183, i32 0
  %187 = shl i64 %186, 32
  %188 = ashr exact i64 %187, 32
  %189 = getelementptr inbounds float, float* %1, i64 %188
  %190 = bitcast float* %189 to <8 x float>*
  %wide.masked.load100.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %190, i32 4, <8 x i1> %185, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !33
  %wide.masked.gather103.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %185, <8 x float> undef), !tbaa !12, !alias.scope !37, !noalias !33
  %191 = getelementptr inbounds float, float* %2, i64 %188
  %192 = bitcast float* %191 to <8 x float>*
  %wide.masked.load104.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %192, i32 4, <8 x i1> %185, <8 x float> undef), !tbaa !12, !alias.scope !39, !noalias !33
  %193 = fmul <8 x float> %wide.masked.gather103.3, %wide.masked.load104.3
  %194 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99.3, <8 x float> %wide.masked.load100.3, <8 x float> %193)
  %195 = extractelement <8 x i32> %184, i32 0
  %196 = add nsw i32 %mul.i.1, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %0, i64 %197
  %199 = bitcast float* %198 to <8 x float>*
  %wide.masked.load105.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %199, i32 4, <8 x i1> %185, <8 x float> undef), !tbaa !12, !alias.scope !33
  %200 = fadd <8 x float> %wide.masked.load105.3, %194
  %201 = bitcast float* %198 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %200, <8 x float>* %201, i32 4, <8 x i1> %185), !tbaa !12, !alias.scope !33, !llvm.access.group !27
  br label %pregion_for_end.i.1

pregion_for_entry.entry.i.us.1:                   ; preds = %if.end.r_exit.i.us.1.1, %pregion_for_entry.entry.i.us.1.preheader
  %_local_id_x.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.us.1.preheader ], [ %845, %if.end.r_exit.i.us.1.1 ]
  %add1.i.i.us.1 = add nuw nsw i64 %_local_id_x.0.us.1, %mul.i.i
  %conv.i.us.1 = trunc i64 %add1.i.i.us.1 to i32
  %cmp4.i.us.1 = icmp slt i32 %conv.i.us.1, %5
  br i1 %cmp4.i.us.1, label %if.then.i.us.1, label %if.end.r_exit.i.us.1

if.then.i.us.1:                                   ; preds = %pregion_for_entry.entry.i.us.1
  %202 = load float, float* %arrayidx.i.1, align 4, !tbaa !12
  %sext26.i.us.1 = shl i64 %add1.i.i.us.1, 32
  %idxprom6.i.us.1 = ashr exact i64 %sext26.i.us.1, 32
  %arrayidx7.i.us.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.1
  %203 = load float, float* %arrayidx7.i.us.1, align 4, !tbaa !12
  %204 = load float, float* %arrayidx9.i.1, align 4, !tbaa !12
  %arrayidx11.i.us.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.1
  %205 = load float, float* %arrayidx11.i.us.1, align 4, !tbaa !12
  %mul12.i.us.1 = fmul float %204, %205
  %206 = tail call float @llvm.fmuladd.f32(float %202, float %203, float %mul12.i.us.1) #6
  %add.i.us.1 = add nsw i32 %mul.i.1, %conv.i.us.1
  %idxprom13.i.us.1 = sext i32 %add.i.us.1 to i64
  %arrayidx14.i.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.1
  %207 = load float, float* %arrayidx14.i.us.1, align 4, !tbaa !12
  %add15.i.us.1 = fadd float %207, %206
  store float %add15.i.us.1, float* %arrayidx14.i.us.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.1

if.end.r_exit.i.us.1:                             ; preds = %if.then.i.us.1, %pregion_for_entry.entry.i.us.1
  %208 = or i64 %_local_id_x.0.us.1, 1
  %add1.i.i.us.1.1 = add nuw nsw i64 %208, %mul.i.i
  %conv.i.us.1.1 = trunc i64 %add1.i.i.us.1.1 to i32
  %cmp4.i.us.1.1 = icmp slt i32 %conv.i.us.1.1, %5
  br i1 %cmp4.i.us.1.1, label %if.then.i.us.1.1, label %if.end.r_exit.i.us.1.1

pregion_for_end.i.1.loopexit:                     ; preds = %if.end.r_exit.i.us.1.1
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.ph86, %pregion_for_end.i
  %add6.i.i.2 = or i64 %mul3.i.i, 2
  %conv2.i.2 = trunc i64 %add6.i.i.2 to i32
  %cmp.i.2 = icmp slt i32 %conv2.i.2, %5
  %sext.i.2 = shl i64 %add6.i.i.2, 32
  %idxprom.i.2 = ashr exact i64 %sext.i.2, 32
  %arrayidx.i.2 = getelementptr inbounds float, float* %3, i64 %idxprom.i.2
  %arrayidx9.i.2 = getelementptr inbounds float, float* %4, i64 %idxprom.i.2
  %mul.i.2 = mul nsw i32 %conv2.i.2, %5
  br i1 %cmp.i.2, label %vector.scevcheck113, label %pregion_for_end.i.2

vector.scevcheck113:                              ; preds = %pregion_for_end.i.1
  %209 = mul i32 %conv2.i.2, %5
  %210 = trunc i64 %7 to i32
  %211 = shl i32 %210, 5
  %212 = add i32 %209, %211
  %213 = icmp sgt i32 %212, 2147483616
  br i1 %213, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.memcheck151

pregion_for_entry.entry.i.us.2.preheader:         ; preds = %vector.memcheck151, %vector.scevcheck113
  br label %pregion_for_entry.entry.i.us.2

vector.memcheck151:                               ; preds = %vector.scevcheck113
  %sext506 = shl i64 %8, 35
  %214 = ashr exact i64 %sext506, 32
  %215 = or i64 %214, 2
  %scevgep115 = getelementptr float, float* %3, i64 %215
  %scevgep115116 = bitcast float* %scevgep115 to i8*
  %uglygep117 = getelementptr i8, i8* %scevgep115116, i64 1
  %216 = mul i32 %conv2.i.2, %5
  %217 = trunc i64 %7 to i32
  %218 = shl i32 %217, 5
  %219 = add i32 %216, %218
  %220 = sext i32 %219 to i64
  %scevgep118 = getelementptr float, float* %0, i64 %220
  %scevgep118119 = bitcast float* %scevgep118 to i8*
  %221 = add nsw i64 %220, 32
  %scevgep120 = getelementptr float, float* %0, i64 %221
  %222 = sext i32 %218 to i64
  %scevgep122 = getelementptr float, float* %1, i64 %222
  %223 = add nsw i64 %222, 32
  %scevgep124 = getelementptr float, float* %1, i64 %223
  %scevgep126 = getelementptr float, float* %4, i64 %215
  %scevgep126127 = bitcast float* %scevgep126 to i8*
  %uglygep128 = getelementptr i8, i8* %scevgep126127, i64 1
  %scevgep129 = getelementptr float, float* %2, i64 %222
  %scevgep131 = getelementptr float, float* %2, i64 %223
  %bound0134 = icmp ult float* %arrayidx.i.2, %scevgep120
  %bound1135 = icmp ugt i8* %uglygep117, %scevgep118119
  %found.conflict136 = and i1 %bound0134, %bound1135
  %bound0137 = icmp ult float* %scevgep122, %scevgep120
  %bound1138 = icmp ult float* %scevgep118, %scevgep124
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %found.conflict136, %found.conflict139
  %bound0142 = icmp ult float* %arrayidx9.i.2, %scevgep120
  %bound1143 = icmp ugt i8* %uglygep128, %scevgep118119
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx140, %found.conflict144
  %bound0146 = icmp ult float* %scevgep129, %scevgep120
  %bound1147 = icmp ult float* %scevgep118, %scevgep131
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  br i1 %conflict.rdx149, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck151
  %broadcast.splatinsert159 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat160 = shufflevector <8 x i64> %broadcast.splatinsert159, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert161 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat162 = shufflevector <8 x i32> %broadcast.splatinsert161, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert163 = insertelement <8 x float*> undef, float* %arrayidx.i.2, i32 0
  %broadcast.splat164 = shufflevector <8 x float*> %broadcast.splatinsert163, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert167 = insertelement <8 x float*> undef, float* %arrayidx9.i.2, i32 0
  %broadcast.splat168 = shufflevector <8 x float*> %broadcast.splatinsert167, <8 x float*> undef, <8 x i32> zeroinitializer
  %224 = or <8 x i64> %broadcast.splat160, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %225 = trunc <8 x i64> %224 to <8 x i32>
  %226 = icmp sgt <8 x i32> %broadcast.splat162, %225
  %wide.masked.gather165 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %226, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %227 = extractelement <8 x i64> %224, i32 0
  %228 = shl i64 %227, 32
  %229 = ashr exact i64 %228, 32
  %230 = getelementptr inbounds float, float* %1, i64 %229
  %231 = bitcast float* %230 to <8 x float>*
  %wide.masked.load166 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %231, i32 4, <8 x i1> %226, <8 x float> undef), !tbaa !12, !alias.scope !46, !noalias !44
  %wide.masked.gather169 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %226, <8 x float> undef), !tbaa !12, !alias.scope !48, !noalias !44
  %232 = getelementptr inbounds float, float* %2, i64 %229
  %233 = bitcast float* %232 to <8 x float>*
  %wide.masked.load170 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %233, i32 4, <8 x i1> %226, <8 x float> undef), !tbaa !12, !alias.scope !50, !noalias !44
  %234 = fmul <8 x float> %wide.masked.gather169, %wide.masked.load170
  %235 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165, <8 x float> %wide.masked.load166, <8 x float> %234)
  %236 = extractelement <8 x i32> %225, i32 0
  %237 = add nsw i32 %mul.i.2, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %0, i64 %238
  %240 = bitcast float* %239 to <8 x float>*
  %wide.masked.load171 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %240, i32 4, <8 x i1> %226, <8 x float> undef), !tbaa !12, !alias.scope !44
  %241 = fadd <8 x float> %wide.masked.load171, %235
  %242 = bitcast float* %239 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %241, <8 x float>* %242, i32 4, <8 x i1> %226), !tbaa !12, !alias.scope !44, !llvm.access.group !27
  %243 = or <8 x i64> %broadcast.splat160, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %244 = trunc <8 x i64> %243 to <8 x i32>
  %245 = icmp sgt <8 x i32> %broadcast.splat162, %244
  %wide.masked.gather165.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %245, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %246 = extractelement <8 x i64> %243, i32 0
  %247 = shl i64 %246, 32
  %248 = ashr exact i64 %247, 32
  %249 = getelementptr inbounds float, float* %1, i64 %248
  %250 = bitcast float* %249 to <8 x float>*
  %wide.masked.load166.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %250, i32 4, <8 x i1> %245, <8 x float> undef), !tbaa !12, !alias.scope !46, !noalias !44
  %wide.masked.gather169.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %245, <8 x float> undef), !tbaa !12, !alias.scope !48, !noalias !44
  %251 = getelementptr inbounds float, float* %2, i64 %248
  %252 = bitcast float* %251 to <8 x float>*
  %wide.masked.load170.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %252, i32 4, <8 x i1> %245, <8 x float> undef), !tbaa !12, !alias.scope !50, !noalias !44
  %253 = fmul <8 x float> %wide.masked.gather169.1, %wide.masked.load170.1
  %254 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165.1, <8 x float> %wide.masked.load166.1, <8 x float> %253)
  %255 = extractelement <8 x i32> %244, i32 0
  %256 = add nsw i32 %mul.i.2, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %0, i64 %257
  %259 = bitcast float* %258 to <8 x float>*
  %wide.masked.load171.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %259, i32 4, <8 x i1> %245, <8 x float> undef), !tbaa !12, !alias.scope !44
  %260 = fadd <8 x float> %wide.masked.load171.1, %254
  %261 = bitcast float* %258 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %260, <8 x float>* %261, i32 4, <8 x i1> %245), !tbaa !12, !alias.scope !44, !llvm.access.group !27
  %262 = or <8 x i64> %broadcast.splat160, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %263 = trunc <8 x i64> %262 to <8 x i32>
  %264 = icmp sgt <8 x i32> %broadcast.splat162, %263
  %wide.masked.gather165.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %264, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %265 = extractelement <8 x i64> %262, i32 0
  %266 = shl i64 %265, 32
  %267 = ashr exact i64 %266, 32
  %268 = getelementptr inbounds float, float* %1, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  %wide.masked.load166.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %269, i32 4, <8 x i1> %264, <8 x float> undef), !tbaa !12, !alias.scope !46, !noalias !44
  %wide.masked.gather169.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %264, <8 x float> undef), !tbaa !12, !alias.scope !48, !noalias !44
  %270 = getelementptr inbounds float, float* %2, i64 %267
  %271 = bitcast float* %270 to <8 x float>*
  %wide.masked.load170.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %271, i32 4, <8 x i1> %264, <8 x float> undef), !tbaa !12, !alias.scope !50, !noalias !44
  %272 = fmul <8 x float> %wide.masked.gather169.2, %wide.masked.load170.2
  %273 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165.2, <8 x float> %wide.masked.load166.2, <8 x float> %272)
  %274 = extractelement <8 x i32> %263, i32 0
  %275 = add nsw i32 %mul.i.2, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %0, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  %wide.masked.load171.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %278, i32 4, <8 x i1> %264, <8 x float> undef), !tbaa !12, !alias.scope !44
  %279 = fadd <8 x float> %wide.masked.load171.2, %273
  %280 = bitcast float* %277 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %279, <8 x float>* %280, i32 4, <8 x i1> %264), !tbaa !12, !alias.scope !44, !llvm.access.group !27
  %281 = or <8 x i64> %broadcast.splat160, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %282 = trunc <8 x i64> %281 to <8 x i32>
  %283 = icmp sgt <8 x i32> %broadcast.splat162, %282
  %wide.masked.gather165.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %283, <8 x float> undef), !tbaa !12, !alias.scope !41, !noalias !44
  %284 = extractelement <8 x i64> %281, i32 0
  %285 = shl i64 %284, 32
  %286 = ashr exact i64 %285, 32
  %287 = getelementptr inbounds float, float* %1, i64 %286
  %288 = bitcast float* %287 to <8 x float>*
  %wide.masked.load166.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %288, i32 4, <8 x i1> %283, <8 x float> undef), !tbaa !12, !alias.scope !46, !noalias !44
  %wide.masked.gather169.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %283, <8 x float> undef), !tbaa !12, !alias.scope !48, !noalias !44
  %289 = getelementptr inbounds float, float* %2, i64 %286
  %290 = bitcast float* %289 to <8 x float>*
  %wide.masked.load170.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %290, i32 4, <8 x i1> %283, <8 x float> undef), !tbaa !12, !alias.scope !50, !noalias !44
  %291 = fmul <8 x float> %wide.masked.gather169.3, %wide.masked.load170.3
  %292 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165.3, <8 x float> %wide.masked.load166.3, <8 x float> %291)
  %293 = extractelement <8 x i32> %282, i32 0
  %294 = add nsw i32 %mul.i.2, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %0, i64 %295
  %297 = bitcast float* %296 to <8 x float>*
  %wide.masked.load171.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %297, i32 4, <8 x i1> %283, <8 x float> undef), !tbaa !12, !alias.scope !44
  %298 = fadd <8 x float> %wide.masked.load171.3, %292
  %299 = bitcast float* %296 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %298, <8 x float>* %299, i32 4, <8 x i1> %283), !tbaa !12, !alias.scope !44, !llvm.access.group !27
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.us.2:                   ; preds = %if.end.r_exit.i.us.2.1, %pregion_for_entry.entry.i.us.2.preheader
  %_local_id_x.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.us.2.preheader ], [ %838, %if.end.r_exit.i.us.2.1 ]
  %add1.i.i.us.2 = add nuw nsw i64 %_local_id_x.0.us.2, %mul.i.i
  %conv.i.us.2 = trunc i64 %add1.i.i.us.2 to i32
  %cmp4.i.us.2 = icmp slt i32 %conv.i.us.2, %5
  br i1 %cmp4.i.us.2, label %if.then.i.us.2, label %if.end.r_exit.i.us.2

if.then.i.us.2:                                   ; preds = %pregion_for_entry.entry.i.us.2
  %300 = load float, float* %arrayidx.i.2, align 4, !tbaa !12
  %sext26.i.us.2 = shl i64 %add1.i.i.us.2, 32
  %idxprom6.i.us.2 = ashr exact i64 %sext26.i.us.2, 32
  %arrayidx7.i.us.2 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.2
  %301 = load float, float* %arrayidx7.i.us.2, align 4, !tbaa !12
  %302 = load float, float* %arrayidx9.i.2, align 4, !tbaa !12
  %arrayidx11.i.us.2 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.2
  %303 = load float, float* %arrayidx11.i.us.2, align 4, !tbaa !12
  %mul12.i.us.2 = fmul float %302, %303
  %304 = tail call float @llvm.fmuladd.f32(float %300, float %301, float %mul12.i.us.2) #6
  %add.i.us.2 = add nsw i32 %mul.i.2, %conv.i.us.2
  %idxprom13.i.us.2 = sext i32 %add.i.us.2 to i64
  %arrayidx14.i.us.2 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.2
  %305 = load float, float* %arrayidx14.i.us.2, align 4, !tbaa !12
  %add15.i.us.2 = fadd float %305, %304
  store float %add15.i.us.2, float* %arrayidx14.i.us.2, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.2

if.end.r_exit.i.us.2:                             ; preds = %if.then.i.us.2, %pregion_for_entry.entry.i.us.2
  %306 = or i64 %_local_id_x.0.us.2, 1
  %add1.i.i.us.2.1 = add nuw nsw i64 %306, %mul.i.i
  %conv.i.us.2.1 = trunc i64 %add1.i.i.us.2.1 to i32
  %cmp4.i.us.2.1 = icmp slt i32 %conv.i.us.2.1, %5
  br i1 %cmp4.i.us.2.1, label %if.then.i.us.2.1, label %if.end.r_exit.i.us.2.1

pregion_for_end.i.2.loopexit:                     ; preds = %if.end.r_exit.i.us.2.1
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.ph152, %pregion_for_end.i.1
  %add6.i.i.3 = or i64 %mul3.i.i, 3
  %conv2.i.3 = trunc i64 %add6.i.i.3 to i32
  %cmp.i.3 = icmp slt i32 %conv2.i.3, %5
  %sext.i.3 = shl i64 %add6.i.i.3, 32
  %idxprom.i.3 = ashr exact i64 %sext.i.3, 32
  %arrayidx.i.3 = getelementptr inbounds float, float* %3, i64 %idxprom.i.3
  %arrayidx9.i.3 = getelementptr inbounds float, float* %4, i64 %idxprom.i.3
  %mul.i.3 = mul nsw i32 %conv2.i.3, %5
  br i1 %cmp.i.3, label %vector.scevcheck179, label %pregion_for_end.i.3

vector.scevcheck179:                              ; preds = %pregion_for_end.i.2
  %307 = mul i32 %conv2.i.3, %5
  %308 = trunc i64 %7 to i32
  %309 = shl i32 %308, 5
  %310 = add i32 %307, %309
  %311 = icmp sgt i32 %310, 2147483616
  br i1 %311, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.memcheck217

pregion_for_entry.entry.i.us.3.preheader:         ; preds = %vector.memcheck217, %vector.scevcheck179
  br label %pregion_for_entry.entry.i.us.3

vector.memcheck217:                               ; preds = %vector.scevcheck179
  %sext505 = shl i64 %8, 35
  %312 = ashr exact i64 %sext505, 32
  %313 = or i64 %312, 3
  %scevgep181 = getelementptr float, float* %3, i64 %313
  %scevgep181182 = bitcast float* %scevgep181 to i8*
  %uglygep183 = getelementptr i8, i8* %scevgep181182, i64 1
  %314 = mul i32 %conv2.i.3, %5
  %315 = trunc i64 %7 to i32
  %316 = shl i32 %315, 5
  %317 = add i32 %314, %316
  %318 = sext i32 %317 to i64
  %scevgep184 = getelementptr float, float* %0, i64 %318
  %scevgep184185 = bitcast float* %scevgep184 to i8*
  %319 = add nsw i64 %318, 32
  %scevgep186 = getelementptr float, float* %0, i64 %319
  %320 = sext i32 %316 to i64
  %scevgep188 = getelementptr float, float* %1, i64 %320
  %321 = add nsw i64 %320, 32
  %scevgep190 = getelementptr float, float* %1, i64 %321
  %scevgep192 = getelementptr float, float* %4, i64 %313
  %scevgep192193 = bitcast float* %scevgep192 to i8*
  %uglygep194 = getelementptr i8, i8* %scevgep192193, i64 1
  %scevgep195 = getelementptr float, float* %2, i64 %320
  %scevgep197 = getelementptr float, float* %2, i64 %321
  %bound0200 = icmp ult float* %arrayidx.i.3, %scevgep186
  %bound1201 = icmp ugt i8* %uglygep183, %scevgep184185
  %found.conflict202 = and i1 %bound0200, %bound1201
  %bound0203 = icmp ult float* %scevgep188, %scevgep186
  %bound1204 = icmp ult float* %scevgep184, %scevgep190
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %found.conflict202, %found.conflict205
  %bound0208 = icmp ult float* %arrayidx9.i.3, %scevgep186
  %bound1209 = icmp ugt i8* %uglygep194, %scevgep184185
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx206, %found.conflict210
  %bound0212 = icmp ult float* %scevgep195, %scevgep186
  %bound1213 = icmp ult float* %scevgep184, %scevgep197
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx211, %found.conflict214
  br i1 %conflict.rdx215, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck217
  %broadcast.splatinsert225 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat226 = shufflevector <8 x i64> %broadcast.splatinsert225, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat228 = shufflevector <8 x i32> %broadcast.splatinsert227, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float*> undef, float* %arrayidx.i.3, i32 0
  %broadcast.splat230 = shufflevector <8 x float*> %broadcast.splatinsert229, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert233 = insertelement <8 x float*> undef, float* %arrayidx9.i.3, i32 0
  %broadcast.splat234 = shufflevector <8 x float*> %broadcast.splatinsert233, <8 x float*> undef, <8 x i32> zeroinitializer
  %322 = or <8 x i64> %broadcast.splat226, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %323 = trunc <8 x i64> %322 to <8 x i32>
  %324 = icmp sgt <8 x i32> %broadcast.splat228, %323
  %wide.masked.gather231 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %324, <8 x float> undef), !tbaa !12, !alias.scope !52, !noalias !55
  %325 = extractelement <8 x i64> %322, i32 0
  %326 = shl i64 %325, 32
  %327 = ashr exact i64 %326, 32
  %328 = getelementptr inbounds float, float* %1, i64 %327
  %329 = bitcast float* %328 to <8 x float>*
  %wide.masked.load232 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %329, i32 4, <8 x i1> %324, <8 x float> undef), !tbaa !12, !alias.scope !57, !noalias !55
  %wide.masked.gather235 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %324, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !55
  %330 = getelementptr inbounds float, float* %2, i64 %327
  %331 = bitcast float* %330 to <8 x float>*
  %wide.masked.load236 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %331, i32 4, <8 x i1> %324, <8 x float> undef), !tbaa !12, !alias.scope !61, !noalias !55
  %332 = fmul <8 x float> %wide.masked.gather235, %wide.masked.load236
  %333 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231, <8 x float> %wide.masked.load232, <8 x float> %332)
  %334 = extractelement <8 x i32> %323, i32 0
  %335 = add nsw i32 %mul.i.3, %334
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %0, i64 %336
  %338 = bitcast float* %337 to <8 x float>*
  %wide.masked.load237 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %338, i32 4, <8 x i1> %324, <8 x float> undef), !tbaa !12, !alias.scope !55
  %339 = fadd <8 x float> %wide.masked.load237, %333
  %340 = bitcast float* %337 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %339, <8 x float>* %340, i32 4, <8 x i1> %324), !tbaa !12, !alias.scope !55, !llvm.access.group !27
  %341 = or <8 x i64> %broadcast.splat226, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %342 = trunc <8 x i64> %341 to <8 x i32>
  %343 = icmp sgt <8 x i32> %broadcast.splat228, %342
  %wide.masked.gather231.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %343, <8 x float> undef), !tbaa !12, !alias.scope !52, !noalias !55
  %344 = extractelement <8 x i64> %341, i32 0
  %345 = shl i64 %344, 32
  %346 = ashr exact i64 %345, 32
  %347 = getelementptr inbounds float, float* %1, i64 %346
  %348 = bitcast float* %347 to <8 x float>*
  %wide.masked.load232.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %348, i32 4, <8 x i1> %343, <8 x float> undef), !tbaa !12, !alias.scope !57, !noalias !55
  %wide.masked.gather235.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %343, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !55
  %349 = getelementptr inbounds float, float* %2, i64 %346
  %350 = bitcast float* %349 to <8 x float>*
  %wide.masked.load236.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %350, i32 4, <8 x i1> %343, <8 x float> undef), !tbaa !12, !alias.scope !61, !noalias !55
  %351 = fmul <8 x float> %wide.masked.gather235.1, %wide.masked.load236.1
  %352 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231.1, <8 x float> %wide.masked.load232.1, <8 x float> %351)
  %353 = extractelement <8 x i32> %342, i32 0
  %354 = add nsw i32 %mul.i.3, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float, float* %0, i64 %355
  %357 = bitcast float* %356 to <8 x float>*
  %wide.masked.load237.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %357, i32 4, <8 x i1> %343, <8 x float> undef), !tbaa !12, !alias.scope !55
  %358 = fadd <8 x float> %wide.masked.load237.1, %352
  %359 = bitcast float* %356 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %358, <8 x float>* %359, i32 4, <8 x i1> %343), !tbaa !12, !alias.scope !55, !llvm.access.group !27
  %360 = or <8 x i64> %broadcast.splat226, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %361 = trunc <8 x i64> %360 to <8 x i32>
  %362 = icmp sgt <8 x i32> %broadcast.splat228, %361
  %wide.masked.gather231.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !52, !noalias !55
  %363 = extractelement <8 x i64> %360, i32 0
  %364 = shl i64 %363, 32
  %365 = ashr exact i64 %364, 32
  %366 = getelementptr inbounds float, float* %1, i64 %365
  %367 = bitcast float* %366 to <8 x float>*
  %wide.masked.load232.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %367, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !57, !noalias !55
  %wide.masked.gather235.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !55
  %368 = getelementptr inbounds float, float* %2, i64 %365
  %369 = bitcast float* %368 to <8 x float>*
  %wide.masked.load236.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %369, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !61, !noalias !55
  %370 = fmul <8 x float> %wide.masked.gather235.2, %wide.masked.load236.2
  %371 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231.2, <8 x float> %wide.masked.load232.2, <8 x float> %370)
  %372 = extractelement <8 x i32> %361, i32 0
  %373 = add nsw i32 %mul.i.3, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds float, float* %0, i64 %374
  %376 = bitcast float* %375 to <8 x float>*
  %wide.masked.load237.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %376, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !55
  %377 = fadd <8 x float> %wide.masked.load237.2, %371
  %378 = bitcast float* %375 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %377, <8 x float>* %378, i32 4, <8 x i1> %362), !tbaa !12, !alias.scope !55, !llvm.access.group !27
  %379 = or <8 x i64> %broadcast.splat226, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %380 = trunc <8 x i64> %379 to <8 x i32>
  %381 = icmp sgt <8 x i32> %broadcast.splat228, %380
  %wide.masked.gather231.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %381, <8 x float> undef), !tbaa !12, !alias.scope !52, !noalias !55
  %382 = extractelement <8 x i64> %379, i32 0
  %383 = shl i64 %382, 32
  %384 = ashr exact i64 %383, 32
  %385 = getelementptr inbounds float, float* %1, i64 %384
  %386 = bitcast float* %385 to <8 x float>*
  %wide.masked.load232.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %386, i32 4, <8 x i1> %381, <8 x float> undef), !tbaa !12, !alias.scope !57, !noalias !55
  %wide.masked.gather235.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %381, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !55
  %387 = getelementptr inbounds float, float* %2, i64 %384
  %388 = bitcast float* %387 to <8 x float>*
  %wide.masked.load236.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %388, i32 4, <8 x i1> %381, <8 x float> undef), !tbaa !12, !alias.scope !61, !noalias !55
  %389 = fmul <8 x float> %wide.masked.gather235.3, %wide.masked.load236.3
  %390 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231.3, <8 x float> %wide.masked.load232.3, <8 x float> %389)
  %391 = extractelement <8 x i32> %380, i32 0
  %392 = add nsw i32 %mul.i.3, %391
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds float, float* %0, i64 %393
  %395 = bitcast float* %394 to <8 x float>*
  %wide.masked.load237.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %395, i32 4, <8 x i1> %381, <8 x float> undef), !tbaa !12, !alias.scope !55
  %396 = fadd <8 x float> %wide.masked.load237.3, %390
  %397 = bitcast float* %394 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %396, <8 x float>* %397, i32 4, <8 x i1> %381), !tbaa !12, !alias.scope !55, !llvm.access.group !27
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.us.3:                   ; preds = %if.end.r_exit.i.us.3.1, %pregion_for_entry.entry.i.us.3.preheader
  %_local_id_x.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.us.3.preheader ], [ %831, %if.end.r_exit.i.us.3.1 ]
  %add1.i.i.us.3 = add nuw nsw i64 %_local_id_x.0.us.3, %mul.i.i
  %conv.i.us.3 = trunc i64 %add1.i.i.us.3 to i32
  %cmp4.i.us.3 = icmp slt i32 %conv.i.us.3, %5
  br i1 %cmp4.i.us.3, label %if.then.i.us.3, label %if.end.r_exit.i.us.3

if.then.i.us.3:                                   ; preds = %pregion_for_entry.entry.i.us.3
  %398 = load float, float* %arrayidx.i.3, align 4, !tbaa !12
  %sext26.i.us.3 = shl i64 %add1.i.i.us.3, 32
  %idxprom6.i.us.3 = ashr exact i64 %sext26.i.us.3, 32
  %arrayidx7.i.us.3 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.3
  %399 = load float, float* %arrayidx7.i.us.3, align 4, !tbaa !12
  %400 = load float, float* %arrayidx9.i.3, align 4, !tbaa !12
  %arrayidx11.i.us.3 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.3
  %401 = load float, float* %arrayidx11.i.us.3, align 4, !tbaa !12
  %mul12.i.us.3 = fmul float %400, %401
  %402 = tail call float @llvm.fmuladd.f32(float %398, float %399, float %mul12.i.us.3) #6
  %add.i.us.3 = add nsw i32 %mul.i.3, %conv.i.us.3
  %idxprom13.i.us.3 = sext i32 %add.i.us.3 to i64
  %arrayidx14.i.us.3 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.3
  %403 = load float, float* %arrayidx14.i.us.3, align 4, !tbaa !12
  %add15.i.us.3 = fadd float %403, %402
  store float %add15.i.us.3, float* %arrayidx14.i.us.3, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.3

if.end.r_exit.i.us.3:                             ; preds = %if.then.i.us.3, %pregion_for_entry.entry.i.us.3
  %404 = or i64 %_local_id_x.0.us.3, 1
  %add1.i.i.us.3.1 = add nuw nsw i64 %404, %mul.i.i
  %conv.i.us.3.1 = trunc i64 %add1.i.i.us.3.1 to i32
  %cmp4.i.us.3.1 = icmp slt i32 %conv.i.us.3.1, %5
  br i1 %cmp4.i.us.3.1, label %if.then.i.us.3.1, label %if.end.r_exit.i.us.3.1

pregion_for_end.i.3.loopexit:                     ; preds = %if.end.r_exit.i.us.3.1
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.ph218, %pregion_for_end.i.2
  %add6.i.i.4 = or i64 %mul3.i.i, 4
  %conv2.i.4 = trunc i64 %add6.i.i.4 to i32
  %cmp.i.4 = icmp slt i32 %conv2.i.4, %5
  %sext.i.4 = shl i64 %add6.i.i.4, 32
  %idxprom.i.4 = ashr exact i64 %sext.i.4, 32
  %arrayidx.i.4 = getelementptr inbounds float, float* %3, i64 %idxprom.i.4
  %arrayidx9.i.4 = getelementptr inbounds float, float* %4, i64 %idxprom.i.4
  %mul.i.4 = mul nsw i32 %conv2.i.4, %5
  br i1 %cmp.i.4, label %vector.scevcheck245, label %pregion_for_end.i.4

vector.scevcheck245:                              ; preds = %pregion_for_end.i.3
  %405 = mul i32 %conv2.i.4, %5
  %406 = trunc i64 %7 to i32
  %407 = shl i32 %406, 5
  %408 = add i32 %405, %407
  %409 = icmp sgt i32 %408, 2147483616
  br i1 %409, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.memcheck283

pregion_for_entry.entry.i.us.4.preheader:         ; preds = %vector.memcheck283, %vector.scevcheck245
  br label %pregion_for_entry.entry.i.us.4

vector.memcheck283:                               ; preds = %vector.scevcheck245
  %sext504 = shl i64 %8, 35
  %410 = ashr exact i64 %sext504, 32
  %411 = or i64 %410, 4
  %scevgep247 = getelementptr float, float* %3, i64 %411
  %scevgep247248 = bitcast float* %scevgep247 to i8*
  %uglygep249 = getelementptr i8, i8* %scevgep247248, i64 1
  %412 = mul i32 %conv2.i.4, %5
  %413 = trunc i64 %7 to i32
  %414 = shl i32 %413, 5
  %415 = add i32 %412, %414
  %416 = sext i32 %415 to i64
  %scevgep250 = getelementptr float, float* %0, i64 %416
  %scevgep250251 = bitcast float* %scevgep250 to i8*
  %417 = add nsw i64 %416, 32
  %scevgep252 = getelementptr float, float* %0, i64 %417
  %418 = sext i32 %414 to i64
  %scevgep254 = getelementptr float, float* %1, i64 %418
  %419 = add nsw i64 %418, 32
  %scevgep256 = getelementptr float, float* %1, i64 %419
  %scevgep258 = getelementptr float, float* %4, i64 %411
  %scevgep258259 = bitcast float* %scevgep258 to i8*
  %uglygep260 = getelementptr i8, i8* %scevgep258259, i64 1
  %scevgep261 = getelementptr float, float* %2, i64 %418
  %scevgep263 = getelementptr float, float* %2, i64 %419
  %bound0266 = icmp ult float* %arrayidx.i.4, %scevgep252
  %bound1267 = icmp ugt i8* %uglygep249, %scevgep250251
  %found.conflict268 = and i1 %bound0266, %bound1267
  %bound0269 = icmp ult float* %scevgep254, %scevgep252
  %bound1270 = icmp ult float* %scevgep250, %scevgep256
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %found.conflict268, %found.conflict271
  %bound0274 = icmp ult float* %arrayidx9.i.4, %scevgep252
  %bound1275 = icmp ugt i8* %uglygep260, %scevgep250251
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx277 = or i1 %conflict.rdx272, %found.conflict276
  %bound0278 = icmp ult float* %scevgep261, %scevgep252
  %bound1279 = icmp ult float* %scevgep250, %scevgep263
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %conflict.rdx277, %found.conflict280
  br i1 %conflict.rdx281, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck283
  %broadcast.splatinsert291 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat292 = shufflevector <8 x i64> %broadcast.splatinsert291, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert293 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat294 = shufflevector <8 x i32> %broadcast.splatinsert293, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert295 = insertelement <8 x float*> undef, float* %arrayidx.i.4, i32 0
  %broadcast.splat296 = shufflevector <8 x float*> %broadcast.splatinsert295, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert299 = insertelement <8 x float*> undef, float* %arrayidx9.i.4, i32 0
  %broadcast.splat300 = shufflevector <8 x float*> %broadcast.splatinsert299, <8 x float*> undef, <8 x i32> zeroinitializer
  %420 = or <8 x i64> %broadcast.splat292, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %421 = trunc <8 x i64> %420 to <8 x i32>
  %422 = icmp sgt <8 x i32> %broadcast.splat294, %421
  %wide.masked.gather297 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12, !alias.scope !63, !noalias !66
  %423 = extractelement <8 x i64> %420, i32 0
  %424 = shl i64 %423, 32
  %425 = ashr exact i64 %424, 32
  %426 = getelementptr inbounds float, float* %1, i64 %425
  %427 = bitcast float* %426 to <8 x float>*
  %wide.masked.load298 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %427, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12, !alias.scope !68, !noalias !66
  %wide.masked.gather301 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12, !alias.scope !70, !noalias !66
  %428 = getelementptr inbounds float, float* %2, i64 %425
  %429 = bitcast float* %428 to <8 x float>*
  %wide.masked.load302 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %429, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12, !alias.scope !72, !noalias !66
  %430 = fmul <8 x float> %wide.masked.gather301, %wide.masked.load302
  %431 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297, <8 x float> %wide.masked.load298, <8 x float> %430)
  %432 = extractelement <8 x i32> %421, i32 0
  %433 = add nsw i32 %mul.i.4, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds float, float* %0, i64 %434
  %436 = bitcast float* %435 to <8 x float>*
  %wide.masked.load303 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %436, i32 4, <8 x i1> %422, <8 x float> undef), !tbaa !12, !alias.scope !66
  %437 = fadd <8 x float> %wide.masked.load303, %431
  %438 = bitcast float* %435 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %437, <8 x float>* %438, i32 4, <8 x i1> %422), !tbaa !12, !alias.scope !66, !llvm.access.group !27
  %439 = or <8 x i64> %broadcast.splat292, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %440 = trunc <8 x i64> %439 to <8 x i32>
  %441 = icmp sgt <8 x i32> %broadcast.splat294, %440
  %wide.masked.gather297.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %441, <8 x float> undef), !tbaa !12, !alias.scope !63, !noalias !66
  %442 = extractelement <8 x i64> %439, i32 0
  %443 = shl i64 %442, 32
  %444 = ashr exact i64 %443, 32
  %445 = getelementptr inbounds float, float* %1, i64 %444
  %446 = bitcast float* %445 to <8 x float>*
  %wide.masked.load298.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %446, i32 4, <8 x i1> %441, <8 x float> undef), !tbaa !12, !alias.scope !68, !noalias !66
  %wide.masked.gather301.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %441, <8 x float> undef), !tbaa !12, !alias.scope !70, !noalias !66
  %447 = getelementptr inbounds float, float* %2, i64 %444
  %448 = bitcast float* %447 to <8 x float>*
  %wide.masked.load302.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %448, i32 4, <8 x i1> %441, <8 x float> undef), !tbaa !12, !alias.scope !72, !noalias !66
  %449 = fmul <8 x float> %wide.masked.gather301.1, %wide.masked.load302.1
  %450 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297.1, <8 x float> %wide.masked.load298.1, <8 x float> %449)
  %451 = extractelement <8 x i32> %440, i32 0
  %452 = add nsw i32 %mul.i.4, %451
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds float, float* %0, i64 %453
  %455 = bitcast float* %454 to <8 x float>*
  %wide.masked.load303.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %455, i32 4, <8 x i1> %441, <8 x float> undef), !tbaa !12, !alias.scope !66
  %456 = fadd <8 x float> %wide.masked.load303.1, %450
  %457 = bitcast float* %454 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %456, <8 x float>* %457, i32 4, <8 x i1> %441), !tbaa !12, !alias.scope !66, !llvm.access.group !27
  %458 = or <8 x i64> %broadcast.splat292, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %459 = trunc <8 x i64> %458 to <8 x i32>
  %460 = icmp sgt <8 x i32> %broadcast.splat294, %459
  %wide.masked.gather297.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %460, <8 x float> undef), !tbaa !12, !alias.scope !63, !noalias !66
  %461 = extractelement <8 x i64> %458, i32 0
  %462 = shl i64 %461, 32
  %463 = ashr exact i64 %462, 32
  %464 = getelementptr inbounds float, float* %1, i64 %463
  %465 = bitcast float* %464 to <8 x float>*
  %wide.masked.load298.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %465, i32 4, <8 x i1> %460, <8 x float> undef), !tbaa !12, !alias.scope !68, !noalias !66
  %wide.masked.gather301.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %460, <8 x float> undef), !tbaa !12, !alias.scope !70, !noalias !66
  %466 = getelementptr inbounds float, float* %2, i64 %463
  %467 = bitcast float* %466 to <8 x float>*
  %wide.masked.load302.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %467, i32 4, <8 x i1> %460, <8 x float> undef), !tbaa !12, !alias.scope !72, !noalias !66
  %468 = fmul <8 x float> %wide.masked.gather301.2, %wide.masked.load302.2
  %469 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297.2, <8 x float> %wide.masked.load298.2, <8 x float> %468)
  %470 = extractelement <8 x i32> %459, i32 0
  %471 = add nsw i32 %mul.i.4, %470
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds float, float* %0, i64 %472
  %474 = bitcast float* %473 to <8 x float>*
  %wide.masked.load303.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %474, i32 4, <8 x i1> %460, <8 x float> undef), !tbaa !12, !alias.scope !66
  %475 = fadd <8 x float> %wide.masked.load303.2, %469
  %476 = bitcast float* %473 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %475, <8 x float>* %476, i32 4, <8 x i1> %460), !tbaa !12, !alias.scope !66, !llvm.access.group !27
  %477 = or <8 x i64> %broadcast.splat292, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %478 = trunc <8 x i64> %477 to <8 x i32>
  %479 = icmp sgt <8 x i32> %broadcast.splat294, %478
  %wide.masked.gather297.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %479, <8 x float> undef), !tbaa !12, !alias.scope !63, !noalias !66
  %480 = extractelement <8 x i64> %477, i32 0
  %481 = shl i64 %480, 32
  %482 = ashr exact i64 %481, 32
  %483 = getelementptr inbounds float, float* %1, i64 %482
  %484 = bitcast float* %483 to <8 x float>*
  %wide.masked.load298.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %484, i32 4, <8 x i1> %479, <8 x float> undef), !tbaa !12, !alias.scope !68, !noalias !66
  %wide.masked.gather301.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %479, <8 x float> undef), !tbaa !12, !alias.scope !70, !noalias !66
  %485 = getelementptr inbounds float, float* %2, i64 %482
  %486 = bitcast float* %485 to <8 x float>*
  %wide.masked.load302.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %486, i32 4, <8 x i1> %479, <8 x float> undef), !tbaa !12, !alias.scope !72, !noalias !66
  %487 = fmul <8 x float> %wide.masked.gather301.3, %wide.masked.load302.3
  %488 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297.3, <8 x float> %wide.masked.load298.3, <8 x float> %487)
  %489 = extractelement <8 x i32> %478, i32 0
  %490 = add nsw i32 %mul.i.4, %489
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds float, float* %0, i64 %491
  %493 = bitcast float* %492 to <8 x float>*
  %wide.masked.load303.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %493, i32 4, <8 x i1> %479, <8 x float> undef), !tbaa !12, !alias.scope !66
  %494 = fadd <8 x float> %wide.masked.load303.3, %488
  %495 = bitcast float* %492 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %494, <8 x float>* %495, i32 4, <8 x i1> %479), !tbaa !12, !alias.scope !66, !llvm.access.group !27
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.us.4:                   ; preds = %if.end.r_exit.i.us.4.1, %pregion_for_entry.entry.i.us.4.preheader
  %_local_id_x.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.us.4.preheader ], [ %824, %if.end.r_exit.i.us.4.1 ]
  %add1.i.i.us.4 = add nuw nsw i64 %_local_id_x.0.us.4, %mul.i.i
  %conv.i.us.4 = trunc i64 %add1.i.i.us.4 to i32
  %cmp4.i.us.4 = icmp slt i32 %conv.i.us.4, %5
  br i1 %cmp4.i.us.4, label %if.then.i.us.4, label %if.end.r_exit.i.us.4

if.then.i.us.4:                                   ; preds = %pregion_for_entry.entry.i.us.4
  %496 = load float, float* %arrayidx.i.4, align 4, !tbaa !12
  %sext26.i.us.4 = shl i64 %add1.i.i.us.4, 32
  %idxprom6.i.us.4 = ashr exact i64 %sext26.i.us.4, 32
  %arrayidx7.i.us.4 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.4
  %497 = load float, float* %arrayidx7.i.us.4, align 4, !tbaa !12
  %498 = load float, float* %arrayidx9.i.4, align 4, !tbaa !12
  %arrayidx11.i.us.4 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.4
  %499 = load float, float* %arrayidx11.i.us.4, align 4, !tbaa !12
  %mul12.i.us.4 = fmul float %498, %499
  %500 = tail call float @llvm.fmuladd.f32(float %496, float %497, float %mul12.i.us.4) #6
  %add.i.us.4 = add nsw i32 %mul.i.4, %conv.i.us.4
  %idxprom13.i.us.4 = sext i32 %add.i.us.4 to i64
  %arrayidx14.i.us.4 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.4
  %501 = load float, float* %arrayidx14.i.us.4, align 4, !tbaa !12
  %add15.i.us.4 = fadd float %501, %500
  store float %add15.i.us.4, float* %arrayidx14.i.us.4, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.4

if.end.r_exit.i.us.4:                             ; preds = %if.then.i.us.4, %pregion_for_entry.entry.i.us.4
  %502 = or i64 %_local_id_x.0.us.4, 1
  %add1.i.i.us.4.1 = add nuw nsw i64 %502, %mul.i.i
  %conv.i.us.4.1 = trunc i64 %add1.i.i.us.4.1 to i32
  %cmp4.i.us.4.1 = icmp slt i32 %conv.i.us.4.1, %5
  br i1 %cmp4.i.us.4.1, label %if.then.i.us.4.1, label %if.end.r_exit.i.us.4.1

pregion_for_end.i.4.loopexit:                     ; preds = %if.end.r_exit.i.us.4.1
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.ph284, %pregion_for_end.i.3
  %add6.i.i.5 = or i64 %mul3.i.i, 5
  %conv2.i.5 = trunc i64 %add6.i.i.5 to i32
  %cmp.i.5 = icmp slt i32 %conv2.i.5, %5
  %sext.i.5 = shl i64 %add6.i.i.5, 32
  %idxprom.i.5 = ashr exact i64 %sext.i.5, 32
  %arrayidx.i.5 = getelementptr inbounds float, float* %3, i64 %idxprom.i.5
  %arrayidx9.i.5 = getelementptr inbounds float, float* %4, i64 %idxprom.i.5
  %mul.i.5 = mul nsw i32 %conv2.i.5, %5
  br i1 %cmp.i.5, label %vector.scevcheck311, label %pregion_for_end.i.5

vector.scevcheck311:                              ; preds = %pregion_for_end.i.4
  %503 = mul i32 %conv2.i.5, %5
  %504 = trunc i64 %7 to i32
  %505 = shl i32 %504, 5
  %506 = add i32 %503, %505
  %507 = icmp sgt i32 %506, 2147483616
  br i1 %507, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.memcheck349

pregion_for_entry.entry.i.us.5.preheader:         ; preds = %vector.memcheck349, %vector.scevcheck311
  br label %pregion_for_entry.entry.i.us.5

vector.memcheck349:                               ; preds = %vector.scevcheck311
  %sext503 = shl i64 %8, 35
  %508 = ashr exact i64 %sext503, 32
  %509 = or i64 %508, 5
  %scevgep313 = getelementptr float, float* %3, i64 %509
  %scevgep313314 = bitcast float* %scevgep313 to i8*
  %uglygep315 = getelementptr i8, i8* %scevgep313314, i64 1
  %510 = mul i32 %conv2.i.5, %5
  %511 = trunc i64 %7 to i32
  %512 = shl i32 %511, 5
  %513 = add i32 %510, %512
  %514 = sext i32 %513 to i64
  %scevgep316 = getelementptr float, float* %0, i64 %514
  %scevgep316317 = bitcast float* %scevgep316 to i8*
  %515 = add nsw i64 %514, 32
  %scevgep318 = getelementptr float, float* %0, i64 %515
  %516 = sext i32 %512 to i64
  %scevgep320 = getelementptr float, float* %1, i64 %516
  %517 = add nsw i64 %516, 32
  %scevgep322 = getelementptr float, float* %1, i64 %517
  %scevgep324 = getelementptr float, float* %4, i64 %509
  %scevgep324325 = bitcast float* %scevgep324 to i8*
  %uglygep326 = getelementptr i8, i8* %scevgep324325, i64 1
  %scevgep327 = getelementptr float, float* %2, i64 %516
  %scevgep329 = getelementptr float, float* %2, i64 %517
  %bound0332 = icmp ult float* %arrayidx.i.5, %scevgep318
  %bound1333 = icmp ugt i8* %uglygep315, %scevgep316317
  %found.conflict334 = and i1 %bound0332, %bound1333
  %bound0335 = icmp ult float* %scevgep320, %scevgep318
  %bound1336 = icmp ult float* %scevgep316, %scevgep322
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx338 = or i1 %found.conflict334, %found.conflict337
  %bound0340 = icmp ult float* %arrayidx9.i.5, %scevgep318
  %bound1341 = icmp ugt i8* %uglygep326, %scevgep316317
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx338, %found.conflict342
  %bound0344 = icmp ult float* %scevgep327, %scevgep318
  %bound1345 = icmp ult float* %scevgep316, %scevgep329
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx343, %found.conflict346
  br i1 %conflict.rdx347, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.ph350

vector.ph350:                                     ; preds = %vector.memcheck349
  %broadcast.splatinsert357 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat358 = shufflevector <8 x i64> %broadcast.splatinsert357, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert359 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat360 = shufflevector <8 x i32> %broadcast.splatinsert359, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert361 = insertelement <8 x float*> undef, float* %arrayidx.i.5, i32 0
  %broadcast.splat362 = shufflevector <8 x float*> %broadcast.splatinsert361, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert365 = insertelement <8 x float*> undef, float* %arrayidx9.i.5, i32 0
  %broadcast.splat366 = shufflevector <8 x float*> %broadcast.splatinsert365, <8 x float*> undef, <8 x i32> zeroinitializer
  %518 = or <8 x i64> %broadcast.splat358, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %519 = trunc <8 x i64> %518 to <8 x i32>
  %520 = icmp sgt <8 x i32> %broadcast.splat360, %519
  %wide.masked.gather363 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %520, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !77
  %521 = extractelement <8 x i64> %518, i32 0
  %522 = shl i64 %521, 32
  %523 = ashr exact i64 %522, 32
  %524 = getelementptr inbounds float, float* %1, i64 %523
  %525 = bitcast float* %524 to <8 x float>*
  %wide.masked.load364 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %525, i32 4, <8 x i1> %520, <8 x float> undef), !tbaa !12, !alias.scope !79, !noalias !77
  %wide.masked.gather367 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %520, <8 x float> undef), !tbaa !12, !alias.scope !81, !noalias !77
  %526 = getelementptr inbounds float, float* %2, i64 %523
  %527 = bitcast float* %526 to <8 x float>*
  %wide.masked.load368 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %527, i32 4, <8 x i1> %520, <8 x float> undef), !tbaa !12, !alias.scope !83, !noalias !77
  %528 = fmul <8 x float> %wide.masked.gather367, %wide.masked.load368
  %529 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363, <8 x float> %wide.masked.load364, <8 x float> %528)
  %530 = extractelement <8 x i32> %519, i32 0
  %531 = add nsw i32 %mul.i.5, %530
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds float, float* %0, i64 %532
  %534 = bitcast float* %533 to <8 x float>*
  %wide.masked.load369 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %534, i32 4, <8 x i1> %520, <8 x float> undef), !tbaa !12, !alias.scope !77
  %535 = fadd <8 x float> %wide.masked.load369, %529
  %536 = bitcast float* %533 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %535, <8 x float>* %536, i32 4, <8 x i1> %520), !tbaa !12, !alias.scope !77, !llvm.access.group !27
  %537 = or <8 x i64> %broadcast.splat358, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %538 = trunc <8 x i64> %537 to <8 x i32>
  %539 = icmp sgt <8 x i32> %broadcast.splat360, %538
  %wide.masked.gather363.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %539, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !77
  %540 = extractelement <8 x i64> %537, i32 0
  %541 = shl i64 %540, 32
  %542 = ashr exact i64 %541, 32
  %543 = getelementptr inbounds float, float* %1, i64 %542
  %544 = bitcast float* %543 to <8 x float>*
  %wide.masked.load364.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %544, i32 4, <8 x i1> %539, <8 x float> undef), !tbaa !12, !alias.scope !79, !noalias !77
  %wide.masked.gather367.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %539, <8 x float> undef), !tbaa !12, !alias.scope !81, !noalias !77
  %545 = getelementptr inbounds float, float* %2, i64 %542
  %546 = bitcast float* %545 to <8 x float>*
  %wide.masked.load368.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %546, i32 4, <8 x i1> %539, <8 x float> undef), !tbaa !12, !alias.scope !83, !noalias !77
  %547 = fmul <8 x float> %wide.masked.gather367.1, %wide.masked.load368.1
  %548 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363.1, <8 x float> %wide.masked.load364.1, <8 x float> %547)
  %549 = extractelement <8 x i32> %538, i32 0
  %550 = add nsw i32 %mul.i.5, %549
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds float, float* %0, i64 %551
  %553 = bitcast float* %552 to <8 x float>*
  %wide.masked.load369.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %553, i32 4, <8 x i1> %539, <8 x float> undef), !tbaa !12, !alias.scope !77
  %554 = fadd <8 x float> %wide.masked.load369.1, %548
  %555 = bitcast float* %552 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %554, <8 x float>* %555, i32 4, <8 x i1> %539), !tbaa !12, !alias.scope !77, !llvm.access.group !27
  %556 = or <8 x i64> %broadcast.splat358, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %557 = trunc <8 x i64> %556 to <8 x i32>
  %558 = icmp sgt <8 x i32> %broadcast.splat360, %557
  %wide.masked.gather363.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !77
  %559 = extractelement <8 x i64> %556, i32 0
  %560 = shl i64 %559, 32
  %561 = ashr exact i64 %560, 32
  %562 = getelementptr inbounds float, float* %1, i64 %561
  %563 = bitcast float* %562 to <8 x float>*
  %wide.masked.load364.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %563, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !79, !noalias !77
  %wide.masked.gather367.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !81, !noalias !77
  %564 = getelementptr inbounds float, float* %2, i64 %561
  %565 = bitcast float* %564 to <8 x float>*
  %wide.masked.load368.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %565, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !83, !noalias !77
  %566 = fmul <8 x float> %wide.masked.gather367.2, %wide.masked.load368.2
  %567 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363.2, <8 x float> %wide.masked.load364.2, <8 x float> %566)
  %568 = extractelement <8 x i32> %557, i32 0
  %569 = add nsw i32 %mul.i.5, %568
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds float, float* %0, i64 %570
  %572 = bitcast float* %571 to <8 x float>*
  %wide.masked.load369.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %572, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !77
  %573 = fadd <8 x float> %wide.masked.load369.2, %567
  %574 = bitcast float* %571 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %573, <8 x float>* %574, i32 4, <8 x i1> %558), !tbaa !12, !alias.scope !77, !llvm.access.group !27
  %575 = or <8 x i64> %broadcast.splat358, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %576 = trunc <8 x i64> %575 to <8 x i32>
  %577 = icmp sgt <8 x i32> %broadcast.splat360, %576
  %wide.masked.gather363.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %577, <8 x float> undef), !tbaa !12, !alias.scope !74, !noalias !77
  %578 = extractelement <8 x i64> %575, i32 0
  %579 = shl i64 %578, 32
  %580 = ashr exact i64 %579, 32
  %581 = getelementptr inbounds float, float* %1, i64 %580
  %582 = bitcast float* %581 to <8 x float>*
  %wide.masked.load364.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %582, i32 4, <8 x i1> %577, <8 x float> undef), !tbaa !12, !alias.scope !79, !noalias !77
  %wide.masked.gather367.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %577, <8 x float> undef), !tbaa !12, !alias.scope !81, !noalias !77
  %583 = getelementptr inbounds float, float* %2, i64 %580
  %584 = bitcast float* %583 to <8 x float>*
  %wide.masked.load368.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %584, i32 4, <8 x i1> %577, <8 x float> undef), !tbaa !12, !alias.scope !83, !noalias !77
  %585 = fmul <8 x float> %wide.masked.gather367.3, %wide.masked.load368.3
  %586 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363.3, <8 x float> %wide.masked.load364.3, <8 x float> %585)
  %587 = extractelement <8 x i32> %576, i32 0
  %588 = add nsw i32 %mul.i.5, %587
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds float, float* %0, i64 %589
  %591 = bitcast float* %590 to <8 x float>*
  %wide.masked.load369.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %591, i32 4, <8 x i1> %577, <8 x float> undef), !tbaa !12, !alias.scope !77
  %592 = fadd <8 x float> %wide.masked.load369.3, %586
  %593 = bitcast float* %590 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %592, <8 x float>* %593, i32 4, <8 x i1> %577), !tbaa !12, !alias.scope !77, !llvm.access.group !27
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.us.5:                   ; preds = %if.end.r_exit.i.us.5.1, %pregion_for_entry.entry.i.us.5.preheader
  %_local_id_x.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.us.5.preheader ], [ %817, %if.end.r_exit.i.us.5.1 ]
  %add1.i.i.us.5 = add nuw nsw i64 %_local_id_x.0.us.5, %mul.i.i
  %conv.i.us.5 = trunc i64 %add1.i.i.us.5 to i32
  %cmp4.i.us.5 = icmp slt i32 %conv.i.us.5, %5
  br i1 %cmp4.i.us.5, label %if.then.i.us.5, label %if.end.r_exit.i.us.5

if.then.i.us.5:                                   ; preds = %pregion_for_entry.entry.i.us.5
  %594 = load float, float* %arrayidx.i.5, align 4, !tbaa !12
  %sext26.i.us.5 = shl i64 %add1.i.i.us.5, 32
  %idxprom6.i.us.5 = ashr exact i64 %sext26.i.us.5, 32
  %arrayidx7.i.us.5 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.5
  %595 = load float, float* %arrayidx7.i.us.5, align 4, !tbaa !12
  %596 = load float, float* %arrayidx9.i.5, align 4, !tbaa !12
  %arrayidx11.i.us.5 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.5
  %597 = load float, float* %arrayidx11.i.us.5, align 4, !tbaa !12
  %mul12.i.us.5 = fmul float %596, %597
  %598 = tail call float @llvm.fmuladd.f32(float %594, float %595, float %mul12.i.us.5) #6
  %add.i.us.5 = add nsw i32 %mul.i.5, %conv.i.us.5
  %idxprom13.i.us.5 = sext i32 %add.i.us.5 to i64
  %arrayidx14.i.us.5 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.5
  %599 = load float, float* %arrayidx14.i.us.5, align 4, !tbaa !12
  %add15.i.us.5 = fadd float %599, %598
  store float %add15.i.us.5, float* %arrayidx14.i.us.5, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.5

if.end.r_exit.i.us.5:                             ; preds = %if.then.i.us.5, %pregion_for_entry.entry.i.us.5
  %600 = or i64 %_local_id_x.0.us.5, 1
  %add1.i.i.us.5.1 = add nuw nsw i64 %600, %mul.i.i
  %conv.i.us.5.1 = trunc i64 %add1.i.i.us.5.1 to i32
  %cmp4.i.us.5.1 = icmp slt i32 %conv.i.us.5.1, %5
  br i1 %cmp4.i.us.5.1, label %if.then.i.us.5.1, label %if.end.r_exit.i.us.5.1

pregion_for_end.i.5.loopexit:                     ; preds = %if.end.r_exit.i.us.5.1
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.ph350, %pregion_for_end.i.4
  %add6.i.i.6 = or i64 %mul3.i.i, 6
  %conv2.i.6 = trunc i64 %add6.i.i.6 to i32
  %cmp.i.6 = icmp slt i32 %conv2.i.6, %5
  %sext.i.6 = shl i64 %add6.i.i.6, 32
  %idxprom.i.6 = ashr exact i64 %sext.i.6, 32
  %arrayidx.i.6 = getelementptr inbounds float, float* %3, i64 %idxprom.i.6
  %arrayidx9.i.6 = getelementptr inbounds float, float* %4, i64 %idxprom.i.6
  %mul.i.6 = mul nsw i32 %conv2.i.6, %5
  br i1 %cmp.i.6, label %vector.scevcheck377, label %pregion_for_end.i.6

vector.scevcheck377:                              ; preds = %pregion_for_end.i.5
  %601 = mul i32 %conv2.i.6, %5
  %602 = trunc i64 %7 to i32
  %603 = shl i32 %602, 5
  %604 = add i32 %601, %603
  %605 = icmp sgt i32 %604, 2147483616
  br i1 %605, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.memcheck415

pregion_for_entry.entry.i.us.6.preheader:         ; preds = %vector.memcheck415, %vector.scevcheck377
  br label %pregion_for_entry.entry.i.us.6

vector.memcheck415:                               ; preds = %vector.scevcheck377
  %sext502 = shl i64 %8, 35
  %606 = ashr exact i64 %sext502, 32
  %607 = or i64 %606, 6
  %scevgep379 = getelementptr float, float* %3, i64 %607
  %scevgep379380 = bitcast float* %scevgep379 to i8*
  %uglygep381 = getelementptr i8, i8* %scevgep379380, i64 1
  %608 = mul i32 %conv2.i.6, %5
  %609 = trunc i64 %7 to i32
  %610 = shl i32 %609, 5
  %611 = add i32 %608, %610
  %612 = sext i32 %611 to i64
  %scevgep382 = getelementptr float, float* %0, i64 %612
  %scevgep382383 = bitcast float* %scevgep382 to i8*
  %613 = add nsw i64 %612, 32
  %scevgep384 = getelementptr float, float* %0, i64 %613
  %614 = sext i32 %610 to i64
  %scevgep386 = getelementptr float, float* %1, i64 %614
  %615 = add nsw i64 %614, 32
  %scevgep388 = getelementptr float, float* %1, i64 %615
  %scevgep390 = getelementptr float, float* %4, i64 %607
  %scevgep390391 = bitcast float* %scevgep390 to i8*
  %uglygep392 = getelementptr i8, i8* %scevgep390391, i64 1
  %scevgep393 = getelementptr float, float* %2, i64 %614
  %scevgep395 = getelementptr float, float* %2, i64 %615
  %bound0398 = icmp ult float* %arrayidx.i.6, %scevgep384
  %bound1399 = icmp ugt i8* %uglygep381, %scevgep382383
  %found.conflict400 = and i1 %bound0398, %bound1399
  %bound0401 = icmp ult float* %scevgep386, %scevgep384
  %bound1402 = icmp ult float* %scevgep382, %scevgep388
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %found.conflict400, %found.conflict403
  %bound0406 = icmp ult float* %arrayidx9.i.6, %scevgep384
  %bound1407 = icmp ugt i8* %uglygep392, %scevgep382383
  %found.conflict408 = and i1 %bound0406, %bound1407
  %conflict.rdx409 = or i1 %conflict.rdx404, %found.conflict408
  %bound0410 = icmp ult float* %scevgep393, %scevgep384
  %bound1411 = icmp ult float* %scevgep382, %scevgep395
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %conflict.rdx409, %found.conflict412
  br i1 %conflict.rdx413, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %vector.memcheck415
  %broadcast.splatinsert423 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat424 = shufflevector <8 x i64> %broadcast.splatinsert423, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert425 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat426 = shufflevector <8 x i32> %broadcast.splatinsert425, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert427 = insertelement <8 x float*> undef, float* %arrayidx.i.6, i32 0
  %broadcast.splat428 = shufflevector <8 x float*> %broadcast.splatinsert427, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert431 = insertelement <8 x float*> undef, float* %arrayidx9.i.6, i32 0
  %broadcast.splat432 = shufflevector <8 x float*> %broadcast.splatinsert431, <8 x float*> undef, <8 x i32> zeroinitializer
  %616 = or <8 x i64> %broadcast.splat424, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %617 = trunc <8 x i64> %616 to <8 x i32>
  %618 = icmp sgt <8 x i32> %broadcast.splat426, %617
  %wide.masked.gather429 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %618, <8 x float> undef), !tbaa !12, !alias.scope !85, !noalias !88
  %619 = extractelement <8 x i64> %616, i32 0
  %620 = shl i64 %619, 32
  %621 = ashr exact i64 %620, 32
  %622 = getelementptr inbounds float, float* %1, i64 %621
  %623 = bitcast float* %622 to <8 x float>*
  %wide.masked.load430 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %623, i32 4, <8 x i1> %618, <8 x float> undef), !tbaa !12, !alias.scope !90, !noalias !88
  %wide.masked.gather433 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %618, <8 x float> undef), !tbaa !12, !alias.scope !92, !noalias !88
  %624 = getelementptr inbounds float, float* %2, i64 %621
  %625 = bitcast float* %624 to <8 x float>*
  %wide.masked.load434 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %625, i32 4, <8 x i1> %618, <8 x float> undef), !tbaa !12, !alias.scope !94, !noalias !88
  %626 = fmul <8 x float> %wide.masked.gather433, %wide.masked.load434
  %627 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429, <8 x float> %wide.masked.load430, <8 x float> %626)
  %628 = extractelement <8 x i32> %617, i32 0
  %629 = add nsw i32 %mul.i.6, %628
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds float, float* %0, i64 %630
  %632 = bitcast float* %631 to <8 x float>*
  %wide.masked.load435 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %632, i32 4, <8 x i1> %618, <8 x float> undef), !tbaa !12, !alias.scope !88
  %633 = fadd <8 x float> %wide.masked.load435, %627
  %634 = bitcast float* %631 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %633, <8 x float>* %634, i32 4, <8 x i1> %618), !tbaa !12, !alias.scope !88, !llvm.access.group !27
  %635 = or <8 x i64> %broadcast.splat424, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %636 = trunc <8 x i64> %635 to <8 x i32>
  %637 = icmp sgt <8 x i32> %broadcast.splat426, %636
  %wide.masked.gather429.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %637, <8 x float> undef), !tbaa !12, !alias.scope !85, !noalias !88
  %638 = extractelement <8 x i64> %635, i32 0
  %639 = shl i64 %638, 32
  %640 = ashr exact i64 %639, 32
  %641 = getelementptr inbounds float, float* %1, i64 %640
  %642 = bitcast float* %641 to <8 x float>*
  %wide.masked.load430.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %642, i32 4, <8 x i1> %637, <8 x float> undef), !tbaa !12, !alias.scope !90, !noalias !88
  %wide.masked.gather433.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %637, <8 x float> undef), !tbaa !12, !alias.scope !92, !noalias !88
  %643 = getelementptr inbounds float, float* %2, i64 %640
  %644 = bitcast float* %643 to <8 x float>*
  %wide.masked.load434.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %644, i32 4, <8 x i1> %637, <8 x float> undef), !tbaa !12, !alias.scope !94, !noalias !88
  %645 = fmul <8 x float> %wide.masked.gather433.1, %wide.masked.load434.1
  %646 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429.1, <8 x float> %wide.masked.load430.1, <8 x float> %645)
  %647 = extractelement <8 x i32> %636, i32 0
  %648 = add nsw i32 %mul.i.6, %647
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds float, float* %0, i64 %649
  %651 = bitcast float* %650 to <8 x float>*
  %wide.masked.load435.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %651, i32 4, <8 x i1> %637, <8 x float> undef), !tbaa !12, !alias.scope !88
  %652 = fadd <8 x float> %wide.masked.load435.1, %646
  %653 = bitcast float* %650 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %652, <8 x float>* %653, i32 4, <8 x i1> %637), !tbaa !12, !alias.scope !88, !llvm.access.group !27
  %654 = or <8 x i64> %broadcast.splat424, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %655 = trunc <8 x i64> %654 to <8 x i32>
  %656 = icmp sgt <8 x i32> %broadcast.splat426, %655
  %wide.masked.gather429.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %656, <8 x float> undef), !tbaa !12, !alias.scope !85, !noalias !88
  %657 = extractelement <8 x i64> %654, i32 0
  %658 = shl i64 %657, 32
  %659 = ashr exact i64 %658, 32
  %660 = getelementptr inbounds float, float* %1, i64 %659
  %661 = bitcast float* %660 to <8 x float>*
  %wide.masked.load430.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %661, i32 4, <8 x i1> %656, <8 x float> undef), !tbaa !12, !alias.scope !90, !noalias !88
  %wide.masked.gather433.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %656, <8 x float> undef), !tbaa !12, !alias.scope !92, !noalias !88
  %662 = getelementptr inbounds float, float* %2, i64 %659
  %663 = bitcast float* %662 to <8 x float>*
  %wide.masked.load434.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %663, i32 4, <8 x i1> %656, <8 x float> undef), !tbaa !12, !alias.scope !94, !noalias !88
  %664 = fmul <8 x float> %wide.masked.gather433.2, %wide.masked.load434.2
  %665 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429.2, <8 x float> %wide.masked.load430.2, <8 x float> %664)
  %666 = extractelement <8 x i32> %655, i32 0
  %667 = add nsw i32 %mul.i.6, %666
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds float, float* %0, i64 %668
  %670 = bitcast float* %669 to <8 x float>*
  %wide.masked.load435.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %670, i32 4, <8 x i1> %656, <8 x float> undef), !tbaa !12, !alias.scope !88
  %671 = fadd <8 x float> %wide.masked.load435.2, %665
  %672 = bitcast float* %669 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %671, <8 x float>* %672, i32 4, <8 x i1> %656), !tbaa !12, !alias.scope !88, !llvm.access.group !27
  %673 = or <8 x i64> %broadcast.splat424, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %674 = trunc <8 x i64> %673 to <8 x i32>
  %675 = icmp sgt <8 x i32> %broadcast.splat426, %674
  %wide.masked.gather429.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %675, <8 x float> undef), !tbaa !12, !alias.scope !85, !noalias !88
  %676 = extractelement <8 x i64> %673, i32 0
  %677 = shl i64 %676, 32
  %678 = ashr exact i64 %677, 32
  %679 = getelementptr inbounds float, float* %1, i64 %678
  %680 = bitcast float* %679 to <8 x float>*
  %wide.masked.load430.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %680, i32 4, <8 x i1> %675, <8 x float> undef), !tbaa !12, !alias.scope !90, !noalias !88
  %wide.masked.gather433.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %675, <8 x float> undef), !tbaa !12, !alias.scope !92, !noalias !88
  %681 = getelementptr inbounds float, float* %2, i64 %678
  %682 = bitcast float* %681 to <8 x float>*
  %wide.masked.load434.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %682, i32 4, <8 x i1> %675, <8 x float> undef), !tbaa !12, !alias.scope !94, !noalias !88
  %683 = fmul <8 x float> %wide.masked.gather433.3, %wide.masked.load434.3
  %684 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429.3, <8 x float> %wide.masked.load430.3, <8 x float> %683)
  %685 = extractelement <8 x i32> %674, i32 0
  %686 = add nsw i32 %mul.i.6, %685
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds float, float* %0, i64 %687
  %689 = bitcast float* %688 to <8 x float>*
  %wide.masked.load435.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %689, i32 4, <8 x i1> %675, <8 x float> undef), !tbaa !12, !alias.scope !88
  %690 = fadd <8 x float> %wide.masked.load435.3, %684
  %691 = bitcast float* %688 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %690, <8 x float>* %691, i32 4, <8 x i1> %675), !tbaa !12, !alias.scope !88, !llvm.access.group !27
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.us.6:                   ; preds = %if.end.r_exit.i.us.6.1, %pregion_for_entry.entry.i.us.6.preheader
  %_local_id_x.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.us.6.preheader ], [ %810, %if.end.r_exit.i.us.6.1 ]
  %add1.i.i.us.6 = add nuw nsw i64 %_local_id_x.0.us.6, %mul.i.i
  %conv.i.us.6 = trunc i64 %add1.i.i.us.6 to i32
  %cmp4.i.us.6 = icmp slt i32 %conv.i.us.6, %5
  br i1 %cmp4.i.us.6, label %if.then.i.us.6, label %if.end.r_exit.i.us.6

if.then.i.us.6:                                   ; preds = %pregion_for_entry.entry.i.us.6
  %692 = load float, float* %arrayidx.i.6, align 4, !tbaa !12
  %sext26.i.us.6 = shl i64 %add1.i.i.us.6, 32
  %idxprom6.i.us.6 = ashr exact i64 %sext26.i.us.6, 32
  %arrayidx7.i.us.6 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.6
  %693 = load float, float* %arrayidx7.i.us.6, align 4, !tbaa !12
  %694 = load float, float* %arrayidx9.i.6, align 4, !tbaa !12
  %arrayidx11.i.us.6 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.6
  %695 = load float, float* %arrayidx11.i.us.6, align 4, !tbaa !12
  %mul12.i.us.6 = fmul float %694, %695
  %696 = tail call float @llvm.fmuladd.f32(float %692, float %693, float %mul12.i.us.6) #6
  %add.i.us.6 = add nsw i32 %mul.i.6, %conv.i.us.6
  %idxprom13.i.us.6 = sext i32 %add.i.us.6 to i64
  %arrayidx14.i.us.6 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.6
  %697 = load float, float* %arrayidx14.i.us.6, align 4, !tbaa !12
  %add15.i.us.6 = fadd float %697, %696
  store float %add15.i.us.6, float* %arrayidx14.i.us.6, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.6

if.end.r_exit.i.us.6:                             ; preds = %if.then.i.us.6, %pregion_for_entry.entry.i.us.6
  %698 = or i64 %_local_id_x.0.us.6, 1
  %add1.i.i.us.6.1 = add nuw nsw i64 %698, %mul.i.i
  %conv.i.us.6.1 = trunc i64 %add1.i.i.us.6.1 to i32
  %cmp4.i.us.6.1 = icmp slt i32 %conv.i.us.6.1, %5
  br i1 %cmp4.i.us.6.1, label %if.then.i.us.6.1, label %if.end.r_exit.i.us.6.1

pregion_for_end.i.6.loopexit:                     ; preds = %if.end.r_exit.i.us.6.1
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.ph416, %pregion_for_end.i.5
  %add6.i.i.7 = or i64 %mul3.i.i, 7
  %conv2.i.7 = trunc i64 %add6.i.i.7 to i32
  %cmp.i.7 = icmp slt i32 %conv2.i.7, %5
  %sext.i.7 = shl i64 %add6.i.i.7, 32
  %idxprom.i.7 = ashr exact i64 %sext.i.7, 32
  %arrayidx.i.7 = getelementptr inbounds float, float* %3, i64 %idxprom.i.7
  %arrayidx9.i.7 = getelementptr inbounds float, float* %4, i64 %idxprom.i.7
  %mul.i.7 = mul nsw i32 %conv2.i.7, %5
  br i1 %cmp.i.7, label %vector.scevcheck443, label %pregion_for_end.i.7

vector.scevcheck443:                              ; preds = %pregion_for_end.i.6
  %699 = mul i32 %conv2.i.7, %5
  %700 = trunc i64 %7 to i32
  %701 = shl i32 %700, 5
  %702 = add i32 %699, %701
  %703 = icmp sgt i32 %702, 2147483616
  br i1 %703, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.memcheck481

pregion_for_entry.entry.i.us.7.preheader:         ; preds = %vector.memcheck481, %vector.scevcheck443
  br label %pregion_for_entry.entry.i.us.7

vector.memcheck481:                               ; preds = %vector.scevcheck443
  %sext = shl i64 %8, 35
  %704 = ashr exact i64 %sext, 32
  %705 = or i64 %704, 7
  %scevgep445 = getelementptr float, float* %3, i64 %705
  %scevgep445446 = bitcast float* %scevgep445 to i8*
  %uglygep447 = getelementptr i8, i8* %scevgep445446, i64 1
  %706 = mul i32 %conv2.i.7, %5
  %707 = trunc i64 %7 to i32
  %708 = shl i32 %707, 5
  %709 = add i32 %706, %708
  %710 = sext i32 %709 to i64
  %scevgep448 = getelementptr float, float* %0, i64 %710
  %scevgep448449 = bitcast float* %scevgep448 to i8*
  %711 = add nsw i64 %710, 32
  %scevgep450 = getelementptr float, float* %0, i64 %711
  %712 = sext i32 %708 to i64
  %scevgep452 = getelementptr float, float* %1, i64 %712
  %713 = add nsw i64 %712, 32
  %scevgep454 = getelementptr float, float* %1, i64 %713
  %scevgep456 = getelementptr float, float* %4, i64 %705
  %scevgep456457 = bitcast float* %scevgep456 to i8*
  %uglygep458 = getelementptr i8, i8* %scevgep456457, i64 1
  %scevgep459 = getelementptr float, float* %2, i64 %712
  %scevgep461 = getelementptr float, float* %2, i64 %713
  %bound0464 = icmp ult float* %arrayidx.i.7, %scevgep450
  %bound1465 = icmp ugt i8* %uglygep447, %scevgep448449
  %found.conflict466 = and i1 %bound0464, %bound1465
  %bound0467 = icmp ult float* %scevgep452, %scevgep450
  %bound1468 = icmp ult float* %scevgep448, %scevgep454
  %found.conflict469 = and i1 %bound0467, %bound1468
  %conflict.rdx470 = or i1 %found.conflict466, %found.conflict469
  %bound0472 = icmp ult float* %arrayidx9.i.7, %scevgep450
  %bound1473 = icmp ugt i8* %uglygep458, %scevgep448449
  %found.conflict474 = and i1 %bound0472, %bound1473
  %conflict.rdx475 = or i1 %conflict.rdx470, %found.conflict474
  %bound0476 = icmp ult float* %scevgep459, %scevgep450
  %bound1477 = icmp ult float* %scevgep448, %scevgep461
  %found.conflict478 = and i1 %bound0476, %bound1477
  %conflict.rdx479 = or i1 %conflict.rdx475, %found.conflict478
  br i1 %conflict.rdx479, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.ph482

vector.ph482:                                     ; preds = %vector.memcheck481
  %broadcast.splatinsert489 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat490 = shufflevector <8 x i64> %broadcast.splatinsert489, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert491 = insertelement <8 x i32> undef, i32 %5, i32 0
  %broadcast.splat492 = shufflevector <8 x i32> %broadcast.splatinsert491, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert493 = insertelement <8 x float*> undef, float* %arrayidx.i.7, i32 0
  %broadcast.splat494 = shufflevector <8 x float*> %broadcast.splatinsert493, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert497 = insertelement <8 x float*> undef, float* %arrayidx9.i.7, i32 0
  %broadcast.splat498 = shufflevector <8 x float*> %broadcast.splatinsert497, <8 x float*> undef, <8 x i32> zeroinitializer
  %714 = or <8 x i64> %broadcast.splat490, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %715 = trunc <8 x i64> %714 to <8 x i32>
  %716 = icmp sgt <8 x i32> %broadcast.splat492, %715
  %wide.masked.gather495 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %716, <8 x float> undef), !tbaa !12, !alias.scope !96, !noalias !99
  %717 = extractelement <8 x i64> %714, i32 0
  %718 = shl i64 %717, 32
  %719 = ashr exact i64 %718, 32
  %720 = getelementptr inbounds float, float* %1, i64 %719
  %721 = bitcast float* %720 to <8 x float>*
  %wide.masked.load496 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %721, i32 4, <8 x i1> %716, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !99
  %wide.masked.gather499 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %716, <8 x float> undef), !tbaa !12, !alias.scope !103, !noalias !99
  %722 = getelementptr inbounds float, float* %2, i64 %719
  %723 = bitcast float* %722 to <8 x float>*
  %wide.masked.load500 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %723, i32 4, <8 x i1> %716, <8 x float> undef), !tbaa !12, !alias.scope !105, !noalias !99
  %724 = fmul <8 x float> %wide.masked.gather499, %wide.masked.load500
  %725 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495, <8 x float> %wide.masked.load496, <8 x float> %724)
  %726 = extractelement <8 x i32> %715, i32 0
  %727 = add nsw i32 %mul.i.7, %726
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds float, float* %0, i64 %728
  %730 = bitcast float* %729 to <8 x float>*
  %wide.masked.load501 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %730, i32 4, <8 x i1> %716, <8 x float> undef), !tbaa !12, !alias.scope !99
  %731 = fadd <8 x float> %wide.masked.load501, %725
  %732 = bitcast float* %729 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %731, <8 x float>* %732, i32 4, <8 x i1> %716), !tbaa !12, !alias.scope !99, !llvm.access.group !27
  %733 = or <8 x i64> %broadcast.splat490, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %734 = trunc <8 x i64> %733 to <8 x i32>
  %735 = icmp sgt <8 x i32> %broadcast.splat492, %734
  %wide.masked.gather495.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %735, <8 x float> undef), !tbaa !12, !alias.scope !96, !noalias !99
  %736 = extractelement <8 x i64> %733, i32 0
  %737 = shl i64 %736, 32
  %738 = ashr exact i64 %737, 32
  %739 = getelementptr inbounds float, float* %1, i64 %738
  %740 = bitcast float* %739 to <8 x float>*
  %wide.masked.load496.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %740, i32 4, <8 x i1> %735, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !99
  %wide.masked.gather499.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %735, <8 x float> undef), !tbaa !12, !alias.scope !103, !noalias !99
  %741 = getelementptr inbounds float, float* %2, i64 %738
  %742 = bitcast float* %741 to <8 x float>*
  %wide.masked.load500.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %742, i32 4, <8 x i1> %735, <8 x float> undef), !tbaa !12, !alias.scope !105, !noalias !99
  %743 = fmul <8 x float> %wide.masked.gather499.1, %wide.masked.load500.1
  %744 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495.1, <8 x float> %wide.masked.load496.1, <8 x float> %743)
  %745 = extractelement <8 x i32> %734, i32 0
  %746 = add nsw i32 %mul.i.7, %745
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds float, float* %0, i64 %747
  %749 = bitcast float* %748 to <8 x float>*
  %wide.masked.load501.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %749, i32 4, <8 x i1> %735, <8 x float> undef), !tbaa !12, !alias.scope !99
  %750 = fadd <8 x float> %wide.masked.load501.1, %744
  %751 = bitcast float* %748 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %750, <8 x float>* %751, i32 4, <8 x i1> %735), !tbaa !12, !alias.scope !99, !llvm.access.group !27
  %752 = or <8 x i64> %broadcast.splat490, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %753 = trunc <8 x i64> %752 to <8 x i32>
  %754 = icmp sgt <8 x i32> %broadcast.splat492, %753
  %wide.masked.gather495.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !96, !noalias !99
  %755 = extractelement <8 x i64> %752, i32 0
  %756 = shl i64 %755, 32
  %757 = ashr exact i64 %756, 32
  %758 = getelementptr inbounds float, float* %1, i64 %757
  %759 = bitcast float* %758 to <8 x float>*
  %wide.masked.load496.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %759, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !99
  %wide.masked.gather499.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !103, !noalias !99
  %760 = getelementptr inbounds float, float* %2, i64 %757
  %761 = bitcast float* %760 to <8 x float>*
  %wide.masked.load500.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %761, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !105, !noalias !99
  %762 = fmul <8 x float> %wide.masked.gather499.2, %wide.masked.load500.2
  %763 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495.2, <8 x float> %wide.masked.load496.2, <8 x float> %762)
  %764 = extractelement <8 x i32> %753, i32 0
  %765 = add nsw i32 %mul.i.7, %764
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds float, float* %0, i64 %766
  %768 = bitcast float* %767 to <8 x float>*
  %wide.masked.load501.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %768, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !99
  %769 = fadd <8 x float> %wide.masked.load501.2, %763
  %770 = bitcast float* %767 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %769, <8 x float>* %770, i32 4, <8 x i1> %754), !tbaa !12, !alias.scope !99, !llvm.access.group !27
  %771 = or <8 x i64> %broadcast.splat490, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %772 = trunc <8 x i64> %771 to <8 x i32>
  %773 = icmp sgt <8 x i32> %broadcast.splat492, %772
  %wide.masked.gather495.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %773, <8 x float> undef), !tbaa !12, !alias.scope !96, !noalias !99
  %774 = extractelement <8 x i64> %771, i32 0
  %775 = shl i64 %774, 32
  %776 = ashr exact i64 %775, 32
  %777 = getelementptr inbounds float, float* %1, i64 %776
  %778 = bitcast float* %777 to <8 x float>*
  %wide.masked.load496.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %778, i32 4, <8 x i1> %773, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !99
  %wide.masked.gather499.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %773, <8 x float> undef), !tbaa !12, !alias.scope !103, !noalias !99
  %779 = getelementptr inbounds float, float* %2, i64 %776
  %780 = bitcast float* %779 to <8 x float>*
  %wide.masked.load500.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %780, i32 4, <8 x i1> %773, <8 x float> undef), !tbaa !12, !alias.scope !105, !noalias !99
  %781 = fmul <8 x float> %wide.masked.gather499.3, %wide.masked.load500.3
  %782 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495.3, <8 x float> %wide.masked.load496.3, <8 x float> %781)
  %783 = extractelement <8 x i32> %772, i32 0
  %784 = add nsw i32 %mul.i.7, %783
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds float, float* %0, i64 %785
  %787 = bitcast float* %786 to <8 x float>*
  %wide.masked.load501.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %787, i32 4, <8 x i1> %773, <8 x float> undef), !tbaa !12, !alias.scope !99
  %788 = fadd <8 x float> %wide.masked.load501.3, %782
  %789 = bitcast float* %786 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %788, <8 x float>* %789, i32 4, <8 x i1> %773), !tbaa !12, !alias.scope !99, !llvm.access.group !27
  br label %pregion_for_end.i.7

pregion_for_entry.entry.i.us.7:                   ; preds = %if.end.r_exit.i.us.7.1, %pregion_for_entry.entry.i.us.7.preheader
  %_local_id_x.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.us.7.preheader ], [ %803, %if.end.r_exit.i.us.7.1 ]
  %add1.i.i.us.7 = add nuw nsw i64 %_local_id_x.0.us.7, %mul.i.i
  %conv.i.us.7 = trunc i64 %add1.i.i.us.7 to i32
  %cmp4.i.us.7 = icmp slt i32 %conv.i.us.7, %5
  br i1 %cmp4.i.us.7, label %if.then.i.us.7, label %if.end.r_exit.i.us.7

if.then.i.us.7:                                   ; preds = %pregion_for_entry.entry.i.us.7
  %790 = load float, float* %arrayidx.i.7, align 4, !tbaa !12
  %sext26.i.us.7 = shl i64 %add1.i.i.us.7, 32
  %idxprom6.i.us.7 = ashr exact i64 %sext26.i.us.7, 32
  %arrayidx7.i.us.7 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.7
  %791 = load float, float* %arrayidx7.i.us.7, align 4, !tbaa !12
  %792 = load float, float* %arrayidx9.i.7, align 4, !tbaa !12
  %arrayidx11.i.us.7 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.7
  %793 = load float, float* %arrayidx11.i.us.7, align 4, !tbaa !12
  %mul12.i.us.7 = fmul float %792, %793
  %794 = tail call float @llvm.fmuladd.f32(float %790, float %791, float %mul12.i.us.7) #6
  %add.i.us.7 = add nsw i32 %mul.i.7, %conv.i.us.7
  %idxprom13.i.us.7 = sext i32 %add.i.us.7 to i64
  %arrayidx14.i.us.7 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.7
  %795 = load float, float* %arrayidx14.i.us.7, align 4, !tbaa !12
  %add15.i.us.7 = fadd float %795, %794
  store float %add15.i.us.7, float* %arrayidx14.i.us.7, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.7

if.end.r_exit.i.us.7:                             ; preds = %if.then.i.us.7, %pregion_for_entry.entry.i.us.7
  %796 = or i64 %_local_id_x.0.us.7, 1
  %add1.i.i.us.7.1 = add nuw nsw i64 %796, %mul.i.i
  %conv.i.us.7.1 = trunc i64 %add1.i.i.us.7.1 to i32
  %cmp4.i.us.7.1 = icmp slt i32 %conv.i.us.7.1, %5
  br i1 %cmp4.i.us.7.1, label %if.then.i.us.7.1, label %if.end.r_exit.i.us.7.1

pregion_for_end.i.7.loopexit:                     ; preds = %if.end.r_exit.i.us.7.1
  br label %pregion_for_end.i.7

pregion_for_end.i.7:                              ; preds = %pregion_for_end.i.7.loopexit, %vector.ph482, %pregion_for_end.i.6
  ret void

if.then.i.us.7.1:                                 ; preds = %if.end.r_exit.i.us.7
  %797 = load float, float* %arrayidx.i.7, align 4, !tbaa !12
  %sext26.i.us.7.1 = shl i64 %add1.i.i.us.7.1, 32
  %idxprom6.i.us.7.1 = ashr exact i64 %sext26.i.us.7.1, 32
  %arrayidx7.i.us.7.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.7.1
  %798 = load float, float* %arrayidx7.i.us.7.1, align 4, !tbaa !12
  %799 = load float, float* %arrayidx9.i.7, align 4, !tbaa !12
  %arrayidx11.i.us.7.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.7.1
  %800 = load float, float* %arrayidx11.i.us.7.1, align 4, !tbaa !12
  %mul12.i.us.7.1 = fmul float %799, %800
  %801 = tail call float @llvm.fmuladd.f32(float %797, float %798, float %mul12.i.us.7.1) #6
  %add.i.us.7.1 = add nsw i32 %mul.i.7, %conv.i.us.7.1
  %idxprom13.i.us.7.1 = sext i32 %add.i.us.7.1 to i64
  %arrayidx14.i.us.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.7.1
  %802 = load float, float* %arrayidx14.i.us.7.1, align 4, !tbaa !12
  %add15.i.us.7.1 = fadd float %802, %801
  store float %add15.i.us.7.1, float* %arrayidx14.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.7.1

if.end.r_exit.i.us.7.1:                           ; preds = %if.then.i.us.7.1, %if.end.r_exit.i.us.7
  %803 = add nuw nsw i64 %_local_id_x.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %803, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.7.loopexit, label %pregion_for_entry.entry.i.us.7, !llvm.loop !107

if.then.i.us.6.1:                                 ; preds = %if.end.r_exit.i.us.6
  %804 = load float, float* %arrayidx.i.6, align 4, !tbaa !12
  %sext26.i.us.6.1 = shl i64 %add1.i.i.us.6.1, 32
  %idxprom6.i.us.6.1 = ashr exact i64 %sext26.i.us.6.1, 32
  %arrayidx7.i.us.6.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.6.1
  %805 = load float, float* %arrayidx7.i.us.6.1, align 4, !tbaa !12
  %806 = load float, float* %arrayidx9.i.6, align 4, !tbaa !12
  %arrayidx11.i.us.6.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.6.1
  %807 = load float, float* %arrayidx11.i.us.6.1, align 4, !tbaa !12
  %mul12.i.us.6.1 = fmul float %806, %807
  %808 = tail call float @llvm.fmuladd.f32(float %804, float %805, float %mul12.i.us.6.1) #6
  %add.i.us.6.1 = add nsw i32 %mul.i.6, %conv.i.us.6.1
  %idxprom13.i.us.6.1 = sext i32 %add.i.us.6.1 to i64
  %arrayidx14.i.us.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.6.1
  %809 = load float, float* %arrayidx14.i.us.6.1, align 4, !tbaa !12
  %add15.i.us.6.1 = fadd float %809, %808
  store float %add15.i.us.6.1, float* %arrayidx14.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.6.1

if.end.r_exit.i.us.6.1:                           ; preds = %if.then.i.us.6.1, %if.end.r_exit.i.us.6
  %810 = add nuw nsw i64 %_local_id_x.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %810, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.us.6, !llvm.loop !110

if.then.i.us.5.1:                                 ; preds = %if.end.r_exit.i.us.5
  %811 = load float, float* %arrayidx.i.5, align 4, !tbaa !12
  %sext26.i.us.5.1 = shl i64 %add1.i.i.us.5.1, 32
  %idxprom6.i.us.5.1 = ashr exact i64 %sext26.i.us.5.1, 32
  %arrayidx7.i.us.5.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.5.1
  %812 = load float, float* %arrayidx7.i.us.5.1, align 4, !tbaa !12
  %813 = load float, float* %arrayidx9.i.5, align 4, !tbaa !12
  %arrayidx11.i.us.5.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.5.1
  %814 = load float, float* %arrayidx11.i.us.5.1, align 4, !tbaa !12
  %mul12.i.us.5.1 = fmul float %813, %814
  %815 = tail call float @llvm.fmuladd.f32(float %811, float %812, float %mul12.i.us.5.1) #6
  %add.i.us.5.1 = add nsw i32 %mul.i.5, %conv.i.us.5.1
  %idxprom13.i.us.5.1 = sext i32 %add.i.us.5.1 to i64
  %arrayidx14.i.us.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.5.1
  %816 = load float, float* %arrayidx14.i.us.5.1, align 4, !tbaa !12
  %add15.i.us.5.1 = fadd float %816, %815
  store float %add15.i.us.5.1, float* %arrayidx14.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.5.1

if.end.r_exit.i.us.5.1:                           ; preds = %if.then.i.us.5.1, %if.end.r_exit.i.us.5
  %817 = add nuw nsw i64 %_local_id_x.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %817, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.us.5, !llvm.loop !111

if.then.i.us.4.1:                                 ; preds = %if.end.r_exit.i.us.4
  %818 = load float, float* %arrayidx.i.4, align 4, !tbaa !12
  %sext26.i.us.4.1 = shl i64 %add1.i.i.us.4.1, 32
  %idxprom6.i.us.4.1 = ashr exact i64 %sext26.i.us.4.1, 32
  %arrayidx7.i.us.4.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.4.1
  %819 = load float, float* %arrayidx7.i.us.4.1, align 4, !tbaa !12
  %820 = load float, float* %arrayidx9.i.4, align 4, !tbaa !12
  %arrayidx11.i.us.4.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.4.1
  %821 = load float, float* %arrayidx11.i.us.4.1, align 4, !tbaa !12
  %mul12.i.us.4.1 = fmul float %820, %821
  %822 = tail call float @llvm.fmuladd.f32(float %818, float %819, float %mul12.i.us.4.1) #6
  %add.i.us.4.1 = add nsw i32 %mul.i.4, %conv.i.us.4.1
  %idxprom13.i.us.4.1 = sext i32 %add.i.us.4.1 to i64
  %arrayidx14.i.us.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.4.1
  %823 = load float, float* %arrayidx14.i.us.4.1, align 4, !tbaa !12
  %add15.i.us.4.1 = fadd float %823, %822
  store float %add15.i.us.4.1, float* %arrayidx14.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.4.1

if.end.r_exit.i.us.4.1:                           ; preds = %if.then.i.us.4.1, %if.end.r_exit.i.us.4
  %824 = add nuw nsw i64 %_local_id_x.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %824, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.us.4, !llvm.loop !112

if.then.i.us.3.1:                                 ; preds = %if.end.r_exit.i.us.3
  %825 = load float, float* %arrayidx.i.3, align 4, !tbaa !12
  %sext26.i.us.3.1 = shl i64 %add1.i.i.us.3.1, 32
  %idxprom6.i.us.3.1 = ashr exact i64 %sext26.i.us.3.1, 32
  %arrayidx7.i.us.3.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.3.1
  %826 = load float, float* %arrayidx7.i.us.3.1, align 4, !tbaa !12
  %827 = load float, float* %arrayidx9.i.3, align 4, !tbaa !12
  %arrayidx11.i.us.3.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.3.1
  %828 = load float, float* %arrayidx11.i.us.3.1, align 4, !tbaa !12
  %mul12.i.us.3.1 = fmul float %827, %828
  %829 = tail call float @llvm.fmuladd.f32(float %825, float %826, float %mul12.i.us.3.1) #6
  %add.i.us.3.1 = add nsw i32 %mul.i.3, %conv.i.us.3.1
  %idxprom13.i.us.3.1 = sext i32 %add.i.us.3.1 to i64
  %arrayidx14.i.us.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.3.1
  %830 = load float, float* %arrayidx14.i.us.3.1, align 4, !tbaa !12
  %add15.i.us.3.1 = fadd float %830, %829
  store float %add15.i.us.3.1, float* %arrayidx14.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.3.1

if.end.r_exit.i.us.3.1:                           ; preds = %if.then.i.us.3.1, %if.end.r_exit.i.us.3
  %831 = add nuw nsw i64 %_local_id_x.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %831, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.us.3, !llvm.loop !113

if.then.i.us.2.1:                                 ; preds = %if.end.r_exit.i.us.2
  %832 = load float, float* %arrayidx.i.2, align 4, !tbaa !12
  %sext26.i.us.2.1 = shl i64 %add1.i.i.us.2.1, 32
  %idxprom6.i.us.2.1 = ashr exact i64 %sext26.i.us.2.1, 32
  %arrayidx7.i.us.2.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.2.1
  %833 = load float, float* %arrayidx7.i.us.2.1, align 4, !tbaa !12
  %834 = load float, float* %arrayidx9.i.2, align 4, !tbaa !12
  %arrayidx11.i.us.2.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.2.1
  %835 = load float, float* %arrayidx11.i.us.2.1, align 4, !tbaa !12
  %mul12.i.us.2.1 = fmul float %834, %835
  %836 = tail call float @llvm.fmuladd.f32(float %832, float %833, float %mul12.i.us.2.1) #6
  %add.i.us.2.1 = add nsw i32 %mul.i.2, %conv.i.us.2.1
  %idxprom13.i.us.2.1 = sext i32 %add.i.us.2.1 to i64
  %arrayidx14.i.us.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.2.1
  %837 = load float, float* %arrayidx14.i.us.2.1, align 4, !tbaa !12
  %add15.i.us.2.1 = fadd float %837, %836
  store float %add15.i.us.2.1, float* %arrayidx14.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.2.1

if.end.r_exit.i.us.2.1:                           ; preds = %if.then.i.us.2.1, %if.end.r_exit.i.us.2
  %838 = add nuw nsw i64 %_local_id_x.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %838, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.us.2, !llvm.loop !114

if.then.i.us.1.1:                                 ; preds = %if.end.r_exit.i.us.1
  %839 = load float, float* %arrayidx.i.1, align 4, !tbaa !12
  %sext26.i.us.1.1 = shl i64 %add1.i.i.us.1.1, 32
  %idxprom6.i.us.1.1 = ashr exact i64 %sext26.i.us.1.1, 32
  %arrayidx7.i.us.1.1 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.1.1
  %840 = load float, float* %arrayidx7.i.us.1.1, align 4, !tbaa !12
  %841 = load float, float* %arrayidx9.i.1, align 4, !tbaa !12
  %arrayidx11.i.us.1.1 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.1.1
  %842 = load float, float* %arrayidx11.i.us.1.1, align 4, !tbaa !12
  %mul12.i.us.1.1 = fmul float %841, %842
  %843 = tail call float @llvm.fmuladd.f32(float %839, float %840, float %mul12.i.us.1.1) #6
  %add.i.us.1.1 = add nsw i32 %mul.i.1, %conv.i.us.1.1
  %idxprom13.i.us.1.1 = sext i32 %add.i.us.1.1 to i64
  %arrayidx14.i.us.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.1.1
  %844 = load float, float* %arrayidx14.i.us.1.1, align 4, !tbaa !12
  %add15.i.us.1.1 = fadd float %844, %843
  store float %add15.i.us.1.1, float* %arrayidx14.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.1.1

if.end.r_exit.i.us.1.1:                           ; preds = %if.then.i.us.1.1, %if.end.r_exit.i.us.1
  %845 = add nuw nsw i64 %_local_id_x.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %845, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.us.1, !llvm.loop !115

if.then.i.us.1531:                                ; preds = %if.end.r_exit.i.us
  %846 = load float, float* %arrayidx.i, align 4, !tbaa !12
  %sext26.i.us.1522 = shl i64 %add1.i.i.us.1518, 32
  %idxprom6.i.us.1523 = ashr exact i64 %sext26.i.us.1522, 32
  %arrayidx7.i.us.1524 = getelementptr inbounds float, float* %1, i64 %idxprom6.i.us.1523
  %847 = load float, float* %arrayidx7.i.us.1524, align 4, !tbaa !12
  %848 = load float, float* %arrayidx9.i, align 4, !tbaa !12
  %arrayidx11.i.us.1525 = getelementptr inbounds float, float* %2, i64 %idxprom6.i.us.1523
  %849 = load float, float* %arrayidx11.i.us.1525, align 4, !tbaa !12
  %mul12.i.us.1526 = fmul float %848, %849
  %850 = tail call float @llvm.fmuladd.f32(float %846, float %847, float %mul12.i.us.1526) #6
  %add.i.us.1527 = add nsw i32 %mul.i, %conv.i.us.1519
  %idxprom13.i.us.1528 = sext i32 %add.i.us.1527 to i64
  %arrayidx14.i.us.1529 = getelementptr inbounds float, float* %0, i64 %idxprom13.i.us.1528
  %851 = load float, float* %arrayidx14.i.us.1529, align 4, !tbaa !12
  %add15.i.us.1530 = fadd float %851, %850
  store float %add15.i.us.1530, float* %arrayidx14.i.us.1529, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.us.1532

if.end.r_exit.i.us.1532:                          ; preds = %if.then.i.us.1531, %if.end.r_exit.i.us
  %852 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %852, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !116
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_gemver_kernel1_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float***
  %10 = load float**, float*** %9, align 8
  %11 = load float*, float** %10, align 8
  %12 = getelementptr i8*, i8** %0, i64 2
  %13 = bitcast i8** %12 to float***
  %14 = load float**, float*** %13, align 8
  %15 = load float*, float** %14, align 8
  %16 = getelementptr i8*, i8** %0, i64 3
  %17 = bitcast i8** %16 to float***
  %18 = load float**, float*** %17, align 8
  %19 = load float*, float** %18, align 8
  %20 = getelementptr i8*, i8** %0, i64 4
  %21 = bitcast i8** %20 to float***
  %22 = load float**, float*** %21, align 8
  %23 = load float*, float** %22, align 8
  %24 = getelementptr i8*, i8** %0, i64 5
  %25 = bitcast i8** %24 to i32**
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %26, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %conv2.i.i = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %27, %conv2.i.i
  %sext.i.i = shl i64 %3, 35
  %idxprom.i.i = ashr exact i64 %sext.i.i, 32
  %arrayidx.i.i = getelementptr inbounds float, float* %19, i64 %idxprom.i.i
  %arrayidx9.i.i = getelementptr inbounds float, float* %23, i64 %idxprom.i.i
  %mul.i.i = mul nsw i32 %27, %conv2.i.i
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %28 = trunc i64 %3 to i32
  %29 = mul i32 %27, %28
  %30 = shl i32 %29, 3
  %31 = trunc i64 %2 to i32
  %32 = shl i32 %31, 5
  %33 = add i32 %30, %32
  %34 = icmp sgt i32 %33, 2147483616
  br i1 %34, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %sext508 = shl i64 %3, 35
  %35 = ashr exact i64 %sext508, 32
  %scevgep = getelementptr float, float* %19, i64 %35
  %scevgep3 = bitcast float* %scevgep to i8*
  %uglygep = getelementptr i8, i8* %scevgep3, i64 1
  %36 = trunc i64 %3 to i32
  %37 = mul i32 %27, %36
  %38 = shl i32 %37, 3
  %39 = trunc i64 %2 to i32
  %40 = shl i32 %39, 5
  %41 = add i32 %38, %40
  %42 = sext i32 %41 to i64
  %scevgep4 = getelementptr float, float* %7, i64 %42
  %scevgep45 = bitcast float* %scevgep4 to i8*
  %43 = add nsw i64 %42, 32
  %scevgep6 = getelementptr float, float* %7, i64 %43
  %44 = sext i32 %40 to i64
  %scevgep8 = getelementptr float, float* %11, i64 %44
  %45 = add nsw i64 %44, 32
  %scevgep10 = getelementptr float, float* %11, i64 %45
  %scevgep12 = getelementptr float, float* %23, i64 %35
  %scevgep1213 = bitcast float* %scevgep12 to i8*
  %uglygep14 = getelementptr i8, i8* %scevgep1213, i64 1
  %scevgep15 = getelementptr float, float* %15, i64 %44
  %scevgep17 = getelementptr float, float* %15, i64 %45
  %bound0 = icmp ult float* %arrayidx.i.i, %scevgep6
  %bound1 = icmp ugt i8* %uglygep, %scevgep45
  %found.conflict = and i1 %bound0, %bound1
  %bound019 = icmp ult float* %scevgep8, %scevgep6
  %bound120 = icmp ult float* %scevgep4, %scevgep10
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  %bound023 = icmp ult float* %arrayidx9.i.i, %scevgep6
  %bound124 = icmp ugt i8* %uglygep14, %scevgep45
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  %bound027 = icmp ult float* %scevgep15, %scevgep6
  %bound128 = icmp ult float* %scevgep4, %scevgep17
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx30 = or i1 %conflict.rdx26, %found.conflict29
  br i1 %conflict.rdx30, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <8 x i32> undef, i32 %27, i32 0
  %broadcast.splat32 = shufflevector <8 x i32> %broadcast.splatinsert31, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert33 = insertelement <8 x float*> undef, float* %arrayidx.i.i, i32 0
  %broadcast.splat34 = shufflevector <8 x float*> %broadcast.splatinsert33, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert35 = insertelement <8 x float*> undef, float* %arrayidx9.i.i, i32 0
  %broadcast.splat36 = shufflevector <8 x float*> %broadcast.splatinsert35, <8 x float*> undef, <8 x i32> zeroinitializer
  %46 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %47 = trunc <8 x i64> %46 to <8 x i32>
  %48 = icmp sgt <8 x i32> %broadcast.splat32, %47
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %49 = extractelement <8 x i64> %46, i32 0
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = getelementptr inbounds float, float* %11, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %53, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !122, !noalias !120
  %wide.masked.gather37 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !124, !noalias !120
  %54 = getelementptr inbounds float, float* %15, i64 %51
  %55 = bitcast float* %54 to <8 x float>*
  %wide.masked.load38 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %55, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !126, !noalias !120
  %56 = fmul <8 x float> %wide.masked.gather37, %wide.masked.load38
  %57 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather, <8 x float> %wide.masked.load, <8 x float> %56)
  %58 = extractelement <8 x i32> %47, i32 0
  %59 = add nsw i32 %mul.i.i, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %7, i64 %60
  %62 = bitcast float* %61 to <8 x float>*
  %wide.masked.load39 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %62, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !120
  %63 = fadd <8 x float> %wide.masked.load39, %57
  %64 = bitcast float* %61 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %63, <8 x float>* %64, i32 4, <8 x i1> %48), !tbaa !12, !alias.scope !120, !llvm.access.group !27
  %65 = or <8 x i64> %broadcast.splat, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %66 = trunc <8 x i64> %65 to <8 x i32>
  %67 = icmp sgt <8 x i32> %broadcast.splat32, %66
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %67, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %68 = extractelement <8 x i64> %65, i32 0
  %69 = shl i64 %68, 32
  %70 = ashr exact i64 %69, 32
  %71 = getelementptr inbounds float, float* %11, i64 %70
  %72 = bitcast float* %71 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %72, i32 4, <8 x i1> %67, <8 x float> undef), !tbaa !12, !alias.scope !122, !noalias !120
  %wide.masked.gather37.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %67, <8 x float> undef), !tbaa !12, !alias.scope !124, !noalias !120
  %73 = getelementptr inbounds float, float* %15, i64 %70
  %74 = bitcast float* %73 to <8 x float>*
  %wide.masked.load38.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %74, i32 4, <8 x i1> %67, <8 x float> undef), !tbaa !12, !alias.scope !126, !noalias !120
  %75 = fmul <8 x float> %wide.masked.gather37.1, %wide.masked.load38.1
  %76 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather.1, <8 x float> %wide.masked.load.1, <8 x float> %75)
  %77 = extractelement <8 x i32> %66, i32 0
  %78 = add nsw i32 %mul.i.i, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %7, i64 %79
  %81 = bitcast float* %80 to <8 x float>*
  %wide.masked.load39.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %81, i32 4, <8 x i1> %67, <8 x float> undef), !tbaa !12, !alias.scope !120
  %82 = fadd <8 x float> %wide.masked.load39.1, %76
  %83 = bitcast float* %80 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %82, <8 x float>* %83, i32 4, <8 x i1> %67), !tbaa !12, !alias.scope !120, !llvm.access.group !27
  %84 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %85 = trunc <8 x i64> %84 to <8 x i32>
  %86 = icmp sgt <8 x i32> %broadcast.splat32, %85
  %wide.masked.gather.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %86, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %87 = extractelement <8 x i64> %84, i32 0
  %88 = shl i64 %87, 32
  %89 = ashr exact i64 %88, 32
  %90 = getelementptr inbounds float, float* %11, i64 %89
  %91 = bitcast float* %90 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %91, i32 4, <8 x i1> %86, <8 x float> undef), !tbaa !12, !alias.scope !122, !noalias !120
  %wide.masked.gather37.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %86, <8 x float> undef), !tbaa !12, !alias.scope !124, !noalias !120
  %92 = getelementptr inbounds float, float* %15, i64 %89
  %93 = bitcast float* %92 to <8 x float>*
  %wide.masked.load38.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %93, i32 4, <8 x i1> %86, <8 x float> undef), !tbaa !12, !alias.scope !126, !noalias !120
  %94 = fmul <8 x float> %wide.masked.gather37.2, %wide.masked.load38.2
  %95 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather.2, <8 x float> %wide.masked.load.2, <8 x float> %94)
  %96 = extractelement <8 x i32> %85, i32 0
  %97 = add nsw i32 %mul.i.i, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %7, i64 %98
  %100 = bitcast float* %99 to <8 x float>*
  %wide.masked.load39.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %100, i32 4, <8 x i1> %86, <8 x float> undef), !tbaa !12, !alias.scope !120
  %101 = fadd <8 x float> %wide.masked.load39.2, %95
  %102 = bitcast float* %99 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %101, <8 x float>* %102, i32 4, <8 x i1> %86), !tbaa !12, !alias.scope !120, !llvm.access.group !27
  %103 = or <8 x i64> %broadcast.splat, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %104 = trunc <8 x i64> %103 to <8 x i32>
  %105 = icmp sgt <8 x i32> %broadcast.splat32, %104
  %wide.masked.gather.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %105, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %106 = extractelement <8 x i64> %103, i32 0
  %107 = shl i64 %106, 32
  %108 = ashr exact i64 %107, 32
  %109 = getelementptr inbounds float, float* %11, i64 %108
  %110 = bitcast float* %109 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %110, i32 4, <8 x i1> %105, <8 x float> undef), !tbaa !12, !alias.scope !122, !noalias !120
  %wide.masked.gather37.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %105, <8 x float> undef), !tbaa !12, !alias.scope !124, !noalias !120
  %111 = getelementptr inbounds float, float* %15, i64 %108
  %112 = bitcast float* %111 to <8 x float>*
  %wide.masked.load38.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %112, i32 4, <8 x i1> %105, <8 x float> undef), !tbaa !12, !alias.scope !126, !noalias !120
  %113 = fmul <8 x float> %wide.masked.gather37.3, %wide.masked.load38.3
  %114 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather.3, <8 x float> %wide.masked.load.3, <8 x float> %113)
  %115 = extractelement <8 x i32> %104, i32 0
  %116 = add nsw i32 %mul.i.i, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %7, i64 %117
  %119 = bitcast float* %118 to <8 x float>*
  %wide.masked.load39.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %119, i32 4, <8 x i1> %105, <8 x float> undef), !tbaa !12, !alias.scope !120
  %120 = fadd <8 x float> %wide.masked.load39.3, %114
  %121 = bitcast float* %118 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %120, <8 x float>* %121, i32 4, <8 x i1> %105), !tbaa !12, !alias.scope !120, !llvm.access.group !27
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1532, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %870, %if.end.r_exit.i.i.us.1532 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %27, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %122 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %sext26.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom6.i.i.us = ashr exact i64 %sext26.i.i.us, 32
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us
  %123 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %124 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %arrayidx11.i.i.us = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us
  %125 = load float, float* %arrayidx11.i.i.us, align 4, !tbaa !12
  %mul12.i.i.us = fmul float %124, %125
  %126 = tail call float @llvm.fmuladd.f32(float %122, float %123, float %mul12.i.i.us) #6
  %add.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom13.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx14.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us
  %127 = load float, float* %arrayidx14.i.i.us, align 4, !tbaa !12
  %add15.i.i.us = fadd float %127, %126
  store float %add15.i.i.us, float* %arrayidx14.i.i.us, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %128 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1518 = add nuw nsw i64 %128, %mul.i.i.i
  %conv.i.i.us.1519 = trunc i64 %add1.i.i.i.us.1518 to i32
  %cmp4.i.i.us.1520 = icmp sgt i32 %27, %conv.i.i.us.1519
  br i1 %cmp4.i.i.us.1520, label %if.then.i.i.us.1531, label %if.end.r_exit.i.i.us.1532

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us.1532
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %add6.i.i.i.1 = or i64 %mul3.i.i.i, 1
  %conv2.i.i.1 = trunc i64 %add6.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %27, %conv2.i.i.1
  %sext.i.i.1 = shl i64 %add6.i.i.i.1, 32
  %idxprom.i.i.1 = ashr exact i64 %sext.i.i.1, 32
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.1
  %arrayidx9.i.i.1 = getelementptr inbounds float, float* %23, i64 %idxprom.i.i.1
  %mul.i.i.1 = mul nsw i32 %27, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck47, label %pregion_for_end.i.i.1

vector.scevcheck47:                               ; preds = %pregion_for_end.i.i
  %129 = mul i32 %27, %conv2.i.i.1
  %130 = trunc i64 %2 to i32
  %131 = shl i32 %130, 5
  %132 = add i32 %129, %131
  %133 = icmp sgt i32 %132, 2147483616
  br i1 %133, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.memcheck85

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.memcheck85, %vector.scevcheck47
  br label %pregion_for_entry.entry.i.i.us.1

vector.memcheck85:                                ; preds = %vector.scevcheck47
  %sext507 = shl i64 %3, 35
  %134 = ashr exact i64 %sext507, 32
  %135 = or i64 %134, 1
  %scevgep49 = getelementptr float, float* %19, i64 %135
  %scevgep4950 = bitcast float* %scevgep49 to i8*
  %uglygep51 = getelementptr i8, i8* %scevgep4950, i64 1
  %136 = mul i32 %27, %conv2.i.i.1
  %137 = trunc i64 %2 to i32
  %138 = shl i32 %137, 5
  %139 = add i32 %136, %138
  %140 = sext i32 %139 to i64
  %scevgep52 = getelementptr float, float* %7, i64 %140
  %scevgep5253 = bitcast float* %scevgep52 to i8*
  %141 = add nsw i64 %140, 32
  %scevgep54 = getelementptr float, float* %7, i64 %141
  %142 = sext i32 %138 to i64
  %scevgep56 = getelementptr float, float* %11, i64 %142
  %143 = add nsw i64 %142, 32
  %scevgep58 = getelementptr float, float* %11, i64 %143
  %scevgep60 = getelementptr float, float* %23, i64 %135
  %scevgep6061 = bitcast float* %scevgep60 to i8*
  %uglygep62 = getelementptr i8, i8* %scevgep6061, i64 1
  %scevgep63 = getelementptr float, float* %15, i64 %142
  %scevgep65 = getelementptr float, float* %15, i64 %143
  %bound068 = icmp ult float* %arrayidx.i.i.1, %scevgep54
  %bound169 = icmp ugt i8* %uglygep51, %scevgep5253
  %found.conflict70 = and i1 %bound068, %bound169
  %bound071 = icmp ult float* %scevgep56, %scevgep54
  %bound172 = icmp ult float* %scevgep52, %scevgep58
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %found.conflict70, %found.conflict73
  %bound076 = icmp ult float* %arrayidx9.i.i.1, %scevgep54
  %bound177 = icmp ugt i8* %uglygep62, %scevgep5253
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx74, %found.conflict78
  %bound080 = icmp ult float* %scevgep63, %scevgep54
  %bound181 = icmp ult float* %scevgep52, %scevgep65
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx79, %found.conflict82
  br i1 %conflict.rdx83, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck85
  %broadcast.splatinsert93 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat94 = shufflevector <8 x i64> %broadcast.splatinsert93, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x i32> undef, i32 %27, i32 0
  %broadcast.splat96 = shufflevector <8 x i32> %broadcast.splatinsert95, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <8 x float*> undef, float* %arrayidx.i.i.1, i32 0
  %broadcast.splat98 = shufflevector <8 x float*> %broadcast.splatinsert97, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.1, i32 0
  %broadcast.splat102 = shufflevector <8 x float*> %broadcast.splatinsert101, <8 x float*> undef, <8 x i32> zeroinitializer
  %144 = or <8 x i64> %broadcast.splat94, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %145 = trunc <8 x i64> %144 to <8 x i32>
  %146 = icmp sgt <8 x i32> %broadcast.splat96, %145
  %wide.masked.gather99 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12, !alias.scope !128, !noalias !131
  %147 = extractelement <8 x i64> %144, i32 0
  %148 = shl i64 %147, 32
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds float, float* %11, i64 %149
  %151 = bitcast float* %150 to <8 x float>*
  %wide.masked.load100 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %151, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !131
  %wide.masked.gather103 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12, !alias.scope !135, !noalias !131
  %152 = getelementptr inbounds float, float* %15, i64 %149
  %153 = bitcast float* %152 to <8 x float>*
  %wide.masked.load104 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %153, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12, !alias.scope !137, !noalias !131
  %154 = fmul <8 x float> %wide.masked.gather103, %wide.masked.load104
  %155 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99, <8 x float> %wide.masked.load100, <8 x float> %154)
  %156 = extractelement <8 x i32> %145, i32 0
  %157 = add nsw i32 %mul.i.i.1, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %7, i64 %158
  %160 = bitcast float* %159 to <8 x float>*
  %wide.masked.load105 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %160, i32 4, <8 x i1> %146, <8 x float> undef), !tbaa !12, !alias.scope !131
  %161 = fadd <8 x float> %wide.masked.load105, %155
  %162 = bitcast float* %159 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %161, <8 x float>* %162, i32 4, <8 x i1> %146), !tbaa !12, !alias.scope !131, !llvm.access.group !27
  %163 = or <8 x i64> %broadcast.splat94, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %164 = trunc <8 x i64> %163 to <8 x i32>
  %165 = icmp sgt <8 x i32> %broadcast.splat96, %164
  %wide.masked.gather99.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %165, <8 x float> undef), !tbaa !12, !alias.scope !128, !noalias !131
  %166 = extractelement <8 x i64> %163, i32 0
  %167 = shl i64 %166, 32
  %168 = ashr exact i64 %167, 32
  %169 = getelementptr inbounds float, float* %11, i64 %168
  %170 = bitcast float* %169 to <8 x float>*
  %wide.masked.load100.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %170, i32 4, <8 x i1> %165, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !131
  %wide.masked.gather103.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %165, <8 x float> undef), !tbaa !12, !alias.scope !135, !noalias !131
  %171 = getelementptr inbounds float, float* %15, i64 %168
  %172 = bitcast float* %171 to <8 x float>*
  %wide.masked.load104.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %172, i32 4, <8 x i1> %165, <8 x float> undef), !tbaa !12, !alias.scope !137, !noalias !131
  %173 = fmul <8 x float> %wide.masked.gather103.1, %wide.masked.load104.1
  %174 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99.1, <8 x float> %wide.masked.load100.1, <8 x float> %173)
  %175 = extractelement <8 x i32> %164, i32 0
  %176 = add nsw i32 %mul.i.i.1, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %7, i64 %177
  %179 = bitcast float* %178 to <8 x float>*
  %wide.masked.load105.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %179, i32 4, <8 x i1> %165, <8 x float> undef), !tbaa !12, !alias.scope !131
  %180 = fadd <8 x float> %wide.masked.load105.1, %174
  %181 = bitcast float* %178 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %180, <8 x float>* %181, i32 4, <8 x i1> %165), !tbaa !12, !alias.scope !131, !llvm.access.group !27
  %182 = or <8 x i64> %broadcast.splat94, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %183 = trunc <8 x i64> %182 to <8 x i32>
  %184 = icmp sgt <8 x i32> %broadcast.splat96, %183
  %wide.masked.gather99.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %184, <8 x float> undef), !tbaa !12, !alias.scope !128, !noalias !131
  %185 = extractelement <8 x i64> %182, i32 0
  %186 = shl i64 %185, 32
  %187 = ashr exact i64 %186, 32
  %188 = getelementptr inbounds float, float* %11, i64 %187
  %189 = bitcast float* %188 to <8 x float>*
  %wide.masked.load100.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %189, i32 4, <8 x i1> %184, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !131
  %wide.masked.gather103.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %184, <8 x float> undef), !tbaa !12, !alias.scope !135, !noalias !131
  %190 = getelementptr inbounds float, float* %15, i64 %187
  %191 = bitcast float* %190 to <8 x float>*
  %wide.masked.load104.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %191, i32 4, <8 x i1> %184, <8 x float> undef), !tbaa !12, !alias.scope !137, !noalias !131
  %192 = fmul <8 x float> %wide.masked.gather103.2, %wide.masked.load104.2
  %193 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99.2, <8 x float> %wide.masked.load100.2, <8 x float> %192)
  %194 = extractelement <8 x i32> %183, i32 0
  %195 = add nsw i32 %mul.i.i.1, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %7, i64 %196
  %198 = bitcast float* %197 to <8 x float>*
  %wide.masked.load105.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %198, i32 4, <8 x i1> %184, <8 x float> undef), !tbaa !12, !alias.scope !131
  %199 = fadd <8 x float> %wide.masked.load105.2, %193
  %200 = bitcast float* %197 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %199, <8 x float>* %200, i32 4, <8 x i1> %184), !tbaa !12, !alias.scope !131, !llvm.access.group !27
  %201 = or <8 x i64> %broadcast.splat94, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %202 = trunc <8 x i64> %201 to <8 x i32>
  %203 = icmp sgt <8 x i32> %broadcast.splat96, %202
  %wide.masked.gather99.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %203, <8 x float> undef), !tbaa !12, !alias.scope !128, !noalias !131
  %204 = extractelement <8 x i64> %201, i32 0
  %205 = shl i64 %204, 32
  %206 = ashr exact i64 %205, 32
  %207 = getelementptr inbounds float, float* %11, i64 %206
  %208 = bitcast float* %207 to <8 x float>*
  %wide.masked.load100.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %208, i32 4, <8 x i1> %203, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !131
  %wide.masked.gather103.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %203, <8 x float> undef), !tbaa !12, !alias.scope !135, !noalias !131
  %209 = getelementptr inbounds float, float* %15, i64 %206
  %210 = bitcast float* %209 to <8 x float>*
  %wide.masked.load104.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %210, i32 4, <8 x i1> %203, <8 x float> undef), !tbaa !12, !alias.scope !137, !noalias !131
  %211 = fmul <8 x float> %wide.masked.gather103.3, %wide.masked.load104.3
  %212 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99.3, <8 x float> %wide.masked.load100.3, <8 x float> %211)
  %213 = extractelement <8 x i32> %202, i32 0
  %214 = add nsw i32 %mul.i.i.1, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %7, i64 %215
  %217 = bitcast float* %216 to <8 x float>*
  %wide.masked.load105.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %217, i32 4, <8 x i1> %203, <8 x float> undef), !tbaa !12, !alias.scope !131
  %218 = fadd <8 x float> %wide.masked.load105.3, %212
  %219 = bitcast float* %216 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %218, <8 x float>* %219, i32 4, <8 x i1> %203), !tbaa !12, !alias.scope !131, !llvm.access.group !27
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.r_exit.i.i.us.1.1, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ], [ %863, %if.end.r_exit.i.i.us.1.1 ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %27, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.r_exit.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %220 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %sext26.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom6.i.i.us.1 = ashr exact i64 %sext26.i.i.us.1, 32
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.1
  %221 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  %222 = load float, float* %arrayidx9.i.i.1, align 4, !tbaa !12
  %arrayidx11.i.i.us.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.1
  %223 = load float, float* %arrayidx11.i.i.us.1, align 4, !tbaa !12
  %mul12.i.i.us.1 = fmul float %222, %223
  %224 = tail call float @llvm.fmuladd.f32(float %220, float %221, float %mul12.i.i.us.1) #6
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom13.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx14.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.1
  %225 = load float, float* %arrayidx14.i.i.us.1, align 4, !tbaa !12
  %add15.i.i.us.1 = fadd float %225, %224
  store float %add15.i.i.us.1, float* %arrayidx14.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %226 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %226, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %27, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.r_exit.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.r_exit.i.i.us.1.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph86, %pregion_for_end.i.i
  %add6.i.i.i.2 = or i64 %mul3.i.i.i, 2
  %conv2.i.i.2 = trunc i64 %add6.i.i.i.2 to i32
  %cmp.i.i.2 = icmp sgt i32 %27, %conv2.i.i.2
  %sext.i.i.2 = shl i64 %add6.i.i.i.2, 32
  %idxprom.i.i.2 = ashr exact i64 %sext.i.i.2, 32
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.2
  %arrayidx9.i.i.2 = getelementptr inbounds float, float* %23, i64 %idxprom.i.i.2
  %mul.i.i.2 = mul nsw i32 %27, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck113, label %pregion_for_end.i.i.2

vector.scevcheck113:                              ; preds = %pregion_for_end.i.i.1
  %227 = mul i32 %27, %conv2.i.i.2
  %228 = trunc i64 %2 to i32
  %229 = shl i32 %228, 5
  %230 = add i32 %227, %229
  %231 = icmp sgt i32 %230, 2147483616
  br i1 %231, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.memcheck151

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.memcheck151, %vector.scevcheck113
  br label %pregion_for_entry.entry.i.i.us.2

vector.memcheck151:                               ; preds = %vector.scevcheck113
  %sext506 = shl i64 %3, 35
  %232 = ashr exact i64 %sext506, 32
  %233 = or i64 %232, 2
  %scevgep115 = getelementptr float, float* %19, i64 %233
  %scevgep115116 = bitcast float* %scevgep115 to i8*
  %uglygep117 = getelementptr i8, i8* %scevgep115116, i64 1
  %234 = mul i32 %27, %conv2.i.i.2
  %235 = trunc i64 %2 to i32
  %236 = shl i32 %235, 5
  %237 = add i32 %234, %236
  %238 = sext i32 %237 to i64
  %scevgep118 = getelementptr float, float* %7, i64 %238
  %scevgep118119 = bitcast float* %scevgep118 to i8*
  %239 = add nsw i64 %238, 32
  %scevgep120 = getelementptr float, float* %7, i64 %239
  %240 = sext i32 %236 to i64
  %scevgep122 = getelementptr float, float* %11, i64 %240
  %241 = add nsw i64 %240, 32
  %scevgep124 = getelementptr float, float* %11, i64 %241
  %scevgep126 = getelementptr float, float* %23, i64 %233
  %scevgep126127 = bitcast float* %scevgep126 to i8*
  %uglygep128 = getelementptr i8, i8* %scevgep126127, i64 1
  %scevgep129 = getelementptr float, float* %15, i64 %240
  %scevgep131 = getelementptr float, float* %15, i64 %241
  %bound0134 = icmp ult float* %arrayidx.i.i.2, %scevgep120
  %bound1135 = icmp ugt i8* %uglygep117, %scevgep118119
  %found.conflict136 = and i1 %bound0134, %bound1135
  %bound0137 = icmp ult float* %scevgep122, %scevgep120
  %bound1138 = icmp ult float* %scevgep118, %scevgep124
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %found.conflict136, %found.conflict139
  %bound0142 = icmp ult float* %arrayidx9.i.i.2, %scevgep120
  %bound1143 = icmp ugt i8* %uglygep128, %scevgep118119
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx140, %found.conflict144
  %bound0146 = icmp ult float* %scevgep129, %scevgep120
  %bound1147 = icmp ult float* %scevgep118, %scevgep131
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  br i1 %conflict.rdx149, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck151
  %broadcast.splatinsert159 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat160 = shufflevector <8 x i64> %broadcast.splatinsert159, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert161 = insertelement <8 x i32> undef, i32 %27, i32 0
  %broadcast.splat162 = shufflevector <8 x i32> %broadcast.splatinsert161, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert163 = insertelement <8 x float*> undef, float* %arrayidx.i.i.2, i32 0
  %broadcast.splat164 = shufflevector <8 x float*> %broadcast.splatinsert163, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert167 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.2, i32 0
  %broadcast.splat168 = shufflevector <8 x float*> %broadcast.splatinsert167, <8 x float*> undef, <8 x i32> zeroinitializer
  %242 = or <8 x i64> %broadcast.splat160, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %243 = trunc <8 x i64> %242 to <8 x i32>
  %244 = icmp sgt <8 x i32> %broadcast.splat162, %243
  %wide.masked.gather165 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !139, !noalias !142
  %245 = extractelement <8 x i64> %242, i32 0
  %246 = shl i64 %245, 32
  %247 = ashr exact i64 %246, 32
  %248 = getelementptr inbounds float, float* %11, i64 %247
  %249 = bitcast float* %248 to <8 x float>*
  %wide.masked.load166 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %249, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !144, !noalias !142
  %wide.masked.gather169 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !146, !noalias !142
  %250 = getelementptr inbounds float, float* %15, i64 %247
  %251 = bitcast float* %250 to <8 x float>*
  %wide.masked.load170 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %251, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !148, !noalias !142
  %252 = fmul <8 x float> %wide.masked.gather169, %wide.masked.load170
  %253 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165, <8 x float> %wide.masked.load166, <8 x float> %252)
  %254 = extractelement <8 x i32> %243, i32 0
  %255 = add nsw i32 %mul.i.i.2, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %7, i64 %256
  %258 = bitcast float* %257 to <8 x float>*
  %wide.masked.load171 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %258, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !142
  %259 = fadd <8 x float> %wide.masked.load171, %253
  %260 = bitcast float* %257 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %259, <8 x float>* %260, i32 4, <8 x i1> %244), !tbaa !12, !alias.scope !142, !llvm.access.group !27
  %261 = or <8 x i64> %broadcast.splat160, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %262 = trunc <8 x i64> %261 to <8 x i32>
  %263 = icmp sgt <8 x i32> %broadcast.splat162, %262
  %wide.masked.gather165.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %263, <8 x float> undef), !tbaa !12, !alias.scope !139, !noalias !142
  %264 = extractelement <8 x i64> %261, i32 0
  %265 = shl i64 %264, 32
  %266 = ashr exact i64 %265, 32
  %267 = getelementptr inbounds float, float* %11, i64 %266
  %268 = bitcast float* %267 to <8 x float>*
  %wide.masked.load166.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %268, i32 4, <8 x i1> %263, <8 x float> undef), !tbaa !12, !alias.scope !144, !noalias !142
  %wide.masked.gather169.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %263, <8 x float> undef), !tbaa !12, !alias.scope !146, !noalias !142
  %269 = getelementptr inbounds float, float* %15, i64 %266
  %270 = bitcast float* %269 to <8 x float>*
  %wide.masked.load170.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %270, i32 4, <8 x i1> %263, <8 x float> undef), !tbaa !12, !alias.scope !148, !noalias !142
  %271 = fmul <8 x float> %wide.masked.gather169.1, %wide.masked.load170.1
  %272 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165.1, <8 x float> %wide.masked.load166.1, <8 x float> %271)
  %273 = extractelement <8 x i32> %262, i32 0
  %274 = add nsw i32 %mul.i.i.2, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %7, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  %wide.masked.load171.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %277, i32 4, <8 x i1> %263, <8 x float> undef), !tbaa !12, !alias.scope !142
  %278 = fadd <8 x float> %wide.masked.load171.1, %272
  %279 = bitcast float* %276 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %278, <8 x float>* %279, i32 4, <8 x i1> %263), !tbaa !12, !alias.scope !142, !llvm.access.group !27
  %280 = or <8 x i64> %broadcast.splat160, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %281 = trunc <8 x i64> %280 to <8 x i32>
  %282 = icmp sgt <8 x i32> %broadcast.splat162, %281
  %wide.masked.gather165.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %282, <8 x float> undef), !tbaa !12, !alias.scope !139, !noalias !142
  %283 = extractelement <8 x i64> %280, i32 0
  %284 = shl i64 %283, 32
  %285 = ashr exact i64 %284, 32
  %286 = getelementptr inbounds float, float* %11, i64 %285
  %287 = bitcast float* %286 to <8 x float>*
  %wide.masked.load166.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %287, i32 4, <8 x i1> %282, <8 x float> undef), !tbaa !12, !alias.scope !144, !noalias !142
  %wide.masked.gather169.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %282, <8 x float> undef), !tbaa !12, !alias.scope !146, !noalias !142
  %288 = getelementptr inbounds float, float* %15, i64 %285
  %289 = bitcast float* %288 to <8 x float>*
  %wide.masked.load170.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %289, i32 4, <8 x i1> %282, <8 x float> undef), !tbaa !12, !alias.scope !148, !noalias !142
  %290 = fmul <8 x float> %wide.masked.gather169.2, %wide.masked.load170.2
  %291 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165.2, <8 x float> %wide.masked.load166.2, <8 x float> %290)
  %292 = extractelement <8 x i32> %281, i32 0
  %293 = add nsw i32 %mul.i.i.2, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %7, i64 %294
  %296 = bitcast float* %295 to <8 x float>*
  %wide.masked.load171.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %296, i32 4, <8 x i1> %282, <8 x float> undef), !tbaa !12, !alias.scope !142
  %297 = fadd <8 x float> %wide.masked.load171.2, %291
  %298 = bitcast float* %295 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %297, <8 x float>* %298, i32 4, <8 x i1> %282), !tbaa !12, !alias.scope !142, !llvm.access.group !27
  %299 = or <8 x i64> %broadcast.splat160, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %300 = trunc <8 x i64> %299 to <8 x i32>
  %301 = icmp sgt <8 x i32> %broadcast.splat162, %300
  %wide.masked.gather165.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !139, !noalias !142
  %302 = extractelement <8 x i64> %299, i32 0
  %303 = shl i64 %302, 32
  %304 = ashr exact i64 %303, 32
  %305 = getelementptr inbounds float, float* %11, i64 %304
  %306 = bitcast float* %305 to <8 x float>*
  %wide.masked.load166.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %306, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !144, !noalias !142
  %wide.masked.gather169.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !146, !noalias !142
  %307 = getelementptr inbounds float, float* %15, i64 %304
  %308 = bitcast float* %307 to <8 x float>*
  %wide.masked.load170.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %308, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !148, !noalias !142
  %309 = fmul <8 x float> %wide.masked.gather169.3, %wide.masked.load170.3
  %310 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165.3, <8 x float> %wide.masked.load166.3, <8 x float> %309)
  %311 = extractelement <8 x i32> %300, i32 0
  %312 = add nsw i32 %mul.i.i.2, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %7, i64 %313
  %315 = bitcast float* %314 to <8 x float>*
  %wide.masked.load171.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %315, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !142
  %316 = fadd <8 x float> %wide.masked.load171.3, %310
  %317 = bitcast float* %314 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %316, <8 x float>* %317, i32 4, <8 x i1> %301), !tbaa !12, !alias.scope !142, !llvm.access.group !27
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.r_exit.i.i.us.2.1, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ], [ %856, %if.end.r_exit.i.i.us.2.1 ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %27, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.r_exit.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %318 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12
  %sext26.i.i.us.2 = shl i64 %add1.i.i.i.us.2, 32
  %idxprom6.i.i.us.2 = ashr exact i64 %sext26.i.i.us.2, 32
  %arrayidx7.i.i.us.2 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.2
  %319 = load float, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12
  %320 = load float, float* %arrayidx9.i.i.2, align 4, !tbaa !12
  %arrayidx11.i.i.us.2 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.2
  %321 = load float, float* %arrayidx11.i.i.us.2, align 4, !tbaa !12
  %mul12.i.i.us.2 = fmul float %320, %321
  %322 = tail call float @llvm.fmuladd.f32(float %318, float %319, float %mul12.i.i.us.2) #6
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom13.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx14.i.i.us.2 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.2
  %323 = load float, float* %arrayidx14.i.i.us.2, align 4, !tbaa !12
  %add15.i.i.us.2 = fadd float %323, %322
  store float %add15.i.i.us.2, float* %arrayidx14.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.2

if.end.r_exit.i.i.us.2:                           ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %324 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %324, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %27, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.r_exit.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.r_exit.i.i.us.2.1
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph152, %pregion_for_end.i.i.1
  %add6.i.i.i.3 = or i64 %mul3.i.i.i, 3
  %conv2.i.i.3 = trunc i64 %add6.i.i.i.3 to i32
  %cmp.i.i.3 = icmp sgt i32 %27, %conv2.i.i.3
  %sext.i.i.3 = shl i64 %add6.i.i.i.3, 32
  %idxprom.i.i.3 = ashr exact i64 %sext.i.i.3, 32
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.3
  %arrayidx9.i.i.3 = getelementptr inbounds float, float* %23, i64 %idxprom.i.i.3
  %mul.i.i.3 = mul nsw i32 %27, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck179, label %pregion_for_end.i.i.3

vector.scevcheck179:                              ; preds = %pregion_for_end.i.i.2
  %325 = mul i32 %27, %conv2.i.i.3
  %326 = trunc i64 %2 to i32
  %327 = shl i32 %326, 5
  %328 = add i32 %325, %327
  %329 = icmp sgt i32 %328, 2147483616
  br i1 %329, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.memcheck217

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.memcheck217, %vector.scevcheck179
  br label %pregion_for_entry.entry.i.i.us.3

vector.memcheck217:                               ; preds = %vector.scevcheck179
  %sext505 = shl i64 %3, 35
  %330 = ashr exact i64 %sext505, 32
  %331 = or i64 %330, 3
  %scevgep181 = getelementptr float, float* %19, i64 %331
  %scevgep181182 = bitcast float* %scevgep181 to i8*
  %uglygep183 = getelementptr i8, i8* %scevgep181182, i64 1
  %332 = mul i32 %27, %conv2.i.i.3
  %333 = trunc i64 %2 to i32
  %334 = shl i32 %333, 5
  %335 = add i32 %332, %334
  %336 = sext i32 %335 to i64
  %scevgep184 = getelementptr float, float* %7, i64 %336
  %scevgep184185 = bitcast float* %scevgep184 to i8*
  %337 = add nsw i64 %336, 32
  %scevgep186 = getelementptr float, float* %7, i64 %337
  %338 = sext i32 %334 to i64
  %scevgep188 = getelementptr float, float* %11, i64 %338
  %339 = add nsw i64 %338, 32
  %scevgep190 = getelementptr float, float* %11, i64 %339
  %scevgep192 = getelementptr float, float* %23, i64 %331
  %scevgep192193 = bitcast float* %scevgep192 to i8*
  %uglygep194 = getelementptr i8, i8* %scevgep192193, i64 1
  %scevgep195 = getelementptr float, float* %15, i64 %338
  %scevgep197 = getelementptr float, float* %15, i64 %339
  %bound0200 = icmp ult float* %arrayidx.i.i.3, %scevgep186
  %bound1201 = icmp ugt i8* %uglygep183, %scevgep184185
  %found.conflict202 = and i1 %bound0200, %bound1201
  %bound0203 = icmp ult float* %scevgep188, %scevgep186
  %bound1204 = icmp ult float* %scevgep184, %scevgep190
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %found.conflict202, %found.conflict205
  %bound0208 = icmp ult float* %arrayidx9.i.i.3, %scevgep186
  %bound1209 = icmp ugt i8* %uglygep194, %scevgep184185
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx206, %found.conflict210
  %bound0212 = icmp ult float* %scevgep195, %scevgep186
  %bound1213 = icmp ult float* %scevgep184, %scevgep197
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx211, %found.conflict214
  br i1 %conflict.rdx215, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck217
  %broadcast.splatinsert225 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat226 = shufflevector <8 x i64> %broadcast.splatinsert225, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x i32> undef, i32 %27, i32 0
  %broadcast.splat228 = shufflevector <8 x i32> %broadcast.splatinsert227, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float*> undef, float* %arrayidx.i.i.3, i32 0
  %broadcast.splat230 = shufflevector <8 x float*> %broadcast.splatinsert229, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert233 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.3, i32 0
  %broadcast.splat234 = shufflevector <8 x float*> %broadcast.splatinsert233, <8 x float*> undef, <8 x i32> zeroinitializer
  %340 = or <8 x i64> %broadcast.splat226, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %341 = trunc <8 x i64> %340 to <8 x i32>
  %342 = icmp sgt <8 x i32> %broadcast.splat228, %341
  %wide.masked.gather231 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !150, !noalias !153
  %343 = extractelement <8 x i64> %340, i32 0
  %344 = shl i64 %343, 32
  %345 = ashr exact i64 %344, 32
  %346 = getelementptr inbounds float, float* %11, i64 %345
  %347 = bitcast float* %346 to <8 x float>*
  %wide.masked.load232 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %347, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !155, !noalias !153
  %wide.masked.gather235 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !157, !noalias !153
  %348 = getelementptr inbounds float, float* %15, i64 %345
  %349 = bitcast float* %348 to <8 x float>*
  %wide.masked.load236 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %349, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !159, !noalias !153
  %350 = fmul <8 x float> %wide.masked.gather235, %wide.masked.load236
  %351 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231, <8 x float> %wide.masked.load232, <8 x float> %350)
  %352 = extractelement <8 x i32> %341, i32 0
  %353 = add nsw i32 %mul.i.i.3, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %7, i64 %354
  %356 = bitcast float* %355 to <8 x float>*
  %wide.masked.load237 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %356, i32 4, <8 x i1> %342, <8 x float> undef), !tbaa !12, !alias.scope !153
  %357 = fadd <8 x float> %wide.masked.load237, %351
  %358 = bitcast float* %355 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %357, <8 x float>* %358, i32 4, <8 x i1> %342), !tbaa !12, !alias.scope !153, !llvm.access.group !27
  %359 = or <8 x i64> %broadcast.splat226, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %360 = trunc <8 x i64> %359 to <8 x i32>
  %361 = icmp sgt <8 x i32> %broadcast.splat228, %360
  %wide.masked.gather231.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %361, <8 x float> undef), !tbaa !12, !alias.scope !150, !noalias !153
  %362 = extractelement <8 x i64> %359, i32 0
  %363 = shl i64 %362, 32
  %364 = ashr exact i64 %363, 32
  %365 = getelementptr inbounds float, float* %11, i64 %364
  %366 = bitcast float* %365 to <8 x float>*
  %wide.masked.load232.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %366, i32 4, <8 x i1> %361, <8 x float> undef), !tbaa !12, !alias.scope !155, !noalias !153
  %wide.masked.gather235.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %361, <8 x float> undef), !tbaa !12, !alias.scope !157, !noalias !153
  %367 = getelementptr inbounds float, float* %15, i64 %364
  %368 = bitcast float* %367 to <8 x float>*
  %wide.masked.load236.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %368, i32 4, <8 x i1> %361, <8 x float> undef), !tbaa !12, !alias.scope !159, !noalias !153
  %369 = fmul <8 x float> %wide.masked.gather235.1, %wide.masked.load236.1
  %370 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231.1, <8 x float> %wide.masked.load232.1, <8 x float> %369)
  %371 = extractelement <8 x i32> %360, i32 0
  %372 = add nsw i32 %mul.i.i.3, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds float, float* %7, i64 %373
  %375 = bitcast float* %374 to <8 x float>*
  %wide.masked.load237.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %375, i32 4, <8 x i1> %361, <8 x float> undef), !tbaa !12, !alias.scope !153
  %376 = fadd <8 x float> %wide.masked.load237.1, %370
  %377 = bitcast float* %374 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %376, <8 x float>* %377, i32 4, <8 x i1> %361), !tbaa !12, !alias.scope !153, !llvm.access.group !27
  %378 = or <8 x i64> %broadcast.splat226, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %379 = trunc <8 x i64> %378 to <8 x i32>
  %380 = icmp sgt <8 x i32> %broadcast.splat228, %379
  %wide.masked.gather231.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %380, <8 x float> undef), !tbaa !12, !alias.scope !150, !noalias !153
  %381 = extractelement <8 x i64> %378, i32 0
  %382 = shl i64 %381, 32
  %383 = ashr exact i64 %382, 32
  %384 = getelementptr inbounds float, float* %11, i64 %383
  %385 = bitcast float* %384 to <8 x float>*
  %wide.masked.load232.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %385, i32 4, <8 x i1> %380, <8 x float> undef), !tbaa !12, !alias.scope !155, !noalias !153
  %wide.masked.gather235.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %380, <8 x float> undef), !tbaa !12, !alias.scope !157, !noalias !153
  %386 = getelementptr inbounds float, float* %15, i64 %383
  %387 = bitcast float* %386 to <8 x float>*
  %wide.masked.load236.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %387, i32 4, <8 x i1> %380, <8 x float> undef), !tbaa !12, !alias.scope !159, !noalias !153
  %388 = fmul <8 x float> %wide.masked.gather235.2, %wide.masked.load236.2
  %389 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231.2, <8 x float> %wide.masked.load232.2, <8 x float> %388)
  %390 = extractelement <8 x i32> %379, i32 0
  %391 = add nsw i32 %mul.i.i.3, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %7, i64 %392
  %394 = bitcast float* %393 to <8 x float>*
  %wide.masked.load237.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %394, i32 4, <8 x i1> %380, <8 x float> undef), !tbaa !12, !alias.scope !153
  %395 = fadd <8 x float> %wide.masked.load237.2, %389
  %396 = bitcast float* %393 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %395, <8 x float>* %396, i32 4, <8 x i1> %380), !tbaa !12, !alias.scope !153, !llvm.access.group !27
  %397 = or <8 x i64> %broadcast.splat226, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %398 = trunc <8 x i64> %397 to <8 x i32>
  %399 = icmp sgt <8 x i32> %broadcast.splat228, %398
  %wide.masked.gather231.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %399, <8 x float> undef), !tbaa !12, !alias.scope !150, !noalias !153
  %400 = extractelement <8 x i64> %397, i32 0
  %401 = shl i64 %400, 32
  %402 = ashr exact i64 %401, 32
  %403 = getelementptr inbounds float, float* %11, i64 %402
  %404 = bitcast float* %403 to <8 x float>*
  %wide.masked.load232.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %404, i32 4, <8 x i1> %399, <8 x float> undef), !tbaa !12, !alias.scope !155, !noalias !153
  %wide.masked.gather235.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %399, <8 x float> undef), !tbaa !12, !alias.scope !157, !noalias !153
  %405 = getelementptr inbounds float, float* %15, i64 %402
  %406 = bitcast float* %405 to <8 x float>*
  %wide.masked.load236.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %406, i32 4, <8 x i1> %399, <8 x float> undef), !tbaa !12, !alias.scope !159, !noalias !153
  %407 = fmul <8 x float> %wide.masked.gather235.3, %wide.masked.load236.3
  %408 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231.3, <8 x float> %wide.masked.load232.3, <8 x float> %407)
  %409 = extractelement <8 x i32> %398, i32 0
  %410 = add nsw i32 %mul.i.i.3, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds float, float* %7, i64 %411
  %413 = bitcast float* %412 to <8 x float>*
  %wide.masked.load237.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %413, i32 4, <8 x i1> %399, <8 x float> undef), !tbaa !12, !alias.scope !153
  %414 = fadd <8 x float> %wide.masked.load237.3, %408
  %415 = bitcast float* %412 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %414, <8 x float>* %415, i32 4, <8 x i1> %399), !tbaa !12, !alias.scope !153, !llvm.access.group !27
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.r_exit.i.i.us.3.1, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ], [ %849, %if.end.r_exit.i.i.us.3.1 ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %27, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.r_exit.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %416 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12
  %sext26.i.i.us.3 = shl i64 %add1.i.i.i.us.3, 32
  %idxprom6.i.i.us.3 = ashr exact i64 %sext26.i.i.us.3, 32
  %arrayidx7.i.i.us.3 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.3
  %417 = load float, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12
  %418 = load float, float* %arrayidx9.i.i.3, align 4, !tbaa !12
  %arrayidx11.i.i.us.3 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.3
  %419 = load float, float* %arrayidx11.i.i.us.3, align 4, !tbaa !12
  %mul12.i.i.us.3 = fmul float %418, %419
  %420 = tail call float @llvm.fmuladd.f32(float %416, float %417, float %mul12.i.i.us.3) #6
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom13.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx14.i.i.us.3 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.3
  %421 = load float, float* %arrayidx14.i.i.us.3, align 4, !tbaa !12
  %add15.i.i.us.3 = fadd float %421, %420
  store float %add15.i.i.us.3, float* %arrayidx14.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.3

if.end.r_exit.i.i.us.3:                           ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %422 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %422, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %27, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.r_exit.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.r_exit.i.i.us.3.1
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph218, %pregion_for_end.i.i.2
  %add6.i.i.i.4 = or i64 %mul3.i.i.i, 4
  %conv2.i.i.4 = trunc i64 %add6.i.i.i.4 to i32
  %cmp.i.i.4 = icmp sgt i32 %27, %conv2.i.i.4
  %sext.i.i.4 = shl i64 %add6.i.i.i.4, 32
  %idxprom.i.i.4 = ashr exact i64 %sext.i.i.4, 32
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.4
  %arrayidx9.i.i.4 = getelementptr inbounds float, float* %23, i64 %idxprom.i.i.4
  %mul.i.i.4 = mul nsw i32 %27, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck245, label %pregion_for_end.i.i.4

vector.scevcheck245:                              ; preds = %pregion_for_end.i.i.3
  %423 = mul i32 %27, %conv2.i.i.4
  %424 = trunc i64 %2 to i32
  %425 = shl i32 %424, 5
  %426 = add i32 %423, %425
  %427 = icmp sgt i32 %426, 2147483616
  br i1 %427, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.memcheck283

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.memcheck283, %vector.scevcheck245
  br label %pregion_for_entry.entry.i.i.us.4

vector.memcheck283:                               ; preds = %vector.scevcheck245
  %sext504 = shl i64 %3, 35
  %428 = ashr exact i64 %sext504, 32
  %429 = or i64 %428, 4
  %scevgep247 = getelementptr float, float* %19, i64 %429
  %scevgep247248 = bitcast float* %scevgep247 to i8*
  %uglygep249 = getelementptr i8, i8* %scevgep247248, i64 1
  %430 = mul i32 %27, %conv2.i.i.4
  %431 = trunc i64 %2 to i32
  %432 = shl i32 %431, 5
  %433 = add i32 %430, %432
  %434 = sext i32 %433 to i64
  %scevgep250 = getelementptr float, float* %7, i64 %434
  %scevgep250251 = bitcast float* %scevgep250 to i8*
  %435 = add nsw i64 %434, 32
  %scevgep252 = getelementptr float, float* %7, i64 %435
  %436 = sext i32 %432 to i64
  %scevgep254 = getelementptr float, float* %11, i64 %436
  %437 = add nsw i64 %436, 32
  %scevgep256 = getelementptr float, float* %11, i64 %437
  %scevgep258 = getelementptr float, float* %23, i64 %429
  %scevgep258259 = bitcast float* %scevgep258 to i8*
  %uglygep260 = getelementptr i8, i8* %scevgep258259, i64 1
  %scevgep261 = getelementptr float, float* %15, i64 %436
  %scevgep263 = getelementptr float, float* %15, i64 %437
  %bound0266 = icmp ult float* %arrayidx.i.i.4, %scevgep252
  %bound1267 = icmp ugt i8* %uglygep249, %scevgep250251
  %found.conflict268 = and i1 %bound0266, %bound1267
  %bound0269 = icmp ult float* %scevgep254, %scevgep252
  %bound1270 = icmp ult float* %scevgep250, %scevgep256
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %found.conflict268, %found.conflict271
  %bound0274 = icmp ult float* %arrayidx9.i.i.4, %scevgep252
  %bound1275 = icmp ugt i8* %uglygep260, %scevgep250251
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx277 = or i1 %conflict.rdx272, %found.conflict276
  %bound0278 = icmp ult float* %scevgep261, %scevgep252
  %bound1279 = icmp ult float* %scevgep250, %scevgep263
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %conflict.rdx277, %found.conflict280
  br i1 %conflict.rdx281, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck283
  %broadcast.splatinsert291 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat292 = shufflevector <8 x i64> %broadcast.splatinsert291, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert293 = insertelement <8 x i32> undef, i32 %27, i32 0
  %broadcast.splat294 = shufflevector <8 x i32> %broadcast.splatinsert293, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert295 = insertelement <8 x float*> undef, float* %arrayidx.i.i.4, i32 0
  %broadcast.splat296 = shufflevector <8 x float*> %broadcast.splatinsert295, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert299 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.4, i32 0
  %broadcast.splat300 = shufflevector <8 x float*> %broadcast.splatinsert299, <8 x float*> undef, <8 x i32> zeroinitializer
  %438 = or <8 x i64> %broadcast.splat292, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %439 = trunc <8 x i64> %438 to <8 x i32>
  %440 = icmp sgt <8 x i32> %broadcast.splat294, %439
  %wide.masked.gather297 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %440, <8 x float> undef), !tbaa !12, !alias.scope !161, !noalias !164
  %441 = extractelement <8 x i64> %438, i32 0
  %442 = shl i64 %441, 32
  %443 = ashr exact i64 %442, 32
  %444 = getelementptr inbounds float, float* %11, i64 %443
  %445 = bitcast float* %444 to <8 x float>*
  %wide.masked.load298 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %445, i32 4, <8 x i1> %440, <8 x float> undef), !tbaa !12, !alias.scope !166, !noalias !164
  %wide.masked.gather301 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %440, <8 x float> undef), !tbaa !12, !alias.scope !168, !noalias !164
  %446 = getelementptr inbounds float, float* %15, i64 %443
  %447 = bitcast float* %446 to <8 x float>*
  %wide.masked.load302 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %447, i32 4, <8 x i1> %440, <8 x float> undef), !tbaa !12, !alias.scope !170, !noalias !164
  %448 = fmul <8 x float> %wide.masked.gather301, %wide.masked.load302
  %449 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297, <8 x float> %wide.masked.load298, <8 x float> %448)
  %450 = extractelement <8 x i32> %439, i32 0
  %451 = add nsw i32 %mul.i.i.4, %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds float, float* %7, i64 %452
  %454 = bitcast float* %453 to <8 x float>*
  %wide.masked.load303 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %454, i32 4, <8 x i1> %440, <8 x float> undef), !tbaa !12, !alias.scope !164
  %455 = fadd <8 x float> %wide.masked.load303, %449
  %456 = bitcast float* %453 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %455, <8 x float>* %456, i32 4, <8 x i1> %440), !tbaa !12, !alias.scope !164, !llvm.access.group !27
  %457 = or <8 x i64> %broadcast.splat292, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %458 = trunc <8 x i64> %457 to <8 x i32>
  %459 = icmp sgt <8 x i32> %broadcast.splat294, %458
  %wide.masked.gather297.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %459, <8 x float> undef), !tbaa !12, !alias.scope !161, !noalias !164
  %460 = extractelement <8 x i64> %457, i32 0
  %461 = shl i64 %460, 32
  %462 = ashr exact i64 %461, 32
  %463 = getelementptr inbounds float, float* %11, i64 %462
  %464 = bitcast float* %463 to <8 x float>*
  %wide.masked.load298.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %464, i32 4, <8 x i1> %459, <8 x float> undef), !tbaa !12, !alias.scope !166, !noalias !164
  %wide.masked.gather301.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %459, <8 x float> undef), !tbaa !12, !alias.scope !168, !noalias !164
  %465 = getelementptr inbounds float, float* %15, i64 %462
  %466 = bitcast float* %465 to <8 x float>*
  %wide.masked.load302.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %466, i32 4, <8 x i1> %459, <8 x float> undef), !tbaa !12, !alias.scope !170, !noalias !164
  %467 = fmul <8 x float> %wide.masked.gather301.1, %wide.masked.load302.1
  %468 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297.1, <8 x float> %wide.masked.load298.1, <8 x float> %467)
  %469 = extractelement <8 x i32> %458, i32 0
  %470 = add nsw i32 %mul.i.i.4, %469
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds float, float* %7, i64 %471
  %473 = bitcast float* %472 to <8 x float>*
  %wide.masked.load303.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %473, i32 4, <8 x i1> %459, <8 x float> undef), !tbaa !12, !alias.scope !164
  %474 = fadd <8 x float> %wide.masked.load303.1, %468
  %475 = bitcast float* %472 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %474, <8 x float>* %475, i32 4, <8 x i1> %459), !tbaa !12, !alias.scope !164, !llvm.access.group !27
  %476 = or <8 x i64> %broadcast.splat292, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %477 = trunc <8 x i64> %476 to <8 x i32>
  %478 = icmp sgt <8 x i32> %broadcast.splat294, %477
  %wide.masked.gather297.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %478, <8 x float> undef), !tbaa !12, !alias.scope !161, !noalias !164
  %479 = extractelement <8 x i64> %476, i32 0
  %480 = shl i64 %479, 32
  %481 = ashr exact i64 %480, 32
  %482 = getelementptr inbounds float, float* %11, i64 %481
  %483 = bitcast float* %482 to <8 x float>*
  %wide.masked.load298.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %483, i32 4, <8 x i1> %478, <8 x float> undef), !tbaa !12, !alias.scope !166, !noalias !164
  %wide.masked.gather301.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %478, <8 x float> undef), !tbaa !12, !alias.scope !168, !noalias !164
  %484 = getelementptr inbounds float, float* %15, i64 %481
  %485 = bitcast float* %484 to <8 x float>*
  %wide.masked.load302.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %485, i32 4, <8 x i1> %478, <8 x float> undef), !tbaa !12, !alias.scope !170, !noalias !164
  %486 = fmul <8 x float> %wide.masked.gather301.2, %wide.masked.load302.2
  %487 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297.2, <8 x float> %wide.masked.load298.2, <8 x float> %486)
  %488 = extractelement <8 x i32> %477, i32 0
  %489 = add nsw i32 %mul.i.i.4, %488
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds float, float* %7, i64 %490
  %492 = bitcast float* %491 to <8 x float>*
  %wide.masked.load303.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %492, i32 4, <8 x i1> %478, <8 x float> undef), !tbaa !12, !alias.scope !164
  %493 = fadd <8 x float> %wide.masked.load303.2, %487
  %494 = bitcast float* %491 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %493, <8 x float>* %494, i32 4, <8 x i1> %478), !tbaa !12, !alias.scope !164, !llvm.access.group !27
  %495 = or <8 x i64> %broadcast.splat292, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %496 = trunc <8 x i64> %495 to <8 x i32>
  %497 = icmp sgt <8 x i32> %broadcast.splat294, %496
  %wide.masked.gather297.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %497, <8 x float> undef), !tbaa !12, !alias.scope !161, !noalias !164
  %498 = extractelement <8 x i64> %495, i32 0
  %499 = shl i64 %498, 32
  %500 = ashr exact i64 %499, 32
  %501 = getelementptr inbounds float, float* %11, i64 %500
  %502 = bitcast float* %501 to <8 x float>*
  %wide.masked.load298.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %502, i32 4, <8 x i1> %497, <8 x float> undef), !tbaa !12, !alias.scope !166, !noalias !164
  %wide.masked.gather301.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %497, <8 x float> undef), !tbaa !12, !alias.scope !168, !noalias !164
  %503 = getelementptr inbounds float, float* %15, i64 %500
  %504 = bitcast float* %503 to <8 x float>*
  %wide.masked.load302.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %504, i32 4, <8 x i1> %497, <8 x float> undef), !tbaa !12, !alias.scope !170, !noalias !164
  %505 = fmul <8 x float> %wide.masked.gather301.3, %wide.masked.load302.3
  %506 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297.3, <8 x float> %wide.masked.load298.3, <8 x float> %505)
  %507 = extractelement <8 x i32> %496, i32 0
  %508 = add nsw i32 %mul.i.i.4, %507
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds float, float* %7, i64 %509
  %511 = bitcast float* %510 to <8 x float>*
  %wide.masked.load303.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %511, i32 4, <8 x i1> %497, <8 x float> undef), !tbaa !12, !alias.scope !164
  %512 = fadd <8 x float> %wide.masked.load303.3, %506
  %513 = bitcast float* %510 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %512, <8 x float>* %513, i32 4, <8 x i1> %497), !tbaa !12, !alias.scope !164, !llvm.access.group !27
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.r_exit.i.i.us.4.1, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ], [ %842, %if.end.r_exit.i.i.us.4.1 ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %27, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.r_exit.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %514 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12
  %sext26.i.i.us.4 = shl i64 %add1.i.i.i.us.4, 32
  %idxprom6.i.i.us.4 = ashr exact i64 %sext26.i.i.us.4, 32
  %arrayidx7.i.i.us.4 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.4
  %515 = load float, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12
  %516 = load float, float* %arrayidx9.i.i.4, align 4, !tbaa !12
  %arrayidx11.i.i.us.4 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.4
  %517 = load float, float* %arrayidx11.i.i.us.4, align 4, !tbaa !12
  %mul12.i.i.us.4 = fmul float %516, %517
  %518 = tail call float @llvm.fmuladd.f32(float %514, float %515, float %mul12.i.i.us.4) #6
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom13.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx14.i.i.us.4 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.4
  %519 = load float, float* %arrayidx14.i.i.us.4, align 4, !tbaa !12
  %add15.i.i.us.4 = fadd float %519, %518
  store float %add15.i.i.us.4, float* %arrayidx14.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.4

if.end.r_exit.i.i.us.4:                           ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %520 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %520, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %27, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.r_exit.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.r_exit.i.i.us.4.1
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph284, %pregion_for_end.i.i.3
  %add6.i.i.i.5 = or i64 %mul3.i.i.i, 5
  %conv2.i.i.5 = trunc i64 %add6.i.i.i.5 to i32
  %cmp.i.i.5 = icmp sgt i32 %27, %conv2.i.i.5
  %sext.i.i.5 = shl i64 %add6.i.i.i.5, 32
  %idxprom.i.i.5 = ashr exact i64 %sext.i.i.5, 32
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.5
  %arrayidx9.i.i.5 = getelementptr inbounds float, float* %23, i64 %idxprom.i.i.5
  %mul.i.i.5 = mul nsw i32 %27, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck311, label %pregion_for_end.i.i.5

vector.scevcheck311:                              ; preds = %pregion_for_end.i.i.4
  %521 = mul i32 %27, %conv2.i.i.5
  %522 = trunc i64 %2 to i32
  %523 = shl i32 %522, 5
  %524 = add i32 %521, %523
  %525 = icmp sgt i32 %524, 2147483616
  br i1 %525, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.memcheck349

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.memcheck349, %vector.scevcheck311
  br label %pregion_for_entry.entry.i.i.us.5

vector.memcheck349:                               ; preds = %vector.scevcheck311
  %sext503 = shl i64 %3, 35
  %526 = ashr exact i64 %sext503, 32
  %527 = or i64 %526, 5
  %scevgep313 = getelementptr float, float* %19, i64 %527
  %scevgep313314 = bitcast float* %scevgep313 to i8*
  %uglygep315 = getelementptr i8, i8* %scevgep313314, i64 1
  %528 = mul i32 %27, %conv2.i.i.5
  %529 = trunc i64 %2 to i32
  %530 = shl i32 %529, 5
  %531 = add i32 %528, %530
  %532 = sext i32 %531 to i64
  %scevgep316 = getelementptr float, float* %7, i64 %532
  %scevgep316317 = bitcast float* %scevgep316 to i8*
  %533 = add nsw i64 %532, 32
  %scevgep318 = getelementptr float, float* %7, i64 %533
  %534 = sext i32 %530 to i64
  %scevgep320 = getelementptr float, float* %11, i64 %534
  %535 = add nsw i64 %534, 32
  %scevgep322 = getelementptr float, float* %11, i64 %535
  %scevgep324 = getelementptr float, float* %23, i64 %527
  %scevgep324325 = bitcast float* %scevgep324 to i8*
  %uglygep326 = getelementptr i8, i8* %scevgep324325, i64 1
  %scevgep327 = getelementptr float, float* %15, i64 %534
  %scevgep329 = getelementptr float, float* %15, i64 %535
  %bound0332 = icmp ult float* %arrayidx.i.i.5, %scevgep318
  %bound1333 = icmp ugt i8* %uglygep315, %scevgep316317
  %found.conflict334 = and i1 %bound0332, %bound1333
  %bound0335 = icmp ult float* %scevgep320, %scevgep318
  %bound1336 = icmp ult float* %scevgep316, %scevgep322
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx338 = or i1 %found.conflict334, %found.conflict337
  %bound0340 = icmp ult float* %arrayidx9.i.i.5, %scevgep318
  %bound1341 = icmp ugt i8* %uglygep326, %scevgep316317
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx338, %found.conflict342
  %bound0344 = icmp ult float* %scevgep327, %scevgep318
  %bound1345 = icmp ult float* %scevgep316, %scevgep329
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx343, %found.conflict346
  br i1 %conflict.rdx347, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph350

vector.ph350:                                     ; preds = %vector.memcheck349
  %broadcast.splatinsert357 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat358 = shufflevector <8 x i64> %broadcast.splatinsert357, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert359 = insertelement <8 x i32> undef, i32 %27, i32 0
  %broadcast.splat360 = shufflevector <8 x i32> %broadcast.splatinsert359, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert361 = insertelement <8 x float*> undef, float* %arrayidx.i.i.5, i32 0
  %broadcast.splat362 = shufflevector <8 x float*> %broadcast.splatinsert361, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert365 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.5, i32 0
  %broadcast.splat366 = shufflevector <8 x float*> %broadcast.splatinsert365, <8 x float*> undef, <8 x i32> zeroinitializer
  %536 = or <8 x i64> %broadcast.splat358, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %537 = trunc <8 x i64> %536 to <8 x i32>
  %538 = icmp sgt <8 x i32> %broadcast.splat360, %537
  %wide.masked.gather363 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %538, <8 x float> undef), !tbaa !12, !alias.scope !172, !noalias !175
  %539 = extractelement <8 x i64> %536, i32 0
  %540 = shl i64 %539, 32
  %541 = ashr exact i64 %540, 32
  %542 = getelementptr inbounds float, float* %11, i64 %541
  %543 = bitcast float* %542 to <8 x float>*
  %wide.masked.load364 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %543, i32 4, <8 x i1> %538, <8 x float> undef), !tbaa !12, !alias.scope !177, !noalias !175
  %wide.masked.gather367 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %538, <8 x float> undef), !tbaa !12, !alias.scope !179, !noalias !175
  %544 = getelementptr inbounds float, float* %15, i64 %541
  %545 = bitcast float* %544 to <8 x float>*
  %wide.masked.load368 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %545, i32 4, <8 x i1> %538, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !175
  %546 = fmul <8 x float> %wide.masked.gather367, %wide.masked.load368
  %547 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363, <8 x float> %wide.masked.load364, <8 x float> %546)
  %548 = extractelement <8 x i32> %537, i32 0
  %549 = add nsw i32 %mul.i.i.5, %548
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds float, float* %7, i64 %550
  %552 = bitcast float* %551 to <8 x float>*
  %wide.masked.load369 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %552, i32 4, <8 x i1> %538, <8 x float> undef), !tbaa !12, !alias.scope !175
  %553 = fadd <8 x float> %wide.masked.load369, %547
  %554 = bitcast float* %551 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %553, <8 x float>* %554, i32 4, <8 x i1> %538), !tbaa !12, !alias.scope !175, !llvm.access.group !27
  %555 = or <8 x i64> %broadcast.splat358, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %556 = trunc <8 x i64> %555 to <8 x i32>
  %557 = icmp sgt <8 x i32> %broadcast.splat360, %556
  %wide.masked.gather363.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %557, <8 x float> undef), !tbaa !12, !alias.scope !172, !noalias !175
  %558 = extractelement <8 x i64> %555, i32 0
  %559 = shl i64 %558, 32
  %560 = ashr exact i64 %559, 32
  %561 = getelementptr inbounds float, float* %11, i64 %560
  %562 = bitcast float* %561 to <8 x float>*
  %wide.masked.load364.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %562, i32 4, <8 x i1> %557, <8 x float> undef), !tbaa !12, !alias.scope !177, !noalias !175
  %wide.masked.gather367.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %557, <8 x float> undef), !tbaa !12, !alias.scope !179, !noalias !175
  %563 = getelementptr inbounds float, float* %15, i64 %560
  %564 = bitcast float* %563 to <8 x float>*
  %wide.masked.load368.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %564, i32 4, <8 x i1> %557, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !175
  %565 = fmul <8 x float> %wide.masked.gather367.1, %wide.masked.load368.1
  %566 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363.1, <8 x float> %wide.masked.load364.1, <8 x float> %565)
  %567 = extractelement <8 x i32> %556, i32 0
  %568 = add nsw i32 %mul.i.i.5, %567
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds float, float* %7, i64 %569
  %571 = bitcast float* %570 to <8 x float>*
  %wide.masked.load369.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %571, i32 4, <8 x i1> %557, <8 x float> undef), !tbaa !12, !alias.scope !175
  %572 = fadd <8 x float> %wide.masked.load369.1, %566
  %573 = bitcast float* %570 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %572, <8 x float>* %573, i32 4, <8 x i1> %557), !tbaa !12, !alias.scope !175, !llvm.access.group !27
  %574 = or <8 x i64> %broadcast.splat358, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %575 = trunc <8 x i64> %574 to <8 x i32>
  %576 = icmp sgt <8 x i32> %broadcast.splat360, %575
  %wide.masked.gather363.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %576, <8 x float> undef), !tbaa !12, !alias.scope !172, !noalias !175
  %577 = extractelement <8 x i64> %574, i32 0
  %578 = shl i64 %577, 32
  %579 = ashr exact i64 %578, 32
  %580 = getelementptr inbounds float, float* %11, i64 %579
  %581 = bitcast float* %580 to <8 x float>*
  %wide.masked.load364.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %581, i32 4, <8 x i1> %576, <8 x float> undef), !tbaa !12, !alias.scope !177, !noalias !175
  %wide.masked.gather367.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %576, <8 x float> undef), !tbaa !12, !alias.scope !179, !noalias !175
  %582 = getelementptr inbounds float, float* %15, i64 %579
  %583 = bitcast float* %582 to <8 x float>*
  %wide.masked.load368.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %583, i32 4, <8 x i1> %576, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !175
  %584 = fmul <8 x float> %wide.masked.gather367.2, %wide.masked.load368.2
  %585 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363.2, <8 x float> %wide.masked.load364.2, <8 x float> %584)
  %586 = extractelement <8 x i32> %575, i32 0
  %587 = add nsw i32 %mul.i.i.5, %586
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds float, float* %7, i64 %588
  %590 = bitcast float* %589 to <8 x float>*
  %wide.masked.load369.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %590, i32 4, <8 x i1> %576, <8 x float> undef), !tbaa !12, !alias.scope !175
  %591 = fadd <8 x float> %wide.masked.load369.2, %585
  %592 = bitcast float* %589 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %591, <8 x float>* %592, i32 4, <8 x i1> %576), !tbaa !12, !alias.scope !175, !llvm.access.group !27
  %593 = or <8 x i64> %broadcast.splat358, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %594 = trunc <8 x i64> %593 to <8 x i32>
  %595 = icmp sgt <8 x i32> %broadcast.splat360, %594
  %wide.masked.gather363.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %595, <8 x float> undef), !tbaa !12, !alias.scope !172, !noalias !175
  %596 = extractelement <8 x i64> %593, i32 0
  %597 = shl i64 %596, 32
  %598 = ashr exact i64 %597, 32
  %599 = getelementptr inbounds float, float* %11, i64 %598
  %600 = bitcast float* %599 to <8 x float>*
  %wide.masked.load364.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %600, i32 4, <8 x i1> %595, <8 x float> undef), !tbaa !12, !alias.scope !177, !noalias !175
  %wide.masked.gather367.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %595, <8 x float> undef), !tbaa !12, !alias.scope !179, !noalias !175
  %601 = getelementptr inbounds float, float* %15, i64 %598
  %602 = bitcast float* %601 to <8 x float>*
  %wide.masked.load368.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %602, i32 4, <8 x i1> %595, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !175
  %603 = fmul <8 x float> %wide.masked.gather367.3, %wide.masked.load368.3
  %604 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363.3, <8 x float> %wide.masked.load364.3, <8 x float> %603)
  %605 = extractelement <8 x i32> %594, i32 0
  %606 = add nsw i32 %mul.i.i.5, %605
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds float, float* %7, i64 %607
  %609 = bitcast float* %608 to <8 x float>*
  %wide.masked.load369.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %609, i32 4, <8 x i1> %595, <8 x float> undef), !tbaa !12, !alias.scope !175
  %610 = fadd <8 x float> %wide.masked.load369.3, %604
  %611 = bitcast float* %608 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %610, <8 x float>* %611, i32 4, <8 x i1> %595), !tbaa !12, !alias.scope !175, !llvm.access.group !27
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.r_exit.i.i.us.5.1, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ], [ %835, %if.end.r_exit.i.i.us.5.1 ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %27, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.r_exit.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %612 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12
  %sext26.i.i.us.5 = shl i64 %add1.i.i.i.us.5, 32
  %idxprom6.i.i.us.5 = ashr exact i64 %sext26.i.i.us.5, 32
  %arrayidx7.i.i.us.5 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.5
  %613 = load float, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12
  %614 = load float, float* %arrayidx9.i.i.5, align 4, !tbaa !12
  %arrayidx11.i.i.us.5 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.5
  %615 = load float, float* %arrayidx11.i.i.us.5, align 4, !tbaa !12
  %mul12.i.i.us.5 = fmul float %614, %615
  %616 = tail call float @llvm.fmuladd.f32(float %612, float %613, float %mul12.i.i.us.5) #6
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom13.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx14.i.i.us.5 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.5
  %617 = load float, float* %arrayidx14.i.i.us.5, align 4, !tbaa !12
  %add15.i.i.us.5 = fadd float %617, %616
  store float %add15.i.i.us.5, float* %arrayidx14.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.5

if.end.r_exit.i.i.us.5:                           ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %618 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %618, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %27, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.r_exit.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.r_exit.i.i.us.5.1
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph350, %pregion_for_end.i.i.4
  %add6.i.i.i.6 = or i64 %mul3.i.i.i, 6
  %conv2.i.i.6 = trunc i64 %add6.i.i.i.6 to i32
  %cmp.i.i.6 = icmp sgt i32 %27, %conv2.i.i.6
  %sext.i.i.6 = shl i64 %add6.i.i.i.6, 32
  %idxprom.i.i.6 = ashr exact i64 %sext.i.i.6, 32
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.6
  %arrayidx9.i.i.6 = getelementptr inbounds float, float* %23, i64 %idxprom.i.i.6
  %mul.i.i.6 = mul nsw i32 %27, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck377, label %pregion_for_end.i.i.6

vector.scevcheck377:                              ; preds = %pregion_for_end.i.i.5
  %619 = mul i32 %27, %conv2.i.i.6
  %620 = trunc i64 %2 to i32
  %621 = shl i32 %620, 5
  %622 = add i32 %619, %621
  %623 = icmp sgt i32 %622, 2147483616
  br i1 %623, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.memcheck415

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.memcheck415, %vector.scevcheck377
  br label %pregion_for_entry.entry.i.i.us.6

vector.memcheck415:                               ; preds = %vector.scevcheck377
  %sext502 = shl i64 %3, 35
  %624 = ashr exact i64 %sext502, 32
  %625 = or i64 %624, 6
  %scevgep379 = getelementptr float, float* %19, i64 %625
  %scevgep379380 = bitcast float* %scevgep379 to i8*
  %uglygep381 = getelementptr i8, i8* %scevgep379380, i64 1
  %626 = mul i32 %27, %conv2.i.i.6
  %627 = trunc i64 %2 to i32
  %628 = shl i32 %627, 5
  %629 = add i32 %626, %628
  %630 = sext i32 %629 to i64
  %scevgep382 = getelementptr float, float* %7, i64 %630
  %scevgep382383 = bitcast float* %scevgep382 to i8*
  %631 = add nsw i64 %630, 32
  %scevgep384 = getelementptr float, float* %7, i64 %631
  %632 = sext i32 %628 to i64
  %scevgep386 = getelementptr float, float* %11, i64 %632
  %633 = add nsw i64 %632, 32
  %scevgep388 = getelementptr float, float* %11, i64 %633
  %scevgep390 = getelementptr float, float* %23, i64 %625
  %scevgep390391 = bitcast float* %scevgep390 to i8*
  %uglygep392 = getelementptr i8, i8* %scevgep390391, i64 1
  %scevgep393 = getelementptr float, float* %15, i64 %632
  %scevgep395 = getelementptr float, float* %15, i64 %633
  %bound0398 = icmp ult float* %arrayidx.i.i.6, %scevgep384
  %bound1399 = icmp ugt i8* %uglygep381, %scevgep382383
  %found.conflict400 = and i1 %bound0398, %bound1399
  %bound0401 = icmp ult float* %scevgep386, %scevgep384
  %bound1402 = icmp ult float* %scevgep382, %scevgep388
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %found.conflict400, %found.conflict403
  %bound0406 = icmp ult float* %arrayidx9.i.i.6, %scevgep384
  %bound1407 = icmp ugt i8* %uglygep392, %scevgep382383
  %found.conflict408 = and i1 %bound0406, %bound1407
  %conflict.rdx409 = or i1 %conflict.rdx404, %found.conflict408
  %bound0410 = icmp ult float* %scevgep393, %scevgep384
  %bound1411 = icmp ult float* %scevgep382, %scevgep395
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %conflict.rdx409, %found.conflict412
  br i1 %conflict.rdx413, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %vector.memcheck415
  %broadcast.splatinsert423 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat424 = shufflevector <8 x i64> %broadcast.splatinsert423, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert425 = insertelement <8 x i32> undef, i32 %27, i32 0
  %broadcast.splat426 = shufflevector <8 x i32> %broadcast.splatinsert425, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert427 = insertelement <8 x float*> undef, float* %arrayidx.i.i.6, i32 0
  %broadcast.splat428 = shufflevector <8 x float*> %broadcast.splatinsert427, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert431 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.6, i32 0
  %broadcast.splat432 = shufflevector <8 x float*> %broadcast.splatinsert431, <8 x float*> undef, <8 x i32> zeroinitializer
  %634 = or <8 x i64> %broadcast.splat424, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %635 = trunc <8 x i64> %634 to <8 x i32>
  %636 = icmp sgt <8 x i32> %broadcast.splat426, %635
  %wide.masked.gather429 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %636, <8 x float> undef), !tbaa !12, !alias.scope !183, !noalias !186
  %637 = extractelement <8 x i64> %634, i32 0
  %638 = shl i64 %637, 32
  %639 = ashr exact i64 %638, 32
  %640 = getelementptr inbounds float, float* %11, i64 %639
  %641 = bitcast float* %640 to <8 x float>*
  %wide.masked.load430 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %641, i32 4, <8 x i1> %636, <8 x float> undef), !tbaa !12, !alias.scope !188, !noalias !186
  %wide.masked.gather433 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %636, <8 x float> undef), !tbaa !12, !alias.scope !190, !noalias !186
  %642 = getelementptr inbounds float, float* %15, i64 %639
  %643 = bitcast float* %642 to <8 x float>*
  %wide.masked.load434 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %643, i32 4, <8 x i1> %636, <8 x float> undef), !tbaa !12, !alias.scope !192, !noalias !186
  %644 = fmul <8 x float> %wide.masked.gather433, %wide.masked.load434
  %645 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429, <8 x float> %wide.masked.load430, <8 x float> %644)
  %646 = extractelement <8 x i32> %635, i32 0
  %647 = add nsw i32 %mul.i.i.6, %646
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds float, float* %7, i64 %648
  %650 = bitcast float* %649 to <8 x float>*
  %wide.masked.load435 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %650, i32 4, <8 x i1> %636, <8 x float> undef), !tbaa !12, !alias.scope !186
  %651 = fadd <8 x float> %wide.masked.load435, %645
  %652 = bitcast float* %649 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %651, <8 x float>* %652, i32 4, <8 x i1> %636), !tbaa !12, !alias.scope !186, !llvm.access.group !27
  %653 = or <8 x i64> %broadcast.splat424, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %654 = trunc <8 x i64> %653 to <8 x i32>
  %655 = icmp sgt <8 x i32> %broadcast.splat426, %654
  %wide.masked.gather429.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %655, <8 x float> undef), !tbaa !12, !alias.scope !183, !noalias !186
  %656 = extractelement <8 x i64> %653, i32 0
  %657 = shl i64 %656, 32
  %658 = ashr exact i64 %657, 32
  %659 = getelementptr inbounds float, float* %11, i64 %658
  %660 = bitcast float* %659 to <8 x float>*
  %wide.masked.load430.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %660, i32 4, <8 x i1> %655, <8 x float> undef), !tbaa !12, !alias.scope !188, !noalias !186
  %wide.masked.gather433.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %655, <8 x float> undef), !tbaa !12, !alias.scope !190, !noalias !186
  %661 = getelementptr inbounds float, float* %15, i64 %658
  %662 = bitcast float* %661 to <8 x float>*
  %wide.masked.load434.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %662, i32 4, <8 x i1> %655, <8 x float> undef), !tbaa !12, !alias.scope !192, !noalias !186
  %663 = fmul <8 x float> %wide.masked.gather433.1, %wide.masked.load434.1
  %664 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429.1, <8 x float> %wide.masked.load430.1, <8 x float> %663)
  %665 = extractelement <8 x i32> %654, i32 0
  %666 = add nsw i32 %mul.i.i.6, %665
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds float, float* %7, i64 %667
  %669 = bitcast float* %668 to <8 x float>*
  %wide.masked.load435.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %669, i32 4, <8 x i1> %655, <8 x float> undef), !tbaa !12, !alias.scope !186
  %670 = fadd <8 x float> %wide.masked.load435.1, %664
  %671 = bitcast float* %668 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %670, <8 x float>* %671, i32 4, <8 x i1> %655), !tbaa !12, !alias.scope !186, !llvm.access.group !27
  %672 = or <8 x i64> %broadcast.splat424, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %673 = trunc <8 x i64> %672 to <8 x i32>
  %674 = icmp sgt <8 x i32> %broadcast.splat426, %673
  %wide.masked.gather429.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %674, <8 x float> undef), !tbaa !12, !alias.scope !183, !noalias !186
  %675 = extractelement <8 x i64> %672, i32 0
  %676 = shl i64 %675, 32
  %677 = ashr exact i64 %676, 32
  %678 = getelementptr inbounds float, float* %11, i64 %677
  %679 = bitcast float* %678 to <8 x float>*
  %wide.masked.load430.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %679, i32 4, <8 x i1> %674, <8 x float> undef), !tbaa !12, !alias.scope !188, !noalias !186
  %wide.masked.gather433.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %674, <8 x float> undef), !tbaa !12, !alias.scope !190, !noalias !186
  %680 = getelementptr inbounds float, float* %15, i64 %677
  %681 = bitcast float* %680 to <8 x float>*
  %wide.masked.load434.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %681, i32 4, <8 x i1> %674, <8 x float> undef), !tbaa !12, !alias.scope !192, !noalias !186
  %682 = fmul <8 x float> %wide.masked.gather433.2, %wide.masked.load434.2
  %683 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429.2, <8 x float> %wide.masked.load430.2, <8 x float> %682)
  %684 = extractelement <8 x i32> %673, i32 0
  %685 = add nsw i32 %mul.i.i.6, %684
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds float, float* %7, i64 %686
  %688 = bitcast float* %687 to <8 x float>*
  %wide.masked.load435.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %688, i32 4, <8 x i1> %674, <8 x float> undef), !tbaa !12, !alias.scope !186
  %689 = fadd <8 x float> %wide.masked.load435.2, %683
  %690 = bitcast float* %687 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %689, <8 x float>* %690, i32 4, <8 x i1> %674), !tbaa !12, !alias.scope !186, !llvm.access.group !27
  %691 = or <8 x i64> %broadcast.splat424, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %692 = trunc <8 x i64> %691 to <8 x i32>
  %693 = icmp sgt <8 x i32> %broadcast.splat426, %692
  %wide.masked.gather429.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !183, !noalias !186
  %694 = extractelement <8 x i64> %691, i32 0
  %695 = shl i64 %694, 32
  %696 = ashr exact i64 %695, 32
  %697 = getelementptr inbounds float, float* %11, i64 %696
  %698 = bitcast float* %697 to <8 x float>*
  %wide.masked.load430.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %698, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !188, !noalias !186
  %wide.masked.gather433.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !190, !noalias !186
  %699 = getelementptr inbounds float, float* %15, i64 %696
  %700 = bitcast float* %699 to <8 x float>*
  %wide.masked.load434.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %700, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !192, !noalias !186
  %701 = fmul <8 x float> %wide.masked.gather433.3, %wide.masked.load434.3
  %702 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429.3, <8 x float> %wide.masked.load430.3, <8 x float> %701)
  %703 = extractelement <8 x i32> %692, i32 0
  %704 = add nsw i32 %mul.i.i.6, %703
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds float, float* %7, i64 %705
  %707 = bitcast float* %706 to <8 x float>*
  %wide.masked.load435.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %707, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !186
  %708 = fadd <8 x float> %wide.masked.load435.3, %702
  %709 = bitcast float* %706 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %708, <8 x float>* %709, i32 4, <8 x i1> %693), !tbaa !12, !alias.scope !186, !llvm.access.group !27
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.r_exit.i.i.us.6.1, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ], [ %828, %if.end.r_exit.i.i.us.6.1 ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %27, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.r_exit.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %710 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12
  %sext26.i.i.us.6 = shl i64 %add1.i.i.i.us.6, 32
  %idxprom6.i.i.us.6 = ashr exact i64 %sext26.i.i.us.6, 32
  %arrayidx7.i.i.us.6 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.6
  %711 = load float, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12
  %712 = load float, float* %arrayidx9.i.i.6, align 4, !tbaa !12
  %arrayidx11.i.i.us.6 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.6
  %713 = load float, float* %arrayidx11.i.i.us.6, align 4, !tbaa !12
  %mul12.i.i.us.6 = fmul float %712, %713
  %714 = tail call float @llvm.fmuladd.f32(float %710, float %711, float %mul12.i.i.us.6) #6
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom13.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx14.i.i.us.6 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.6
  %715 = load float, float* %arrayidx14.i.i.us.6, align 4, !tbaa !12
  %add15.i.i.us.6 = fadd float %715, %714
  store float %add15.i.i.us.6, float* %arrayidx14.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.6

if.end.r_exit.i.i.us.6:                           ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %716 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %716, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %27, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.r_exit.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.r_exit.i.i.us.6.1
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph416, %pregion_for_end.i.i.5
  %add6.i.i.i.7 = or i64 %mul3.i.i.i, 7
  %conv2.i.i.7 = trunc i64 %add6.i.i.i.7 to i32
  %cmp.i.i.7 = icmp sgt i32 %27, %conv2.i.i.7
  %sext.i.i.7 = shl i64 %add6.i.i.i.7, 32
  %idxprom.i.i.7 = ashr exact i64 %sext.i.i.7, 32
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %19, i64 %idxprom.i.i.7
  %arrayidx9.i.i.7 = getelementptr inbounds float, float* %23, i64 %idxprom.i.i.7
  %mul.i.i.7 = mul nsw i32 %27, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck443, label %pregion_for_end.i.i.7

vector.scevcheck443:                              ; preds = %pregion_for_end.i.i.6
  %717 = mul i32 %27, %conv2.i.i.7
  %718 = trunc i64 %2 to i32
  %719 = shl i32 %718, 5
  %720 = add i32 %717, %719
  %721 = icmp sgt i32 %720, 2147483616
  br i1 %721, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.memcheck481

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.memcheck481, %vector.scevcheck443
  br label %pregion_for_entry.entry.i.i.us.7

vector.memcheck481:                               ; preds = %vector.scevcheck443
  %sext = shl i64 %3, 35
  %722 = ashr exact i64 %sext, 32
  %723 = or i64 %722, 7
  %scevgep445 = getelementptr float, float* %19, i64 %723
  %scevgep445446 = bitcast float* %scevgep445 to i8*
  %uglygep447 = getelementptr i8, i8* %scevgep445446, i64 1
  %724 = mul i32 %27, %conv2.i.i.7
  %725 = trunc i64 %2 to i32
  %726 = shl i32 %725, 5
  %727 = add i32 %724, %726
  %728 = sext i32 %727 to i64
  %scevgep448 = getelementptr float, float* %7, i64 %728
  %scevgep448449 = bitcast float* %scevgep448 to i8*
  %729 = add nsw i64 %728, 32
  %scevgep450 = getelementptr float, float* %7, i64 %729
  %730 = sext i32 %726 to i64
  %scevgep452 = getelementptr float, float* %11, i64 %730
  %731 = add nsw i64 %730, 32
  %scevgep454 = getelementptr float, float* %11, i64 %731
  %scevgep456 = getelementptr float, float* %23, i64 %723
  %scevgep456457 = bitcast float* %scevgep456 to i8*
  %uglygep458 = getelementptr i8, i8* %scevgep456457, i64 1
  %scevgep459 = getelementptr float, float* %15, i64 %730
  %scevgep461 = getelementptr float, float* %15, i64 %731
  %bound0464 = icmp ult float* %arrayidx.i.i.7, %scevgep450
  %bound1465 = icmp ugt i8* %uglygep447, %scevgep448449
  %found.conflict466 = and i1 %bound0464, %bound1465
  %bound0467 = icmp ult float* %scevgep452, %scevgep450
  %bound1468 = icmp ult float* %scevgep448, %scevgep454
  %found.conflict469 = and i1 %bound0467, %bound1468
  %conflict.rdx470 = or i1 %found.conflict466, %found.conflict469
  %bound0472 = icmp ult float* %arrayidx9.i.i.7, %scevgep450
  %bound1473 = icmp ugt i8* %uglygep458, %scevgep448449
  %found.conflict474 = and i1 %bound0472, %bound1473
  %conflict.rdx475 = or i1 %conflict.rdx470, %found.conflict474
  %bound0476 = icmp ult float* %scevgep459, %scevgep450
  %bound1477 = icmp ult float* %scevgep448, %scevgep461
  %found.conflict478 = and i1 %bound0476, %bound1477
  %conflict.rdx479 = or i1 %conflict.rdx475, %found.conflict478
  br i1 %conflict.rdx479, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph482

vector.ph482:                                     ; preds = %vector.memcheck481
  %broadcast.splatinsert489 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat490 = shufflevector <8 x i64> %broadcast.splatinsert489, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert491 = insertelement <8 x i32> undef, i32 %27, i32 0
  %broadcast.splat492 = shufflevector <8 x i32> %broadcast.splatinsert491, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert493 = insertelement <8 x float*> undef, float* %arrayidx.i.i.7, i32 0
  %broadcast.splat494 = shufflevector <8 x float*> %broadcast.splatinsert493, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert497 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.7, i32 0
  %broadcast.splat498 = shufflevector <8 x float*> %broadcast.splatinsert497, <8 x float*> undef, <8 x i32> zeroinitializer
  %732 = or <8 x i64> %broadcast.splat490, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %733 = trunc <8 x i64> %732 to <8 x i32>
  %734 = icmp sgt <8 x i32> %broadcast.splat492, %733
  %wide.masked.gather495 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !194, !noalias !197
  %735 = extractelement <8 x i64> %732, i32 0
  %736 = shl i64 %735, 32
  %737 = ashr exact i64 %736, 32
  %738 = getelementptr inbounds float, float* %11, i64 %737
  %739 = bitcast float* %738 to <8 x float>*
  %wide.masked.load496 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %739, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !199, !noalias !197
  %wide.masked.gather499 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !201, !noalias !197
  %740 = getelementptr inbounds float, float* %15, i64 %737
  %741 = bitcast float* %740 to <8 x float>*
  %wide.masked.load500 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %741, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !203, !noalias !197
  %742 = fmul <8 x float> %wide.masked.gather499, %wide.masked.load500
  %743 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495, <8 x float> %wide.masked.load496, <8 x float> %742)
  %744 = extractelement <8 x i32> %733, i32 0
  %745 = add nsw i32 %mul.i.i.7, %744
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds float, float* %7, i64 %746
  %748 = bitcast float* %747 to <8 x float>*
  %wide.masked.load501 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %748, i32 4, <8 x i1> %734, <8 x float> undef), !tbaa !12, !alias.scope !197
  %749 = fadd <8 x float> %wide.masked.load501, %743
  %750 = bitcast float* %747 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %749, <8 x float>* %750, i32 4, <8 x i1> %734), !tbaa !12, !alias.scope !197, !llvm.access.group !27
  %751 = or <8 x i64> %broadcast.splat490, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %752 = trunc <8 x i64> %751 to <8 x i32>
  %753 = icmp sgt <8 x i32> %broadcast.splat492, %752
  %wide.masked.gather495.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %753, <8 x float> undef), !tbaa !12, !alias.scope !194, !noalias !197
  %754 = extractelement <8 x i64> %751, i32 0
  %755 = shl i64 %754, 32
  %756 = ashr exact i64 %755, 32
  %757 = getelementptr inbounds float, float* %11, i64 %756
  %758 = bitcast float* %757 to <8 x float>*
  %wide.masked.load496.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %758, i32 4, <8 x i1> %753, <8 x float> undef), !tbaa !12, !alias.scope !199, !noalias !197
  %wide.masked.gather499.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %753, <8 x float> undef), !tbaa !12, !alias.scope !201, !noalias !197
  %759 = getelementptr inbounds float, float* %15, i64 %756
  %760 = bitcast float* %759 to <8 x float>*
  %wide.masked.load500.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %760, i32 4, <8 x i1> %753, <8 x float> undef), !tbaa !12, !alias.scope !203, !noalias !197
  %761 = fmul <8 x float> %wide.masked.gather499.1, %wide.masked.load500.1
  %762 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495.1, <8 x float> %wide.masked.load496.1, <8 x float> %761)
  %763 = extractelement <8 x i32> %752, i32 0
  %764 = add nsw i32 %mul.i.i.7, %763
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds float, float* %7, i64 %765
  %767 = bitcast float* %766 to <8 x float>*
  %wide.masked.load501.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %767, i32 4, <8 x i1> %753, <8 x float> undef), !tbaa !12, !alias.scope !197
  %768 = fadd <8 x float> %wide.masked.load501.1, %762
  %769 = bitcast float* %766 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %768, <8 x float>* %769, i32 4, <8 x i1> %753), !tbaa !12, !alias.scope !197, !llvm.access.group !27
  %770 = or <8 x i64> %broadcast.splat490, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %771 = trunc <8 x i64> %770 to <8 x i32>
  %772 = icmp sgt <8 x i32> %broadcast.splat492, %771
  %wide.masked.gather495.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %772, <8 x float> undef), !tbaa !12, !alias.scope !194, !noalias !197
  %773 = extractelement <8 x i64> %770, i32 0
  %774 = shl i64 %773, 32
  %775 = ashr exact i64 %774, 32
  %776 = getelementptr inbounds float, float* %11, i64 %775
  %777 = bitcast float* %776 to <8 x float>*
  %wide.masked.load496.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %777, i32 4, <8 x i1> %772, <8 x float> undef), !tbaa !12, !alias.scope !199, !noalias !197
  %wide.masked.gather499.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %772, <8 x float> undef), !tbaa !12, !alias.scope !201, !noalias !197
  %778 = getelementptr inbounds float, float* %15, i64 %775
  %779 = bitcast float* %778 to <8 x float>*
  %wide.masked.load500.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %779, i32 4, <8 x i1> %772, <8 x float> undef), !tbaa !12, !alias.scope !203, !noalias !197
  %780 = fmul <8 x float> %wide.masked.gather499.2, %wide.masked.load500.2
  %781 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495.2, <8 x float> %wide.masked.load496.2, <8 x float> %780)
  %782 = extractelement <8 x i32> %771, i32 0
  %783 = add nsw i32 %mul.i.i.7, %782
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds float, float* %7, i64 %784
  %786 = bitcast float* %785 to <8 x float>*
  %wide.masked.load501.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %786, i32 4, <8 x i1> %772, <8 x float> undef), !tbaa !12, !alias.scope !197
  %787 = fadd <8 x float> %wide.masked.load501.2, %781
  %788 = bitcast float* %785 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %787, <8 x float>* %788, i32 4, <8 x i1> %772), !tbaa !12, !alias.scope !197, !llvm.access.group !27
  %789 = or <8 x i64> %broadcast.splat490, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %790 = trunc <8 x i64> %789 to <8 x i32>
  %791 = icmp sgt <8 x i32> %broadcast.splat492, %790
  %wide.masked.gather495.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !194, !noalias !197
  %792 = extractelement <8 x i64> %789, i32 0
  %793 = shl i64 %792, 32
  %794 = ashr exact i64 %793, 32
  %795 = getelementptr inbounds float, float* %11, i64 %794
  %796 = bitcast float* %795 to <8 x float>*
  %wide.masked.load496.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %796, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !199, !noalias !197
  %wide.masked.gather499.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !201, !noalias !197
  %797 = getelementptr inbounds float, float* %15, i64 %794
  %798 = bitcast float* %797 to <8 x float>*
  %wide.masked.load500.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %798, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !203, !noalias !197
  %799 = fmul <8 x float> %wide.masked.gather499.3, %wide.masked.load500.3
  %800 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495.3, <8 x float> %wide.masked.load496.3, <8 x float> %799)
  %801 = extractelement <8 x i32> %790, i32 0
  %802 = add nsw i32 %mul.i.i.7, %801
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds float, float* %7, i64 %803
  %805 = bitcast float* %804 to <8 x float>*
  %wide.masked.load501.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %805, i32 4, <8 x i1> %791, <8 x float> undef), !tbaa !12, !alias.scope !197
  %806 = fadd <8 x float> %wide.masked.load501.3, %800
  %807 = bitcast float* %804 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %806, <8 x float>* %807, i32 4, <8 x i1> %791), !tbaa !12, !alias.scope !197, !llvm.access.group !27
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.r_exit.i.i.us.7.1, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ], [ %821, %if.end.r_exit.i.i.us.7.1 ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %27, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.r_exit.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %808 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12
  %sext26.i.i.us.7 = shl i64 %add1.i.i.i.us.7, 32
  %idxprom6.i.i.us.7 = ashr exact i64 %sext26.i.i.us.7, 32
  %arrayidx7.i.i.us.7 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.7
  %809 = load float, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12
  %810 = load float, float* %arrayidx9.i.i.7, align 4, !tbaa !12
  %arrayidx11.i.i.us.7 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.7
  %811 = load float, float* %arrayidx11.i.i.us.7, align 4, !tbaa !12
  %mul12.i.i.us.7 = fmul float %810, %811
  %812 = tail call float @llvm.fmuladd.f32(float %808, float %809, float %mul12.i.i.us.7) #6
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom13.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx14.i.i.us.7 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.7
  %813 = load float, float* %arrayidx14.i.i.us.7, align 4, !tbaa !12
  %add15.i.i.us.7 = fadd float %813, %812
  store float %add15.i.i.us.7, float* %arrayidx14.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.7

if.end.r_exit.i.i.us.7:                           ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %814 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %814, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %27, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.r_exit.i.i.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.r_exit.i.i.us.7.1
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph482, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.7.1:                               ; preds = %if.end.r_exit.i.i.us.7
  %815 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12
  %sext26.i.i.us.7.1 = shl i64 %add1.i.i.i.us.7.1, 32
  %idxprom6.i.i.us.7.1 = ashr exact i64 %sext26.i.i.us.7.1, 32
  %arrayidx7.i.i.us.7.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.7.1
  %816 = load float, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12
  %817 = load float, float* %arrayidx9.i.i.7, align 4, !tbaa !12
  %arrayidx11.i.i.us.7.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.7.1
  %818 = load float, float* %arrayidx11.i.i.us.7.1, align 4, !tbaa !12
  %mul12.i.i.us.7.1 = fmul float %817, %818
  %819 = tail call float @llvm.fmuladd.f32(float %815, float %816, float %mul12.i.i.us.7.1) #6
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom13.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx14.i.i.us.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.7.1
  %820 = load float, float* %arrayidx14.i.i.us.7.1, align 4, !tbaa !12
  %add15.i.i.us.7.1 = fadd float %820, %819
  store float %add15.i.i.us.7.1, float* %arrayidx14.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.7.1

if.end.r_exit.i.i.us.7.1:                         ; preds = %if.then.i.i.us.7.1, %if.end.r_exit.i.i.us.7
  %821 = add nuw nsw i64 %_local_id_x.i.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %821, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !205

if.then.i.i.us.6.1:                               ; preds = %if.end.r_exit.i.i.us.6
  %822 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12
  %sext26.i.i.us.6.1 = shl i64 %add1.i.i.i.us.6.1, 32
  %idxprom6.i.i.us.6.1 = ashr exact i64 %sext26.i.i.us.6.1, 32
  %arrayidx7.i.i.us.6.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.6.1
  %823 = load float, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12
  %824 = load float, float* %arrayidx9.i.i.6, align 4, !tbaa !12
  %arrayidx11.i.i.us.6.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.6.1
  %825 = load float, float* %arrayidx11.i.i.us.6.1, align 4, !tbaa !12
  %mul12.i.i.us.6.1 = fmul float %824, %825
  %826 = tail call float @llvm.fmuladd.f32(float %822, float %823, float %mul12.i.i.us.6.1) #6
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom13.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx14.i.i.us.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.6.1
  %827 = load float, float* %arrayidx14.i.i.us.6.1, align 4, !tbaa !12
  %add15.i.i.us.6.1 = fadd float %827, %826
  store float %add15.i.i.us.6.1, float* %arrayidx14.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.6.1

if.end.r_exit.i.i.us.6.1:                         ; preds = %if.then.i.i.us.6.1, %if.end.r_exit.i.i.us.6
  %828 = add nuw nsw i64 %_local_id_x.i.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %828, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !206

if.then.i.i.us.5.1:                               ; preds = %if.end.r_exit.i.i.us.5
  %829 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12
  %sext26.i.i.us.5.1 = shl i64 %add1.i.i.i.us.5.1, 32
  %idxprom6.i.i.us.5.1 = ashr exact i64 %sext26.i.i.us.5.1, 32
  %arrayidx7.i.i.us.5.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.5.1
  %830 = load float, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12
  %831 = load float, float* %arrayidx9.i.i.5, align 4, !tbaa !12
  %arrayidx11.i.i.us.5.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.5.1
  %832 = load float, float* %arrayidx11.i.i.us.5.1, align 4, !tbaa !12
  %mul12.i.i.us.5.1 = fmul float %831, %832
  %833 = tail call float @llvm.fmuladd.f32(float %829, float %830, float %mul12.i.i.us.5.1) #6
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom13.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx14.i.i.us.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.5.1
  %834 = load float, float* %arrayidx14.i.i.us.5.1, align 4, !tbaa !12
  %add15.i.i.us.5.1 = fadd float %834, %833
  store float %add15.i.i.us.5.1, float* %arrayidx14.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.5.1

if.end.r_exit.i.i.us.5.1:                         ; preds = %if.then.i.i.us.5.1, %if.end.r_exit.i.i.us.5
  %835 = add nuw nsw i64 %_local_id_x.i.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %835, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !207

if.then.i.i.us.4.1:                               ; preds = %if.end.r_exit.i.i.us.4
  %836 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12
  %sext26.i.i.us.4.1 = shl i64 %add1.i.i.i.us.4.1, 32
  %idxprom6.i.i.us.4.1 = ashr exact i64 %sext26.i.i.us.4.1, 32
  %arrayidx7.i.i.us.4.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.4.1
  %837 = load float, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12
  %838 = load float, float* %arrayidx9.i.i.4, align 4, !tbaa !12
  %arrayidx11.i.i.us.4.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.4.1
  %839 = load float, float* %arrayidx11.i.i.us.4.1, align 4, !tbaa !12
  %mul12.i.i.us.4.1 = fmul float %838, %839
  %840 = tail call float @llvm.fmuladd.f32(float %836, float %837, float %mul12.i.i.us.4.1) #6
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom13.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx14.i.i.us.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.4.1
  %841 = load float, float* %arrayidx14.i.i.us.4.1, align 4, !tbaa !12
  %add15.i.i.us.4.1 = fadd float %841, %840
  store float %add15.i.i.us.4.1, float* %arrayidx14.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.4.1

if.end.r_exit.i.i.us.4.1:                         ; preds = %if.then.i.i.us.4.1, %if.end.r_exit.i.i.us.4
  %842 = add nuw nsw i64 %_local_id_x.i.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %842, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !208

if.then.i.i.us.3.1:                               ; preds = %if.end.r_exit.i.i.us.3
  %843 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12
  %sext26.i.i.us.3.1 = shl i64 %add1.i.i.i.us.3.1, 32
  %idxprom6.i.i.us.3.1 = ashr exact i64 %sext26.i.i.us.3.1, 32
  %arrayidx7.i.i.us.3.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.3.1
  %844 = load float, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12
  %845 = load float, float* %arrayidx9.i.i.3, align 4, !tbaa !12
  %arrayidx11.i.i.us.3.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.3.1
  %846 = load float, float* %arrayidx11.i.i.us.3.1, align 4, !tbaa !12
  %mul12.i.i.us.3.1 = fmul float %845, %846
  %847 = tail call float @llvm.fmuladd.f32(float %843, float %844, float %mul12.i.i.us.3.1) #6
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom13.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx14.i.i.us.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.3.1
  %848 = load float, float* %arrayidx14.i.i.us.3.1, align 4, !tbaa !12
  %add15.i.i.us.3.1 = fadd float %848, %847
  store float %add15.i.i.us.3.1, float* %arrayidx14.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.3.1

if.end.r_exit.i.i.us.3.1:                         ; preds = %if.then.i.i.us.3.1, %if.end.r_exit.i.i.us.3
  %849 = add nuw nsw i64 %_local_id_x.i.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %849, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !209

if.then.i.i.us.2.1:                               ; preds = %if.end.r_exit.i.i.us.2
  %850 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12
  %sext26.i.i.us.2.1 = shl i64 %add1.i.i.i.us.2.1, 32
  %idxprom6.i.i.us.2.1 = ashr exact i64 %sext26.i.i.us.2.1, 32
  %arrayidx7.i.i.us.2.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.2.1
  %851 = load float, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12
  %852 = load float, float* %arrayidx9.i.i.2, align 4, !tbaa !12
  %arrayidx11.i.i.us.2.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.2.1
  %853 = load float, float* %arrayidx11.i.i.us.2.1, align 4, !tbaa !12
  %mul12.i.i.us.2.1 = fmul float %852, %853
  %854 = tail call float @llvm.fmuladd.f32(float %850, float %851, float %mul12.i.i.us.2.1) #6
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom13.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx14.i.i.us.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.2.1
  %855 = load float, float* %arrayidx14.i.i.us.2.1, align 4, !tbaa !12
  %add15.i.i.us.2.1 = fadd float %855, %854
  store float %add15.i.i.us.2.1, float* %arrayidx14.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.2.1

if.end.r_exit.i.i.us.2.1:                         ; preds = %if.then.i.i.us.2.1, %if.end.r_exit.i.i.us.2
  %856 = add nuw nsw i64 %_local_id_x.i.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %856, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !210

if.then.i.i.us.1.1:                               ; preds = %if.end.r_exit.i.i.us.1
  %857 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %sext26.i.i.us.1.1 = shl i64 %add1.i.i.i.us.1.1, 32
  %idxprom6.i.i.us.1.1 = ashr exact i64 %sext26.i.i.us.1.1, 32
  %arrayidx7.i.i.us.1.1 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.1.1
  %858 = load float, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12
  %859 = load float, float* %arrayidx9.i.i.1, align 4, !tbaa !12
  %arrayidx11.i.i.us.1.1 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.1.1
  %860 = load float, float* %arrayidx11.i.i.us.1.1, align 4, !tbaa !12
  %mul12.i.i.us.1.1 = fmul float %859, %860
  %861 = tail call float @llvm.fmuladd.f32(float %857, float %858, float %mul12.i.i.us.1.1) #6
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom13.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx14.i.i.us.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.1.1
  %862 = load float, float* %arrayidx14.i.i.us.1.1, align 4, !tbaa !12
  %add15.i.i.us.1.1 = fadd float %862, %861
  store float %add15.i.i.us.1.1, float* %arrayidx14.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.1.1

if.end.r_exit.i.i.us.1.1:                         ; preds = %if.then.i.i.us.1.1, %if.end.r_exit.i.i.us.1
  %863 = add nuw nsw i64 %_local_id_x.i.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %863, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !211

if.then.i.i.us.1531:                              ; preds = %if.end.r_exit.i.i.us
  %864 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %sext26.i.i.us.1522 = shl i64 %add1.i.i.i.us.1518, 32
  %idxprom6.i.i.us.1523 = ashr exact i64 %sext26.i.i.us.1522, 32
  %arrayidx7.i.i.us.1524 = getelementptr inbounds float, float* %11, i64 %idxprom6.i.i.us.1523
  %865 = load float, float* %arrayidx7.i.i.us.1524, align 4, !tbaa !12
  %866 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %arrayidx11.i.i.us.1525 = getelementptr inbounds float, float* %15, i64 %idxprom6.i.i.us.1523
  %867 = load float, float* %arrayidx11.i.i.us.1525, align 4, !tbaa !12
  %mul12.i.i.us.1526 = fmul float %866, %867
  %868 = tail call float @llvm.fmuladd.f32(float %864, float %865, float %mul12.i.i.us.1526) #6
  %add.i.i.us.1527 = add nsw i32 %mul.i.i, %conv.i.i.us.1519
  %idxprom13.i.i.us.1528 = sext i32 %add.i.i.us.1527 to i64
  %arrayidx14.i.i.us.1529 = getelementptr inbounds float, float* %7, i64 %idxprom13.i.i.us.1528
  %869 = load float, float* %arrayidx14.i.i.us.1529, align 4, !tbaa !12
  %add15.i.i.us.1530 = fadd float %869, %868
  store float %add15.i.i.us.1530, float* %arrayidx14.i.i.us.1529, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.1532

if.end.r_exit.i.i.us.1532:                        ; preds = %if.then.i.i.us.1531, %if.end.r_exit.i.i.us
  %870 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %870, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !212
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_gemver_kernel1_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to float**
  %9 = load float*, float** %8, align 8
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to float**
  %12 = load float*, float** %11, align 8
  %13 = getelementptr i8*, i8** %0, i64 3
  %14 = bitcast i8** %13 to float**
  %15 = load float*, float** %14, align 8
  %16 = getelementptr i8*, i8** %0, i64 4
  %17 = bitcast i8** %16 to float**
  %18 = load float*, float** %17, align 8
  %19 = getelementptr i8*, i8** %0, i64 5
  %20 = bitcast i8** %19 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %conv2.i.i = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %22, %conv2.i.i
  %sext.i.i = shl i64 %3, 35
  %idxprom.i.i = ashr exact i64 %sext.i.i, 32
  %arrayidx.i.i = getelementptr inbounds float, float* %15, i64 %idxprom.i.i
  %arrayidx9.i.i = getelementptr inbounds float, float* %18, i64 %idxprom.i.i
  %mul.i.i = mul nsw i32 %22, %conv2.i.i
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %23 = trunc i64 %3 to i32
  %24 = mul i32 %22, %23
  %25 = shl i32 %24, 3
  %26 = trunc i64 %2 to i32
  %27 = shl i32 %26, 5
  %28 = add i32 %25, %27
  %29 = icmp sgt i32 %28, 2147483616
  br i1 %29, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %sext508 = shl i64 %3, 35
  %30 = ashr exact i64 %sext508, 32
  %scevgep = getelementptr float, float* %15, i64 %30
  %scevgep3 = bitcast float* %scevgep to i8*
  %uglygep = getelementptr i8, i8* %scevgep3, i64 1
  %31 = trunc i64 %3 to i32
  %32 = mul i32 %22, %31
  %33 = shl i32 %32, 3
  %34 = trunc i64 %2 to i32
  %35 = shl i32 %34, 5
  %36 = add i32 %33, %35
  %37 = sext i32 %36 to i64
  %scevgep4 = getelementptr float, float* %6, i64 %37
  %scevgep45 = bitcast float* %scevgep4 to i8*
  %38 = add nsw i64 %37, 32
  %scevgep6 = getelementptr float, float* %6, i64 %38
  %39 = sext i32 %35 to i64
  %scevgep8 = getelementptr float, float* %9, i64 %39
  %40 = add nsw i64 %39, 32
  %scevgep10 = getelementptr float, float* %9, i64 %40
  %scevgep12 = getelementptr float, float* %18, i64 %30
  %scevgep1213 = bitcast float* %scevgep12 to i8*
  %uglygep14 = getelementptr i8, i8* %scevgep1213, i64 1
  %scevgep15 = getelementptr float, float* %12, i64 %39
  %scevgep17 = getelementptr float, float* %12, i64 %40
  %bound0 = icmp ult float* %arrayidx.i.i, %scevgep6
  %bound1 = icmp ugt i8* %uglygep, %scevgep45
  %found.conflict = and i1 %bound0, %bound1
  %bound019 = icmp ult float* %scevgep8, %scevgep6
  %bound120 = icmp ult float* %scevgep4, %scevgep10
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  %bound023 = icmp ult float* %arrayidx9.i.i, %scevgep6
  %bound124 = icmp ugt i8* %uglygep14, %scevgep45
  %found.conflict25 = and i1 %bound023, %bound124
  %conflict.rdx26 = or i1 %conflict.rdx, %found.conflict25
  %bound027 = icmp ult float* %scevgep15, %scevgep6
  %bound128 = icmp ult float* %scevgep4, %scevgep17
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx30 = or i1 %conflict.rdx26, %found.conflict29
  br i1 %conflict.rdx30, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <8 x i32> undef, i32 %22, i32 0
  %broadcast.splat32 = shufflevector <8 x i32> %broadcast.splatinsert31, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert33 = insertelement <8 x float*> undef, float* %arrayidx.i.i, i32 0
  %broadcast.splat34 = shufflevector <8 x float*> %broadcast.splatinsert33, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert35 = insertelement <8 x float*> undef, float* %arrayidx9.i.i, i32 0
  %broadcast.splat36 = shufflevector <8 x float*> %broadcast.splatinsert35, <8 x float*> undef, <8 x i32> zeroinitializer
  %41 = or <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %42 = trunc <8 x i64> %41 to <8 x i32>
  %43 = icmp sgt <8 x i32> %broadcast.splat32, %42
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %43, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %44 = extractelement <8 x i64> %41, i32 0
  %45 = shl i64 %44, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds float, float* %9, i64 %46
  %48 = bitcast float* %47 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %48, i32 4, <8 x i1> %43, <8 x float> undef), !tbaa !12, !alias.scope !218, !noalias !216
  %wide.masked.gather37 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %43, <8 x float> undef), !tbaa !12, !alias.scope !220, !noalias !216
  %49 = getelementptr inbounds float, float* %12, i64 %46
  %50 = bitcast float* %49 to <8 x float>*
  %wide.masked.load38 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %50, i32 4, <8 x i1> %43, <8 x float> undef), !tbaa !12, !alias.scope !222, !noalias !216
  %51 = fmul <8 x float> %wide.masked.gather37, %wide.masked.load38
  %52 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather, <8 x float> %wide.masked.load, <8 x float> %51)
  %53 = extractelement <8 x i32> %42, i32 0
  %54 = add nsw i32 %mul.i.i, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %6, i64 %55
  %57 = bitcast float* %56 to <8 x float>*
  %wide.masked.load39 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %57, i32 4, <8 x i1> %43, <8 x float> undef), !tbaa !12, !alias.scope !216
  %58 = fadd <8 x float> %wide.masked.load39, %52
  %59 = bitcast float* %56 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %58, <8 x float>* %59, i32 4, <8 x i1> %43), !tbaa !12, !alias.scope !216, !llvm.access.group !27
  %60 = or <8 x i64> %broadcast.splat, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %61 = trunc <8 x i64> %60 to <8 x i32>
  %62 = icmp sgt <8 x i32> %broadcast.splat32, %61
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %62, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %63 = extractelement <8 x i64> %60, i32 0
  %64 = shl i64 %63, 32
  %65 = ashr exact i64 %64, 32
  %66 = getelementptr inbounds float, float* %9, i64 %65
  %67 = bitcast float* %66 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %67, i32 4, <8 x i1> %62, <8 x float> undef), !tbaa !12, !alias.scope !218, !noalias !216
  %wide.masked.gather37.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %62, <8 x float> undef), !tbaa !12, !alias.scope !220, !noalias !216
  %68 = getelementptr inbounds float, float* %12, i64 %65
  %69 = bitcast float* %68 to <8 x float>*
  %wide.masked.load38.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %69, i32 4, <8 x i1> %62, <8 x float> undef), !tbaa !12, !alias.scope !222, !noalias !216
  %70 = fmul <8 x float> %wide.masked.gather37.1, %wide.masked.load38.1
  %71 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather.1, <8 x float> %wide.masked.load.1, <8 x float> %70)
  %72 = extractelement <8 x i32> %61, i32 0
  %73 = add nsw i32 %mul.i.i, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %6, i64 %74
  %76 = bitcast float* %75 to <8 x float>*
  %wide.masked.load39.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %76, i32 4, <8 x i1> %62, <8 x float> undef), !tbaa !12, !alias.scope !216
  %77 = fadd <8 x float> %wide.masked.load39.1, %71
  %78 = bitcast float* %75 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %77, <8 x float>* %78, i32 4, <8 x i1> %62), !tbaa !12, !alias.scope !216, !llvm.access.group !27
  %79 = or <8 x i64> %broadcast.splat, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %80 = trunc <8 x i64> %79 to <8 x i32>
  %81 = icmp sgt <8 x i32> %broadcast.splat32, %80
  %wide.masked.gather.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %81, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %82 = extractelement <8 x i64> %79, i32 0
  %83 = shl i64 %82, 32
  %84 = ashr exact i64 %83, 32
  %85 = getelementptr inbounds float, float* %9, i64 %84
  %86 = bitcast float* %85 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %86, i32 4, <8 x i1> %81, <8 x float> undef), !tbaa !12, !alias.scope !218, !noalias !216
  %wide.masked.gather37.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %81, <8 x float> undef), !tbaa !12, !alias.scope !220, !noalias !216
  %87 = getelementptr inbounds float, float* %12, i64 %84
  %88 = bitcast float* %87 to <8 x float>*
  %wide.masked.load38.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %88, i32 4, <8 x i1> %81, <8 x float> undef), !tbaa !12, !alias.scope !222, !noalias !216
  %89 = fmul <8 x float> %wide.masked.gather37.2, %wide.masked.load38.2
  %90 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather.2, <8 x float> %wide.masked.load.2, <8 x float> %89)
  %91 = extractelement <8 x i32> %80, i32 0
  %92 = add nsw i32 %mul.i.i, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %6, i64 %93
  %95 = bitcast float* %94 to <8 x float>*
  %wide.masked.load39.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %95, i32 4, <8 x i1> %81, <8 x float> undef), !tbaa !12, !alias.scope !216
  %96 = fadd <8 x float> %wide.masked.load39.2, %90
  %97 = bitcast float* %94 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %96, <8 x float>* %97, i32 4, <8 x i1> %81), !tbaa !12, !alias.scope !216, !llvm.access.group !27
  %98 = or <8 x i64> %broadcast.splat, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %99 = trunc <8 x i64> %98 to <8 x i32>
  %100 = icmp sgt <8 x i32> %broadcast.splat32, %99
  %wide.masked.gather.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat34, i32 4, <8 x i1> %100, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %101 = extractelement <8 x i64> %98, i32 0
  %102 = shl i64 %101, 32
  %103 = ashr exact i64 %102, 32
  %104 = getelementptr inbounds float, float* %9, i64 %103
  %105 = bitcast float* %104 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %105, i32 4, <8 x i1> %100, <8 x float> undef), !tbaa !12, !alias.scope !218, !noalias !216
  %wide.masked.gather37.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat36, i32 4, <8 x i1> %100, <8 x float> undef), !tbaa !12, !alias.scope !220, !noalias !216
  %106 = getelementptr inbounds float, float* %12, i64 %103
  %107 = bitcast float* %106 to <8 x float>*
  %wide.masked.load38.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %107, i32 4, <8 x i1> %100, <8 x float> undef), !tbaa !12, !alias.scope !222, !noalias !216
  %108 = fmul <8 x float> %wide.masked.gather37.3, %wide.masked.load38.3
  %109 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather.3, <8 x float> %wide.masked.load.3, <8 x float> %108)
  %110 = extractelement <8 x i32> %99, i32 0
  %111 = add nsw i32 %mul.i.i, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %6, i64 %112
  %114 = bitcast float* %113 to <8 x float>*
  %wide.masked.load39.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %114, i32 4, <8 x i1> %100, <8 x float> undef), !tbaa !12, !alias.scope !216
  %115 = fadd <8 x float> %wide.masked.load39.3, %109
  %116 = bitcast float* %113 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %115, <8 x float>* %116, i32 4, <8 x i1> %100), !tbaa !12, !alias.scope !216, !llvm.access.group !27
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1532, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %865, %if.end.r_exit.i.i.us.1532 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp4.i.i.us = icmp sgt i32 %22, %conv.i.i.us
  br i1 %cmp4.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %117 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %sext26.i.i.us = shl i64 %add1.i.i.i.us, 32
  %idxprom6.i.i.us = ashr exact i64 %sext26.i.i.us, 32
  %arrayidx7.i.i.us = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us
  %118 = load float, float* %arrayidx7.i.i.us, align 4, !tbaa !12
  %119 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %arrayidx11.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us
  %120 = load float, float* %arrayidx11.i.i.us, align 4, !tbaa !12
  %mul12.i.i.us = fmul float %119, %120
  %121 = tail call float @llvm.fmuladd.f32(float %117, float %118, float %mul12.i.i.us) #6
  %add.i.i.us = add nsw i32 %mul.i.i, %conv.i.i.us
  %idxprom13.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx14.i.i.us = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us
  %122 = load float, float* %arrayidx14.i.i.us, align 4, !tbaa !12
  %add15.i.i.us = fadd float %122, %121
  store float %add15.i.i.us, float* %arrayidx14.i.i.us, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %123 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1518 = add nuw nsw i64 %123, %mul.i.i.i
  %conv.i.i.us.1519 = trunc i64 %add1.i.i.i.us.1518 to i32
  %cmp4.i.i.us.1520 = icmp sgt i32 %22, %conv.i.i.us.1519
  br i1 %cmp4.i.i.us.1520, label %if.then.i.i.us.1531, label %if.end.r_exit.i.i.us.1532

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us.1532
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %add6.i.i.i.1 = or i64 %mul3.i.i.i, 1
  %conv2.i.i.1 = trunc i64 %add6.i.i.i.1 to i32
  %cmp.i.i.1 = icmp sgt i32 %22, %conv2.i.i.1
  %sext.i.i.1 = shl i64 %add6.i.i.i.1, 32
  %idxprom.i.i.1 = ashr exact i64 %sext.i.i.1, 32
  %arrayidx.i.i.1 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.1
  %arrayidx9.i.i.1 = getelementptr inbounds float, float* %18, i64 %idxprom.i.i.1
  %mul.i.i.1 = mul nsw i32 %22, %conv2.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck47, label %pregion_for_end.i.i.1

vector.scevcheck47:                               ; preds = %pregion_for_end.i.i
  %124 = mul i32 %22, %conv2.i.i.1
  %125 = trunc i64 %2 to i32
  %126 = shl i32 %125, 5
  %127 = add i32 %124, %126
  %128 = icmp sgt i32 %127, 2147483616
  br i1 %128, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.memcheck85

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.memcheck85, %vector.scevcheck47
  br label %pregion_for_entry.entry.i.i.us.1

vector.memcheck85:                                ; preds = %vector.scevcheck47
  %sext507 = shl i64 %3, 35
  %129 = ashr exact i64 %sext507, 32
  %130 = or i64 %129, 1
  %scevgep49 = getelementptr float, float* %15, i64 %130
  %scevgep4950 = bitcast float* %scevgep49 to i8*
  %uglygep51 = getelementptr i8, i8* %scevgep4950, i64 1
  %131 = mul i32 %22, %conv2.i.i.1
  %132 = trunc i64 %2 to i32
  %133 = shl i32 %132, 5
  %134 = add i32 %131, %133
  %135 = sext i32 %134 to i64
  %scevgep52 = getelementptr float, float* %6, i64 %135
  %scevgep5253 = bitcast float* %scevgep52 to i8*
  %136 = add nsw i64 %135, 32
  %scevgep54 = getelementptr float, float* %6, i64 %136
  %137 = sext i32 %133 to i64
  %scevgep56 = getelementptr float, float* %9, i64 %137
  %138 = add nsw i64 %137, 32
  %scevgep58 = getelementptr float, float* %9, i64 %138
  %scevgep60 = getelementptr float, float* %18, i64 %130
  %scevgep6061 = bitcast float* %scevgep60 to i8*
  %uglygep62 = getelementptr i8, i8* %scevgep6061, i64 1
  %scevgep63 = getelementptr float, float* %12, i64 %137
  %scevgep65 = getelementptr float, float* %12, i64 %138
  %bound068 = icmp ult float* %arrayidx.i.i.1, %scevgep54
  %bound169 = icmp ugt i8* %uglygep51, %scevgep5253
  %found.conflict70 = and i1 %bound068, %bound169
  %bound071 = icmp ult float* %scevgep56, %scevgep54
  %bound172 = icmp ult float* %scevgep52, %scevgep58
  %found.conflict73 = and i1 %bound071, %bound172
  %conflict.rdx74 = or i1 %found.conflict70, %found.conflict73
  %bound076 = icmp ult float* %arrayidx9.i.i.1, %scevgep54
  %bound177 = icmp ugt i8* %uglygep62, %scevgep5253
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx74, %found.conflict78
  %bound080 = icmp ult float* %scevgep63, %scevgep54
  %bound181 = icmp ult float* %scevgep52, %scevgep65
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx79, %found.conflict82
  br i1 %conflict.rdx83, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %vector.memcheck85
  %broadcast.splatinsert93 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat94 = shufflevector <8 x i64> %broadcast.splatinsert93, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x i32> undef, i32 %22, i32 0
  %broadcast.splat96 = shufflevector <8 x i32> %broadcast.splatinsert95, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <8 x float*> undef, float* %arrayidx.i.i.1, i32 0
  %broadcast.splat98 = shufflevector <8 x float*> %broadcast.splatinsert97, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.1, i32 0
  %broadcast.splat102 = shufflevector <8 x float*> %broadcast.splatinsert101, <8 x float*> undef, <8 x i32> zeroinitializer
  %139 = or <8 x i64> %broadcast.splat94, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %140 = trunc <8 x i64> %139 to <8 x i32>
  %141 = icmp sgt <8 x i32> %broadcast.splat96, %140
  %wide.masked.gather99 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %141, <8 x float> undef), !tbaa !12, !alias.scope !224, !noalias !227
  %142 = extractelement <8 x i64> %139, i32 0
  %143 = shl i64 %142, 32
  %144 = ashr exact i64 %143, 32
  %145 = getelementptr inbounds float, float* %9, i64 %144
  %146 = bitcast float* %145 to <8 x float>*
  %wide.masked.load100 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %146, i32 4, <8 x i1> %141, <8 x float> undef), !tbaa !12, !alias.scope !229, !noalias !227
  %wide.masked.gather103 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %141, <8 x float> undef), !tbaa !12, !alias.scope !231, !noalias !227
  %147 = getelementptr inbounds float, float* %12, i64 %144
  %148 = bitcast float* %147 to <8 x float>*
  %wide.masked.load104 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %148, i32 4, <8 x i1> %141, <8 x float> undef), !tbaa !12, !alias.scope !233, !noalias !227
  %149 = fmul <8 x float> %wide.masked.gather103, %wide.masked.load104
  %150 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99, <8 x float> %wide.masked.load100, <8 x float> %149)
  %151 = extractelement <8 x i32> %140, i32 0
  %152 = add nsw i32 %mul.i.i.1, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %6, i64 %153
  %155 = bitcast float* %154 to <8 x float>*
  %wide.masked.load105 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %155, i32 4, <8 x i1> %141, <8 x float> undef), !tbaa !12, !alias.scope !227
  %156 = fadd <8 x float> %wide.masked.load105, %150
  %157 = bitcast float* %154 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %156, <8 x float>* %157, i32 4, <8 x i1> %141), !tbaa !12, !alias.scope !227, !llvm.access.group !27
  %158 = or <8 x i64> %broadcast.splat94, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %159 = trunc <8 x i64> %158 to <8 x i32>
  %160 = icmp sgt <8 x i32> %broadcast.splat96, %159
  %wide.masked.gather99.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %160, <8 x float> undef), !tbaa !12, !alias.scope !224, !noalias !227
  %161 = extractelement <8 x i64> %158, i32 0
  %162 = shl i64 %161, 32
  %163 = ashr exact i64 %162, 32
  %164 = getelementptr inbounds float, float* %9, i64 %163
  %165 = bitcast float* %164 to <8 x float>*
  %wide.masked.load100.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %165, i32 4, <8 x i1> %160, <8 x float> undef), !tbaa !12, !alias.scope !229, !noalias !227
  %wide.masked.gather103.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %160, <8 x float> undef), !tbaa !12, !alias.scope !231, !noalias !227
  %166 = getelementptr inbounds float, float* %12, i64 %163
  %167 = bitcast float* %166 to <8 x float>*
  %wide.masked.load104.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %167, i32 4, <8 x i1> %160, <8 x float> undef), !tbaa !12, !alias.scope !233, !noalias !227
  %168 = fmul <8 x float> %wide.masked.gather103.1, %wide.masked.load104.1
  %169 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99.1, <8 x float> %wide.masked.load100.1, <8 x float> %168)
  %170 = extractelement <8 x i32> %159, i32 0
  %171 = add nsw i32 %mul.i.i.1, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %6, i64 %172
  %174 = bitcast float* %173 to <8 x float>*
  %wide.masked.load105.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %174, i32 4, <8 x i1> %160, <8 x float> undef), !tbaa !12, !alias.scope !227
  %175 = fadd <8 x float> %wide.masked.load105.1, %169
  %176 = bitcast float* %173 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %175, <8 x float>* %176, i32 4, <8 x i1> %160), !tbaa !12, !alias.scope !227, !llvm.access.group !27
  %177 = or <8 x i64> %broadcast.splat94, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %178 = trunc <8 x i64> %177 to <8 x i32>
  %179 = icmp sgt <8 x i32> %broadcast.splat96, %178
  %wide.masked.gather99.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %179, <8 x float> undef), !tbaa !12, !alias.scope !224, !noalias !227
  %180 = extractelement <8 x i64> %177, i32 0
  %181 = shl i64 %180, 32
  %182 = ashr exact i64 %181, 32
  %183 = getelementptr inbounds float, float* %9, i64 %182
  %184 = bitcast float* %183 to <8 x float>*
  %wide.masked.load100.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %184, i32 4, <8 x i1> %179, <8 x float> undef), !tbaa !12, !alias.scope !229, !noalias !227
  %wide.masked.gather103.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %179, <8 x float> undef), !tbaa !12, !alias.scope !231, !noalias !227
  %185 = getelementptr inbounds float, float* %12, i64 %182
  %186 = bitcast float* %185 to <8 x float>*
  %wide.masked.load104.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %186, i32 4, <8 x i1> %179, <8 x float> undef), !tbaa !12, !alias.scope !233, !noalias !227
  %187 = fmul <8 x float> %wide.masked.gather103.2, %wide.masked.load104.2
  %188 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99.2, <8 x float> %wide.masked.load100.2, <8 x float> %187)
  %189 = extractelement <8 x i32> %178, i32 0
  %190 = add nsw i32 %mul.i.i.1, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %6, i64 %191
  %193 = bitcast float* %192 to <8 x float>*
  %wide.masked.load105.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %193, i32 4, <8 x i1> %179, <8 x float> undef), !tbaa !12, !alias.scope !227
  %194 = fadd <8 x float> %wide.masked.load105.2, %188
  %195 = bitcast float* %192 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %194, <8 x float>* %195, i32 4, <8 x i1> %179), !tbaa !12, !alias.scope !227, !llvm.access.group !27
  %196 = or <8 x i64> %broadcast.splat94, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %197 = trunc <8 x i64> %196 to <8 x i32>
  %198 = icmp sgt <8 x i32> %broadcast.splat96, %197
  %wide.masked.gather99.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat98, i32 4, <8 x i1> %198, <8 x float> undef), !tbaa !12, !alias.scope !224, !noalias !227
  %199 = extractelement <8 x i64> %196, i32 0
  %200 = shl i64 %199, 32
  %201 = ashr exact i64 %200, 32
  %202 = getelementptr inbounds float, float* %9, i64 %201
  %203 = bitcast float* %202 to <8 x float>*
  %wide.masked.load100.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %203, i32 4, <8 x i1> %198, <8 x float> undef), !tbaa !12, !alias.scope !229, !noalias !227
  %wide.masked.gather103.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat102, i32 4, <8 x i1> %198, <8 x float> undef), !tbaa !12, !alias.scope !231, !noalias !227
  %204 = getelementptr inbounds float, float* %12, i64 %201
  %205 = bitcast float* %204 to <8 x float>*
  %wide.masked.load104.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %205, i32 4, <8 x i1> %198, <8 x float> undef), !tbaa !12, !alias.scope !233, !noalias !227
  %206 = fmul <8 x float> %wide.masked.gather103.3, %wide.masked.load104.3
  %207 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather99.3, <8 x float> %wide.masked.load100.3, <8 x float> %206)
  %208 = extractelement <8 x i32> %197, i32 0
  %209 = add nsw i32 %mul.i.i.1, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %6, i64 %210
  %212 = bitcast float* %211 to <8 x float>*
  %wide.masked.load105.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %212, i32 4, <8 x i1> %198, <8 x float> undef), !tbaa !12, !alias.scope !227
  %213 = fadd <8 x float> %wide.masked.load105.3, %207
  %214 = bitcast float* %211 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %213, <8 x float>* %214, i32 4, <8 x i1> %198), !tbaa !12, !alias.scope !227, !llvm.access.group !27
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.r_exit.i.i.us.1.1, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ], [ %858, %if.end.r_exit.i.i.us.1.1 ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %conv.i.i.us.1 = trunc i64 %add1.i.i.i.us.1 to i32
  %cmp4.i.i.us.1 = icmp sgt i32 %22, %conv.i.i.us.1
  br i1 %cmp4.i.i.us.1, label %if.then.i.i.us.1, label %if.end.r_exit.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %215 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %sext26.i.i.us.1 = shl i64 %add1.i.i.i.us.1, 32
  %idxprom6.i.i.us.1 = ashr exact i64 %sext26.i.i.us.1, 32
  %arrayidx7.i.i.us.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.1
  %216 = load float, float* %arrayidx7.i.i.us.1, align 4, !tbaa !12
  %217 = load float, float* %arrayidx9.i.i.1, align 4, !tbaa !12
  %arrayidx11.i.i.us.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.1
  %218 = load float, float* %arrayidx11.i.i.us.1, align 4, !tbaa !12
  %mul12.i.i.us.1 = fmul float %217, %218
  %219 = tail call float @llvm.fmuladd.f32(float %215, float %216, float %mul12.i.i.us.1) #6
  %add.i.i.us.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1
  %idxprom13.i.i.us.1 = sext i32 %add.i.i.us.1 to i64
  %arrayidx14.i.i.us.1 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.1
  %220 = load float, float* %arrayidx14.i.i.us.1, align 4, !tbaa !12
  %add15.i.i.us.1 = fadd float %220, %219
  store float %add15.i.i.us.1, float* %arrayidx14.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %221 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %221, %mul.i.i.i
  %conv.i.i.us.1.1 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %cmp4.i.i.us.1.1 = icmp sgt i32 %22, %conv.i.i.us.1.1
  br i1 %cmp4.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.r_exit.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.r_exit.i.i.us.1.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph86, %pregion_for_end.i.i
  %add6.i.i.i.2 = or i64 %mul3.i.i.i, 2
  %conv2.i.i.2 = trunc i64 %add6.i.i.i.2 to i32
  %cmp.i.i.2 = icmp sgt i32 %22, %conv2.i.i.2
  %sext.i.i.2 = shl i64 %add6.i.i.i.2, 32
  %idxprom.i.i.2 = ashr exact i64 %sext.i.i.2, 32
  %arrayidx.i.i.2 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.2
  %arrayidx9.i.i.2 = getelementptr inbounds float, float* %18, i64 %idxprom.i.i.2
  %mul.i.i.2 = mul nsw i32 %22, %conv2.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck113, label %pregion_for_end.i.i.2

vector.scevcheck113:                              ; preds = %pregion_for_end.i.i.1
  %222 = mul i32 %22, %conv2.i.i.2
  %223 = trunc i64 %2 to i32
  %224 = shl i32 %223, 5
  %225 = add i32 %222, %224
  %226 = icmp sgt i32 %225, 2147483616
  br i1 %226, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.memcheck151

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.memcheck151, %vector.scevcheck113
  br label %pregion_for_entry.entry.i.i.us.2

vector.memcheck151:                               ; preds = %vector.scevcheck113
  %sext506 = shl i64 %3, 35
  %227 = ashr exact i64 %sext506, 32
  %228 = or i64 %227, 2
  %scevgep115 = getelementptr float, float* %15, i64 %228
  %scevgep115116 = bitcast float* %scevgep115 to i8*
  %uglygep117 = getelementptr i8, i8* %scevgep115116, i64 1
  %229 = mul i32 %22, %conv2.i.i.2
  %230 = trunc i64 %2 to i32
  %231 = shl i32 %230, 5
  %232 = add i32 %229, %231
  %233 = sext i32 %232 to i64
  %scevgep118 = getelementptr float, float* %6, i64 %233
  %scevgep118119 = bitcast float* %scevgep118 to i8*
  %234 = add nsw i64 %233, 32
  %scevgep120 = getelementptr float, float* %6, i64 %234
  %235 = sext i32 %231 to i64
  %scevgep122 = getelementptr float, float* %9, i64 %235
  %236 = add nsw i64 %235, 32
  %scevgep124 = getelementptr float, float* %9, i64 %236
  %scevgep126 = getelementptr float, float* %18, i64 %228
  %scevgep126127 = bitcast float* %scevgep126 to i8*
  %uglygep128 = getelementptr i8, i8* %scevgep126127, i64 1
  %scevgep129 = getelementptr float, float* %12, i64 %235
  %scevgep131 = getelementptr float, float* %12, i64 %236
  %bound0134 = icmp ult float* %arrayidx.i.i.2, %scevgep120
  %bound1135 = icmp ugt i8* %uglygep117, %scevgep118119
  %found.conflict136 = and i1 %bound0134, %bound1135
  %bound0137 = icmp ult float* %scevgep122, %scevgep120
  %bound1138 = icmp ult float* %scevgep118, %scevgep124
  %found.conflict139 = and i1 %bound0137, %bound1138
  %conflict.rdx140 = or i1 %found.conflict136, %found.conflict139
  %bound0142 = icmp ult float* %arrayidx9.i.i.2, %scevgep120
  %bound1143 = icmp ugt i8* %uglygep128, %scevgep118119
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx140, %found.conflict144
  %bound0146 = icmp ult float* %scevgep129, %scevgep120
  %bound1147 = icmp ult float* %scevgep118, %scevgep131
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  br i1 %conflict.rdx149, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck151
  %broadcast.splatinsert159 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat160 = shufflevector <8 x i64> %broadcast.splatinsert159, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert161 = insertelement <8 x i32> undef, i32 %22, i32 0
  %broadcast.splat162 = shufflevector <8 x i32> %broadcast.splatinsert161, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert163 = insertelement <8 x float*> undef, float* %arrayidx.i.i.2, i32 0
  %broadcast.splat164 = shufflevector <8 x float*> %broadcast.splatinsert163, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert167 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.2, i32 0
  %broadcast.splat168 = shufflevector <8 x float*> %broadcast.splatinsert167, <8 x float*> undef, <8 x i32> zeroinitializer
  %237 = or <8 x i64> %broadcast.splat160, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %238 = trunc <8 x i64> %237 to <8 x i32>
  %239 = icmp sgt <8 x i32> %broadcast.splat162, %238
  %wide.masked.gather165 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %239, <8 x float> undef), !tbaa !12, !alias.scope !235, !noalias !238
  %240 = extractelement <8 x i64> %237, i32 0
  %241 = shl i64 %240, 32
  %242 = ashr exact i64 %241, 32
  %243 = getelementptr inbounds float, float* %9, i64 %242
  %244 = bitcast float* %243 to <8 x float>*
  %wide.masked.load166 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %244, i32 4, <8 x i1> %239, <8 x float> undef), !tbaa !12, !alias.scope !240, !noalias !238
  %wide.masked.gather169 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %239, <8 x float> undef), !tbaa !12, !alias.scope !242, !noalias !238
  %245 = getelementptr inbounds float, float* %12, i64 %242
  %246 = bitcast float* %245 to <8 x float>*
  %wide.masked.load170 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %246, i32 4, <8 x i1> %239, <8 x float> undef), !tbaa !12, !alias.scope !244, !noalias !238
  %247 = fmul <8 x float> %wide.masked.gather169, %wide.masked.load170
  %248 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165, <8 x float> %wide.masked.load166, <8 x float> %247)
  %249 = extractelement <8 x i32> %238, i32 0
  %250 = add nsw i32 %mul.i.i.2, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %6, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  %wide.masked.load171 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %253, i32 4, <8 x i1> %239, <8 x float> undef), !tbaa !12, !alias.scope !238
  %254 = fadd <8 x float> %wide.masked.load171, %248
  %255 = bitcast float* %252 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %254, <8 x float>* %255, i32 4, <8 x i1> %239), !tbaa !12, !alias.scope !238, !llvm.access.group !27
  %256 = or <8 x i64> %broadcast.splat160, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %257 = trunc <8 x i64> %256 to <8 x i32>
  %258 = icmp sgt <8 x i32> %broadcast.splat162, %257
  %wide.masked.gather165.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %258, <8 x float> undef), !tbaa !12, !alias.scope !235, !noalias !238
  %259 = extractelement <8 x i64> %256, i32 0
  %260 = shl i64 %259, 32
  %261 = ashr exact i64 %260, 32
  %262 = getelementptr inbounds float, float* %9, i64 %261
  %263 = bitcast float* %262 to <8 x float>*
  %wide.masked.load166.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %263, i32 4, <8 x i1> %258, <8 x float> undef), !tbaa !12, !alias.scope !240, !noalias !238
  %wide.masked.gather169.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %258, <8 x float> undef), !tbaa !12, !alias.scope !242, !noalias !238
  %264 = getelementptr inbounds float, float* %12, i64 %261
  %265 = bitcast float* %264 to <8 x float>*
  %wide.masked.load170.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %265, i32 4, <8 x i1> %258, <8 x float> undef), !tbaa !12, !alias.scope !244, !noalias !238
  %266 = fmul <8 x float> %wide.masked.gather169.1, %wide.masked.load170.1
  %267 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165.1, <8 x float> %wide.masked.load166.1, <8 x float> %266)
  %268 = extractelement <8 x i32> %257, i32 0
  %269 = add nsw i32 %mul.i.i.2, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %6, i64 %270
  %272 = bitcast float* %271 to <8 x float>*
  %wide.masked.load171.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %272, i32 4, <8 x i1> %258, <8 x float> undef), !tbaa !12, !alias.scope !238
  %273 = fadd <8 x float> %wide.masked.load171.1, %267
  %274 = bitcast float* %271 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %273, <8 x float>* %274, i32 4, <8 x i1> %258), !tbaa !12, !alias.scope !238, !llvm.access.group !27
  %275 = or <8 x i64> %broadcast.splat160, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %276 = trunc <8 x i64> %275 to <8 x i32>
  %277 = icmp sgt <8 x i32> %broadcast.splat162, %276
  %wide.masked.gather165.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %277, <8 x float> undef), !tbaa !12, !alias.scope !235, !noalias !238
  %278 = extractelement <8 x i64> %275, i32 0
  %279 = shl i64 %278, 32
  %280 = ashr exact i64 %279, 32
  %281 = getelementptr inbounds float, float* %9, i64 %280
  %282 = bitcast float* %281 to <8 x float>*
  %wide.masked.load166.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %282, i32 4, <8 x i1> %277, <8 x float> undef), !tbaa !12, !alias.scope !240, !noalias !238
  %wide.masked.gather169.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %277, <8 x float> undef), !tbaa !12, !alias.scope !242, !noalias !238
  %283 = getelementptr inbounds float, float* %12, i64 %280
  %284 = bitcast float* %283 to <8 x float>*
  %wide.masked.load170.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %284, i32 4, <8 x i1> %277, <8 x float> undef), !tbaa !12, !alias.scope !244, !noalias !238
  %285 = fmul <8 x float> %wide.masked.gather169.2, %wide.masked.load170.2
  %286 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165.2, <8 x float> %wide.masked.load166.2, <8 x float> %285)
  %287 = extractelement <8 x i32> %276, i32 0
  %288 = add nsw i32 %mul.i.i.2, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %6, i64 %289
  %291 = bitcast float* %290 to <8 x float>*
  %wide.masked.load171.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %291, i32 4, <8 x i1> %277, <8 x float> undef), !tbaa !12, !alias.scope !238
  %292 = fadd <8 x float> %wide.masked.load171.2, %286
  %293 = bitcast float* %290 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %292, <8 x float>* %293, i32 4, <8 x i1> %277), !tbaa !12, !alias.scope !238, !llvm.access.group !27
  %294 = or <8 x i64> %broadcast.splat160, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %295 = trunc <8 x i64> %294 to <8 x i32>
  %296 = icmp sgt <8 x i32> %broadcast.splat162, %295
  %wide.masked.gather165.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat164, i32 4, <8 x i1> %296, <8 x float> undef), !tbaa !12, !alias.scope !235, !noalias !238
  %297 = extractelement <8 x i64> %294, i32 0
  %298 = shl i64 %297, 32
  %299 = ashr exact i64 %298, 32
  %300 = getelementptr inbounds float, float* %9, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  %wide.masked.load166.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %301, i32 4, <8 x i1> %296, <8 x float> undef), !tbaa !12, !alias.scope !240, !noalias !238
  %wide.masked.gather169.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat168, i32 4, <8 x i1> %296, <8 x float> undef), !tbaa !12, !alias.scope !242, !noalias !238
  %302 = getelementptr inbounds float, float* %12, i64 %299
  %303 = bitcast float* %302 to <8 x float>*
  %wide.masked.load170.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %303, i32 4, <8 x i1> %296, <8 x float> undef), !tbaa !12, !alias.scope !244, !noalias !238
  %304 = fmul <8 x float> %wide.masked.gather169.3, %wide.masked.load170.3
  %305 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather165.3, <8 x float> %wide.masked.load166.3, <8 x float> %304)
  %306 = extractelement <8 x i32> %295, i32 0
  %307 = add nsw i32 %mul.i.i.2, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %6, i64 %308
  %310 = bitcast float* %309 to <8 x float>*
  %wide.masked.load171.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %310, i32 4, <8 x i1> %296, <8 x float> undef), !tbaa !12, !alias.scope !238
  %311 = fadd <8 x float> %wide.masked.load171.3, %305
  %312 = bitcast float* %309 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %311, <8 x float>* %312, i32 4, <8 x i1> %296), !tbaa !12, !alias.scope !238, !llvm.access.group !27
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.r_exit.i.i.us.2.1, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ], [ %851, %if.end.r_exit.i.i.us.2.1 ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %conv.i.i.us.2 = trunc i64 %add1.i.i.i.us.2 to i32
  %cmp4.i.i.us.2 = icmp sgt i32 %22, %conv.i.i.us.2
  br i1 %cmp4.i.i.us.2, label %if.then.i.i.us.2, label %if.end.r_exit.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %313 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12
  %sext26.i.i.us.2 = shl i64 %add1.i.i.i.us.2, 32
  %idxprom6.i.i.us.2 = ashr exact i64 %sext26.i.i.us.2, 32
  %arrayidx7.i.i.us.2 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.2
  %314 = load float, float* %arrayidx7.i.i.us.2, align 4, !tbaa !12
  %315 = load float, float* %arrayidx9.i.i.2, align 4, !tbaa !12
  %arrayidx11.i.i.us.2 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.2
  %316 = load float, float* %arrayidx11.i.i.us.2, align 4, !tbaa !12
  %mul12.i.i.us.2 = fmul float %315, %316
  %317 = tail call float @llvm.fmuladd.f32(float %313, float %314, float %mul12.i.i.us.2) #6
  %add.i.i.us.2 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2
  %idxprom13.i.i.us.2 = sext i32 %add.i.i.us.2 to i64
  %arrayidx14.i.i.us.2 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.2
  %318 = load float, float* %arrayidx14.i.i.us.2, align 4, !tbaa !12
  %add15.i.i.us.2 = fadd float %318, %317
  store float %add15.i.i.us.2, float* %arrayidx14.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.2

if.end.r_exit.i.i.us.2:                           ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %319 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %319, %mul.i.i.i
  %conv.i.i.us.2.1 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %cmp4.i.i.us.2.1 = icmp sgt i32 %22, %conv.i.i.us.2.1
  br i1 %cmp4.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.r_exit.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.r_exit.i.i.us.2.1
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph152, %pregion_for_end.i.i.1
  %add6.i.i.i.3 = or i64 %mul3.i.i.i, 3
  %conv2.i.i.3 = trunc i64 %add6.i.i.i.3 to i32
  %cmp.i.i.3 = icmp sgt i32 %22, %conv2.i.i.3
  %sext.i.i.3 = shl i64 %add6.i.i.i.3, 32
  %idxprom.i.i.3 = ashr exact i64 %sext.i.i.3, 32
  %arrayidx.i.i.3 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.3
  %arrayidx9.i.i.3 = getelementptr inbounds float, float* %18, i64 %idxprom.i.i.3
  %mul.i.i.3 = mul nsw i32 %22, %conv2.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck179, label %pregion_for_end.i.i.3

vector.scevcheck179:                              ; preds = %pregion_for_end.i.i.2
  %320 = mul i32 %22, %conv2.i.i.3
  %321 = trunc i64 %2 to i32
  %322 = shl i32 %321, 5
  %323 = add i32 %320, %322
  %324 = icmp sgt i32 %323, 2147483616
  br i1 %324, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.memcheck217

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.memcheck217, %vector.scevcheck179
  br label %pregion_for_entry.entry.i.i.us.3

vector.memcheck217:                               ; preds = %vector.scevcheck179
  %sext505 = shl i64 %3, 35
  %325 = ashr exact i64 %sext505, 32
  %326 = or i64 %325, 3
  %scevgep181 = getelementptr float, float* %15, i64 %326
  %scevgep181182 = bitcast float* %scevgep181 to i8*
  %uglygep183 = getelementptr i8, i8* %scevgep181182, i64 1
  %327 = mul i32 %22, %conv2.i.i.3
  %328 = trunc i64 %2 to i32
  %329 = shl i32 %328, 5
  %330 = add i32 %327, %329
  %331 = sext i32 %330 to i64
  %scevgep184 = getelementptr float, float* %6, i64 %331
  %scevgep184185 = bitcast float* %scevgep184 to i8*
  %332 = add nsw i64 %331, 32
  %scevgep186 = getelementptr float, float* %6, i64 %332
  %333 = sext i32 %329 to i64
  %scevgep188 = getelementptr float, float* %9, i64 %333
  %334 = add nsw i64 %333, 32
  %scevgep190 = getelementptr float, float* %9, i64 %334
  %scevgep192 = getelementptr float, float* %18, i64 %326
  %scevgep192193 = bitcast float* %scevgep192 to i8*
  %uglygep194 = getelementptr i8, i8* %scevgep192193, i64 1
  %scevgep195 = getelementptr float, float* %12, i64 %333
  %scevgep197 = getelementptr float, float* %12, i64 %334
  %bound0200 = icmp ult float* %arrayidx.i.i.3, %scevgep186
  %bound1201 = icmp ugt i8* %uglygep183, %scevgep184185
  %found.conflict202 = and i1 %bound0200, %bound1201
  %bound0203 = icmp ult float* %scevgep188, %scevgep186
  %bound1204 = icmp ult float* %scevgep184, %scevgep190
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %found.conflict202, %found.conflict205
  %bound0208 = icmp ult float* %arrayidx9.i.i.3, %scevgep186
  %bound1209 = icmp ugt i8* %uglygep194, %scevgep184185
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx206, %found.conflict210
  %bound0212 = icmp ult float* %scevgep195, %scevgep186
  %bound1213 = icmp ult float* %scevgep184, %scevgep197
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx211, %found.conflict214
  br i1 %conflict.rdx215, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck217
  %broadcast.splatinsert225 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat226 = shufflevector <8 x i64> %broadcast.splatinsert225, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x i32> undef, i32 %22, i32 0
  %broadcast.splat228 = shufflevector <8 x i32> %broadcast.splatinsert227, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float*> undef, float* %arrayidx.i.i.3, i32 0
  %broadcast.splat230 = shufflevector <8 x float*> %broadcast.splatinsert229, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert233 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.3, i32 0
  %broadcast.splat234 = shufflevector <8 x float*> %broadcast.splatinsert233, <8 x float*> undef, <8 x i32> zeroinitializer
  %335 = or <8 x i64> %broadcast.splat226, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %336 = trunc <8 x i64> %335 to <8 x i32>
  %337 = icmp sgt <8 x i32> %broadcast.splat228, %336
  %wide.masked.gather231 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %337, <8 x float> undef), !tbaa !12, !alias.scope !246, !noalias !249
  %338 = extractelement <8 x i64> %335, i32 0
  %339 = shl i64 %338, 32
  %340 = ashr exact i64 %339, 32
  %341 = getelementptr inbounds float, float* %9, i64 %340
  %342 = bitcast float* %341 to <8 x float>*
  %wide.masked.load232 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %342, i32 4, <8 x i1> %337, <8 x float> undef), !tbaa !12, !alias.scope !251, !noalias !249
  %wide.masked.gather235 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %337, <8 x float> undef), !tbaa !12, !alias.scope !253, !noalias !249
  %343 = getelementptr inbounds float, float* %12, i64 %340
  %344 = bitcast float* %343 to <8 x float>*
  %wide.masked.load236 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %344, i32 4, <8 x i1> %337, <8 x float> undef), !tbaa !12, !alias.scope !255, !noalias !249
  %345 = fmul <8 x float> %wide.masked.gather235, %wide.masked.load236
  %346 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231, <8 x float> %wide.masked.load232, <8 x float> %345)
  %347 = extractelement <8 x i32> %336, i32 0
  %348 = add nsw i32 %mul.i.i.3, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %6, i64 %349
  %351 = bitcast float* %350 to <8 x float>*
  %wide.masked.load237 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %351, i32 4, <8 x i1> %337, <8 x float> undef), !tbaa !12, !alias.scope !249
  %352 = fadd <8 x float> %wide.masked.load237, %346
  %353 = bitcast float* %350 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %352, <8 x float>* %353, i32 4, <8 x i1> %337), !tbaa !12, !alias.scope !249, !llvm.access.group !27
  %354 = or <8 x i64> %broadcast.splat226, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %355 = trunc <8 x i64> %354 to <8 x i32>
  %356 = icmp sgt <8 x i32> %broadcast.splat228, %355
  %wide.masked.gather231.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %356, <8 x float> undef), !tbaa !12, !alias.scope !246, !noalias !249
  %357 = extractelement <8 x i64> %354, i32 0
  %358 = shl i64 %357, 32
  %359 = ashr exact i64 %358, 32
  %360 = getelementptr inbounds float, float* %9, i64 %359
  %361 = bitcast float* %360 to <8 x float>*
  %wide.masked.load232.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %361, i32 4, <8 x i1> %356, <8 x float> undef), !tbaa !12, !alias.scope !251, !noalias !249
  %wide.masked.gather235.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %356, <8 x float> undef), !tbaa !12, !alias.scope !253, !noalias !249
  %362 = getelementptr inbounds float, float* %12, i64 %359
  %363 = bitcast float* %362 to <8 x float>*
  %wide.masked.load236.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %363, i32 4, <8 x i1> %356, <8 x float> undef), !tbaa !12, !alias.scope !255, !noalias !249
  %364 = fmul <8 x float> %wide.masked.gather235.1, %wide.masked.load236.1
  %365 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231.1, <8 x float> %wide.masked.load232.1, <8 x float> %364)
  %366 = extractelement <8 x i32> %355, i32 0
  %367 = add nsw i32 %mul.i.i.3, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds float, float* %6, i64 %368
  %370 = bitcast float* %369 to <8 x float>*
  %wide.masked.load237.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %370, i32 4, <8 x i1> %356, <8 x float> undef), !tbaa !12, !alias.scope !249
  %371 = fadd <8 x float> %wide.masked.load237.1, %365
  %372 = bitcast float* %369 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %371, <8 x float>* %372, i32 4, <8 x i1> %356), !tbaa !12, !alias.scope !249, !llvm.access.group !27
  %373 = or <8 x i64> %broadcast.splat226, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %374 = trunc <8 x i64> %373 to <8 x i32>
  %375 = icmp sgt <8 x i32> %broadcast.splat228, %374
  %wide.masked.gather231.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %375, <8 x float> undef), !tbaa !12, !alias.scope !246, !noalias !249
  %376 = extractelement <8 x i64> %373, i32 0
  %377 = shl i64 %376, 32
  %378 = ashr exact i64 %377, 32
  %379 = getelementptr inbounds float, float* %9, i64 %378
  %380 = bitcast float* %379 to <8 x float>*
  %wide.masked.load232.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %380, i32 4, <8 x i1> %375, <8 x float> undef), !tbaa !12, !alias.scope !251, !noalias !249
  %wide.masked.gather235.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %375, <8 x float> undef), !tbaa !12, !alias.scope !253, !noalias !249
  %381 = getelementptr inbounds float, float* %12, i64 %378
  %382 = bitcast float* %381 to <8 x float>*
  %wide.masked.load236.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %382, i32 4, <8 x i1> %375, <8 x float> undef), !tbaa !12, !alias.scope !255, !noalias !249
  %383 = fmul <8 x float> %wide.masked.gather235.2, %wide.masked.load236.2
  %384 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231.2, <8 x float> %wide.masked.load232.2, <8 x float> %383)
  %385 = extractelement <8 x i32> %374, i32 0
  %386 = add nsw i32 %mul.i.i.3, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float, float* %6, i64 %387
  %389 = bitcast float* %388 to <8 x float>*
  %wide.masked.load237.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %389, i32 4, <8 x i1> %375, <8 x float> undef), !tbaa !12, !alias.scope !249
  %390 = fadd <8 x float> %wide.masked.load237.2, %384
  %391 = bitcast float* %388 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %390, <8 x float>* %391, i32 4, <8 x i1> %375), !tbaa !12, !alias.scope !249, !llvm.access.group !27
  %392 = or <8 x i64> %broadcast.splat226, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %393 = trunc <8 x i64> %392 to <8 x i32>
  %394 = icmp sgt <8 x i32> %broadcast.splat228, %393
  %wide.masked.gather231.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat230, i32 4, <8 x i1> %394, <8 x float> undef), !tbaa !12, !alias.scope !246, !noalias !249
  %395 = extractelement <8 x i64> %392, i32 0
  %396 = shl i64 %395, 32
  %397 = ashr exact i64 %396, 32
  %398 = getelementptr inbounds float, float* %9, i64 %397
  %399 = bitcast float* %398 to <8 x float>*
  %wide.masked.load232.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %399, i32 4, <8 x i1> %394, <8 x float> undef), !tbaa !12, !alias.scope !251, !noalias !249
  %wide.masked.gather235.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat234, i32 4, <8 x i1> %394, <8 x float> undef), !tbaa !12, !alias.scope !253, !noalias !249
  %400 = getelementptr inbounds float, float* %12, i64 %397
  %401 = bitcast float* %400 to <8 x float>*
  %wide.masked.load236.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %401, i32 4, <8 x i1> %394, <8 x float> undef), !tbaa !12, !alias.scope !255, !noalias !249
  %402 = fmul <8 x float> %wide.masked.gather235.3, %wide.masked.load236.3
  %403 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather231.3, <8 x float> %wide.masked.load232.3, <8 x float> %402)
  %404 = extractelement <8 x i32> %393, i32 0
  %405 = add nsw i32 %mul.i.i.3, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float, float* %6, i64 %406
  %408 = bitcast float* %407 to <8 x float>*
  %wide.masked.load237.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %408, i32 4, <8 x i1> %394, <8 x float> undef), !tbaa !12, !alias.scope !249
  %409 = fadd <8 x float> %wide.masked.load237.3, %403
  %410 = bitcast float* %407 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %409, <8 x float>* %410, i32 4, <8 x i1> %394), !tbaa !12, !alias.scope !249, !llvm.access.group !27
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.r_exit.i.i.us.3.1, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ], [ %844, %if.end.r_exit.i.i.us.3.1 ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %conv.i.i.us.3 = trunc i64 %add1.i.i.i.us.3 to i32
  %cmp4.i.i.us.3 = icmp sgt i32 %22, %conv.i.i.us.3
  br i1 %cmp4.i.i.us.3, label %if.then.i.i.us.3, label %if.end.r_exit.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %411 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12
  %sext26.i.i.us.3 = shl i64 %add1.i.i.i.us.3, 32
  %idxprom6.i.i.us.3 = ashr exact i64 %sext26.i.i.us.3, 32
  %arrayidx7.i.i.us.3 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.3
  %412 = load float, float* %arrayidx7.i.i.us.3, align 4, !tbaa !12
  %413 = load float, float* %arrayidx9.i.i.3, align 4, !tbaa !12
  %arrayidx11.i.i.us.3 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.3
  %414 = load float, float* %arrayidx11.i.i.us.3, align 4, !tbaa !12
  %mul12.i.i.us.3 = fmul float %413, %414
  %415 = tail call float @llvm.fmuladd.f32(float %411, float %412, float %mul12.i.i.us.3) #6
  %add.i.i.us.3 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3
  %idxprom13.i.i.us.3 = sext i32 %add.i.i.us.3 to i64
  %arrayidx14.i.i.us.3 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.3
  %416 = load float, float* %arrayidx14.i.i.us.3, align 4, !tbaa !12
  %add15.i.i.us.3 = fadd float %416, %415
  store float %add15.i.i.us.3, float* %arrayidx14.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.3

if.end.r_exit.i.i.us.3:                           ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %417 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %417, %mul.i.i.i
  %conv.i.i.us.3.1 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %cmp4.i.i.us.3.1 = icmp sgt i32 %22, %conv.i.i.us.3.1
  br i1 %cmp4.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.r_exit.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.r_exit.i.i.us.3.1
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph218, %pregion_for_end.i.i.2
  %add6.i.i.i.4 = or i64 %mul3.i.i.i, 4
  %conv2.i.i.4 = trunc i64 %add6.i.i.i.4 to i32
  %cmp.i.i.4 = icmp sgt i32 %22, %conv2.i.i.4
  %sext.i.i.4 = shl i64 %add6.i.i.i.4, 32
  %idxprom.i.i.4 = ashr exact i64 %sext.i.i.4, 32
  %arrayidx.i.i.4 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.4
  %arrayidx9.i.i.4 = getelementptr inbounds float, float* %18, i64 %idxprom.i.i.4
  %mul.i.i.4 = mul nsw i32 %22, %conv2.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck245, label %pregion_for_end.i.i.4

vector.scevcheck245:                              ; preds = %pregion_for_end.i.i.3
  %418 = mul i32 %22, %conv2.i.i.4
  %419 = trunc i64 %2 to i32
  %420 = shl i32 %419, 5
  %421 = add i32 %418, %420
  %422 = icmp sgt i32 %421, 2147483616
  br i1 %422, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.memcheck283

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.memcheck283, %vector.scevcheck245
  br label %pregion_for_entry.entry.i.i.us.4

vector.memcheck283:                               ; preds = %vector.scevcheck245
  %sext504 = shl i64 %3, 35
  %423 = ashr exact i64 %sext504, 32
  %424 = or i64 %423, 4
  %scevgep247 = getelementptr float, float* %15, i64 %424
  %scevgep247248 = bitcast float* %scevgep247 to i8*
  %uglygep249 = getelementptr i8, i8* %scevgep247248, i64 1
  %425 = mul i32 %22, %conv2.i.i.4
  %426 = trunc i64 %2 to i32
  %427 = shl i32 %426, 5
  %428 = add i32 %425, %427
  %429 = sext i32 %428 to i64
  %scevgep250 = getelementptr float, float* %6, i64 %429
  %scevgep250251 = bitcast float* %scevgep250 to i8*
  %430 = add nsw i64 %429, 32
  %scevgep252 = getelementptr float, float* %6, i64 %430
  %431 = sext i32 %427 to i64
  %scevgep254 = getelementptr float, float* %9, i64 %431
  %432 = add nsw i64 %431, 32
  %scevgep256 = getelementptr float, float* %9, i64 %432
  %scevgep258 = getelementptr float, float* %18, i64 %424
  %scevgep258259 = bitcast float* %scevgep258 to i8*
  %uglygep260 = getelementptr i8, i8* %scevgep258259, i64 1
  %scevgep261 = getelementptr float, float* %12, i64 %431
  %scevgep263 = getelementptr float, float* %12, i64 %432
  %bound0266 = icmp ult float* %arrayidx.i.i.4, %scevgep252
  %bound1267 = icmp ugt i8* %uglygep249, %scevgep250251
  %found.conflict268 = and i1 %bound0266, %bound1267
  %bound0269 = icmp ult float* %scevgep254, %scevgep252
  %bound1270 = icmp ult float* %scevgep250, %scevgep256
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %found.conflict268, %found.conflict271
  %bound0274 = icmp ult float* %arrayidx9.i.i.4, %scevgep252
  %bound1275 = icmp ugt i8* %uglygep260, %scevgep250251
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx277 = or i1 %conflict.rdx272, %found.conflict276
  %bound0278 = icmp ult float* %scevgep261, %scevgep252
  %bound1279 = icmp ult float* %scevgep250, %scevgep263
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %conflict.rdx277, %found.conflict280
  br i1 %conflict.rdx281, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck283
  %broadcast.splatinsert291 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat292 = shufflevector <8 x i64> %broadcast.splatinsert291, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert293 = insertelement <8 x i32> undef, i32 %22, i32 0
  %broadcast.splat294 = shufflevector <8 x i32> %broadcast.splatinsert293, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert295 = insertelement <8 x float*> undef, float* %arrayidx.i.i.4, i32 0
  %broadcast.splat296 = shufflevector <8 x float*> %broadcast.splatinsert295, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert299 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.4, i32 0
  %broadcast.splat300 = shufflevector <8 x float*> %broadcast.splatinsert299, <8 x float*> undef, <8 x i32> zeroinitializer
  %433 = or <8 x i64> %broadcast.splat292, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %434 = trunc <8 x i64> %433 to <8 x i32>
  %435 = icmp sgt <8 x i32> %broadcast.splat294, %434
  %wide.masked.gather297 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %435, <8 x float> undef), !tbaa !12, !alias.scope !257, !noalias !260
  %436 = extractelement <8 x i64> %433, i32 0
  %437 = shl i64 %436, 32
  %438 = ashr exact i64 %437, 32
  %439 = getelementptr inbounds float, float* %9, i64 %438
  %440 = bitcast float* %439 to <8 x float>*
  %wide.masked.load298 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %440, i32 4, <8 x i1> %435, <8 x float> undef), !tbaa !12, !alias.scope !262, !noalias !260
  %wide.masked.gather301 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %435, <8 x float> undef), !tbaa !12, !alias.scope !264, !noalias !260
  %441 = getelementptr inbounds float, float* %12, i64 %438
  %442 = bitcast float* %441 to <8 x float>*
  %wide.masked.load302 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %442, i32 4, <8 x i1> %435, <8 x float> undef), !tbaa !12, !alias.scope !266, !noalias !260
  %443 = fmul <8 x float> %wide.masked.gather301, %wide.masked.load302
  %444 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297, <8 x float> %wide.masked.load298, <8 x float> %443)
  %445 = extractelement <8 x i32> %434, i32 0
  %446 = add nsw i32 %mul.i.i.4, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds float, float* %6, i64 %447
  %449 = bitcast float* %448 to <8 x float>*
  %wide.masked.load303 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %449, i32 4, <8 x i1> %435, <8 x float> undef), !tbaa !12, !alias.scope !260
  %450 = fadd <8 x float> %wide.masked.load303, %444
  %451 = bitcast float* %448 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %450, <8 x float>* %451, i32 4, <8 x i1> %435), !tbaa !12, !alias.scope !260, !llvm.access.group !27
  %452 = or <8 x i64> %broadcast.splat292, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %453 = trunc <8 x i64> %452 to <8 x i32>
  %454 = icmp sgt <8 x i32> %broadcast.splat294, %453
  %wide.masked.gather297.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %454, <8 x float> undef), !tbaa !12, !alias.scope !257, !noalias !260
  %455 = extractelement <8 x i64> %452, i32 0
  %456 = shl i64 %455, 32
  %457 = ashr exact i64 %456, 32
  %458 = getelementptr inbounds float, float* %9, i64 %457
  %459 = bitcast float* %458 to <8 x float>*
  %wide.masked.load298.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %459, i32 4, <8 x i1> %454, <8 x float> undef), !tbaa !12, !alias.scope !262, !noalias !260
  %wide.masked.gather301.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %454, <8 x float> undef), !tbaa !12, !alias.scope !264, !noalias !260
  %460 = getelementptr inbounds float, float* %12, i64 %457
  %461 = bitcast float* %460 to <8 x float>*
  %wide.masked.load302.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %461, i32 4, <8 x i1> %454, <8 x float> undef), !tbaa !12, !alias.scope !266, !noalias !260
  %462 = fmul <8 x float> %wide.masked.gather301.1, %wide.masked.load302.1
  %463 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297.1, <8 x float> %wide.masked.load298.1, <8 x float> %462)
  %464 = extractelement <8 x i32> %453, i32 0
  %465 = add nsw i32 %mul.i.i.4, %464
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds float, float* %6, i64 %466
  %468 = bitcast float* %467 to <8 x float>*
  %wide.masked.load303.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %468, i32 4, <8 x i1> %454, <8 x float> undef), !tbaa !12, !alias.scope !260
  %469 = fadd <8 x float> %wide.masked.load303.1, %463
  %470 = bitcast float* %467 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %469, <8 x float>* %470, i32 4, <8 x i1> %454), !tbaa !12, !alias.scope !260, !llvm.access.group !27
  %471 = or <8 x i64> %broadcast.splat292, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %472 = trunc <8 x i64> %471 to <8 x i32>
  %473 = icmp sgt <8 x i32> %broadcast.splat294, %472
  %wide.masked.gather297.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %473, <8 x float> undef), !tbaa !12, !alias.scope !257, !noalias !260
  %474 = extractelement <8 x i64> %471, i32 0
  %475 = shl i64 %474, 32
  %476 = ashr exact i64 %475, 32
  %477 = getelementptr inbounds float, float* %9, i64 %476
  %478 = bitcast float* %477 to <8 x float>*
  %wide.masked.load298.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %478, i32 4, <8 x i1> %473, <8 x float> undef), !tbaa !12, !alias.scope !262, !noalias !260
  %wide.masked.gather301.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %473, <8 x float> undef), !tbaa !12, !alias.scope !264, !noalias !260
  %479 = getelementptr inbounds float, float* %12, i64 %476
  %480 = bitcast float* %479 to <8 x float>*
  %wide.masked.load302.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %480, i32 4, <8 x i1> %473, <8 x float> undef), !tbaa !12, !alias.scope !266, !noalias !260
  %481 = fmul <8 x float> %wide.masked.gather301.2, %wide.masked.load302.2
  %482 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297.2, <8 x float> %wide.masked.load298.2, <8 x float> %481)
  %483 = extractelement <8 x i32> %472, i32 0
  %484 = add nsw i32 %mul.i.i.4, %483
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds float, float* %6, i64 %485
  %487 = bitcast float* %486 to <8 x float>*
  %wide.masked.load303.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %487, i32 4, <8 x i1> %473, <8 x float> undef), !tbaa !12, !alias.scope !260
  %488 = fadd <8 x float> %wide.masked.load303.2, %482
  %489 = bitcast float* %486 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %488, <8 x float>* %489, i32 4, <8 x i1> %473), !tbaa !12, !alias.scope !260, !llvm.access.group !27
  %490 = or <8 x i64> %broadcast.splat292, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %491 = trunc <8 x i64> %490 to <8 x i32>
  %492 = icmp sgt <8 x i32> %broadcast.splat294, %491
  %wide.masked.gather297.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat296, i32 4, <8 x i1> %492, <8 x float> undef), !tbaa !12, !alias.scope !257, !noalias !260
  %493 = extractelement <8 x i64> %490, i32 0
  %494 = shl i64 %493, 32
  %495 = ashr exact i64 %494, 32
  %496 = getelementptr inbounds float, float* %9, i64 %495
  %497 = bitcast float* %496 to <8 x float>*
  %wide.masked.load298.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %497, i32 4, <8 x i1> %492, <8 x float> undef), !tbaa !12, !alias.scope !262, !noalias !260
  %wide.masked.gather301.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat300, i32 4, <8 x i1> %492, <8 x float> undef), !tbaa !12, !alias.scope !264, !noalias !260
  %498 = getelementptr inbounds float, float* %12, i64 %495
  %499 = bitcast float* %498 to <8 x float>*
  %wide.masked.load302.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %499, i32 4, <8 x i1> %492, <8 x float> undef), !tbaa !12, !alias.scope !266, !noalias !260
  %500 = fmul <8 x float> %wide.masked.gather301.3, %wide.masked.load302.3
  %501 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather297.3, <8 x float> %wide.masked.load298.3, <8 x float> %500)
  %502 = extractelement <8 x i32> %491, i32 0
  %503 = add nsw i32 %mul.i.i.4, %502
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds float, float* %6, i64 %504
  %506 = bitcast float* %505 to <8 x float>*
  %wide.masked.load303.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %506, i32 4, <8 x i1> %492, <8 x float> undef), !tbaa !12, !alias.scope !260
  %507 = fadd <8 x float> %wide.masked.load303.3, %501
  %508 = bitcast float* %505 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %507, <8 x float>* %508, i32 4, <8 x i1> %492), !tbaa !12, !alias.scope !260, !llvm.access.group !27
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.r_exit.i.i.us.4.1, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ], [ %837, %if.end.r_exit.i.i.us.4.1 ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %conv.i.i.us.4 = trunc i64 %add1.i.i.i.us.4 to i32
  %cmp4.i.i.us.4 = icmp sgt i32 %22, %conv.i.i.us.4
  br i1 %cmp4.i.i.us.4, label %if.then.i.i.us.4, label %if.end.r_exit.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %509 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12
  %sext26.i.i.us.4 = shl i64 %add1.i.i.i.us.4, 32
  %idxprom6.i.i.us.4 = ashr exact i64 %sext26.i.i.us.4, 32
  %arrayidx7.i.i.us.4 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.4
  %510 = load float, float* %arrayidx7.i.i.us.4, align 4, !tbaa !12
  %511 = load float, float* %arrayidx9.i.i.4, align 4, !tbaa !12
  %arrayidx11.i.i.us.4 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.4
  %512 = load float, float* %arrayidx11.i.i.us.4, align 4, !tbaa !12
  %mul12.i.i.us.4 = fmul float %511, %512
  %513 = tail call float @llvm.fmuladd.f32(float %509, float %510, float %mul12.i.i.us.4) #6
  %add.i.i.us.4 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4
  %idxprom13.i.i.us.4 = sext i32 %add.i.i.us.4 to i64
  %arrayidx14.i.i.us.4 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.4
  %514 = load float, float* %arrayidx14.i.i.us.4, align 4, !tbaa !12
  %add15.i.i.us.4 = fadd float %514, %513
  store float %add15.i.i.us.4, float* %arrayidx14.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.4

if.end.r_exit.i.i.us.4:                           ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %515 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %515, %mul.i.i.i
  %conv.i.i.us.4.1 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %cmp4.i.i.us.4.1 = icmp sgt i32 %22, %conv.i.i.us.4.1
  br i1 %cmp4.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.r_exit.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.r_exit.i.i.us.4.1
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph284, %pregion_for_end.i.i.3
  %add6.i.i.i.5 = or i64 %mul3.i.i.i, 5
  %conv2.i.i.5 = trunc i64 %add6.i.i.i.5 to i32
  %cmp.i.i.5 = icmp sgt i32 %22, %conv2.i.i.5
  %sext.i.i.5 = shl i64 %add6.i.i.i.5, 32
  %idxprom.i.i.5 = ashr exact i64 %sext.i.i.5, 32
  %arrayidx.i.i.5 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.5
  %arrayidx9.i.i.5 = getelementptr inbounds float, float* %18, i64 %idxprom.i.i.5
  %mul.i.i.5 = mul nsw i32 %22, %conv2.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck311, label %pregion_for_end.i.i.5

vector.scevcheck311:                              ; preds = %pregion_for_end.i.i.4
  %516 = mul i32 %22, %conv2.i.i.5
  %517 = trunc i64 %2 to i32
  %518 = shl i32 %517, 5
  %519 = add i32 %516, %518
  %520 = icmp sgt i32 %519, 2147483616
  br i1 %520, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.memcheck349

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.memcheck349, %vector.scevcheck311
  br label %pregion_for_entry.entry.i.i.us.5

vector.memcheck349:                               ; preds = %vector.scevcheck311
  %sext503 = shl i64 %3, 35
  %521 = ashr exact i64 %sext503, 32
  %522 = or i64 %521, 5
  %scevgep313 = getelementptr float, float* %15, i64 %522
  %scevgep313314 = bitcast float* %scevgep313 to i8*
  %uglygep315 = getelementptr i8, i8* %scevgep313314, i64 1
  %523 = mul i32 %22, %conv2.i.i.5
  %524 = trunc i64 %2 to i32
  %525 = shl i32 %524, 5
  %526 = add i32 %523, %525
  %527 = sext i32 %526 to i64
  %scevgep316 = getelementptr float, float* %6, i64 %527
  %scevgep316317 = bitcast float* %scevgep316 to i8*
  %528 = add nsw i64 %527, 32
  %scevgep318 = getelementptr float, float* %6, i64 %528
  %529 = sext i32 %525 to i64
  %scevgep320 = getelementptr float, float* %9, i64 %529
  %530 = add nsw i64 %529, 32
  %scevgep322 = getelementptr float, float* %9, i64 %530
  %scevgep324 = getelementptr float, float* %18, i64 %522
  %scevgep324325 = bitcast float* %scevgep324 to i8*
  %uglygep326 = getelementptr i8, i8* %scevgep324325, i64 1
  %scevgep327 = getelementptr float, float* %12, i64 %529
  %scevgep329 = getelementptr float, float* %12, i64 %530
  %bound0332 = icmp ult float* %arrayidx.i.i.5, %scevgep318
  %bound1333 = icmp ugt i8* %uglygep315, %scevgep316317
  %found.conflict334 = and i1 %bound0332, %bound1333
  %bound0335 = icmp ult float* %scevgep320, %scevgep318
  %bound1336 = icmp ult float* %scevgep316, %scevgep322
  %found.conflict337 = and i1 %bound0335, %bound1336
  %conflict.rdx338 = or i1 %found.conflict334, %found.conflict337
  %bound0340 = icmp ult float* %arrayidx9.i.i.5, %scevgep318
  %bound1341 = icmp ugt i8* %uglygep326, %scevgep316317
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx338, %found.conflict342
  %bound0344 = icmp ult float* %scevgep327, %scevgep318
  %bound1345 = icmp ult float* %scevgep316, %scevgep329
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %conflict.rdx343, %found.conflict346
  br i1 %conflict.rdx347, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph350

vector.ph350:                                     ; preds = %vector.memcheck349
  %broadcast.splatinsert357 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat358 = shufflevector <8 x i64> %broadcast.splatinsert357, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert359 = insertelement <8 x i32> undef, i32 %22, i32 0
  %broadcast.splat360 = shufflevector <8 x i32> %broadcast.splatinsert359, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert361 = insertelement <8 x float*> undef, float* %arrayidx.i.i.5, i32 0
  %broadcast.splat362 = shufflevector <8 x float*> %broadcast.splatinsert361, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert365 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.5, i32 0
  %broadcast.splat366 = shufflevector <8 x float*> %broadcast.splatinsert365, <8 x float*> undef, <8 x i32> zeroinitializer
  %531 = or <8 x i64> %broadcast.splat358, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %532 = trunc <8 x i64> %531 to <8 x i32>
  %533 = icmp sgt <8 x i32> %broadcast.splat360, %532
  %wide.masked.gather363 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %533, <8 x float> undef), !tbaa !12, !alias.scope !268, !noalias !271
  %534 = extractelement <8 x i64> %531, i32 0
  %535 = shl i64 %534, 32
  %536 = ashr exact i64 %535, 32
  %537 = getelementptr inbounds float, float* %9, i64 %536
  %538 = bitcast float* %537 to <8 x float>*
  %wide.masked.load364 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %538, i32 4, <8 x i1> %533, <8 x float> undef), !tbaa !12, !alias.scope !273, !noalias !271
  %wide.masked.gather367 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %533, <8 x float> undef), !tbaa !12, !alias.scope !275, !noalias !271
  %539 = getelementptr inbounds float, float* %12, i64 %536
  %540 = bitcast float* %539 to <8 x float>*
  %wide.masked.load368 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %540, i32 4, <8 x i1> %533, <8 x float> undef), !tbaa !12, !alias.scope !277, !noalias !271
  %541 = fmul <8 x float> %wide.masked.gather367, %wide.masked.load368
  %542 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363, <8 x float> %wide.masked.load364, <8 x float> %541)
  %543 = extractelement <8 x i32> %532, i32 0
  %544 = add nsw i32 %mul.i.i.5, %543
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds float, float* %6, i64 %545
  %547 = bitcast float* %546 to <8 x float>*
  %wide.masked.load369 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %547, i32 4, <8 x i1> %533, <8 x float> undef), !tbaa !12, !alias.scope !271
  %548 = fadd <8 x float> %wide.masked.load369, %542
  %549 = bitcast float* %546 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %548, <8 x float>* %549, i32 4, <8 x i1> %533), !tbaa !12, !alias.scope !271, !llvm.access.group !27
  %550 = or <8 x i64> %broadcast.splat358, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %551 = trunc <8 x i64> %550 to <8 x i32>
  %552 = icmp sgt <8 x i32> %broadcast.splat360, %551
  %wide.masked.gather363.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %552, <8 x float> undef), !tbaa !12, !alias.scope !268, !noalias !271
  %553 = extractelement <8 x i64> %550, i32 0
  %554 = shl i64 %553, 32
  %555 = ashr exact i64 %554, 32
  %556 = getelementptr inbounds float, float* %9, i64 %555
  %557 = bitcast float* %556 to <8 x float>*
  %wide.masked.load364.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %557, i32 4, <8 x i1> %552, <8 x float> undef), !tbaa !12, !alias.scope !273, !noalias !271
  %wide.masked.gather367.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %552, <8 x float> undef), !tbaa !12, !alias.scope !275, !noalias !271
  %558 = getelementptr inbounds float, float* %12, i64 %555
  %559 = bitcast float* %558 to <8 x float>*
  %wide.masked.load368.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %559, i32 4, <8 x i1> %552, <8 x float> undef), !tbaa !12, !alias.scope !277, !noalias !271
  %560 = fmul <8 x float> %wide.masked.gather367.1, %wide.masked.load368.1
  %561 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363.1, <8 x float> %wide.masked.load364.1, <8 x float> %560)
  %562 = extractelement <8 x i32> %551, i32 0
  %563 = add nsw i32 %mul.i.i.5, %562
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds float, float* %6, i64 %564
  %566 = bitcast float* %565 to <8 x float>*
  %wide.masked.load369.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %566, i32 4, <8 x i1> %552, <8 x float> undef), !tbaa !12, !alias.scope !271
  %567 = fadd <8 x float> %wide.masked.load369.1, %561
  %568 = bitcast float* %565 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %567, <8 x float>* %568, i32 4, <8 x i1> %552), !tbaa !12, !alias.scope !271, !llvm.access.group !27
  %569 = or <8 x i64> %broadcast.splat358, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %570 = trunc <8 x i64> %569 to <8 x i32>
  %571 = icmp sgt <8 x i32> %broadcast.splat360, %570
  %wide.masked.gather363.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %571, <8 x float> undef), !tbaa !12, !alias.scope !268, !noalias !271
  %572 = extractelement <8 x i64> %569, i32 0
  %573 = shl i64 %572, 32
  %574 = ashr exact i64 %573, 32
  %575 = getelementptr inbounds float, float* %9, i64 %574
  %576 = bitcast float* %575 to <8 x float>*
  %wide.masked.load364.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %576, i32 4, <8 x i1> %571, <8 x float> undef), !tbaa !12, !alias.scope !273, !noalias !271
  %wide.masked.gather367.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %571, <8 x float> undef), !tbaa !12, !alias.scope !275, !noalias !271
  %577 = getelementptr inbounds float, float* %12, i64 %574
  %578 = bitcast float* %577 to <8 x float>*
  %wide.masked.load368.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %578, i32 4, <8 x i1> %571, <8 x float> undef), !tbaa !12, !alias.scope !277, !noalias !271
  %579 = fmul <8 x float> %wide.masked.gather367.2, %wide.masked.load368.2
  %580 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363.2, <8 x float> %wide.masked.load364.2, <8 x float> %579)
  %581 = extractelement <8 x i32> %570, i32 0
  %582 = add nsw i32 %mul.i.i.5, %581
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds float, float* %6, i64 %583
  %585 = bitcast float* %584 to <8 x float>*
  %wide.masked.load369.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %585, i32 4, <8 x i1> %571, <8 x float> undef), !tbaa !12, !alias.scope !271
  %586 = fadd <8 x float> %wide.masked.load369.2, %580
  %587 = bitcast float* %584 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %586, <8 x float>* %587, i32 4, <8 x i1> %571), !tbaa !12, !alias.scope !271, !llvm.access.group !27
  %588 = or <8 x i64> %broadcast.splat358, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %589 = trunc <8 x i64> %588 to <8 x i32>
  %590 = icmp sgt <8 x i32> %broadcast.splat360, %589
  %wide.masked.gather363.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat362, i32 4, <8 x i1> %590, <8 x float> undef), !tbaa !12, !alias.scope !268, !noalias !271
  %591 = extractelement <8 x i64> %588, i32 0
  %592 = shl i64 %591, 32
  %593 = ashr exact i64 %592, 32
  %594 = getelementptr inbounds float, float* %9, i64 %593
  %595 = bitcast float* %594 to <8 x float>*
  %wide.masked.load364.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %595, i32 4, <8 x i1> %590, <8 x float> undef), !tbaa !12, !alias.scope !273, !noalias !271
  %wide.masked.gather367.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat366, i32 4, <8 x i1> %590, <8 x float> undef), !tbaa !12, !alias.scope !275, !noalias !271
  %596 = getelementptr inbounds float, float* %12, i64 %593
  %597 = bitcast float* %596 to <8 x float>*
  %wide.masked.load368.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %597, i32 4, <8 x i1> %590, <8 x float> undef), !tbaa !12, !alias.scope !277, !noalias !271
  %598 = fmul <8 x float> %wide.masked.gather367.3, %wide.masked.load368.3
  %599 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather363.3, <8 x float> %wide.masked.load364.3, <8 x float> %598)
  %600 = extractelement <8 x i32> %589, i32 0
  %601 = add nsw i32 %mul.i.i.5, %600
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds float, float* %6, i64 %602
  %604 = bitcast float* %603 to <8 x float>*
  %wide.masked.load369.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %604, i32 4, <8 x i1> %590, <8 x float> undef), !tbaa !12, !alias.scope !271
  %605 = fadd <8 x float> %wide.masked.load369.3, %599
  %606 = bitcast float* %603 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %605, <8 x float>* %606, i32 4, <8 x i1> %590), !tbaa !12, !alias.scope !271, !llvm.access.group !27
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.r_exit.i.i.us.5.1, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ], [ %830, %if.end.r_exit.i.i.us.5.1 ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %conv.i.i.us.5 = trunc i64 %add1.i.i.i.us.5 to i32
  %cmp4.i.i.us.5 = icmp sgt i32 %22, %conv.i.i.us.5
  br i1 %cmp4.i.i.us.5, label %if.then.i.i.us.5, label %if.end.r_exit.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %607 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12
  %sext26.i.i.us.5 = shl i64 %add1.i.i.i.us.5, 32
  %idxprom6.i.i.us.5 = ashr exact i64 %sext26.i.i.us.5, 32
  %arrayidx7.i.i.us.5 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.5
  %608 = load float, float* %arrayidx7.i.i.us.5, align 4, !tbaa !12
  %609 = load float, float* %arrayidx9.i.i.5, align 4, !tbaa !12
  %arrayidx11.i.i.us.5 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.5
  %610 = load float, float* %arrayidx11.i.i.us.5, align 4, !tbaa !12
  %mul12.i.i.us.5 = fmul float %609, %610
  %611 = tail call float @llvm.fmuladd.f32(float %607, float %608, float %mul12.i.i.us.5) #6
  %add.i.i.us.5 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5
  %idxprom13.i.i.us.5 = sext i32 %add.i.i.us.5 to i64
  %arrayidx14.i.i.us.5 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.5
  %612 = load float, float* %arrayidx14.i.i.us.5, align 4, !tbaa !12
  %add15.i.i.us.5 = fadd float %612, %611
  store float %add15.i.i.us.5, float* %arrayidx14.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.5

if.end.r_exit.i.i.us.5:                           ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %613 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %613, %mul.i.i.i
  %conv.i.i.us.5.1 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %cmp4.i.i.us.5.1 = icmp sgt i32 %22, %conv.i.i.us.5.1
  br i1 %cmp4.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.r_exit.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.r_exit.i.i.us.5.1
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph350, %pregion_for_end.i.i.4
  %add6.i.i.i.6 = or i64 %mul3.i.i.i, 6
  %conv2.i.i.6 = trunc i64 %add6.i.i.i.6 to i32
  %cmp.i.i.6 = icmp sgt i32 %22, %conv2.i.i.6
  %sext.i.i.6 = shl i64 %add6.i.i.i.6, 32
  %idxprom.i.i.6 = ashr exact i64 %sext.i.i.6, 32
  %arrayidx.i.i.6 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.6
  %arrayidx9.i.i.6 = getelementptr inbounds float, float* %18, i64 %idxprom.i.i.6
  %mul.i.i.6 = mul nsw i32 %22, %conv2.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck377, label %pregion_for_end.i.i.6

vector.scevcheck377:                              ; preds = %pregion_for_end.i.i.5
  %614 = mul i32 %22, %conv2.i.i.6
  %615 = trunc i64 %2 to i32
  %616 = shl i32 %615, 5
  %617 = add i32 %614, %616
  %618 = icmp sgt i32 %617, 2147483616
  br i1 %618, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.memcheck415

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.memcheck415, %vector.scevcheck377
  br label %pregion_for_entry.entry.i.i.us.6

vector.memcheck415:                               ; preds = %vector.scevcheck377
  %sext502 = shl i64 %3, 35
  %619 = ashr exact i64 %sext502, 32
  %620 = or i64 %619, 6
  %scevgep379 = getelementptr float, float* %15, i64 %620
  %scevgep379380 = bitcast float* %scevgep379 to i8*
  %uglygep381 = getelementptr i8, i8* %scevgep379380, i64 1
  %621 = mul i32 %22, %conv2.i.i.6
  %622 = trunc i64 %2 to i32
  %623 = shl i32 %622, 5
  %624 = add i32 %621, %623
  %625 = sext i32 %624 to i64
  %scevgep382 = getelementptr float, float* %6, i64 %625
  %scevgep382383 = bitcast float* %scevgep382 to i8*
  %626 = add nsw i64 %625, 32
  %scevgep384 = getelementptr float, float* %6, i64 %626
  %627 = sext i32 %623 to i64
  %scevgep386 = getelementptr float, float* %9, i64 %627
  %628 = add nsw i64 %627, 32
  %scevgep388 = getelementptr float, float* %9, i64 %628
  %scevgep390 = getelementptr float, float* %18, i64 %620
  %scevgep390391 = bitcast float* %scevgep390 to i8*
  %uglygep392 = getelementptr i8, i8* %scevgep390391, i64 1
  %scevgep393 = getelementptr float, float* %12, i64 %627
  %scevgep395 = getelementptr float, float* %12, i64 %628
  %bound0398 = icmp ult float* %arrayidx.i.i.6, %scevgep384
  %bound1399 = icmp ugt i8* %uglygep381, %scevgep382383
  %found.conflict400 = and i1 %bound0398, %bound1399
  %bound0401 = icmp ult float* %scevgep386, %scevgep384
  %bound1402 = icmp ult float* %scevgep382, %scevgep388
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %found.conflict400, %found.conflict403
  %bound0406 = icmp ult float* %arrayidx9.i.i.6, %scevgep384
  %bound1407 = icmp ugt i8* %uglygep392, %scevgep382383
  %found.conflict408 = and i1 %bound0406, %bound1407
  %conflict.rdx409 = or i1 %conflict.rdx404, %found.conflict408
  %bound0410 = icmp ult float* %scevgep393, %scevgep384
  %bound1411 = icmp ult float* %scevgep382, %scevgep395
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %conflict.rdx409, %found.conflict412
  br i1 %conflict.rdx413, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %vector.memcheck415
  %broadcast.splatinsert423 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat424 = shufflevector <8 x i64> %broadcast.splatinsert423, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert425 = insertelement <8 x i32> undef, i32 %22, i32 0
  %broadcast.splat426 = shufflevector <8 x i32> %broadcast.splatinsert425, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert427 = insertelement <8 x float*> undef, float* %arrayidx.i.i.6, i32 0
  %broadcast.splat428 = shufflevector <8 x float*> %broadcast.splatinsert427, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert431 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.6, i32 0
  %broadcast.splat432 = shufflevector <8 x float*> %broadcast.splatinsert431, <8 x float*> undef, <8 x i32> zeroinitializer
  %629 = or <8 x i64> %broadcast.splat424, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %630 = trunc <8 x i64> %629 to <8 x i32>
  %631 = icmp sgt <8 x i32> %broadcast.splat426, %630
  %wide.masked.gather429 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %631, <8 x float> undef), !tbaa !12, !alias.scope !279, !noalias !282
  %632 = extractelement <8 x i64> %629, i32 0
  %633 = shl i64 %632, 32
  %634 = ashr exact i64 %633, 32
  %635 = getelementptr inbounds float, float* %9, i64 %634
  %636 = bitcast float* %635 to <8 x float>*
  %wide.masked.load430 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %636, i32 4, <8 x i1> %631, <8 x float> undef), !tbaa !12, !alias.scope !284, !noalias !282
  %wide.masked.gather433 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %631, <8 x float> undef), !tbaa !12, !alias.scope !286, !noalias !282
  %637 = getelementptr inbounds float, float* %12, i64 %634
  %638 = bitcast float* %637 to <8 x float>*
  %wide.masked.load434 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %638, i32 4, <8 x i1> %631, <8 x float> undef), !tbaa !12, !alias.scope !288, !noalias !282
  %639 = fmul <8 x float> %wide.masked.gather433, %wide.masked.load434
  %640 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429, <8 x float> %wide.masked.load430, <8 x float> %639)
  %641 = extractelement <8 x i32> %630, i32 0
  %642 = add nsw i32 %mul.i.i.6, %641
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds float, float* %6, i64 %643
  %645 = bitcast float* %644 to <8 x float>*
  %wide.masked.load435 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %645, i32 4, <8 x i1> %631, <8 x float> undef), !tbaa !12, !alias.scope !282
  %646 = fadd <8 x float> %wide.masked.load435, %640
  %647 = bitcast float* %644 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %646, <8 x float>* %647, i32 4, <8 x i1> %631), !tbaa !12, !alias.scope !282, !llvm.access.group !27
  %648 = or <8 x i64> %broadcast.splat424, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %649 = trunc <8 x i64> %648 to <8 x i32>
  %650 = icmp sgt <8 x i32> %broadcast.splat426, %649
  %wide.masked.gather429.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %650, <8 x float> undef), !tbaa !12, !alias.scope !279, !noalias !282
  %651 = extractelement <8 x i64> %648, i32 0
  %652 = shl i64 %651, 32
  %653 = ashr exact i64 %652, 32
  %654 = getelementptr inbounds float, float* %9, i64 %653
  %655 = bitcast float* %654 to <8 x float>*
  %wide.masked.load430.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %655, i32 4, <8 x i1> %650, <8 x float> undef), !tbaa !12, !alias.scope !284, !noalias !282
  %wide.masked.gather433.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %650, <8 x float> undef), !tbaa !12, !alias.scope !286, !noalias !282
  %656 = getelementptr inbounds float, float* %12, i64 %653
  %657 = bitcast float* %656 to <8 x float>*
  %wide.masked.load434.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %657, i32 4, <8 x i1> %650, <8 x float> undef), !tbaa !12, !alias.scope !288, !noalias !282
  %658 = fmul <8 x float> %wide.masked.gather433.1, %wide.masked.load434.1
  %659 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429.1, <8 x float> %wide.masked.load430.1, <8 x float> %658)
  %660 = extractelement <8 x i32> %649, i32 0
  %661 = add nsw i32 %mul.i.i.6, %660
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds float, float* %6, i64 %662
  %664 = bitcast float* %663 to <8 x float>*
  %wide.masked.load435.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %664, i32 4, <8 x i1> %650, <8 x float> undef), !tbaa !12, !alias.scope !282
  %665 = fadd <8 x float> %wide.masked.load435.1, %659
  %666 = bitcast float* %663 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %665, <8 x float>* %666, i32 4, <8 x i1> %650), !tbaa !12, !alias.scope !282, !llvm.access.group !27
  %667 = or <8 x i64> %broadcast.splat424, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %668 = trunc <8 x i64> %667 to <8 x i32>
  %669 = icmp sgt <8 x i32> %broadcast.splat426, %668
  %wide.masked.gather429.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %669, <8 x float> undef), !tbaa !12, !alias.scope !279, !noalias !282
  %670 = extractelement <8 x i64> %667, i32 0
  %671 = shl i64 %670, 32
  %672 = ashr exact i64 %671, 32
  %673 = getelementptr inbounds float, float* %9, i64 %672
  %674 = bitcast float* %673 to <8 x float>*
  %wide.masked.load430.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %674, i32 4, <8 x i1> %669, <8 x float> undef), !tbaa !12, !alias.scope !284, !noalias !282
  %wide.masked.gather433.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %669, <8 x float> undef), !tbaa !12, !alias.scope !286, !noalias !282
  %675 = getelementptr inbounds float, float* %12, i64 %672
  %676 = bitcast float* %675 to <8 x float>*
  %wide.masked.load434.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %676, i32 4, <8 x i1> %669, <8 x float> undef), !tbaa !12, !alias.scope !288, !noalias !282
  %677 = fmul <8 x float> %wide.masked.gather433.2, %wide.masked.load434.2
  %678 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429.2, <8 x float> %wide.masked.load430.2, <8 x float> %677)
  %679 = extractelement <8 x i32> %668, i32 0
  %680 = add nsw i32 %mul.i.i.6, %679
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds float, float* %6, i64 %681
  %683 = bitcast float* %682 to <8 x float>*
  %wide.masked.load435.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %683, i32 4, <8 x i1> %669, <8 x float> undef), !tbaa !12, !alias.scope !282
  %684 = fadd <8 x float> %wide.masked.load435.2, %678
  %685 = bitcast float* %682 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %684, <8 x float>* %685, i32 4, <8 x i1> %669), !tbaa !12, !alias.scope !282, !llvm.access.group !27
  %686 = or <8 x i64> %broadcast.splat424, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %687 = trunc <8 x i64> %686 to <8 x i32>
  %688 = icmp sgt <8 x i32> %broadcast.splat426, %687
  %wide.masked.gather429.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat428, i32 4, <8 x i1> %688, <8 x float> undef), !tbaa !12, !alias.scope !279, !noalias !282
  %689 = extractelement <8 x i64> %686, i32 0
  %690 = shl i64 %689, 32
  %691 = ashr exact i64 %690, 32
  %692 = getelementptr inbounds float, float* %9, i64 %691
  %693 = bitcast float* %692 to <8 x float>*
  %wide.masked.load430.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %693, i32 4, <8 x i1> %688, <8 x float> undef), !tbaa !12, !alias.scope !284, !noalias !282
  %wide.masked.gather433.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat432, i32 4, <8 x i1> %688, <8 x float> undef), !tbaa !12, !alias.scope !286, !noalias !282
  %694 = getelementptr inbounds float, float* %12, i64 %691
  %695 = bitcast float* %694 to <8 x float>*
  %wide.masked.load434.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %695, i32 4, <8 x i1> %688, <8 x float> undef), !tbaa !12, !alias.scope !288, !noalias !282
  %696 = fmul <8 x float> %wide.masked.gather433.3, %wide.masked.load434.3
  %697 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather429.3, <8 x float> %wide.masked.load430.3, <8 x float> %696)
  %698 = extractelement <8 x i32> %687, i32 0
  %699 = add nsw i32 %mul.i.i.6, %698
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds float, float* %6, i64 %700
  %702 = bitcast float* %701 to <8 x float>*
  %wide.masked.load435.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %702, i32 4, <8 x i1> %688, <8 x float> undef), !tbaa !12, !alias.scope !282
  %703 = fadd <8 x float> %wide.masked.load435.3, %697
  %704 = bitcast float* %701 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %703, <8 x float>* %704, i32 4, <8 x i1> %688), !tbaa !12, !alias.scope !282, !llvm.access.group !27
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.r_exit.i.i.us.6.1, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ], [ %823, %if.end.r_exit.i.i.us.6.1 ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %conv.i.i.us.6 = trunc i64 %add1.i.i.i.us.6 to i32
  %cmp4.i.i.us.6 = icmp sgt i32 %22, %conv.i.i.us.6
  br i1 %cmp4.i.i.us.6, label %if.then.i.i.us.6, label %if.end.r_exit.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %705 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12
  %sext26.i.i.us.6 = shl i64 %add1.i.i.i.us.6, 32
  %idxprom6.i.i.us.6 = ashr exact i64 %sext26.i.i.us.6, 32
  %arrayidx7.i.i.us.6 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.6
  %706 = load float, float* %arrayidx7.i.i.us.6, align 4, !tbaa !12
  %707 = load float, float* %arrayidx9.i.i.6, align 4, !tbaa !12
  %arrayidx11.i.i.us.6 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.6
  %708 = load float, float* %arrayidx11.i.i.us.6, align 4, !tbaa !12
  %mul12.i.i.us.6 = fmul float %707, %708
  %709 = tail call float @llvm.fmuladd.f32(float %705, float %706, float %mul12.i.i.us.6) #6
  %add.i.i.us.6 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6
  %idxprom13.i.i.us.6 = sext i32 %add.i.i.us.6 to i64
  %arrayidx14.i.i.us.6 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.6
  %710 = load float, float* %arrayidx14.i.i.us.6, align 4, !tbaa !12
  %add15.i.i.us.6 = fadd float %710, %709
  store float %add15.i.i.us.6, float* %arrayidx14.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.6

if.end.r_exit.i.i.us.6:                           ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %711 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %711, %mul.i.i.i
  %conv.i.i.us.6.1 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %cmp4.i.i.us.6.1 = icmp sgt i32 %22, %conv.i.i.us.6.1
  br i1 %cmp4.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.r_exit.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.r_exit.i.i.us.6.1
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph416, %pregion_for_end.i.i.5
  %add6.i.i.i.7 = or i64 %mul3.i.i.i, 7
  %conv2.i.i.7 = trunc i64 %add6.i.i.i.7 to i32
  %cmp.i.i.7 = icmp sgt i32 %22, %conv2.i.i.7
  %sext.i.i.7 = shl i64 %add6.i.i.i.7, 32
  %idxprom.i.i.7 = ashr exact i64 %sext.i.i.7, 32
  %arrayidx.i.i.7 = getelementptr inbounds float, float* %15, i64 %idxprom.i.i.7
  %arrayidx9.i.i.7 = getelementptr inbounds float, float* %18, i64 %idxprom.i.i.7
  %mul.i.i.7 = mul nsw i32 %22, %conv2.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck443, label %pregion_for_end.i.i.7

vector.scevcheck443:                              ; preds = %pregion_for_end.i.i.6
  %712 = mul i32 %22, %conv2.i.i.7
  %713 = trunc i64 %2 to i32
  %714 = shl i32 %713, 5
  %715 = add i32 %712, %714
  %716 = icmp sgt i32 %715, 2147483616
  br i1 %716, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.memcheck481

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.memcheck481, %vector.scevcheck443
  br label %pregion_for_entry.entry.i.i.us.7

vector.memcheck481:                               ; preds = %vector.scevcheck443
  %sext = shl i64 %3, 35
  %717 = ashr exact i64 %sext, 32
  %718 = or i64 %717, 7
  %scevgep445 = getelementptr float, float* %15, i64 %718
  %scevgep445446 = bitcast float* %scevgep445 to i8*
  %uglygep447 = getelementptr i8, i8* %scevgep445446, i64 1
  %719 = mul i32 %22, %conv2.i.i.7
  %720 = trunc i64 %2 to i32
  %721 = shl i32 %720, 5
  %722 = add i32 %719, %721
  %723 = sext i32 %722 to i64
  %scevgep448 = getelementptr float, float* %6, i64 %723
  %scevgep448449 = bitcast float* %scevgep448 to i8*
  %724 = add nsw i64 %723, 32
  %scevgep450 = getelementptr float, float* %6, i64 %724
  %725 = sext i32 %721 to i64
  %scevgep452 = getelementptr float, float* %9, i64 %725
  %726 = add nsw i64 %725, 32
  %scevgep454 = getelementptr float, float* %9, i64 %726
  %scevgep456 = getelementptr float, float* %18, i64 %718
  %scevgep456457 = bitcast float* %scevgep456 to i8*
  %uglygep458 = getelementptr i8, i8* %scevgep456457, i64 1
  %scevgep459 = getelementptr float, float* %12, i64 %725
  %scevgep461 = getelementptr float, float* %12, i64 %726
  %bound0464 = icmp ult float* %arrayidx.i.i.7, %scevgep450
  %bound1465 = icmp ugt i8* %uglygep447, %scevgep448449
  %found.conflict466 = and i1 %bound0464, %bound1465
  %bound0467 = icmp ult float* %scevgep452, %scevgep450
  %bound1468 = icmp ult float* %scevgep448, %scevgep454
  %found.conflict469 = and i1 %bound0467, %bound1468
  %conflict.rdx470 = or i1 %found.conflict466, %found.conflict469
  %bound0472 = icmp ult float* %arrayidx9.i.i.7, %scevgep450
  %bound1473 = icmp ugt i8* %uglygep458, %scevgep448449
  %found.conflict474 = and i1 %bound0472, %bound1473
  %conflict.rdx475 = or i1 %conflict.rdx470, %found.conflict474
  %bound0476 = icmp ult float* %scevgep459, %scevgep450
  %bound1477 = icmp ult float* %scevgep448, %scevgep461
  %found.conflict478 = and i1 %bound0476, %bound1477
  %conflict.rdx479 = or i1 %conflict.rdx475, %found.conflict478
  br i1 %conflict.rdx479, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph482

vector.ph482:                                     ; preds = %vector.memcheck481
  %broadcast.splatinsert489 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat490 = shufflevector <8 x i64> %broadcast.splatinsert489, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert491 = insertelement <8 x i32> undef, i32 %22, i32 0
  %broadcast.splat492 = shufflevector <8 x i32> %broadcast.splatinsert491, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert493 = insertelement <8 x float*> undef, float* %arrayidx.i.i.7, i32 0
  %broadcast.splat494 = shufflevector <8 x float*> %broadcast.splatinsert493, <8 x float*> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert497 = insertelement <8 x float*> undef, float* %arrayidx9.i.i.7, i32 0
  %broadcast.splat498 = shufflevector <8 x float*> %broadcast.splatinsert497, <8 x float*> undef, <8 x i32> zeroinitializer
  %727 = or <8 x i64> %broadcast.splat490, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %728 = trunc <8 x i64> %727 to <8 x i32>
  %729 = icmp sgt <8 x i32> %broadcast.splat492, %728
  %wide.masked.gather495 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %729, <8 x float> undef), !tbaa !12, !alias.scope !290, !noalias !293
  %730 = extractelement <8 x i64> %727, i32 0
  %731 = shl i64 %730, 32
  %732 = ashr exact i64 %731, 32
  %733 = getelementptr inbounds float, float* %9, i64 %732
  %734 = bitcast float* %733 to <8 x float>*
  %wide.masked.load496 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %734, i32 4, <8 x i1> %729, <8 x float> undef), !tbaa !12, !alias.scope !295, !noalias !293
  %wide.masked.gather499 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %729, <8 x float> undef), !tbaa !12, !alias.scope !297, !noalias !293
  %735 = getelementptr inbounds float, float* %12, i64 %732
  %736 = bitcast float* %735 to <8 x float>*
  %wide.masked.load500 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %736, i32 4, <8 x i1> %729, <8 x float> undef), !tbaa !12, !alias.scope !299, !noalias !293
  %737 = fmul <8 x float> %wide.masked.gather499, %wide.masked.load500
  %738 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495, <8 x float> %wide.masked.load496, <8 x float> %737)
  %739 = extractelement <8 x i32> %728, i32 0
  %740 = add nsw i32 %mul.i.i.7, %739
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds float, float* %6, i64 %741
  %743 = bitcast float* %742 to <8 x float>*
  %wide.masked.load501 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %743, i32 4, <8 x i1> %729, <8 x float> undef), !tbaa !12, !alias.scope !293
  %744 = fadd <8 x float> %wide.masked.load501, %738
  %745 = bitcast float* %742 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %744, <8 x float>* %745, i32 4, <8 x i1> %729), !tbaa !12, !alias.scope !293, !llvm.access.group !27
  %746 = or <8 x i64> %broadcast.splat490, <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %747 = trunc <8 x i64> %746 to <8 x i32>
  %748 = icmp sgt <8 x i32> %broadcast.splat492, %747
  %wide.masked.gather495.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %748, <8 x float> undef), !tbaa !12, !alias.scope !290, !noalias !293
  %749 = extractelement <8 x i64> %746, i32 0
  %750 = shl i64 %749, 32
  %751 = ashr exact i64 %750, 32
  %752 = getelementptr inbounds float, float* %9, i64 %751
  %753 = bitcast float* %752 to <8 x float>*
  %wide.masked.load496.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %753, i32 4, <8 x i1> %748, <8 x float> undef), !tbaa !12, !alias.scope !295, !noalias !293
  %wide.masked.gather499.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %748, <8 x float> undef), !tbaa !12, !alias.scope !297, !noalias !293
  %754 = getelementptr inbounds float, float* %12, i64 %751
  %755 = bitcast float* %754 to <8 x float>*
  %wide.masked.load500.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %755, i32 4, <8 x i1> %748, <8 x float> undef), !tbaa !12, !alias.scope !299, !noalias !293
  %756 = fmul <8 x float> %wide.masked.gather499.1, %wide.masked.load500.1
  %757 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495.1, <8 x float> %wide.masked.load496.1, <8 x float> %756)
  %758 = extractelement <8 x i32> %747, i32 0
  %759 = add nsw i32 %mul.i.i.7, %758
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds float, float* %6, i64 %760
  %762 = bitcast float* %761 to <8 x float>*
  %wide.masked.load501.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %762, i32 4, <8 x i1> %748, <8 x float> undef), !tbaa !12, !alias.scope !293
  %763 = fadd <8 x float> %wide.masked.load501.1, %757
  %764 = bitcast float* %761 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %763, <8 x float>* %764, i32 4, <8 x i1> %748), !tbaa !12, !alias.scope !293, !llvm.access.group !27
  %765 = or <8 x i64> %broadcast.splat490, <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>
  %766 = trunc <8 x i64> %765 to <8 x i32>
  %767 = icmp sgt <8 x i32> %broadcast.splat492, %766
  %wide.masked.gather495.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %767, <8 x float> undef), !tbaa !12, !alias.scope !290, !noalias !293
  %768 = extractelement <8 x i64> %765, i32 0
  %769 = shl i64 %768, 32
  %770 = ashr exact i64 %769, 32
  %771 = getelementptr inbounds float, float* %9, i64 %770
  %772 = bitcast float* %771 to <8 x float>*
  %wide.masked.load496.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %772, i32 4, <8 x i1> %767, <8 x float> undef), !tbaa !12, !alias.scope !295, !noalias !293
  %wide.masked.gather499.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %767, <8 x float> undef), !tbaa !12, !alias.scope !297, !noalias !293
  %773 = getelementptr inbounds float, float* %12, i64 %770
  %774 = bitcast float* %773 to <8 x float>*
  %wide.masked.load500.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %774, i32 4, <8 x i1> %767, <8 x float> undef), !tbaa !12, !alias.scope !299, !noalias !293
  %775 = fmul <8 x float> %wide.masked.gather499.2, %wide.masked.load500.2
  %776 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495.2, <8 x float> %wide.masked.load496.2, <8 x float> %775)
  %777 = extractelement <8 x i32> %766, i32 0
  %778 = add nsw i32 %mul.i.i.7, %777
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds float, float* %6, i64 %779
  %781 = bitcast float* %780 to <8 x float>*
  %wide.masked.load501.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %781, i32 4, <8 x i1> %767, <8 x float> undef), !tbaa !12, !alias.scope !293
  %782 = fadd <8 x float> %wide.masked.load501.2, %776
  %783 = bitcast float* %780 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %782, <8 x float>* %783, i32 4, <8 x i1> %767), !tbaa !12, !alias.scope !293, !llvm.access.group !27
  %784 = or <8 x i64> %broadcast.splat490, <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  %785 = trunc <8 x i64> %784 to <8 x i32>
  %786 = icmp sgt <8 x i32> %broadcast.splat492, %785
  %wide.masked.gather495.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat494, i32 4, <8 x i1> %786, <8 x float> undef), !tbaa !12, !alias.scope !290, !noalias !293
  %787 = extractelement <8 x i64> %784, i32 0
  %788 = shl i64 %787, 32
  %789 = ashr exact i64 %788, 32
  %790 = getelementptr inbounds float, float* %9, i64 %789
  %791 = bitcast float* %790 to <8 x float>*
  %wide.masked.load496.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %791, i32 4, <8 x i1> %786, <8 x float> undef), !tbaa !12, !alias.scope !295, !noalias !293
  %wide.masked.gather499.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat498, i32 4, <8 x i1> %786, <8 x float> undef), !tbaa !12, !alias.scope !297, !noalias !293
  %792 = getelementptr inbounds float, float* %12, i64 %789
  %793 = bitcast float* %792 to <8 x float>*
  %wide.masked.load500.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %793, i32 4, <8 x i1> %786, <8 x float> undef), !tbaa !12, !alias.scope !299, !noalias !293
  %794 = fmul <8 x float> %wide.masked.gather499.3, %wide.masked.load500.3
  %795 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather495.3, <8 x float> %wide.masked.load496.3, <8 x float> %794)
  %796 = extractelement <8 x i32> %785, i32 0
  %797 = add nsw i32 %mul.i.i.7, %796
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds float, float* %6, i64 %798
  %800 = bitcast float* %799 to <8 x float>*
  %wide.masked.load501.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %800, i32 4, <8 x i1> %786, <8 x float> undef), !tbaa !12, !alias.scope !293
  %801 = fadd <8 x float> %wide.masked.load501.3, %795
  %802 = bitcast float* %799 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %801, <8 x float>* %802, i32 4, <8 x i1> %786), !tbaa !12, !alias.scope !293, !llvm.access.group !27
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.r_exit.i.i.us.7.1, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ], [ %816, %if.end.r_exit.i.i.us.7.1 ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %conv.i.i.us.7 = trunc i64 %add1.i.i.i.us.7 to i32
  %cmp4.i.i.us.7 = icmp sgt i32 %22, %conv.i.i.us.7
  br i1 %cmp4.i.i.us.7, label %if.then.i.i.us.7, label %if.end.r_exit.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %803 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12
  %sext26.i.i.us.7 = shl i64 %add1.i.i.i.us.7, 32
  %idxprom6.i.i.us.7 = ashr exact i64 %sext26.i.i.us.7, 32
  %arrayidx7.i.i.us.7 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.7
  %804 = load float, float* %arrayidx7.i.i.us.7, align 4, !tbaa !12
  %805 = load float, float* %arrayidx9.i.i.7, align 4, !tbaa !12
  %arrayidx11.i.i.us.7 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.7
  %806 = load float, float* %arrayidx11.i.i.us.7, align 4, !tbaa !12
  %mul12.i.i.us.7 = fmul float %805, %806
  %807 = tail call float @llvm.fmuladd.f32(float %803, float %804, float %mul12.i.i.us.7) #6
  %add.i.i.us.7 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7
  %idxprom13.i.i.us.7 = sext i32 %add.i.i.us.7 to i64
  %arrayidx14.i.i.us.7 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.7
  %808 = load float, float* %arrayidx14.i.i.us.7, align 4, !tbaa !12
  %add15.i.i.us.7 = fadd float %808, %807
  store float %add15.i.i.us.7, float* %arrayidx14.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.7

if.end.r_exit.i.i.us.7:                           ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %809 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %809, %mul.i.i.i
  %conv.i.i.us.7.1 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %cmp4.i.i.us.7.1 = icmp sgt i32 %22, %conv.i.i.us.7.1
  br i1 %cmp4.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.r_exit.i.i.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.r_exit.i.i.us.7.1
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph482, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.7.1:                               ; preds = %if.end.r_exit.i.i.us.7
  %810 = load float, float* %arrayidx.i.i.7, align 4, !tbaa !12
  %sext26.i.i.us.7.1 = shl i64 %add1.i.i.i.us.7.1, 32
  %idxprom6.i.i.us.7.1 = ashr exact i64 %sext26.i.i.us.7.1, 32
  %arrayidx7.i.i.us.7.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.7.1
  %811 = load float, float* %arrayidx7.i.i.us.7.1, align 4, !tbaa !12
  %812 = load float, float* %arrayidx9.i.i.7, align 4, !tbaa !12
  %arrayidx11.i.i.us.7.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.7.1
  %813 = load float, float* %arrayidx11.i.i.us.7.1, align 4, !tbaa !12
  %mul12.i.i.us.7.1 = fmul float %812, %813
  %814 = tail call float @llvm.fmuladd.f32(float %810, float %811, float %mul12.i.i.us.7.1) #6
  %add.i.i.us.7.1 = add nsw i32 %mul.i.i.7, %conv.i.i.us.7.1
  %idxprom13.i.i.us.7.1 = sext i32 %add.i.i.us.7.1 to i64
  %arrayidx14.i.i.us.7.1 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.7.1
  %815 = load float, float* %arrayidx14.i.i.us.7.1, align 4, !tbaa !12
  %add15.i.i.us.7.1 = fadd float %815, %814
  store float %add15.i.i.us.7.1, float* %arrayidx14.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.7.1

if.end.r_exit.i.i.us.7.1:                         ; preds = %if.then.i.i.us.7.1, %if.end.r_exit.i.i.us.7
  %816 = add nuw nsw i64 %_local_id_x.i.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %816, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !301

if.then.i.i.us.6.1:                               ; preds = %if.end.r_exit.i.i.us.6
  %817 = load float, float* %arrayidx.i.i.6, align 4, !tbaa !12
  %sext26.i.i.us.6.1 = shl i64 %add1.i.i.i.us.6.1, 32
  %idxprom6.i.i.us.6.1 = ashr exact i64 %sext26.i.i.us.6.1, 32
  %arrayidx7.i.i.us.6.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.6.1
  %818 = load float, float* %arrayidx7.i.i.us.6.1, align 4, !tbaa !12
  %819 = load float, float* %arrayidx9.i.i.6, align 4, !tbaa !12
  %arrayidx11.i.i.us.6.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.6.1
  %820 = load float, float* %arrayidx11.i.i.us.6.1, align 4, !tbaa !12
  %mul12.i.i.us.6.1 = fmul float %819, %820
  %821 = tail call float @llvm.fmuladd.f32(float %817, float %818, float %mul12.i.i.us.6.1) #6
  %add.i.i.us.6.1 = add nsw i32 %mul.i.i.6, %conv.i.i.us.6.1
  %idxprom13.i.i.us.6.1 = sext i32 %add.i.i.us.6.1 to i64
  %arrayidx14.i.i.us.6.1 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.6.1
  %822 = load float, float* %arrayidx14.i.i.us.6.1, align 4, !tbaa !12
  %add15.i.i.us.6.1 = fadd float %822, %821
  store float %add15.i.i.us.6.1, float* %arrayidx14.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.6.1

if.end.r_exit.i.i.us.6.1:                         ; preds = %if.then.i.i.us.6.1, %if.end.r_exit.i.i.us.6
  %823 = add nuw nsw i64 %_local_id_x.i.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %823, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !302

if.then.i.i.us.5.1:                               ; preds = %if.end.r_exit.i.i.us.5
  %824 = load float, float* %arrayidx.i.i.5, align 4, !tbaa !12
  %sext26.i.i.us.5.1 = shl i64 %add1.i.i.i.us.5.1, 32
  %idxprom6.i.i.us.5.1 = ashr exact i64 %sext26.i.i.us.5.1, 32
  %arrayidx7.i.i.us.5.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.5.1
  %825 = load float, float* %arrayidx7.i.i.us.5.1, align 4, !tbaa !12
  %826 = load float, float* %arrayidx9.i.i.5, align 4, !tbaa !12
  %arrayidx11.i.i.us.5.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.5.1
  %827 = load float, float* %arrayidx11.i.i.us.5.1, align 4, !tbaa !12
  %mul12.i.i.us.5.1 = fmul float %826, %827
  %828 = tail call float @llvm.fmuladd.f32(float %824, float %825, float %mul12.i.i.us.5.1) #6
  %add.i.i.us.5.1 = add nsw i32 %mul.i.i.5, %conv.i.i.us.5.1
  %idxprom13.i.i.us.5.1 = sext i32 %add.i.i.us.5.1 to i64
  %arrayidx14.i.i.us.5.1 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.5.1
  %829 = load float, float* %arrayidx14.i.i.us.5.1, align 4, !tbaa !12
  %add15.i.i.us.5.1 = fadd float %829, %828
  store float %add15.i.i.us.5.1, float* %arrayidx14.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.5.1

if.end.r_exit.i.i.us.5.1:                         ; preds = %if.then.i.i.us.5.1, %if.end.r_exit.i.i.us.5
  %830 = add nuw nsw i64 %_local_id_x.i.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %830, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !303

if.then.i.i.us.4.1:                               ; preds = %if.end.r_exit.i.i.us.4
  %831 = load float, float* %arrayidx.i.i.4, align 4, !tbaa !12
  %sext26.i.i.us.4.1 = shl i64 %add1.i.i.i.us.4.1, 32
  %idxprom6.i.i.us.4.1 = ashr exact i64 %sext26.i.i.us.4.1, 32
  %arrayidx7.i.i.us.4.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.4.1
  %832 = load float, float* %arrayidx7.i.i.us.4.1, align 4, !tbaa !12
  %833 = load float, float* %arrayidx9.i.i.4, align 4, !tbaa !12
  %arrayidx11.i.i.us.4.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.4.1
  %834 = load float, float* %arrayidx11.i.i.us.4.1, align 4, !tbaa !12
  %mul12.i.i.us.4.1 = fmul float %833, %834
  %835 = tail call float @llvm.fmuladd.f32(float %831, float %832, float %mul12.i.i.us.4.1) #6
  %add.i.i.us.4.1 = add nsw i32 %mul.i.i.4, %conv.i.i.us.4.1
  %idxprom13.i.i.us.4.1 = sext i32 %add.i.i.us.4.1 to i64
  %arrayidx14.i.i.us.4.1 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.4.1
  %836 = load float, float* %arrayidx14.i.i.us.4.1, align 4, !tbaa !12
  %add15.i.i.us.4.1 = fadd float %836, %835
  store float %add15.i.i.us.4.1, float* %arrayidx14.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.4.1

if.end.r_exit.i.i.us.4.1:                         ; preds = %if.then.i.i.us.4.1, %if.end.r_exit.i.i.us.4
  %837 = add nuw nsw i64 %_local_id_x.i.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %837, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !304

if.then.i.i.us.3.1:                               ; preds = %if.end.r_exit.i.i.us.3
  %838 = load float, float* %arrayidx.i.i.3, align 4, !tbaa !12
  %sext26.i.i.us.3.1 = shl i64 %add1.i.i.i.us.3.1, 32
  %idxprom6.i.i.us.3.1 = ashr exact i64 %sext26.i.i.us.3.1, 32
  %arrayidx7.i.i.us.3.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.3.1
  %839 = load float, float* %arrayidx7.i.i.us.3.1, align 4, !tbaa !12
  %840 = load float, float* %arrayidx9.i.i.3, align 4, !tbaa !12
  %arrayidx11.i.i.us.3.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.3.1
  %841 = load float, float* %arrayidx11.i.i.us.3.1, align 4, !tbaa !12
  %mul12.i.i.us.3.1 = fmul float %840, %841
  %842 = tail call float @llvm.fmuladd.f32(float %838, float %839, float %mul12.i.i.us.3.1) #6
  %add.i.i.us.3.1 = add nsw i32 %mul.i.i.3, %conv.i.i.us.3.1
  %idxprom13.i.i.us.3.1 = sext i32 %add.i.i.us.3.1 to i64
  %arrayidx14.i.i.us.3.1 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.3.1
  %843 = load float, float* %arrayidx14.i.i.us.3.1, align 4, !tbaa !12
  %add15.i.i.us.3.1 = fadd float %843, %842
  store float %add15.i.i.us.3.1, float* %arrayidx14.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.3.1

if.end.r_exit.i.i.us.3.1:                         ; preds = %if.then.i.i.us.3.1, %if.end.r_exit.i.i.us.3
  %844 = add nuw nsw i64 %_local_id_x.i.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %844, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !305

if.then.i.i.us.2.1:                               ; preds = %if.end.r_exit.i.i.us.2
  %845 = load float, float* %arrayidx.i.i.2, align 4, !tbaa !12
  %sext26.i.i.us.2.1 = shl i64 %add1.i.i.i.us.2.1, 32
  %idxprom6.i.i.us.2.1 = ashr exact i64 %sext26.i.i.us.2.1, 32
  %arrayidx7.i.i.us.2.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.2.1
  %846 = load float, float* %arrayidx7.i.i.us.2.1, align 4, !tbaa !12
  %847 = load float, float* %arrayidx9.i.i.2, align 4, !tbaa !12
  %arrayidx11.i.i.us.2.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.2.1
  %848 = load float, float* %arrayidx11.i.i.us.2.1, align 4, !tbaa !12
  %mul12.i.i.us.2.1 = fmul float %847, %848
  %849 = tail call float @llvm.fmuladd.f32(float %845, float %846, float %mul12.i.i.us.2.1) #6
  %add.i.i.us.2.1 = add nsw i32 %mul.i.i.2, %conv.i.i.us.2.1
  %idxprom13.i.i.us.2.1 = sext i32 %add.i.i.us.2.1 to i64
  %arrayidx14.i.i.us.2.1 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.2.1
  %850 = load float, float* %arrayidx14.i.i.us.2.1, align 4, !tbaa !12
  %add15.i.i.us.2.1 = fadd float %850, %849
  store float %add15.i.i.us.2.1, float* %arrayidx14.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.2.1

if.end.r_exit.i.i.us.2.1:                         ; preds = %if.then.i.i.us.2.1, %if.end.r_exit.i.i.us.2
  %851 = add nuw nsw i64 %_local_id_x.i.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %851, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !306

if.then.i.i.us.1.1:                               ; preds = %if.end.r_exit.i.i.us.1
  %852 = load float, float* %arrayidx.i.i.1, align 4, !tbaa !12
  %sext26.i.i.us.1.1 = shl i64 %add1.i.i.i.us.1.1, 32
  %idxprom6.i.i.us.1.1 = ashr exact i64 %sext26.i.i.us.1.1, 32
  %arrayidx7.i.i.us.1.1 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.1.1
  %853 = load float, float* %arrayidx7.i.i.us.1.1, align 4, !tbaa !12
  %854 = load float, float* %arrayidx9.i.i.1, align 4, !tbaa !12
  %arrayidx11.i.i.us.1.1 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.1.1
  %855 = load float, float* %arrayidx11.i.i.us.1.1, align 4, !tbaa !12
  %mul12.i.i.us.1.1 = fmul float %854, %855
  %856 = tail call float @llvm.fmuladd.f32(float %852, float %853, float %mul12.i.i.us.1.1) #6
  %add.i.i.us.1.1 = add nsw i32 %mul.i.i.1, %conv.i.i.us.1.1
  %idxprom13.i.i.us.1.1 = sext i32 %add.i.i.us.1.1 to i64
  %arrayidx14.i.i.us.1.1 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.1.1
  %857 = load float, float* %arrayidx14.i.i.us.1.1, align 4, !tbaa !12
  %add15.i.i.us.1.1 = fadd float %857, %856
  store float %add15.i.i.us.1.1, float* %arrayidx14.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.1.1

if.end.r_exit.i.i.us.1.1:                         ; preds = %if.then.i.i.us.1.1, %if.end.r_exit.i.i.us.1
  %858 = add nuw nsw i64 %_local_id_x.i.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %858, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !307

if.then.i.i.us.1531:                              ; preds = %if.end.r_exit.i.i.us
  %859 = load float, float* %arrayidx.i.i, align 4, !tbaa !12
  %sext26.i.i.us.1522 = shl i64 %add1.i.i.i.us.1518, 32
  %idxprom6.i.i.us.1523 = ashr exact i64 %sext26.i.i.us.1522, 32
  %arrayidx7.i.i.us.1524 = getelementptr inbounds float, float* %9, i64 %idxprom6.i.i.us.1523
  %860 = load float, float* %arrayidx7.i.i.us.1524, align 4, !tbaa !12
  %861 = load float, float* %arrayidx9.i.i, align 4, !tbaa !12
  %arrayidx11.i.i.us.1525 = getelementptr inbounds float, float* %12, i64 %idxprom6.i.i.us.1523
  %862 = load float, float* %arrayidx11.i.i.us.1525, align 4, !tbaa !12
  %mul12.i.i.us.1526 = fmul float %861, %862
  %863 = tail call float @llvm.fmuladd.f32(float %859, float %860, float %mul12.i.i.us.1526) #6
  %add.i.i.us.1527 = add nsw i32 %mul.i.i, %conv.i.i.us.1519
  %idxprom13.i.i.us.1528 = sext i32 %add.i.i.us.1527 to i64
  %arrayidx14.i.i.us.1529 = getelementptr inbounds float, float* %6, i64 %idxprom13.i.i.us.1528
  %864 = load float, float* %arrayidx14.i.i.us.1529, align 4, !tbaa !12
  %add15.i.i.us.1530 = fadd float %864, %863
  store float %add15.i.i.us.1530, float* %arrayidx14.i.i.us.1529, align 4, !tbaa !12, !llvm.access.group !27
  br label %if.end.r_exit.i.i.us.1532

if.end.r_exit.i.i.us.1532:                        ; preds = %if.then.i.i.us.1531, %if.end.r_exit.i.i.us
  %865 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %865, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !308
}

; Function Attrs: nounwind readonly willreturn
declare <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*>, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #5

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { argmemonly nounwind readonly willreturn }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"int"}
!9 = !{!"", !"", !"", !"", !"", !""}
!10 = !{!"A", !"V1", !"V2", !"U1", !"U2", !"n"}
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
!22 = distinct !{!22, !18}
!23 = !{!24}
!24 = distinct !{!24, !18}
!25 = !{!26}
!26 = distinct !{!26, !18}
!27 = !{!28, !29}
!28 = distinct !{}
!29 = distinct !{}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = !{!36}
!36 = distinct !{!36, !32}
!37 = !{!38}
!38 = distinct !{!38, !32}
!39 = !{!40}
!40 = distinct !{!40, !32}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = !{!47}
!47 = distinct !{!47, !43}
!48 = !{!49}
!49 = distinct !{!49, !43}
!50 = !{!51}
!51 = distinct !{!51, !43}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = !{!58}
!58 = distinct !{!58, !54}
!59 = !{!60}
!60 = distinct !{!60, !54}
!61 = !{!62}
!62 = distinct !{!62, !54}
!63 = !{!64}
!64 = distinct !{!64, !65}
!65 = distinct !{!65, !"LVerDomain"}
!66 = !{!67}
!67 = distinct !{!67, !65}
!68 = !{!69}
!69 = distinct !{!69, !65}
!70 = !{!71}
!71 = distinct !{!71, !65}
!72 = !{!73}
!73 = distinct !{!73, !65}
!74 = !{!75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = !{!78}
!78 = distinct !{!78, !76}
!79 = !{!80}
!80 = distinct !{!80, !76}
!81 = !{!82}
!82 = distinct !{!82, !76}
!83 = !{!84}
!84 = distinct !{!84, !76}
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!89}
!89 = distinct !{!89, !87}
!90 = !{!91}
!91 = distinct !{!91, !87}
!92 = !{!93}
!93 = distinct !{!93, !87}
!94 = !{!95}
!95 = distinct !{!95, !87}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = !{!102}
!102 = distinct !{!102, !98}
!103 = !{!104}
!104 = distinct !{!104, !98}
!105 = !{!106}
!106 = distinct !{!106, !98}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.parallel_accesses", !28}
!109 = !{!"llvm.loop.isvectorized", i32 1}
!110 = distinct !{!110, !108, !109}
!111 = distinct !{!111, !108, !109}
!112 = distinct !{!112, !108, !109}
!113 = distinct !{!113, !108, !109}
!114 = distinct !{!114, !108, !109}
!115 = distinct !{!115, !108, !109}
!116 = distinct !{!116, !108, !109}
!117 = !{!118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, !"LVerDomain"}
!120 = !{!121}
!121 = distinct !{!121, !119}
!122 = !{!123}
!123 = distinct !{!123, !119}
!124 = !{!125}
!125 = distinct !{!125, !119}
!126 = !{!127}
!127 = distinct !{!127, !119}
!128 = !{!129}
!129 = distinct !{!129, !130}
!130 = distinct !{!130, !"LVerDomain"}
!131 = !{!132}
!132 = distinct !{!132, !130}
!133 = !{!134}
!134 = distinct !{!134, !130}
!135 = !{!136}
!136 = distinct !{!136, !130}
!137 = !{!138}
!138 = distinct !{!138, !130}
!139 = !{!140}
!140 = distinct !{!140, !141}
!141 = distinct !{!141, !"LVerDomain"}
!142 = !{!143}
!143 = distinct !{!143, !141}
!144 = !{!145}
!145 = distinct !{!145, !141}
!146 = !{!147}
!147 = distinct !{!147, !141}
!148 = !{!149}
!149 = distinct !{!149, !141}
!150 = !{!151}
!151 = distinct !{!151, !152}
!152 = distinct !{!152, !"LVerDomain"}
!153 = !{!154}
!154 = distinct !{!154, !152}
!155 = !{!156}
!156 = distinct !{!156, !152}
!157 = !{!158}
!158 = distinct !{!158, !152}
!159 = !{!160}
!160 = distinct !{!160, !152}
!161 = !{!162}
!162 = distinct !{!162, !163}
!163 = distinct !{!163, !"LVerDomain"}
!164 = !{!165}
!165 = distinct !{!165, !163}
!166 = !{!167}
!167 = distinct !{!167, !163}
!168 = !{!169}
!169 = distinct !{!169, !163}
!170 = !{!171}
!171 = distinct !{!171, !163}
!172 = !{!173}
!173 = distinct !{!173, !174}
!174 = distinct !{!174, !"LVerDomain"}
!175 = !{!176}
!176 = distinct !{!176, !174}
!177 = !{!178}
!178 = distinct !{!178, !174}
!179 = !{!180}
!180 = distinct !{!180, !174}
!181 = !{!182}
!182 = distinct !{!182, !174}
!183 = !{!184}
!184 = distinct !{!184, !185}
!185 = distinct !{!185, !"LVerDomain"}
!186 = !{!187}
!187 = distinct !{!187, !185}
!188 = !{!189}
!189 = distinct !{!189, !185}
!190 = !{!191}
!191 = distinct !{!191, !185}
!192 = !{!193}
!193 = distinct !{!193, !185}
!194 = !{!195}
!195 = distinct !{!195, !196}
!196 = distinct !{!196, !"LVerDomain"}
!197 = !{!198}
!198 = distinct !{!198, !196}
!199 = !{!200}
!200 = distinct !{!200, !196}
!201 = !{!202}
!202 = distinct !{!202, !196}
!203 = !{!204}
!204 = distinct !{!204, !196}
!205 = distinct !{!205, !108, !109}
!206 = distinct !{!206, !108, !109}
!207 = distinct !{!207, !108, !109}
!208 = distinct !{!208, !108, !109}
!209 = distinct !{!209, !108, !109}
!210 = distinct !{!210, !108, !109}
!211 = distinct !{!211, !108, !109}
!212 = distinct !{!212, !108, !109}
!213 = !{!214}
!214 = distinct !{!214, !215}
!215 = distinct !{!215, !"LVerDomain"}
!216 = !{!217}
!217 = distinct !{!217, !215}
!218 = !{!219}
!219 = distinct !{!219, !215}
!220 = !{!221}
!221 = distinct !{!221, !215}
!222 = !{!223}
!223 = distinct !{!223, !215}
!224 = !{!225}
!225 = distinct !{!225, !226}
!226 = distinct !{!226, !"LVerDomain"}
!227 = !{!228}
!228 = distinct !{!228, !226}
!229 = !{!230}
!230 = distinct !{!230, !226}
!231 = !{!232}
!232 = distinct !{!232, !226}
!233 = !{!234}
!234 = distinct !{!234, !226}
!235 = !{!236}
!236 = distinct !{!236, !237}
!237 = distinct !{!237, !"LVerDomain"}
!238 = !{!239}
!239 = distinct !{!239, !237}
!240 = !{!241}
!241 = distinct !{!241, !237}
!242 = !{!243}
!243 = distinct !{!243, !237}
!244 = !{!245}
!245 = distinct !{!245, !237}
!246 = !{!247}
!247 = distinct !{!247, !248}
!248 = distinct !{!248, !"LVerDomain"}
!249 = !{!250}
!250 = distinct !{!250, !248}
!251 = !{!252}
!252 = distinct !{!252, !248}
!253 = !{!254}
!254 = distinct !{!254, !248}
!255 = !{!256}
!256 = distinct !{!256, !248}
!257 = !{!258}
!258 = distinct !{!258, !259}
!259 = distinct !{!259, !"LVerDomain"}
!260 = !{!261}
!261 = distinct !{!261, !259}
!262 = !{!263}
!263 = distinct !{!263, !259}
!264 = !{!265}
!265 = distinct !{!265, !259}
!266 = !{!267}
!267 = distinct !{!267, !259}
!268 = !{!269}
!269 = distinct !{!269, !270}
!270 = distinct !{!270, !"LVerDomain"}
!271 = !{!272}
!272 = distinct !{!272, !270}
!273 = !{!274}
!274 = distinct !{!274, !270}
!275 = !{!276}
!276 = distinct !{!276, !270}
!277 = !{!278}
!278 = distinct !{!278, !270}
!279 = !{!280}
!280 = distinct !{!280, !281}
!281 = distinct !{!281, !"LVerDomain"}
!282 = !{!283}
!283 = distinct !{!283, !281}
!284 = !{!285}
!285 = distinct !{!285, !281}
!286 = !{!287}
!287 = distinct !{!287, !281}
!288 = !{!289}
!289 = distinct !{!289, !281}
!290 = !{!291}
!291 = distinct !{!291, !292}
!292 = distinct !{!292, !"LVerDomain"}
!293 = !{!294}
!294 = distinct !{!294, !292}
!295 = !{!296}
!296 = distinct !{!296, !292}
!297 = !{!298}
!298 = distinct !{!298, !292}
!299 = !{!300}
!300 = distinct !{!300, !292}
!301 = distinct !{!301, !108, !109}
!302 = distinct !{!302, !108, !109}
!303 = distinct !{!303, !108, !109}
!304 = distinct !{!304, !108, !109}
!305 = distinct !{!305, !108, !109}
!306 = distinct !{!306, !108, !109}
!307 = distinct !{!307, !108, !109}
!308 = distinct !{!308, !108, !109}
