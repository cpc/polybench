; ModuleID = './AH/OFKPFPHEIHFOOLEHKEIHHOHEKJAJACOLOPAPI/lu_kernel2/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_lu_kernel2(float* nocapture %0, i32 %1, i32 %2, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %3, i64 %4, i64 %5, i64 %6) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
pregion_for_entry.pregion_for_init.i:
  %mul.i.i = shl i64 %4, 5
  %add.i = add nsw i32 %1, 1
  %mul3.i.i = shl i64 %5, 3
  %mul16.i = mul nsw i32 %2, %1
  %7 = trunc i64 %mul3.i.i to i32
  %conv7.i = add i32 %add.i, %7
  %cmp.i = icmp slt i32 %conv7.i, %2
  %mul.i = mul nsw i32 %conv7.i, %2
  %add13.i = add nsw i32 %mul.i, %1
  %idxprom14.i = sext i32 %add13.i to i64
  %arrayidx15.i = getelementptr inbounds float, float* %0, i64 %idxprom14.i
  br i1 %cmp.i, label %vector.scevcheck, label %pregion_for_end.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i
  %8 = mul i32 %conv7.i, %2
  %9 = add i32 %8, %1
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 5
  %12 = add i32 %9, %11
  %13 = add i32 %12, 1
  %14 = add i32 %12, 32
  %15 = icmp slt i32 %14, %13
  %16 = add i32 %2, 1
  %17 = mul i32 %16, %1
  %18 = add i32 %17, %11
  %19 = add i32 %18, 1
  %20 = add i32 %18, 32
  %21 = icmp slt i32 %20, %19
  %22 = or i1 %15, %21
  br i1 %22, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %23 = mul i32 %conv7.i, %2
  %24 = add i32 %23, %1
  %25 = trunc i64 %4 to i32
  %26 = shl i32 %25, 5
  %27 = add i32 %24, %26
  %28 = add i32 %27, 1
  %29 = sext i32 %28 to i64
  %scevgep = getelementptr float, float* %0, i64 %29
  %scevgep6 = bitcast float* %scevgep to i8*
  %30 = add nsw i64 %29, 32
  %scevgep7 = getelementptr float, float* %0, i64 %30
  %scevgep9 = getelementptr float, float* %0, i64 %idxprom14.i
  %scevgep910 = bitcast float* %scevgep9 to i8*
  %uglygep = getelementptr i8, i8* %scevgep910, i64 1
  %31 = add i32 %2, 1
  %32 = mul i32 %31, %1
  %33 = add i32 %32, %26
  %34 = add i32 %33, 1
  %35 = sext i32 %34 to i64
  %scevgep11 = getelementptr float, float* %0, i64 %35
  %36 = add nsw i64 %35, 32
  %scevgep13 = getelementptr float, float* %0, i64 %36
  %bound0 = icmp ugt i8* %uglygep, %scevgep6
  %bound1 = icmp ult float* %arrayidx15.i, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ult float* %scevgep, %scevgep13
  %bound116 = icmp ult float* %scevgep11, %scevgep7
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x i32> undef, i32 %add.i, i32 0
  %broadcast.splat19 = shufflevector <8 x i32> %broadcast.splatinsert18, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <8 x float*> undef, float* %arrayidx15.i, i32 0
  %broadcast.splat23 = shufflevector <8 x float*> %broadcast.splatinsert22, <8 x float*> undef, <8 x i32> zeroinitializer
  %37 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %38 = or <8 x i32> %37, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %39 = add <8 x i32> %broadcast.splat19, %38
  %40 = icmp slt <8 x i32> %39, %broadcast.splat21
  %41 = extractelement <8 x i32> %39, i32 0
  %42 = add nsw i32 %41, %mul.i
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %0, i64 %43
  %45 = bitcast float* %44 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %45, i32 4, <8 x i1> %40, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %40, <8 x float> undef), !tbaa !12, !alias.scope !22
  %46 = add nsw i32 %41, %mul16.i
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %0, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  %wide.masked.load24 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %49, i32 4, <8 x i1> %40, <8 x float> undef), !tbaa !12, !alias.scope !23
  %50 = fneg <8 x float> %wide.masked.gather
  %51 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %50, <8 x float> %wide.masked.load24, <8 x float> %wide.masked.load)
  %52 = bitcast float* %44 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %51, <8 x float>* %52, i32 4, <8 x i1> %40), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %53 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %54 = or <8 x i32> %53, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %55 = add <8 x i32> %broadcast.splat19, %54
  %56 = icmp slt <8 x i32> %55, %broadcast.splat21
  %57 = extractelement <8 x i32> %55, i32 0
  %58 = add nsw i32 %57, %mul.i
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %0, i64 %59
  %61 = bitcast float* %60 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %61, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !22
  %62 = add nsw i32 %57, %mul16.i
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %0, i64 %63
  %65 = bitcast float* %64 to <8 x float>*
  %wide.masked.load24.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %65, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !23
  %66 = fneg <8 x float> %wide.masked.gather.1
  %67 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %66, <8 x float> %wide.masked.load24.1, <8 x float> %wide.masked.load.1)
  %68 = bitcast float* %60 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %67, <8 x float>* %68, i32 4, <8 x i1> %56), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %69 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %70 = or <8 x i32> %69, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %71 = add <8 x i32> %broadcast.splat19, %70
  %72 = icmp slt <8 x i32> %71, %broadcast.splat21
  %73 = extractelement <8 x i32> %71, i32 0
  %74 = add nsw i32 %73, %mul.i
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %0, i64 %75
  %77 = bitcast float* %76 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %77, i32 4, <8 x i1> %72, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %wide.masked.gather.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %72, <8 x float> undef), !tbaa !12, !alias.scope !22
  %78 = add nsw i32 %73, %mul16.i
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %0, i64 %79
  %81 = bitcast float* %80 to <8 x float>*
  %wide.masked.load24.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %81, i32 4, <8 x i1> %72, <8 x float> undef), !tbaa !12, !alias.scope !23
  %82 = fneg <8 x float> %wide.masked.gather.2
  %83 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %82, <8 x float> %wide.masked.load24.2, <8 x float> %wide.masked.load.2)
  %84 = bitcast float* %76 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %83, <8 x float>* %84, i32 4, <8 x i1> %72), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  %85 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %86 = or <8 x i32> %85, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %87 = add <8 x i32> %broadcast.splat19, %86
  %88 = icmp slt <8 x i32> %87, %broadcast.splat21
  %89 = extractelement <8 x i32> %87, i32 0
  %90 = add nsw i32 %89, %mul.i
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %0, i64 %91
  %93 = bitcast float* %92 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %93, i32 4, <8 x i1> %88, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %wide.masked.gather.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %88, <8 x float> undef), !tbaa !12, !alias.scope !22
  %94 = add nsw i32 %89, %mul16.i
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %0, i64 %95
  %97 = bitcast float* %96 to <8 x float>*
  %wide.masked.load24.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %97, i32 4, <8 x i1> %88, <8 x float> undef), !tbaa !12, !alias.scope !23
  %98 = fneg <8 x float> %wide.masked.gather.3
  %99 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %98, <8 x float> %wide.masked.load24.3, <8 x float> %wide.masked.load.3)
  %100 = bitcast float* %92 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %99, <8 x float>* %100, i32 4, <8 x i1> %88), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !24
  br label %pregion_for_end.i

pregion_for_entry.entry.i.us:                     ; preds = %if.end.r_exit.i.us.1403, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.us.preheader ], [ %861, %if.end.r_exit.i.us.1403 ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %101 = trunc i64 %add1.i.i.us to i32
  %conv2.i.us = add i32 %add.i, %101
  %cmp9.i.us = icmp slt i32 %conv2.i.us, %2
  br i1 %cmp9.i.us, label %if.then.i.us, label %if.end.r_exit.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %add11.i.us = add nsw i32 %conv2.i.us, %mul.i
  %idxprom.i.us = sext i32 %add11.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  %102 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %103 = load float, float* %arrayidx15.i, align 4, !tbaa !12
  %add17.i.us = add nsw i32 %conv2.i.us, %mul16.i
  %idxprom18.i.us = sext i32 %add17.i.us to i64
  %arrayidx19.i.us = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us
  %104 = load float, float* %arrayidx19.i.us, align 4, !tbaa !12
  %neg.i.us = fneg float %103
  %105 = tail call float @llvm.fmuladd.f32(float %neg.i.us, float %104, float %102) #6
  store float %105, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us

if.end.r_exit.i.us:                               ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us
  %106 = or i64 %_local_id_x.0.us, 1
  %add1.i.i.us.1391 = add nuw nsw i64 %106, %mul.i.i
  %107 = trunc i64 %add1.i.i.us.1391 to i32
  %conv2.i.us.1392 = add i32 %add.i, %107
  %cmp9.i.us.1393 = icmp slt i32 %conv2.i.us.1392, %2
  br i1 %cmp9.i.us.1393, label %if.then.i.us.1402, label %if.end.r_exit.i.us.1403

pregion_for_end.i.loopexit:                       ; preds = %if.end.r_exit.i.us.1403
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i
  %108 = trunc i64 %mul3.i.i to i32
  %109 = or i32 %108, 1
  %conv7.i.1 = add i32 %add.i, %109
  %cmp.i.1 = icmp slt i32 %conv7.i.1, %2
  %mul.i.1 = mul nsw i32 %conv7.i.1, %2
  %add13.i.1 = add nsw i32 %mul.i.1, %1
  %idxprom14.i.1 = sext i32 %add13.i.1 to i64
  %arrayidx15.i.1 = getelementptr inbounds float, float* %0, i64 %idxprom14.i.1
  br i1 %cmp.i.1, label %vector.scevcheck35, label %pregion_for_end.i.1

vector.scevcheck35:                               ; preds = %pregion_for_end.i
  %110 = mul i32 %conv7.i.1, %2
  %111 = add i32 %110, %1
  %112 = trunc i64 %4 to i32
  %113 = shl i32 %112, 5
  %114 = add i32 %111, %113
  %115 = add i32 %114, 1
  %116 = add i32 %114, 32
  %117 = icmp slt i32 %116, %115
  %118 = add i32 %2, 1
  %119 = mul i32 %118, %1
  %120 = add i32 %119, %113
  %121 = add i32 %120, 1
  %122 = add i32 %120, 32
  %123 = icmp slt i32 %122, %121
  %124 = or i1 %117, %123
  br i1 %124, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.memcheck57

pregion_for_entry.entry.i.us.1.preheader:         ; preds = %vector.memcheck57, %vector.scevcheck35
  br label %pregion_for_entry.entry.i.us.1

vector.memcheck57:                                ; preds = %vector.scevcheck35
  %125 = mul i32 %conv7.i.1, %2
  %126 = add i32 %125, %1
  %127 = trunc i64 %4 to i32
  %128 = shl i32 %127, 5
  %129 = add i32 %126, %128
  %130 = add i32 %129, 1
  %131 = sext i32 %130 to i64
  %scevgep37 = getelementptr float, float* %0, i64 %131
  %scevgep3738 = bitcast float* %scevgep37 to i8*
  %132 = add nsw i64 %131, 32
  %scevgep39 = getelementptr float, float* %0, i64 %132
  %scevgep41 = getelementptr float, float* %0, i64 %idxprom14.i.1
  %scevgep4142 = bitcast float* %scevgep41 to i8*
  %uglygep43 = getelementptr i8, i8* %scevgep4142, i64 1
  %133 = add i32 %2, 1
  %134 = mul i32 %133, %1
  %135 = add i32 %134, %128
  %136 = add i32 %135, 1
  %137 = sext i32 %136 to i64
  %scevgep44 = getelementptr float, float* %0, i64 %137
  %138 = add nsw i64 %137, 32
  %scevgep46 = getelementptr float, float* %0, i64 %138
  %bound049 = icmp ugt i8* %uglygep43, %scevgep3738
  %bound150 = icmp ult float* %arrayidx15.i.1, %scevgep39
  %found.conflict51 = and i1 %bound049, %bound150
  %bound052 = icmp ult float* %scevgep37, %scevgep46
  %bound153 = icmp ult float* %scevgep44, %scevgep39
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %found.conflict51, %found.conflict54
  br i1 %conflict.rdx55, label %pregion_for_entry.entry.i.us.1.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %vector.memcheck57
  %broadcast.splatinsert65 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat66 = shufflevector <8 x i64> %broadcast.splatinsert65, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <8 x i32> undef, i32 %add.i, i32 0
  %broadcast.splat68 = shufflevector <8 x i32> %broadcast.splatinsert67, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat70 = shufflevector <8 x i32> %broadcast.splatinsert69, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert72 = insertelement <8 x float*> undef, float* %arrayidx15.i.1, i32 0
  %broadcast.splat73 = shufflevector <8 x float*> %broadcast.splatinsert72, <8 x float*> undef, <8 x i32> zeroinitializer
  %139 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %140 = or <8 x i32> %139, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %141 = add <8 x i32> %broadcast.splat68, %140
  %142 = icmp slt <8 x i32> %141, %broadcast.splat70
  %143 = extractelement <8 x i32> %141, i32 0
  %144 = add nsw i32 %143, %mul.i.1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %0, i64 %145
  %147 = bitcast float* %146 to <8 x float>*
  %wide.masked.load71 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %147, i32 4, <8 x i1> %142, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %wide.masked.gather74 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %142, <8 x float> undef), !tbaa !12, !alias.scope !33
  %148 = add nsw i32 %143, %mul16.i
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %0, i64 %149
  %151 = bitcast float* %150 to <8 x float>*
  %wide.masked.load75 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %151, i32 4, <8 x i1> %142, <8 x float> undef), !tbaa !12, !alias.scope !34
  %152 = fneg <8 x float> %wide.masked.gather74
  %153 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %152, <8 x float> %wide.masked.load75, <8 x float> %wide.masked.load71)
  %154 = bitcast float* %146 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %153, <8 x float>* %154, i32 4, <8 x i1> %142), !tbaa !12, !alias.scope !27, !noalias !30, !llvm.access.group !24
  %155 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %156 = or <8 x i32> %155, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %157 = add <8 x i32> %broadcast.splat68, %156
  %158 = icmp slt <8 x i32> %157, %broadcast.splat70
  %159 = extractelement <8 x i32> %157, i32 0
  %160 = add nsw i32 %159, %mul.i.1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %0, i64 %161
  %163 = bitcast float* %162 to <8 x float>*
  %wide.masked.load71.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %163, i32 4, <8 x i1> %158, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %wide.masked.gather74.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %158, <8 x float> undef), !tbaa !12, !alias.scope !33
  %164 = add nsw i32 %159, %mul16.i
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %0, i64 %165
  %167 = bitcast float* %166 to <8 x float>*
  %wide.masked.load75.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %167, i32 4, <8 x i1> %158, <8 x float> undef), !tbaa !12, !alias.scope !34
  %168 = fneg <8 x float> %wide.masked.gather74.1
  %169 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %168, <8 x float> %wide.masked.load75.1, <8 x float> %wide.masked.load71.1)
  %170 = bitcast float* %162 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %169, <8 x float>* %170, i32 4, <8 x i1> %158), !tbaa !12, !alias.scope !27, !noalias !30, !llvm.access.group !24
  %171 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %172 = or <8 x i32> %171, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %173 = add <8 x i32> %broadcast.splat68, %172
  %174 = icmp slt <8 x i32> %173, %broadcast.splat70
  %175 = extractelement <8 x i32> %173, i32 0
  %176 = add nsw i32 %175, %mul.i.1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %0, i64 %177
  %179 = bitcast float* %178 to <8 x float>*
  %wide.masked.load71.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %179, i32 4, <8 x i1> %174, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %wide.masked.gather74.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %174, <8 x float> undef), !tbaa !12, !alias.scope !33
  %180 = add nsw i32 %175, %mul16.i
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %0, i64 %181
  %183 = bitcast float* %182 to <8 x float>*
  %wide.masked.load75.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %183, i32 4, <8 x i1> %174, <8 x float> undef), !tbaa !12, !alias.scope !34
  %184 = fneg <8 x float> %wide.masked.gather74.2
  %185 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %184, <8 x float> %wide.masked.load75.2, <8 x float> %wide.masked.load71.2)
  %186 = bitcast float* %178 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %185, <8 x float>* %186, i32 4, <8 x i1> %174), !tbaa !12, !alias.scope !27, !noalias !30, !llvm.access.group !24
  %187 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %188 = or <8 x i32> %187, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %189 = add <8 x i32> %broadcast.splat68, %188
  %190 = icmp slt <8 x i32> %189, %broadcast.splat70
  %191 = extractelement <8 x i32> %189, i32 0
  %192 = add nsw i32 %191, %mul.i.1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %0, i64 %193
  %195 = bitcast float* %194 to <8 x float>*
  %wide.masked.load71.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %195, i32 4, <8 x i1> %190, <8 x float> undef), !tbaa !12, !alias.scope !27, !noalias !30
  %wide.masked.gather74.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %190, <8 x float> undef), !tbaa !12, !alias.scope !33
  %196 = add nsw i32 %191, %mul16.i
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %0, i64 %197
  %199 = bitcast float* %198 to <8 x float>*
  %wide.masked.load75.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %199, i32 4, <8 x i1> %190, <8 x float> undef), !tbaa !12, !alias.scope !34
  %200 = fneg <8 x float> %wide.masked.gather74.3
  %201 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %200, <8 x float> %wide.masked.load75.3, <8 x float> %wide.masked.load71.3)
  %202 = bitcast float* %194 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %201, <8 x float>* %202, i32 4, <8 x i1> %190), !tbaa !12, !alias.scope !27, !noalias !30, !llvm.access.group !24
  br label %pregion_for_end.i.1

pregion_for_entry.entry.i.us.1:                   ; preds = %if.end.r_exit.i.us.1.1, %pregion_for_entry.entry.i.us.1.preheader
  %_local_id_x.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.us.1.preheader ], [ %856, %if.end.r_exit.i.us.1.1 ]
  %add1.i.i.us.1 = add nuw nsw i64 %_local_id_x.0.us.1, %mul.i.i
  %203 = trunc i64 %add1.i.i.us.1 to i32
  %conv2.i.us.1 = add i32 %add.i, %203
  %cmp9.i.us.1 = icmp slt i32 %conv2.i.us.1, %2
  br i1 %cmp9.i.us.1, label %if.then.i.us.1, label %if.end.r_exit.i.us.1

if.then.i.us.1:                                   ; preds = %pregion_for_entry.entry.i.us.1
  %add11.i.us.1 = add nsw i32 %conv2.i.us.1, %mul.i.1
  %idxprom.i.us.1 = sext i32 %add11.i.us.1 to i64
  %arrayidx.i.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1
  %204 = load float, float* %arrayidx.i.us.1, align 4, !tbaa !12
  %205 = load float, float* %arrayidx15.i.1, align 4, !tbaa !12
  %add17.i.us.1 = add nsw i32 %conv2.i.us.1, %mul16.i
  %idxprom18.i.us.1 = sext i32 %add17.i.us.1 to i64
  %arrayidx19.i.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.1
  %206 = load float, float* %arrayidx19.i.us.1, align 4, !tbaa !12
  %neg.i.us.1 = fneg float %205
  %207 = tail call float @llvm.fmuladd.f32(float %neg.i.us.1, float %206, float %204) #6
  store float %207, float* %arrayidx.i.us.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.1

if.end.r_exit.i.us.1:                             ; preds = %if.then.i.us.1, %pregion_for_entry.entry.i.us.1
  %208 = or i64 %_local_id_x.0.us.1, 1
  %add1.i.i.us.1.1 = add nuw nsw i64 %208, %mul.i.i
  %209 = trunc i64 %add1.i.i.us.1.1 to i32
  %conv2.i.us.1.1 = add i32 %add.i, %209
  %cmp9.i.us.1.1 = icmp slt i32 %conv2.i.us.1.1, %2
  br i1 %cmp9.i.us.1.1, label %if.then.i.us.1.1, label %if.end.r_exit.i.us.1.1

pregion_for_end.i.1.loopexit:                     ; preds = %if.end.r_exit.i.us.1.1
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.ph58, %pregion_for_end.i
  %210 = trunc i64 %mul3.i.i to i32
  %211 = or i32 %210, 2
  %conv7.i.2 = add i32 %add.i, %211
  %cmp.i.2 = icmp slt i32 %conv7.i.2, %2
  %mul.i.2 = mul nsw i32 %conv7.i.2, %2
  %add13.i.2 = add nsw i32 %mul.i.2, %1
  %idxprom14.i.2 = sext i32 %add13.i.2 to i64
  %arrayidx15.i.2 = getelementptr inbounds float, float* %0, i64 %idxprom14.i.2
  br i1 %cmp.i.2, label %vector.scevcheck86, label %pregion_for_end.i.2

vector.scevcheck86:                               ; preds = %pregion_for_end.i.1
  %212 = mul i32 %conv7.i.2, %2
  %213 = add i32 %212, %1
  %214 = trunc i64 %4 to i32
  %215 = shl i32 %214, 5
  %216 = add i32 %213, %215
  %217 = add i32 %216, 1
  %218 = add i32 %216, 32
  %219 = icmp slt i32 %218, %217
  %220 = add i32 %2, 1
  %221 = mul i32 %220, %1
  %222 = add i32 %221, %215
  %223 = add i32 %222, 1
  %224 = add i32 %222, 32
  %225 = icmp slt i32 %224, %223
  %226 = or i1 %219, %225
  br i1 %226, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.memcheck108

pregion_for_entry.entry.i.us.2.preheader:         ; preds = %vector.memcheck108, %vector.scevcheck86
  br label %pregion_for_entry.entry.i.us.2

vector.memcheck108:                               ; preds = %vector.scevcheck86
  %227 = mul i32 %conv7.i.2, %2
  %228 = add i32 %227, %1
  %229 = trunc i64 %4 to i32
  %230 = shl i32 %229, 5
  %231 = add i32 %228, %230
  %232 = add i32 %231, 1
  %233 = sext i32 %232 to i64
  %scevgep88 = getelementptr float, float* %0, i64 %233
  %scevgep8889 = bitcast float* %scevgep88 to i8*
  %234 = add nsw i64 %233, 32
  %scevgep90 = getelementptr float, float* %0, i64 %234
  %scevgep92 = getelementptr float, float* %0, i64 %idxprom14.i.2
  %scevgep9293 = bitcast float* %scevgep92 to i8*
  %uglygep94 = getelementptr i8, i8* %scevgep9293, i64 1
  %235 = add i32 %2, 1
  %236 = mul i32 %235, %1
  %237 = add i32 %236, %230
  %238 = add i32 %237, 1
  %239 = sext i32 %238 to i64
  %scevgep95 = getelementptr float, float* %0, i64 %239
  %240 = add nsw i64 %239, 32
  %scevgep97 = getelementptr float, float* %0, i64 %240
  %bound0100 = icmp ugt i8* %uglygep94, %scevgep8889
  %bound1101 = icmp ult float* %arrayidx15.i.2, %scevgep90
  %found.conflict102 = and i1 %bound0100, %bound1101
  %bound0103 = icmp ult float* %scevgep88, %scevgep97
  %bound1104 = icmp ult float* %scevgep95, %scevgep90
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %found.conflict102, %found.conflict105
  br i1 %conflict.rdx106, label %pregion_for_entry.entry.i.us.2.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck108
  %broadcast.splatinsert116 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat117 = shufflevector <8 x i64> %broadcast.splatinsert116, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <8 x i32> undef, i32 %add.i, i32 0
  %broadcast.splat119 = shufflevector <8 x i32> %broadcast.splatinsert118, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat121 = shufflevector <8 x i32> %broadcast.splatinsert120, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <8 x float*> undef, float* %arrayidx15.i.2, i32 0
  %broadcast.splat124 = shufflevector <8 x float*> %broadcast.splatinsert123, <8 x float*> undef, <8 x i32> zeroinitializer
  %241 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %242 = or <8 x i32> %241, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %243 = add <8 x i32> %broadcast.splat119, %242
  %244 = icmp slt <8 x i32> %243, %broadcast.splat121
  %245 = extractelement <8 x i32> %243, i32 0
  %246 = add nsw i32 %245, %mul.i.2
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %0, i64 %247
  %249 = bitcast float* %248 to <8 x float>*
  %wide.masked.load122 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %249, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !38
  %wide.masked.gather125 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !41
  %250 = add nsw i32 %245, %mul16.i
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %0, i64 %251
  %253 = bitcast float* %252 to <8 x float>*
  %wide.masked.load126 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %253, i32 4, <8 x i1> %244, <8 x float> undef), !tbaa !12, !alias.scope !42
  %254 = fneg <8 x float> %wide.masked.gather125
  %255 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %254, <8 x float> %wide.masked.load126, <8 x float> %wide.masked.load122)
  %256 = bitcast float* %248 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %255, <8 x float>* %256, i32 4, <8 x i1> %244), !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !24
  %257 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %258 = or <8 x i32> %257, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %259 = add <8 x i32> %broadcast.splat119, %258
  %260 = icmp slt <8 x i32> %259, %broadcast.splat121
  %261 = extractelement <8 x i32> %259, i32 0
  %262 = add nsw i32 %261, %mul.i.2
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %0, i64 %263
  %265 = bitcast float* %264 to <8 x float>*
  %wide.masked.load122.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %265, i32 4, <8 x i1> %260, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !38
  %wide.masked.gather125.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %260, <8 x float> undef), !tbaa !12, !alias.scope !41
  %266 = add nsw i32 %261, %mul16.i
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds float, float* %0, i64 %267
  %269 = bitcast float* %268 to <8 x float>*
  %wide.masked.load126.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %269, i32 4, <8 x i1> %260, <8 x float> undef), !tbaa !12, !alias.scope !42
  %270 = fneg <8 x float> %wide.masked.gather125.1
  %271 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %270, <8 x float> %wide.masked.load126.1, <8 x float> %wide.masked.load122.1)
  %272 = bitcast float* %264 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %271, <8 x float>* %272, i32 4, <8 x i1> %260), !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !24
  %273 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %274 = or <8 x i32> %273, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %275 = add <8 x i32> %broadcast.splat119, %274
  %276 = icmp slt <8 x i32> %275, %broadcast.splat121
  %277 = extractelement <8 x i32> %275, i32 0
  %278 = add nsw i32 %277, %mul.i.2
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %0, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  %wide.masked.load122.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %281, i32 4, <8 x i1> %276, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !38
  %wide.masked.gather125.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %276, <8 x float> undef), !tbaa !12, !alias.scope !41
  %282 = add nsw i32 %277, %mul16.i
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %0, i64 %283
  %285 = bitcast float* %284 to <8 x float>*
  %wide.masked.load126.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %285, i32 4, <8 x i1> %276, <8 x float> undef), !tbaa !12, !alias.scope !42
  %286 = fneg <8 x float> %wide.masked.gather125.2
  %287 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %286, <8 x float> %wide.masked.load126.2, <8 x float> %wide.masked.load122.2)
  %288 = bitcast float* %280 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %287, <8 x float>* %288, i32 4, <8 x i1> %276), !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !24
  %289 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %290 = or <8 x i32> %289, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %291 = add <8 x i32> %broadcast.splat119, %290
  %292 = icmp slt <8 x i32> %291, %broadcast.splat121
  %293 = extractelement <8 x i32> %291, i32 0
  %294 = add nsw i32 %293, %mul.i.2
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %0, i64 %295
  %297 = bitcast float* %296 to <8 x float>*
  %wide.masked.load122.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %297, i32 4, <8 x i1> %292, <8 x float> undef), !tbaa !12, !alias.scope !35, !noalias !38
  %wide.masked.gather125.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %292, <8 x float> undef), !tbaa !12, !alias.scope !41
  %298 = add nsw i32 %293, %mul16.i
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %0, i64 %299
  %301 = bitcast float* %300 to <8 x float>*
  %wide.masked.load126.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %301, i32 4, <8 x i1> %292, <8 x float> undef), !tbaa !12, !alias.scope !42
  %302 = fneg <8 x float> %wide.masked.gather125.3
  %303 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %302, <8 x float> %wide.masked.load126.3, <8 x float> %wide.masked.load122.3)
  %304 = bitcast float* %296 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %303, <8 x float>* %304, i32 4, <8 x i1> %292), !tbaa !12, !alias.scope !35, !noalias !38, !llvm.access.group !24
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.us.2:                   ; preds = %if.end.r_exit.i.us.2.1, %pregion_for_entry.entry.i.us.2.preheader
  %_local_id_x.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.us.2.preheader ], [ %851, %if.end.r_exit.i.us.2.1 ]
  %add1.i.i.us.2 = add nuw nsw i64 %_local_id_x.0.us.2, %mul.i.i
  %305 = trunc i64 %add1.i.i.us.2 to i32
  %conv2.i.us.2 = add i32 %add.i, %305
  %cmp9.i.us.2 = icmp slt i32 %conv2.i.us.2, %2
  br i1 %cmp9.i.us.2, label %if.then.i.us.2, label %if.end.r_exit.i.us.2

if.then.i.us.2:                                   ; preds = %pregion_for_entry.entry.i.us.2
  %add11.i.us.2 = add nsw i32 %conv2.i.us.2, %mul.i.2
  %idxprom.i.us.2 = sext i32 %add11.i.us.2 to i64
  %arrayidx.i.us.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.2
  %306 = load float, float* %arrayidx.i.us.2, align 4, !tbaa !12
  %307 = load float, float* %arrayidx15.i.2, align 4, !tbaa !12
  %add17.i.us.2 = add nsw i32 %conv2.i.us.2, %mul16.i
  %idxprom18.i.us.2 = sext i32 %add17.i.us.2 to i64
  %arrayidx19.i.us.2 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.2
  %308 = load float, float* %arrayidx19.i.us.2, align 4, !tbaa !12
  %neg.i.us.2 = fneg float %307
  %309 = tail call float @llvm.fmuladd.f32(float %neg.i.us.2, float %308, float %306) #6
  store float %309, float* %arrayidx.i.us.2, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.2

if.end.r_exit.i.us.2:                             ; preds = %if.then.i.us.2, %pregion_for_entry.entry.i.us.2
  %310 = or i64 %_local_id_x.0.us.2, 1
  %add1.i.i.us.2.1 = add nuw nsw i64 %310, %mul.i.i
  %311 = trunc i64 %add1.i.i.us.2.1 to i32
  %conv2.i.us.2.1 = add i32 %add.i, %311
  %cmp9.i.us.2.1 = icmp slt i32 %conv2.i.us.2.1, %2
  br i1 %cmp9.i.us.2.1, label %if.then.i.us.2.1, label %if.end.r_exit.i.us.2.1

pregion_for_end.i.2.loopexit:                     ; preds = %if.end.r_exit.i.us.2.1
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.ph109, %pregion_for_end.i.1
  %312 = trunc i64 %mul3.i.i to i32
  %313 = or i32 %312, 3
  %conv7.i.3 = add i32 %add.i, %313
  %cmp.i.3 = icmp slt i32 %conv7.i.3, %2
  %mul.i.3 = mul nsw i32 %conv7.i.3, %2
  %add13.i.3 = add nsw i32 %mul.i.3, %1
  %idxprom14.i.3 = sext i32 %add13.i.3 to i64
  %arrayidx15.i.3 = getelementptr inbounds float, float* %0, i64 %idxprom14.i.3
  br i1 %cmp.i.3, label %vector.scevcheck137, label %pregion_for_end.i.3

vector.scevcheck137:                              ; preds = %pregion_for_end.i.2
  %314 = mul i32 %conv7.i.3, %2
  %315 = add i32 %314, %1
  %316 = trunc i64 %4 to i32
  %317 = shl i32 %316, 5
  %318 = add i32 %315, %317
  %319 = add i32 %318, 1
  %320 = add i32 %318, 32
  %321 = icmp slt i32 %320, %319
  %322 = add i32 %2, 1
  %323 = mul i32 %322, %1
  %324 = add i32 %323, %317
  %325 = add i32 %324, 1
  %326 = add i32 %324, 32
  %327 = icmp slt i32 %326, %325
  %328 = or i1 %321, %327
  br i1 %328, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.memcheck159

pregion_for_entry.entry.i.us.3.preheader:         ; preds = %vector.memcheck159, %vector.scevcheck137
  br label %pregion_for_entry.entry.i.us.3

vector.memcheck159:                               ; preds = %vector.scevcheck137
  %329 = mul i32 %conv7.i.3, %2
  %330 = add i32 %329, %1
  %331 = trunc i64 %4 to i32
  %332 = shl i32 %331, 5
  %333 = add i32 %330, %332
  %334 = add i32 %333, 1
  %335 = sext i32 %334 to i64
  %scevgep139 = getelementptr float, float* %0, i64 %335
  %scevgep139140 = bitcast float* %scevgep139 to i8*
  %336 = add nsw i64 %335, 32
  %scevgep141 = getelementptr float, float* %0, i64 %336
  %scevgep143 = getelementptr float, float* %0, i64 %idxprom14.i.3
  %scevgep143144 = bitcast float* %scevgep143 to i8*
  %uglygep145 = getelementptr i8, i8* %scevgep143144, i64 1
  %337 = add i32 %2, 1
  %338 = mul i32 %337, %1
  %339 = add i32 %338, %332
  %340 = add i32 %339, 1
  %341 = sext i32 %340 to i64
  %scevgep146 = getelementptr float, float* %0, i64 %341
  %342 = add nsw i64 %341, 32
  %scevgep148 = getelementptr float, float* %0, i64 %342
  %bound0151 = icmp ugt i8* %uglygep145, %scevgep139140
  %bound1152 = icmp ult float* %arrayidx15.i.3, %scevgep141
  %found.conflict153 = and i1 %bound0151, %bound1152
  %bound0154 = icmp ult float* %scevgep139, %scevgep148
  %bound1155 = icmp ult float* %scevgep146, %scevgep141
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %found.conflict153, %found.conflict156
  br i1 %conflict.rdx157, label %pregion_for_entry.entry.i.us.3.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck159
  %broadcast.splatinsert167 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat168 = shufflevector <8 x i64> %broadcast.splatinsert167, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x i32> undef, i32 %add.i, i32 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat172 = shufflevector <8 x i32> %broadcast.splatinsert171, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert174 = insertelement <8 x float*> undef, float* %arrayidx15.i.3, i32 0
  %broadcast.splat175 = shufflevector <8 x float*> %broadcast.splatinsert174, <8 x float*> undef, <8 x i32> zeroinitializer
  %343 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %344 = or <8 x i32> %343, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %345 = add <8 x i32> %broadcast.splat170, %344
  %346 = icmp slt <8 x i32> %345, %broadcast.splat172
  %347 = extractelement <8 x i32> %345, i32 0
  %348 = add nsw i32 %347, %mul.i.3
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %0, i64 %349
  %351 = bitcast float* %350 to <8 x float>*
  %wide.masked.load173 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %351, i32 4, <8 x i1> %346, <8 x float> undef), !tbaa !12, !alias.scope !43, !noalias !46
  %wide.masked.gather176 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %346, <8 x float> undef), !tbaa !12, !alias.scope !49
  %352 = add nsw i32 %347, %mul16.i
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, float* %0, i64 %353
  %355 = bitcast float* %354 to <8 x float>*
  %wide.masked.load177 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %355, i32 4, <8 x i1> %346, <8 x float> undef), !tbaa !12, !alias.scope !50
  %356 = fneg <8 x float> %wide.masked.gather176
  %357 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %356, <8 x float> %wide.masked.load177, <8 x float> %wide.masked.load173)
  %358 = bitcast float* %350 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %357, <8 x float>* %358, i32 4, <8 x i1> %346), !tbaa !12, !alias.scope !43, !noalias !46, !llvm.access.group !24
  %359 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %360 = or <8 x i32> %359, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %361 = add <8 x i32> %broadcast.splat170, %360
  %362 = icmp slt <8 x i32> %361, %broadcast.splat172
  %363 = extractelement <8 x i32> %361, i32 0
  %364 = add nsw i32 %363, %mul.i.3
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float, float* %0, i64 %365
  %367 = bitcast float* %366 to <8 x float>*
  %wide.masked.load173.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %367, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !43, !noalias !46
  %wide.masked.gather176.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !49
  %368 = add nsw i32 %363, %mul16.i
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %0, i64 %369
  %371 = bitcast float* %370 to <8 x float>*
  %wide.masked.load177.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %371, i32 4, <8 x i1> %362, <8 x float> undef), !tbaa !12, !alias.scope !50
  %372 = fneg <8 x float> %wide.masked.gather176.1
  %373 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %372, <8 x float> %wide.masked.load177.1, <8 x float> %wide.masked.load173.1)
  %374 = bitcast float* %366 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %373, <8 x float>* %374, i32 4, <8 x i1> %362), !tbaa !12, !alias.scope !43, !noalias !46, !llvm.access.group !24
  %375 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %376 = or <8 x i32> %375, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %377 = add <8 x i32> %broadcast.splat170, %376
  %378 = icmp slt <8 x i32> %377, %broadcast.splat172
  %379 = extractelement <8 x i32> %377, i32 0
  %380 = add nsw i32 %379, %mul.i.3
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %0, i64 %381
  %383 = bitcast float* %382 to <8 x float>*
  %wide.masked.load173.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %383, i32 4, <8 x i1> %378, <8 x float> undef), !tbaa !12, !alias.scope !43, !noalias !46
  %wide.masked.gather176.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %378, <8 x float> undef), !tbaa !12, !alias.scope !49
  %384 = add nsw i32 %379, %mul16.i
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %0, i64 %385
  %387 = bitcast float* %386 to <8 x float>*
  %wide.masked.load177.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %387, i32 4, <8 x i1> %378, <8 x float> undef), !tbaa !12, !alias.scope !50
  %388 = fneg <8 x float> %wide.masked.gather176.2
  %389 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %388, <8 x float> %wide.masked.load177.2, <8 x float> %wide.masked.load173.2)
  %390 = bitcast float* %382 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %389, <8 x float>* %390, i32 4, <8 x i1> %378), !tbaa !12, !alias.scope !43, !noalias !46, !llvm.access.group !24
  %391 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %392 = or <8 x i32> %391, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %393 = add <8 x i32> %broadcast.splat170, %392
  %394 = icmp slt <8 x i32> %393, %broadcast.splat172
  %395 = extractelement <8 x i32> %393, i32 0
  %396 = add nsw i32 %395, %mul.i.3
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds float, float* %0, i64 %397
  %399 = bitcast float* %398 to <8 x float>*
  %wide.masked.load173.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %399, i32 4, <8 x i1> %394, <8 x float> undef), !tbaa !12, !alias.scope !43, !noalias !46
  %wide.masked.gather176.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %394, <8 x float> undef), !tbaa !12, !alias.scope !49
  %400 = add nsw i32 %395, %mul16.i
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds float, float* %0, i64 %401
  %403 = bitcast float* %402 to <8 x float>*
  %wide.masked.load177.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %403, i32 4, <8 x i1> %394, <8 x float> undef), !tbaa !12, !alias.scope !50
  %404 = fneg <8 x float> %wide.masked.gather176.3
  %405 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %404, <8 x float> %wide.masked.load177.3, <8 x float> %wide.masked.load173.3)
  %406 = bitcast float* %398 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %405, <8 x float>* %406, i32 4, <8 x i1> %394), !tbaa !12, !alias.scope !43, !noalias !46, !llvm.access.group !24
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.us.3:                   ; preds = %if.end.r_exit.i.us.3.1, %pregion_for_entry.entry.i.us.3.preheader
  %_local_id_x.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.us.3.preheader ], [ %846, %if.end.r_exit.i.us.3.1 ]
  %add1.i.i.us.3 = add nuw nsw i64 %_local_id_x.0.us.3, %mul.i.i
  %407 = trunc i64 %add1.i.i.us.3 to i32
  %conv2.i.us.3 = add i32 %add.i, %407
  %cmp9.i.us.3 = icmp slt i32 %conv2.i.us.3, %2
  br i1 %cmp9.i.us.3, label %if.then.i.us.3, label %if.end.r_exit.i.us.3

if.then.i.us.3:                                   ; preds = %pregion_for_entry.entry.i.us.3
  %add11.i.us.3 = add nsw i32 %conv2.i.us.3, %mul.i.3
  %idxprom.i.us.3 = sext i32 %add11.i.us.3 to i64
  %arrayidx.i.us.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.3
  %408 = load float, float* %arrayidx.i.us.3, align 4, !tbaa !12
  %409 = load float, float* %arrayidx15.i.3, align 4, !tbaa !12
  %add17.i.us.3 = add nsw i32 %conv2.i.us.3, %mul16.i
  %idxprom18.i.us.3 = sext i32 %add17.i.us.3 to i64
  %arrayidx19.i.us.3 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.3
  %410 = load float, float* %arrayidx19.i.us.3, align 4, !tbaa !12
  %neg.i.us.3 = fneg float %409
  %411 = tail call float @llvm.fmuladd.f32(float %neg.i.us.3, float %410, float %408) #6
  store float %411, float* %arrayidx.i.us.3, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.3

if.end.r_exit.i.us.3:                             ; preds = %if.then.i.us.3, %pregion_for_entry.entry.i.us.3
  %412 = or i64 %_local_id_x.0.us.3, 1
  %add1.i.i.us.3.1 = add nuw nsw i64 %412, %mul.i.i
  %413 = trunc i64 %add1.i.i.us.3.1 to i32
  %conv2.i.us.3.1 = add i32 %add.i, %413
  %cmp9.i.us.3.1 = icmp slt i32 %conv2.i.us.3.1, %2
  br i1 %cmp9.i.us.3.1, label %if.then.i.us.3.1, label %if.end.r_exit.i.us.3.1

pregion_for_end.i.3.loopexit:                     ; preds = %if.end.r_exit.i.us.3.1
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.ph160, %pregion_for_end.i.2
  %414 = trunc i64 %mul3.i.i to i32
  %415 = or i32 %414, 4
  %conv7.i.4 = add i32 %add.i, %415
  %cmp.i.4 = icmp slt i32 %conv7.i.4, %2
  %mul.i.4 = mul nsw i32 %conv7.i.4, %2
  %add13.i.4 = add nsw i32 %mul.i.4, %1
  %idxprom14.i.4 = sext i32 %add13.i.4 to i64
  %arrayidx15.i.4 = getelementptr inbounds float, float* %0, i64 %idxprom14.i.4
  br i1 %cmp.i.4, label %vector.scevcheck188, label %pregion_for_end.i.4

vector.scevcheck188:                              ; preds = %pregion_for_end.i.3
  %416 = mul i32 %conv7.i.4, %2
  %417 = add i32 %416, %1
  %418 = trunc i64 %4 to i32
  %419 = shl i32 %418, 5
  %420 = add i32 %417, %419
  %421 = add i32 %420, 1
  %422 = add i32 %420, 32
  %423 = icmp slt i32 %422, %421
  %424 = add i32 %2, 1
  %425 = mul i32 %424, %1
  %426 = add i32 %425, %419
  %427 = add i32 %426, 1
  %428 = add i32 %426, 32
  %429 = icmp slt i32 %428, %427
  %430 = or i1 %423, %429
  br i1 %430, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.memcheck210

pregion_for_entry.entry.i.us.4.preheader:         ; preds = %vector.memcheck210, %vector.scevcheck188
  br label %pregion_for_entry.entry.i.us.4

vector.memcheck210:                               ; preds = %vector.scevcheck188
  %431 = mul i32 %conv7.i.4, %2
  %432 = add i32 %431, %1
  %433 = trunc i64 %4 to i32
  %434 = shl i32 %433, 5
  %435 = add i32 %432, %434
  %436 = add i32 %435, 1
  %437 = sext i32 %436 to i64
  %scevgep190 = getelementptr float, float* %0, i64 %437
  %scevgep190191 = bitcast float* %scevgep190 to i8*
  %438 = add nsw i64 %437, 32
  %scevgep192 = getelementptr float, float* %0, i64 %438
  %scevgep194 = getelementptr float, float* %0, i64 %idxprom14.i.4
  %scevgep194195 = bitcast float* %scevgep194 to i8*
  %uglygep196 = getelementptr i8, i8* %scevgep194195, i64 1
  %439 = add i32 %2, 1
  %440 = mul i32 %439, %1
  %441 = add i32 %440, %434
  %442 = add i32 %441, 1
  %443 = sext i32 %442 to i64
  %scevgep197 = getelementptr float, float* %0, i64 %443
  %444 = add nsw i64 %443, 32
  %scevgep199 = getelementptr float, float* %0, i64 %444
  %bound0202 = icmp ugt i8* %uglygep196, %scevgep190191
  %bound1203 = icmp ult float* %arrayidx15.i.4, %scevgep192
  %found.conflict204 = and i1 %bound0202, %bound1203
  %bound0205 = icmp ult float* %scevgep190, %scevgep199
  %bound1206 = icmp ult float* %scevgep197, %scevgep192
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %found.conflict204, %found.conflict207
  br i1 %conflict.rdx208, label %pregion_for_entry.entry.i.us.4.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck210
  %broadcast.splatinsert218 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat219 = shufflevector <8 x i64> %broadcast.splatinsert218, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <8 x i32> undef, i32 %add.i, i32 0
  %broadcast.splat221 = shufflevector <8 x i32> %broadcast.splatinsert220, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat223 = shufflevector <8 x i32> %broadcast.splatinsert222, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float*> undef, float* %arrayidx15.i.4, i32 0
  %broadcast.splat226 = shufflevector <8 x float*> %broadcast.splatinsert225, <8 x float*> undef, <8 x i32> zeroinitializer
  %445 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %446 = or <8 x i32> %445, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %447 = add <8 x i32> %broadcast.splat221, %446
  %448 = icmp slt <8 x i32> %447, %broadcast.splat223
  %449 = extractelement <8 x i32> %447, i32 0
  %450 = add nsw i32 %449, %mul.i.4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds float, float* %0, i64 %451
  %453 = bitcast float* %452 to <8 x float>*
  %wide.masked.load224 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %453, i32 4, <8 x i1> %448, <8 x float> undef), !tbaa !12, !alias.scope !51, !noalias !54
  %wide.masked.gather227 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %448, <8 x float> undef), !tbaa !12, !alias.scope !57
  %454 = add nsw i32 %449, %mul16.i
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds float, float* %0, i64 %455
  %457 = bitcast float* %456 to <8 x float>*
  %wide.masked.load228 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %457, i32 4, <8 x i1> %448, <8 x float> undef), !tbaa !12, !alias.scope !58
  %458 = fneg <8 x float> %wide.masked.gather227
  %459 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %458, <8 x float> %wide.masked.load228, <8 x float> %wide.masked.load224)
  %460 = bitcast float* %452 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %459, <8 x float>* %460, i32 4, <8 x i1> %448), !tbaa !12, !alias.scope !51, !noalias !54, !llvm.access.group !24
  %461 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %462 = or <8 x i32> %461, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %463 = add <8 x i32> %broadcast.splat221, %462
  %464 = icmp slt <8 x i32> %463, %broadcast.splat223
  %465 = extractelement <8 x i32> %463, i32 0
  %466 = add nsw i32 %465, %mul.i.4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds float, float* %0, i64 %467
  %469 = bitcast float* %468 to <8 x float>*
  %wide.masked.load224.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %469, i32 4, <8 x i1> %464, <8 x float> undef), !tbaa !12, !alias.scope !51, !noalias !54
  %wide.masked.gather227.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %464, <8 x float> undef), !tbaa !12, !alias.scope !57
  %470 = add nsw i32 %465, %mul16.i
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds float, float* %0, i64 %471
  %473 = bitcast float* %472 to <8 x float>*
  %wide.masked.load228.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %473, i32 4, <8 x i1> %464, <8 x float> undef), !tbaa !12, !alias.scope !58
  %474 = fneg <8 x float> %wide.masked.gather227.1
  %475 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %474, <8 x float> %wide.masked.load228.1, <8 x float> %wide.masked.load224.1)
  %476 = bitcast float* %468 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %475, <8 x float>* %476, i32 4, <8 x i1> %464), !tbaa !12, !alias.scope !51, !noalias !54, !llvm.access.group !24
  %477 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %478 = or <8 x i32> %477, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %479 = add <8 x i32> %broadcast.splat221, %478
  %480 = icmp slt <8 x i32> %479, %broadcast.splat223
  %481 = extractelement <8 x i32> %479, i32 0
  %482 = add nsw i32 %481, %mul.i.4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds float, float* %0, i64 %483
  %485 = bitcast float* %484 to <8 x float>*
  %wide.masked.load224.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %485, i32 4, <8 x i1> %480, <8 x float> undef), !tbaa !12, !alias.scope !51, !noalias !54
  %wide.masked.gather227.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %480, <8 x float> undef), !tbaa !12, !alias.scope !57
  %486 = add nsw i32 %481, %mul16.i
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds float, float* %0, i64 %487
  %489 = bitcast float* %488 to <8 x float>*
  %wide.masked.load228.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %489, i32 4, <8 x i1> %480, <8 x float> undef), !tbaa !12, !alias.scope !58
  %490 = fneg <8 x float> %wide.masked.gather227.2
  %491 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %490, <8 x float> %wide.masked.load228.2, <8 x float> %wide.masked.load224.2)
  %492 = bitcast float* %484 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %491, <8 x float>* %492, i32 4, <8 x i1> %480), !tbaa !12, !alias.scope !51, !noalias !54, !llvm.access.group !24
  %493 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %494 = or <8 x i32> %493, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %495 = add <8 x i32> %broadcast.splat221, %494
  %496 = icmp slt <8 x i32> %495, %broadcast.splat223
  %497 = extractelement <8 x i32> %495, i32 0
  %498 = add nsw i32 %497, %mul.i.4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds float, float* %0, i64 %499
  %501 = bitcast float* %500 to <8 x float>*
  %wide.masked.load224.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %501, i32 4, <8 x i1> %496, <8 x float> undef), !tbaa !12, !alias.scope !51, !noalias !54
  %wide.masked.gather227.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %496, <8 x float> undef), !tbaa !12, !alias.scope !57
  %502 = add nsw i32 %497, %mul16.i
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds float, float* %0, i64 %503
  %505 = bitcast float* %504 to <8 x float>*
  %wide.masked.load228.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %505, i32 4, <8 x i1> %496, <8 x float> undef), !tbaa !12, !alias.scope !58
  %506 = fneg <8 x float> %wide.masked.gather227.3
  %507 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %506, <8 x float> %wide.masked.load228.3, <8 x float> %wide.masked.load224.3)
  %508 = bitcast float* %500 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %507, <8 x float>* %508, i32 4, <8 x i1> %496), !tbaa !12, !alias.scope !51, !noalias !54, !llvm.access.group !24
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.us.4:                   ; preds = %if.end.r_exit.i.us.4.1, %pregion_for_entry.entry.i.us.4.preheader
  %_local_id_x.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.us.4.preheader ], [ %841, %if.end.r_exit.i.us.4.1 ]
  %add1.i.i.us.4 = add nuw nsw i64 %_local_id_x.0.us.4, %mul.i.i
  %509 = trunc i64 %add1.i.i.us.4 to i32
  %conv2.i.us.4 = add i32 %add.i, %509
  %cmp9.i.us.4 = icmp slt i32 %conv2.i.us.4, %2
  br i1 %cmp9.i.us.4, label %if.then.i.us.4, label %if.end.r_exit.i.us.4

if.then.i.us.4:                                   ; preds = %pregion_for_entry.entry.i.us.4
  %add11.i.us.4 = add nsw i32 %conv2.i.us.4, %mul.i.4
  %idxprom.i.us.4 = sext i32 %add11.i.us.4 to i64
  %arrayidx.i.us.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.4
  %510 = load float, float* %arrayidx.i.us.4, align 4, !tbaa !12
  %511 = load float, float* %arrayidx15.i.4, align 4, !tbaa !12
  %add17.i.us.4 = add nsw i32 %conv2.i.us.4, %mul16.i
  %idxprom18.i.us.4 = sext i32 %add17.i.us.4 to i64
  %arrayidx19.i.us.4 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.4
  %512 = load float, float* %arrayidx19.i.us.4, align 4, !tbaa !12
  %neg.i.us.4 = fneg float %511
  %513 = tail call float @llvm.fmuladd.f32(float %neg.i.us.4, float %512, float %510) #6
  store float %513, float* %arrayidx.i.us.4, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.4

if.end.r_exit.i.us.4:                             ; preds = %if.then.i.us.4, %pregion_for_entry.entry.i.us.4
  %514 = or i64 %_local_id_x.0.us.4, 1
  %add1.i.i.us.4.1 = add nuw nsw i64 %514, %mul.i.i
  %515 = trunc i64 %add1.i.i.us.4.1 to i32
  %conv2.i.us.4.1 = add i32 %add.i, %515
  %cmp9.i.us.4.1 = icmp slt i32 %conv2.i.us.4.1, %2
  br i1 %cmp9.i.us.4.1, label %if.then.i.us.4.1, label %if.end.r_exit.i.us.4.1

pregion_for_end.i.4.loopexit:                     ; preds = %if.end.r_exit.i.us.4.1
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.ph211, %pregion_for_end.i.3
  %516 = trunc i64 %mul3.i.i to i32
  %517 = or i32 %516, 5
  %conv7.i.5 = add i32 %add.i, %517
  %cmp.i.5 = icmp slt i32 %conv7.i.5, %2
  %mul.i.5 = mul nsw i32 %conv7.i.5, %2
  %add13.i.5 = add nsw i32 %mul.i.5, %1
  %idxprom14.i.5 = sext i32 %add13.i.5 to i64
  %arrayidx15.i.5 = getelementptr inbounds float, float* %0, i64 %idxprom14.i.5
  br i1 %cmp.i.5, label %vector.scevcheck239, label %pregion_for_end.i.5

vector.scevcheck239:                              ; preds = %pregion_for_end.i.4
  %518 = mul i32 %conv7.i.5, %2
  %519 = add i32 %518, %1
  %520 = trunc i64 %4 to i32
  %521 = shl i32 %520, 5
  %522 = add i32 %519, %521
  %523 = add i32 %522, 1
  %524 = add i32 %522, 32
  %525 = icmp slt i32 %524, %523
  %526 = add i32 %2, 1
  %527 = mul i32 %526, %1
  %528 = add i32 %527, %521
  %529 = add i32 %528, 1
  %530 = add i32 %528, 32
  %531 = icmp slt i32 %530, %529
  %532 = or i1 %525, %531
  br i1 %532, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.memcheck261

pregion_for_entry.entry.i.us.5.preheader:         ; preds = %vector.memcheck261, %vector.scevcheck239
  br label %pregion_for_entry.entry.i.us.5

vector.memcheck261:                               ; preds = %vector.scevcheck239
  %533 = mul i32 %conv7.i.5, %2
  %534 = add i32 %533, %1
  %535 = trunc i64 %4 to i32
  %536 = shl i32 %535, 5
  %537 = add i32 %534, %536
  %538 = add i32 %537, 1
  %539 = sext i32 %538 to i64
  %scevgep241 = getelementptr float, float* %0, i64 %539
  %scevgep241242 = bitcast float* %scevgep241 to i8*
  %540 = add nsw i64 %539, 32
  %scevgep243 = getelementptr float, float* %0, i64 %540
  %scevgep245 = getelementptr float, float* %0, i64 %idxprom14.i.5
  %scevgep245246 = bitcast float* %scevgep245 to i8*
  %uglygep247 = getelementptr i8, i8* %scevgep245246, i64 1
  %541 = add i32 %2, 1
  %542 = mul i32 %541, %1
  %543 = add i32 %542, %536
  %544 = add i32 %543, 1
  %545 = sext i32 %544 to i64
  %scevgep248 = getelementptr float, float* %0, i64 %545
  %546 = add nsw i64 %545, 32
  %scevgep250 = getelementptr float, float* %0, i64 %546
  %bound0253 = icmp ugt i8* %uglygep247, %scevgep241242
  %bound1254 = icmp ult float* %arrayidx15.i.5, %scevgep243
  %found.conflict255 = and i1 %bound0253, %bound1254
  %bound0256 = icmp ult float* %scevgep241, %scevgep250
  %bound1257 = icmp ult float* %scevgep248, %scevgep243
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %found.conflict255, %found.conflict258
  br i1 %conflict.rdx259, label %pregion_for_entry.entry.i.us.5.preheader, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck261
  %broadcast.splatinsert269 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat270 = shufflevector <8 x i64> %broadcast.splatinsert269, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert271 = insertelement <8 x i32> undef, i32 %add.i, i32 0
  %broadcast.splat272 = shufflevector <8 x i32> %broadcast.splatinsert271, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert273 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat274 = shufflevector <8 x i32> %broadcast.splatinsert273, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert276 = insertelement <8 x float*> undef, float* %arrayidx15.i.5, i32 0
  %broadcast.splat277 = shufflevector <8 x float*> %broadcast.splatinsert276, <8 x float*> undef, <8 x i32> zeroinitializer
  %547 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %548 = or <8 x i32> %547, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %549 = add <8 x i32> %broadcast.splat272, %548
  %550 = icmp slt <8 x i32> %549, %broadcast.splat274
  %551 = extractelement <8 x i32> %549, i32 0
  %552 = add nsw i32 %551, %mul.i.5
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds float, float* %0, i64 %553
  %555 = bitcast float* %554 to <8 x float>*
  %wide.masked.load275 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %555, i32 4, <8 x i1> %550, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !62
  %wide.masked.gather278 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %550, <8 x float> undef), !tbaa !12, !alias.scope !65
  %556 = add nsw i32 %551, %mul16.i
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds float, float* %0, i64 %557
  %559 = bitcast float* %558 to <8 x float>*
  %wide.masked.load279 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %559, i32 4, <8 x i1> %550, <8 x float> undef), !tbaa !12, !alias.scope !66
  %560 = fneg <8 x float> %wide.masked.gather278
  %561 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %560, <8 x float> %wide.masked.load279, <8 x float> %wide.masked.load275)
  %562 = bitcast float* %554 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %561, <8 x float>* %562, i32 4, <8 x i1> %550), !tbaa !12, !alias.scope !59, !noalias !62, !llvm.access.group !24
  %563 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %564 = or <8 x i32> %563, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %565 = add <8 x i32> %broadcast.splat272, %564
  %566 = icmp slt <8 x i32> %565, %broadcast.splat274
  %567 = extractelement <8 x i32> %565, i32 0
  %568 = add nsw i32 %567, %mul.i.5
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds float, float* %0, i64 %569
  %571 = bitcast float* %570 to <8 x float>*
  %wide.masked.load275.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %571, i32 4, <8 x i1> %566, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !62
  %wide.masked.gather278.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %566, <8 x float> undef), !tbaa !12, !alias.scope !65
  %572 = add nsw i32 %567, %mul16.i
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds float, float* %0, i64 %573
  %575 = bitcast float* %574 to <8 x float>*
  %wide.masked.load279.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %575, i32 4, <8 x i1> %566, <8 x float> undef), !tbaa !12, !alias.scope !66
  %576 = fneg <8 x float> %wide.masked.gather278.1
  %577 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %576, <8 x float> %wide.masked.load279.1, <8 x float> %wide.masked.load275.1)
  %578 = bitcast float* %570 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %577, <8 x float>* %578, i32 4, <8 x i1> %566), !tbaa !12, !alias.scope !59, !noalias !62, !llvm.access.group !24
  %579 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %580 = or <8 x i32> %579, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %581 = add <8 x i32> %broadcast.splat272, %580
  %582 = icmp slt <8 x i32> %581, %broadcast.splat274
  %583 = extractelement <8 x i32> %581, i32 0
  %584 = add nsw i32 %583, %mul.i.5
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds float, float* %0, i64 %585
  %587 = bitcast float* %586 to <8 x float>*
  %wide.masked.load275.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %587, i32 4, <8 x i1> %582, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !62
  %wide.masked.gather278.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %582, <8 x float> undef), !tbaa !12, !alias.scope !65
  %588 = add nsw i32 %583, %mul16.i
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds float, float* %0, i64 %589
  %591 = bitcast float* %590 to <8 x float>*
  %wide.masked.load279.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %591, i32 4, <8 x i1> %582, <8 x float> undef), !tbaa !12, !alias.scope !66
  %592 = fneg <8 x float> %wide.masked.gather278.2
  %593 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %592, <8 x float> %wide.masked.load279.2, <8 x float> %wide.masked.load275.2)
  %594 = bitcast float* %586 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %593, <8 x float>* %594, i32 4, <8 x i1> %582), !tbaa !12, !alias.scope !59, !noalias !62, !llvm.access.group !24
  %595 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %596 = or <8 x i32> %595, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %597 = add <8 x i32> %broadcast.splat272, %596
  %598 = icmp slt <8 x i32> %597, %broadcast.splat274
  %599 = extractelement <8 x i32> %597, i32 0
  %600 = add nsw i32 %599, %mul.i.5
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds float, float* %0, i64 %601
  %603 = bitcast float* %602 to <8 x float>*
  %wide.masked.load275.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %603, i32 4, <8 x i1> %598, <8 x float> undef), !tbaa !12, !alias.scope !59, !noalias !62
  %wide.masked.gather278.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %598, <8 x float> undef), !tbaa !12, !alias.scope !65
  %604 = add nsw i32 %599, %mul16.i
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds float, float* %0, i64 %605
  %607 = bitcast float* %606 to <8 x float>*
  %wide.masked.load279.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %607, i32 4, <8 x i1> %598, <8 x float> undef), !tbaa !12, !alias.scope !66
  %608 = fneg <8 x float> %wide.masked.gather278.3
  %609 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %608, <8 x float> %wide.masked.load279.3, <8 x float> %wide.masked.load275.3)
  %610 = bitcast float* %602 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %609, <8 x float>* %610, i32 4, <8 x i1> %598), !tbaa !12, !alias.scope !59, !noalias !62, !llvm.access.group !24
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.us.5:                   ; preds = %if.end.r_exit.i.us.5.1, %pregion_for_entry.entry.i.us.5.preheader
  %_local_id_x.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.us.5.preheader ], [ %836, %if.end.r_exit.i.us.5.1 ]
  %add1.i.i.us.5 = add nuw nsw i64 %_local_id_x.0.us.5, %mul.i.i
  %611 = trunc i64 %add1.i.i.us.5 to i32
  %conv2.i.us.5 = add i32 %add.i, %611
  %cmp9.i.us.5 = icmp slt i32 %conv2.i.us.5, %2
  br i1 %cmp9.i.us.5, label %if.then.i.us.5, label %if.end.r_exit.i.us.5

if.then.i.us.5:                                   ; preds = %pregion_for_entry.entry.i.us.5
  %add11.i.us.5 = add nsw i32 %conv2.i.us.5, %mul.i.5
  %idxprom.i.us.5 = sext i32 %add11.i.us.5 to i64
  %arrayidx.i.us.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.5
  %612 = load float, float* %arrayidx.i.us.5, align 4, !tbaa !12
  %613 = load float, float* %arrayidx15.i.5, align 4, !tbaa !12
  %add17.i.us.5 = add nsw i32 %conv2.i.us.5, %mul16.i
  %idxprom18.i.us.5 = sext i32 %add17.i.us.5 to i64
  %arrayidx19.i.us.5 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.5
  %614 = load float, float* %arrayidx19.i.us.5, align 4, !tbaa !12
  %neg.i.us.5 = fneg float %613
  %615 = tail call float @llvm.fmuladd.f32(float %neg.i.us.5, float %614, float %612) #6
  store float %615, float* %arrayidx.i.us.5, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.5

if.end.r_exit.i.us.5:                             ; preds = %if.then.i.us.5, %pregion_for_entry.entry.i.us.5
  %616 = or i64 %_local_id_x.0.us.5, 1
  %add1.i.i.us.5.1 = add nuw nsw i64 %616, %mul.i.i
  %617 = trunc i64 %add1.i.i.us.5.1 to i32
  %conv2.i.us.5.1 = add i32 %add.i, %617
  %cmp9.i.us.5.1 = icmp slt i32 %conv2.i.us.5.1, %2
  br i1 %cmp9.i.us.5.1, label %if.then.i.us.5.1, label %if.end.r_exit.i.us.5.1

pregion_for_end.i.5.loopexit:                     ; preds = %if.end.r_exit.i.us.5.1
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.ph262, %pregion_for_end.i.4
  %618 = trunc i64 %mul3.i.i to i32
  %619 = or i32 %618, 6
  %conv7.i.6 = add i32 %add.i, %619
  %cmp.i.6 = icmp slt i32 %conv7.i.6, %2
  %mul.i.6 = mul nsw i32 %conv7.i.6, %2
  %add13.i.6 = add nsw i32 %mul.i.6, %1
  %idxprom14.i.6 = sext i32 %add13.i.6 to i64
  %arrayidx15.i.6 = getelementptr inbounds float, float* %0, i64 %idxprom14.i.6
  br i1 %cmp.i.6, label %vector.scevcheck290, label %pregion_for_end.i.6

vector.scevcheck290:                              ; preds = %pregion_for_end.i.5
  %620 = mul i32 %conv7.i.6, %2
  %621 = add i32 %620, %1
  %622 = trunc i64 %4 to i32
  %623 = shl i32 %622, 5
  %624 = add i32 %621, %623
  %625 = add i32 %624, 1
  %626 = add i32 %624, 32
  %627 = icmp slt i32 %626, %625
  %628 = add i32 %2, 1
  %629 = mul i32 %628, %1
  %630 = add i32 %629, %623
  %631 = add i32 %630, 1
  %632 = add i32 %630, 32
  %633 = icmp slt i32 %632, %631
  %634 = or i1 %627, %633
  br i1 %634, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.memcheck312

pregion_for_entry.entry.i.us.6.preheader:         ; preds = %vector.memcheck312, %vector.scevcheck290
  br label %pregion_for_entry.entry.i.us.6

vector.memcheck312:                               ; preds = %vector.scevcheck290
  %635 = mul i32 %conv7.i.6, %2
  %636 = add i32 %635, %1
  %637 = trunc i64 %4 to i32
  %638 = shl i32 %637, 5
  %639 = add i32 %636, %638
  %640 = add i32 %639, 1
  %641 = sext i32 %640 to i64
  %scevgep292 = getelementptr float, float* %0, i64 %641
  %scevgep292293 = bitcast float* %scevgep292 to i8*
  %642 = add nsw i64 %641, 32
  %scevgep294 = getelementptr float, float* %0, i64 %642
  %scevgep296 = getelementptr float, float* %0, i64 %idxprom14.i.6
  %scevgep296297 = bitcast float* %scevgep296 to i8*
  %uglygep298 = getelementptr i8, i8* %scevgep296297, i64 1
  %643 = add i32 %2, 1
  %644 = mul i32 %643, %1
  %645 = add i32 %644, %638
  %646 = add i32 %645, 1
  %647 = sext i32 %646 to i64
  %scevgep299 = getelementptr float, float* %0, i64 %647
  %648 = add nsw i64 %647, 32
  %scevgep301 = getelementptr float, float* %0, i64 %648
  %bound0304 = icmp ugt i8* %uglygep298, %scevgep292293
  %bound1305 = icmp ult float* %arrayidx15.i.6, %scevgep294
  %found.conflict306 = and i1 %bound0304, %bound1305
  %bound0307 = icmp ult float* %scevgep292, %scevgep301
  %bound1308 = icmp ult float* %scevgep299, %scevgep294
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %found.conflict306, %found.conflict309
  br i1 %conflict.rdx310, label %pregion_for_entry.entry.i.us.6.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck312
  %broadcast.splatinsert320 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat321 = shufflevector <8 x i64> %broadcast.splatinsert320, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert322 = insertelement <8 x i32> undef, i32 %add.i, i32 0
  %broadcast.splat323 = shufflevector <8 x i32> %broadcast.splatinsert322, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert324 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat325 = shufflevector <8 x i32> %broadcast.splatinsert324, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert327 = insertelement <8 x float*> undef, float* %arrayidx15.i.6, i32 0
  %broadcast.splat328 = shufflevector <8 x float*> %broadcast.splatinsert327, <8 x float*> undef, <8 x i32> zeroinitializer
  %649 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %650 = or <8 x i32> %649, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %651 = add <8 x i32> %broadcast.splat323, %650
  %652 = icmp slt <8 x i32> %651, %broadcast.splat325
  %653 = extractelement <8 x i32> %651, i32 0
  %654 = add nsw i32 %653, %mul.i.6
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds float, float* %0, i64 %655
  %657 = bitcast float* %656 to <8 x float>*
  %wide.masked.load326 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %657, i32 4, <8 x i1> %652, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !70
  %wide.masked.gather329 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %652, <8 x float> undef), !tbaa !12, !alias.scope !73
  %658 = add nsw i32 %653, %mul16.i
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds float, float* %0, i64 %659
  %661 = bitcast float* %660 to <8 x float>*
  %wide.masked.load330 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %661, i32 4, <8 x i1> %652, <8 x float> undef), !tbaa !12, !alias.scope !74
  %662 = fneg <8 x float> %wide.masked.gather329
  %663 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %662, <8 x float> %wide.masked.load330, <8 x float> %wide.masked.load326)
  %664 = bitcast float* %656 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %663, <8 x float>* %664, i32 4, <8 x i1> %652), !tbaa !12, !alias.scope !67, !noalias !70, !llvm.access.group !24
  %665 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %666 = or <8 x i32> %665, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %667 = add <8 x i32> %broadcast.splat323, %666
  %668 = icmp slt <8 x i32> %667, %broadcast.splat325
  %669 = extractelement <8 x i32> %667, i32 0
  %670 = add nsw i32 %669, %mul.i.6
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds float, float* %0, i64 %671
  %673 = bitcast float* %672 to <8 x float>*
  %wide.masked.load326.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %673, i32 4, <8 x i1> %668, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !70
  %wide.masked.gather329.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %668, <8 x float> undef), !tbaa !12, !alias.scope !73
  %674 = add nsw i32 %669, %mul16.i
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds float, float* %0, i64 %675
  %677 = bitcast float* %676 to <8 x float>*
  %wide.masked.load330.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %677, i32 4, <8 x i1> %668, <8 x float> undef), !tbaa !12, !alias.scope !74
  %678 = fneg <8 x float> %wide.masked.gather329.1
  %679 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %678, <8 x float> %wide.masked.load330.1, <8 x float> %wide.masked.load326.1)
  %680 = bitcast float* %672 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %679, <8 x float>* %680, i32 4, <8 x i1> %668), !tbaa !12, !alias.scope !67, !noalias !70, !llvm.access.group !24
  %681 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %682 = or <8 x i32> %681, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %683 = add <8 x i32> %broadcast.splat323, %682
  %684 = icmp slt <8 x i32> %683, %broadcast.splat325
  %685 = extractelement <8 x i32> %683, i32 0
  %686 = add nsw i32 %685, %mul.i.6
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds float, float* %0, i64 %687
  %689 = bitcast float* %688 to <8 x float>*
  %wide.masked.load326.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %689, i32 4, <8 x i1> %684, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !70
  %wide.masked.gather329.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %684, <8 x float> undef), !tbaa !12, !alias.scope !73
  %690 = add nsw i32 %685, %mul16.i
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds float, float* %0, i64 %691
  %693 = bitcast float* %692 to <8 x float>*
  %wide.masked.load330.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %693, i32 4, <8 x i1> %684, <8 x float> undef), !tbaa !12, !alias.scope !74
  %694 = fneg <8 x float> %wide.masked.gather329.2
  %695 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %694, <8 x float> %wide.masked.load330.2, <8 x float> %wide.masked.load326.2)
  %696 = bitcast float* %688 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %695, <8 x float>* %696, i32 4, <8 x i1> %684), !tbaa !12, !alias.scope !67, !noalias !70, !llvm.access.group !24
  %697 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %698 = or <8 x i32> %697, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %699 = add <8 x i32> %broadcast.splat323, %698
  %700 = icmp slt <8 x i32> %699, %broadcast.splat325
  %701 = extractelement <8 x i32> %699, i32 0
  %702 = add nsw i32 %701, %mul.i.6
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds float, float* %0, i64 %703
  %705 = bitcast float* %704 to <8 x float>*
  %wide.masked.load326.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %705, i32 4, <8 x i1> %700, <8 x float> undef), !tbaa !12, !alias.scope !67, !noalias !70
  %wide.masked.gather329.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %700, <8 x float> undef), !tbaa !12, !alias.scope !73
  %706 = add nsw i32 %701, %mul16.i
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds float, float* %0, i64 %707
  %709 = bitcast float* %708 to <8 x float>*
  %wide.masked.load330.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %709, i32 4, <8 x i1> %700, <8 x float> undef), !tbaa !12, !alias.scope !74
  %710 = fneg <8 x float> %wide.masked.gather329.3
  %711 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %710, <8 x float> %wide.masked.load330.3, <8 x float> %wide.masked.load326.3)
  %712 = bitcast float* %704 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %711, <8 x float>* %712, i32 4, <8 x i1> %700), !tbaa !12, !alias.scope !67, !noalias !70, !llvm.access.group !24
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.us.6:                   ; preds = %if.end.r_exit.i.us.6.1, %pregion_for_entry.entry.i.us.6.preheader
  %_local_id_x.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.us.6.preheader ], [ %831, %if.end.r_exit.i.us.6.1 ]
  %add1.i.i.us.6 = add nuw nsw i64 %_local_id_x.0.us.6, %mul.i.i
  %713 = trunc i64 %add1.i.i.us.6 to i32
  %conv2.i.us.6 = add i32 %add.i, %713
  %cmp9.i.us.6 = icmp slt i32 %conv2.i.us.6, %2
  br i1 %cmp9.i.us.6, label %if.then.i.us.6, label %if.end.r_exit.i.us.6

if.then.i.us.6:                                   ; preds = %pregion_for_entry.entry.i.us.6
  %add11.i.us.6 = add nsw i32 %conv2.i.us.6, %mul.i.6
  %idxprom.i.us.6 = sext i32 %add11.i.us.6 to i64
  %arrayidx.i.us.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.6
  %714 = load float, float* %arrayidx.i.us.6, align 4, !tbaa !12
  %715 = load float, float* %arrayidx15.i.6, align 4, !tbaa !12
  %add17.i.us.6 = add nsw i32 %conv2.i.us.6, %mul16.i
  %idxprom18.i.us.6 = sext i32 %add17.i.us.6 to i64
  %arrayidx19.i.us.6 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.6
  %716 = load float, float* %arrayidx19.i.us.6, align 4, !tbaa !12
  %neg.i.us.6 = fneg float %715
  %717 = tail call float @llvm.fmuladd.f32(float %neg.i.us.6, float %716, float %714) #6
  store float %717, float* %arrayidx.i.us.6, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.6

if.end.r_exit.i.us.6:                             ; preds = %if.then.i.us.6, %pregion_for_entry.entry.i.us.6
  %718 = or i64 %_local_id_x.0.us.6, 1
  %add1.i.i.us.6.1 = add nuw nsw i64 %718, %mul.i.i
  %719 = trunc i64 %add1.i.i.us.6.1 to i32
  %conv2.i.us.6.1 = add i32 %add.i, %719
  %cmp9.i.us.6.1 = icmp slt i32 %conv2.i.us.6.1, %2
  br i1 %cmp9.i.us.6.1, label %if.then.i.us.6.1, label %if.end.r_exit.i.us.6.1

pregion_for_end.i.6.loopexit:                     ; preds = %if.end.r_exit.i.us.6.1
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.ph313, %pregion_for_end.i.5
  %720 = trunc i64 %mul3.i.i to i32
  %721 = or i32 %720, 7
  %conv7.i.7 = add i32 %add.i, %721
  %cmp.i.7 = icmp slt i32 %conv7.i.7, %2
  %mul.i.7 = mul nsw i32 %conv7.i.7, %2
  %add13.i.7 = add nsw i32 %mul.i.7, %1
  %idxprom14.i.7 = sext i32 %add13.i.7 to i64
  %arrayidx15.i.7 = getelementptr inbounds float, float* %0, i64 %idxprom14.i.7
  br i1 %cmp.i.7, label %vector.scevcheck341, label %pregion_for_end.i.7

vector.scevcheck341:                              ; preds = %pregion_for_end.i.6
  %722 = mul i32 %conv7.i.7, %2
  %723 = add i32 %722, %1
  %724 = trunc i64 %4 to i32
  %725 = shl i32 %724, 5
  %726 = add i32 %723, %725
  %727 = add i32 %726, 1
  %728 = add i32 %726, 32
  %729 = icmp slt i32 %728, %727
  %730 = add i32 %2, 1
  %731 = mul i32 %730, %1
  %732 = add i32 %731, %725
  %733 = add i32 %732, 1
  %734 = add i32 %732, 32
  %735 = icmp slt i32 %734, %733
  %736 = or i1 %729, %735
  br i1 %736, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.memcheck363

pregion_for_entry.entry.i.us.7.preheader:         ; preds = %vector.memcheck363, %vector.scevcheck341
  br label %pregion_for_entry.entry.i.us.7

vector.memcheck363:                               ; preds = %vector.scevcheck341
  %737 = mul i32 %conv7.i.7, %2
  %738 = add i32 %737, %1
  %739 = trunc i64 %4 to i32
  %740 = shl i32 %739, 5
  %741 = add i32 %738, %740
  %742 = add i32 %741, 1
  %743 = sext i32 %742 to i64
  %scevgep343 = getelementptr float, float* %0, i64 %743
  %scevgep343344 = bitcast float* %scevgep343 to i8*
  %744 = add nsw i64 %743, 32
  %scevgep345 = getelementptr float, float* %0, i64 %744
  %scevgep347 = getelementptr float, float* %0, i64 %idxprom14.i.7
  %scevgep347348 = bitcast float* %scevgep347 to i8*
  %uglygep349 = getelementptr i8, i8* %scevgep347348, i64 1
  %745 = add i32 %2, 1
  %746 = mul i32 %745, %1
  %747 = add i32 %746, %740
  %748 = add i32 %747, 1
  %749 = sext i32 %748 to i64
  %scevgep350 = getelementptr float, float* %0, i64 %749
  %750 = add nsw i64 %749, 32
  %scevgep352 = getelementptr float, float* %0, i64 %750
  %bound0355 = icmp ugt i8* %uglygep349, %scevgep343344
  %bound1356 = icmp ult float* %arrayidx15.i.7, %scevgep345
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0358 = icmp ult float* %scevgep343, %scevgep352
  %bound1359 = icmp ult float* %scevgep350, %scevgep345
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %found.conflict357, %found.conflict360
  br i1 %conflict.rdx361, label %pregion_for_entry.entry.i.us.7.preheader, label %vector.ph364

vector.ph364:                                     ; preds = %vector.memcheck363
  %broadcast.splatinsert371 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat372 = shufflevector <8 x i64> %broadcast.splatinsert371, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert373 = insertelement <8 x i32> undef, i32 %add.i, i32 0
  %broadcast.splat374 = shufflevector <8 x i32> %broadcast.splatinsert373, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert375 = insertelement <8 x i32> undef, i32 %2, i32 0
  %broadcast.splat376 = shufflevector <8 x i32> %broadcast.splatinsert375, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert378 = insertelement <8 x float*> undef, float* %arrayidx15.i.7, i32 0
  %broadcast.splat379 = shufflevector <8 x float*> %broadcast.splatinsert378, <8 x float*> undef, <8 x i32> zeroinitializer
  %751 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %752 = or <8 x i32> %751, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %753 = add <8 x i32> %broadcast.splat374, %752
  %754 = icmp slt <8 x i32> %753, %broadcast.splat376
  %755 = extractelement <8 x i32> %753, i32 0
  %756 = add nsw i32 %755, %mul.i.7
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds float, float* %0, i64 %757
  %759 = bitcast float* %758 to <8 x float>*
  %wide.masked.load377 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %759, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !75, !noalias !78
  %wide.masked.gather380 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !81
  %760 = add nsw i32 %755, %mul16.i
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds float, float* %0, i64 %761
  %763 = bitcast float* %762 to <8 x float>*
  %wide.masked.load381 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %763, i32 4, <8 x i1> %754, <8 x float> undef), !tbaa !12, !alias.scope !82
  %764 = fneg <8 x float> %wide.masked.gather380
  %765 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %764, <8 x float> %wide.masked.load381, <8 x float> %wide.masked.load377)
  %766 = bitcast float* %758 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %765, <8 x float>* %766, i32 4, <8 x i1> %754), !tbaa !12, !alias.scope !75, !noalias !78, !llvm.access.group !24
  %767 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %768 = or <8 x i32> %767, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %769 = add <8 x i32> %broadcast.splat374, %768
  %770 = icmp slt <8 x i32> %769, %broadcast.splat376
  %771 = extractelement <8 x i32> %769, i32 0
  %772 = add nsw i32 %771, %mul.i.7
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds float, float* %0, i64 %773
  %775 = bitcast float* %774 to <8 x float>*
  %wide.masked.load377.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %775, i32 4, <8 x i1> %770, <8 x float> undef), !tbaa !12, !alias.scope !75, !noalias !78
  %wide.masked.gather380.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %770, <8 x float> undef), !tbaa !12, !alias.scope !81
  %776 = add nsw i32 %771, %mul16.i
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds float, float* %0, i64 %777
  %779 = bitcast float* %778 to <8 x float>*
  %wide.masked.load381.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %779, i32 4, <8 x i1> %770, <8 x float> undef), !tbaa !12, !alias.scope !82
  %780 = fneg <8 x float> %wide.masked.gather380.1
  %781 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %780, <8 x float> %wide.masked.load381.1, <8 x float> %wide.masked.load377.1)
  %782 = bitcast float* %774 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %781, <8 x float>* %782, i32 4, <8 x i1> %770), !tbaa !12, !alias.scope !75, !noalias !78, !llvm.access.group !24
  %783 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %784 = or <8 x i32> %783, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %785 = add <8 x i32> %broadcast.splat374, %784
  %786 = icmp slt <8 x i32> %785, %broadcast.splat376
  %787 = extractelement <8 x i32> %785, i32 0
  %788 = add nsw i32 %787, %mul.i.7
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds float, float* %0, i64 %789
  %791 = bitcast float* %790 to <8 x float>*
  %wide.masked.load377.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %791, i32 4, <8 x i1> %786, <8 x float> undef), !tbaa !12, !alias.scope !75, !noalias !78
  %wide.masked.gather380.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %786, <8 x float> undef), !tbaa !12, !alias.scope !81
  %792 = add nsw i32 %787, %mul16.i
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds float, float* %0, i64 %793
  %795 = bitcast float* %794 to <8 x float>*
  %wide.masked.load381.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %795, i32 4, <8 x i1> %786, <8 x float> undef), !tbaa !12, !alias.scope !82
  %796 = fneg <8 x float> %wide.masked.gather380.2
  %797 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %796, <8 x float> %wide.masked.load381.2, <8 x float> %wide.masked.load377.2)
  %798 = bitcast float* %790 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %797, <8 x float>* %798, i32 4, <8 x i1> %786), !tbaa !12, !alias.scope !75, !noalias !78, !llvm.access.group !24
  %799 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %800 = or <8 x i32> %799, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %801 = add <8 x i32> %broadcast.splat374, %800
  %802 = icmp slt <8 x i32> %801, %broadcast.splat376
  %803 = extractelement <8 x i32> %801, i32 0
  %804 = add nsw i32 %803, %mul.i.7
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds float, float* %0, i64 %805
  %807 = bitcast float* %806 to <8 x float>*
  %wide.masked.load377.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %807, i32 4, <8 x i1> %802, <8 x float> undef), !tbaa !12, !alias.scope !75, !noalias !78
  %wide.masked.gather380.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %802, <8 x float> undef), !tbaa !12, !alias.scope !81
  %808 = add nsw i32 %803, %mul16.i
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds float, float* %0, i64 %809
  %811 = bitcast float* %810 to <8 x float>*
  %wide.masked.load381.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %811, i32 4, <8 x i1> %802, <8 x float> undef), !tbaa !12, !alias.scope !82
  %812 = fneg <8 x float> %wide.masked.gather380.3
  %813 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %812, <8 x float> %wide.masked.load381.3, <8 x float> %wide.masked.load377.3)
  %814 = bitcast float* %806 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %813, <8 x float>* %814, i32 4, <8 x i1> %802), !tbaa !12, !alias.scope !75, !noalias !78, !llvm.access.group !24
  br label %pregion_for_end.i.7

pregion_for_entry.entry.i.us.7:                   ; preds = %if.end.r_exit.i.us.7.1, %pregion_for_entry.entry.i.us.7.preheader
  %_local_id_x.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.us.7.preheader ], [ %826, %if.end.r_exit.i.us.7.1 ]
  %add1.i.i.us.7 = add nuw nsw i64 %_local_id_x.0.us.7, %mul.i.i
  %815 = trunc i64 %add1.i.i.us.7 to i32
  %conv2.i.us.7 = add i32 %add.i, %815
  %cmp9.i.us.7 = icmp slt i32 %conv2.i.us.7, %2
  br i1 %cmp9.i.us.7, label %if.then.i.us.7, label %if.end.r_exit.i.us.7

if.then.i.us.7:                                   ; preds = %pregion_for_entry.entry.i.us.7
  %add11.i.us.7 = add nsw i32 %conv2.i.us.7, %mul.i.7
  %idxprom.i.us.7 = sext i32 %add11.i.us.7 to i64
  %arrayidx.i.us.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.7
  %816 = load float, float* %arrayidx.i.us.7, align 4, !tbaa !12
  %817 = load float, float* %arrayidx15.i.7, align 4, !tbaa !12
  %add17.i.us.7 = add nsw i32 %conv2.i.us.7, %mul16.i
  %idxprom18.i.us.7 = sext i32 %add17.i.us.7 to i64
  %arrayidx19.i.us.7 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.7
  %818 = load float, float* %arrayidx19.i.us.7, align 4, !tbaa !12
  %neg.i.us.7 = fneg float %817
  %819 = tail call float @llvm.fmuladd.f32(float %neg.i.us.7, float %818, float %816) #6
  store float %819, float* %arrayidx.i.us.7, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.7

if.end.r_exit.i.us.7:                             ; preds = %if.then.i.us.7, %pregion_for_entry.entry.i.us.7
  %820 = or i64 %_local_id_x.0.us.7, 1
  %add1.i.i.us.7.1 = add nuw nsw i64 %820, %mul.i.i
  %821 = trunc i64 %add1.i.i.us.7.1 to i32
  %conv2.i.us.7.1 = add i32 %add.i, %821
  %cmp9.i.us.7.1 = icmp slt i32 %conv2.i.us.7.1, %2
  br i1 %cmp9.i.us.7.1, label %if.then.i.us.7.1, label %if.end.r_exit.i.us.7.1

pregion_for_end.i.7.loopexit:                     ; preds = %if.end.r_exit.i.us.7.1
  br label %pregion_for_end.i.7

pregion_for_end.i.7:                              ; preds = %pregion_for_end.i.7.loopexit, %vector.ph364, %pregion_for_end.i.6
  ret void

if.then.i.us.7.1:                                 ; preds = %if.end.r_exit.i.us.7
  %add11.i.us.7.1 = add nsw i32 %conv2.i.us.7.1, %mul.i.7
  %idxprom.i.us.7.1 = sext i32 %add11.i.us.7.1 to i64
  %arrayidx.i.us.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.7.1
  %822 = load float, float* %arrayidx.i.us.7.1, align 4, !tbaa !12
  %823 = load float, float* %arrayidx15.i.7, align 4, !tbaa !12
  %add17.i.us.7.1 = add nsw i32 %conv2.i.us.7.1, %mul16.i
  %idxprom18.i.us.7.1 = sext i32 %add17.i.us.7.1 to i64
  %arrayidx19.i.us.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.7.1
  %824 = load float, float* %arrayidx19.i.us.7.1, align 4, !tbaa !12
  %neg.i.us.7.1 = fneg float %823
  %825 = tail call float @llvm.fmuladd.f32(float %neg.i.us.7.1, float %824, float %822) #6
  store float %825, float* %arrayidx.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.7.1

if.end.r_exit.i.us.7.1:                           ; preds = %if.then.i.us.7.1, %if.end.r_exit.i.us.7
  %826 = add nuw nsw i64 %_local_id_x.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %826, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.7.loopexit, label %pregion_for_entry.entry.i.us.7, !llvm.loop !83

if.then.i.us.6.1:                                 ; preds = %if.end.r_exit.i.us.6
  %add11.i.us.6.1 = add nsw i32 %conv2.i.us.6.1, %mul.i.6
  %idxprom.i.us.6.1 = sext i32 %add11.i.us.6.1 to i64
  %arrayidx.i.us.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.6.1
  %827 = load float, float* %arrayidx.i.us.6.1, align 4, !tbaa !12
  %828 = load float, float* %arrayidx15.i.6, align 4, !tbaa !12
  %add17.i.us.6.1 = add nsw i32 %conv2.i.us.6.1, %mul16.i
  %idxprom18.i.us.6.1 = sext i32 %add17.i.us.6.1 to i64
  %arrayidx19.i.us.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.6.1
  %829 = load float, float* %arrayidx19.i.us.6.1, align 4, !tbaa !12
  %neg.i.us.6.1 = fneg float %828
  %830 = tail call float @llvm.fmuladd.f32(float %neg.i.us.6.1, float %829, float %827) #6
  store float %830, float* %arrayidx.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.6.1

if.end.r_exit.i.us.6.1:                           ; preds = %if.then.i.us.6.1, %if.end.r_exit.i.us.6
  %831 = add nuw nsw i64 %_local_id_x.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %831, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.us.6, !llvm.loop !86

if.then.i.us.5.1:                                 ; preds = %if.end.r_exit.i.us.5
  %add11.i.us.5.1 = add nsw i32 %conv2.i.us.5.1, %mul.i.5
  %idxprom.i.us.5.1 = sext i32 %add11.i.us.5.1 to i64
  %arrayidx.i.us.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.5.1
  %832 = load float, float* %arrayidx.i.us.5.1, align 4, !tbaa !12
  %833 = load float, float* %arrayidx15.i.5, align 4, !tbaa !12
  %add17.i.us.5.1 = add nsw i32 %conv2.i.us.5.1, %mul16.i
  %idxprom18.i.us.5.1 = sext i32 %add17.i.us.5.1 to i64
  %arrayidx19.i.us.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.5.1
  %834 = load float, float* %arrayidx19.i.us.5.1, align 4, !tbaa !12
  %neg.i.us.5.1 = fneg float %833
  %835 = tail call float @llvm.fmuladd.f32(float %neg.i.us.5.1, float %834, float %832) #6
  store float %835, float* %arrayidx.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.5.1

if.end.r_exit.i.us.5.1:                           ; preds = %if.then.i.us.5.1, %if.end.r_exit.i.us.5
  %836 = add nuw nsw i64 %_local_id_x.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %836, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.us.5, !llvm.loop !87

if.then.i.us.4.1:                                 ; preds = %if.end.r_exit.i.us.4
  %add11.i.us.4.1 = add nsw i32 %conv2.i.us.4.1, %mul.i.4
  %idxprom.i.us.4.1 = sext i32 %add11.i.us.4.1 to i64
  %arrayidx.i.us.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.4.1
  %837 = load float, float* %arrayidx.i.us.4.1, align 4, !tbaa !12
  %838 = load float, float* %arrayidx15.i.4, align 4, !tbaa !12
  %add17.i.us.4.1 = add nsw i32 %conv2.i.us.4.1, %mul16.i
  %idxprom18.i.us.4.1 = sext i32 %add17.i.us.4.1 to i64
  %arrayidx19.i.us.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.4.1
  %839 = load float, float* %arrayidx19.i.us.4.1, align 4, !tbaa !12
  %neg.i.us.4.1 = fneg float %838
  %840 = tail call float @llvm.fmuladd.f32(float %neg.i.us.4.1, float %839, float %837) #6
  store float %840, float* %arrayidx.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.4.1

if.end.r_exit.i.us.4.1:                           ; preds = %if.then.i.us.4.1, %if.end.r_exit.i.us.4
  %841 = add nuw nsw i64 %_local_id_x.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %841, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.us.4, !llvm.loop !88

if.then.i.us.3.1:                                 ; preds = %if.end.r_exit.i.us.3
  %add11.i.us.3.1 = add nsw i32 %conv2.i.us.3.1, %mul.i.3
  %idxprom.i.us.3.1 = sext i32 %add11.i.us.3.1 to i64
  %arrayidx.i.us.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.3.1
  %842 = load float, float* %arrayidx.i.us.3.1, align 4, !tbaa !12
  %843 = load float, float* %arrayidx15.i.3, align 4, !tbaa !12
  %add17.i.us.3.1 = add nsw i32 %conv2.i.us.3.1, %mul16.i
  %idxprom18.i.us.3.1 = sext i32 %add17.i.us.3.1 to i64
  %arrayidx19.i.us.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.3.1
  %844 = load float, float* %arrayidx19.i.us.3.1, align 4, !tbaa !12
  %neg.i.us.3.1 = fneg float %843
  %845 = tail call float @llvm.fmuladd.f32(float %neg.i.us.3.1, float %844, float %842) #6
  store float %845, float* %arrayidx.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.3.1

if.end.r_exit.i.us.3.1:                           ; preds = %if.then.i.us.3.1, %if.end.r_exit.i.us.3
  %846 = add nuw nsw i64 %_local_id_x.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %846, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.us.3, !llvm.loop !89

if.then.i.us.2.1:                                 ; preds = %if.end.r_exit.i.us.2
  %add11.i.us.2.1 = add nsw i32 %conv2.i.us.2.1, %mul.i.2
  %idxprom.i.us.2.1 = sext i32 %add11.i.us.2.1 to i64
  %arrayidx.i.us.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.2.1
  %847 = load float, float* %arrayidx.i.us.2.1, align 4, !tbaa !12
  %848 = load float, float* %arrayidx15.i.2, align 4, !tbaa !12
  %add17.i.us.2.1 = add nsw i32 %conv2.i.us.2.1, %mul16.i
  %idxprom18.i.us.2.1 = sext i32 %add17.i.us.2.1 to i64
  %arrayidx19.i.us.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.2.1
  %849 = load float, float* %arrayidx19.i.us.2.1, align 4, !tbaa !12
  %neg.i.us.2.1 = fneg float %848
  %850 = tail call float @llvm.fmuladd.f32(float %neg.i.us.2.1, float %849, float %847) #6
  store float %850, float* %arrayidx.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.2.1

if.end.r_exit.i.us.2.1:                           ; preds = %if.then.i.us.2.1, %if.end.r_exit.i.us.2
  %851 = add nuw nsw i64 %_local_id_x.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %851, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.us.2, !llvm.loop !90

if.then.i.us.1.1:                                 ; preds = %if.end.r_exit.i.us.1
  %add11.i.us.1.1 = add nsw i32 %conv2.i.us.1.1, %mul.i.1
  %idxprom.i.us.1.1 = sext i32 %add11.i.us.1.1 to i64
  %arrayidx.i.us.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1.1
  %852 = load float, float* %arrayidx.i.us.1.1, align 4, !tbaa !12
  %853 = load float, float* %arrayidx15.i.1, align 4, !tbaa !12
  %add17.i.us.1.1 = add nsw i32 %conv2.i.us.1.1, %mul16.i
  %idxprom18.i.us.1.1 = sext i32 %add17.i.us.1.1 to i64
  %arrayidx19.i.us.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.1.1
  %854 = load float, float* %arrayidx19.i.us.1.1, align 4, !tbaa !12
  %neg.i.us.1.1 = fneg float %853
  %855 = tail call float @llvm.fmuladd.f32(float %neg.i.us.1.1, float %854, float %852) #6
  store float %855, float* %arrayidx.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.1.1

if.end.r_exit.i.us.1.1:                           ; preds = %if.then.i.us.1.1, %if.end.r_exit.i.us.1
  %856 = add nuw nsw i64 %_local_id_x.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %856, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.us.1, !llvm.loop !91

if.then.i.us.1402:                                ; preds = %if.end.r_exit.i.us
  %add11.i.us.1395 = add nsw i32 %conv2.i.us.1392, %mul.i
  %idxprom.i.us.1396 = sext i32 %add11.i.us.1395 to i64
  %arrayidx.i.us.1397 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.1396
  %857 = load float, float* %arrayidx.i.us.1397, align 4, !tbaa !12
  %858 = load float, float* %arrayidx15.i, align 4, !tbaa !12
  %add17.i.us.1398 = add nsw i32 %conv2.i.us.1392, %mul16.i
  %idxprom18.i.us.1399 = sext i32 %add17.i.us.1398 to i64
  %arrayidx19.i.us.1400 = getelementptr inbounds float, float* %0, i64 %idxprom18.i.us.1399
  %859 = load float, float* %arrayidx19.i.us.1400, align 4, !tbaa !12
  %neg.i.us.1401 = fneg float %858
  %860 = tail call float @llvm.fmuladd.f32(float %neg.i.us.1401, float %859, float %857) #6
  store float %860, float* %arrayidx.i.us.1397, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.us.1403

if.end.r_exit.i.us.1403:                          ; preds = %if.then.i.us.1402, %if.end.r_exit.i.us
  %861 = add nuw nsw i64 %_local_id_x.0.us, 2
  %exitcond.not.1 = icmp eq i64 %861, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !92
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_lu_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to i32**
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr i8*, i8** %0, i64 2
  %13 = bitcast i8** %12 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %mul.i.i.i = shl i64 %2, 5
  %add.i.i = add nsw i32 %11, 1
  %mul3.i.i.i = shl i64 %3, 3
  %mul16.i.i = mul nsw i32 %15, %11
  %16 = trunc i64 %mul3.i.i.i to i32
  %conv7.i.i = add i32 %add.i.i, %16
  %cmp.i.i = icmp slt i32 %conv7.i.i, %15
  %mul.i.i = mul nsw i32 %conv7.i.i, %15
  %add13.i.i = add nsw i32 %mul.i.i, %11
  %idxprom14.i.i = sext i32 %add13.i.i to i64
  %arrayidx15.i.i = getelementptr inbounds float, float* %7, i64 %idxprom14.i.i
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %17 = mul i32 %15, %conv7.i.i
  %18 = add i32 %11, %17
  %19 = trunc i64 %2 to i32
  %20 = shl i32 %19, 5
  %21 = add i32 %18, %20
  %22 = add i32 %21, 1
  %23 = add i32 %21, 32
  %24 = icmp slt i32 %23, %22
  %25 = add i32 %15, 1
  %26 = mul i32 %11, %25
  %27 = add i32 %26, %20
  %28 = add i32 %27, 1
  %29 = add i32 %27, 32
  %30 = icmp slt i32 %29, %28
  %31 = or i1 %24, %30
  br i1 %31, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %32 = mul i32 %15, %conv7.i.i
  %33 = add i32 %11, %32
  %34 = trunc i64 %2 to i32
  %35 = shl i32 %34, 5
  %36 = add i32 %33, %35
  %37 = add i32 %36, 1
  %38 = sext i32 %37 to i64
  %scevgep = getelementptr float, float* %7, i64 %38
  %scevgep6 = bitcast float* %scevgep to i8*
  %39 = add nsw i64 %38, 32
  %scevgep7 = getelementptr float, float* %7, i64 %39
  %scevgep9 = getelementptr float, float* %7, i64 %idxprom14.i.i
  %scevgep910 = bitcast float* %scevgep9 to i8*
  %uglygep = getelementptr i8, i8* %scevgep910, i64 1
  %40 = add i32 %15, 1
  %41 = mul i32 %11, %40
  %42 = add i32 %41, %35
  %43 = add i32 %42, 1
  %44 = sext i32 %43 to i64
  %scevgep11 = getelementptr float, float* %7, i64 %44
  %45 = add nsw i64 %44, 32
  %scevgep13 = getelementptr float, float* %7, i64 %45
  %bound0 = icmp ugt i8* %uglygep, %scevgep6
  %bound1 = icmp ult float* %arrayidx15.i.i, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ult float* %scevgep, %scevgep13
  %bound116 = icmp ult float* %scevgep11, %scevgep7
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat19 = shufflevector <8 x i32> %broadcast.splatinsert18, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <8 x float*> undef, float* %arrayidx15.i.i, i32 0
  %broadcast.splat23 = shufflevector <8 x float*> %broadcast.splatinsert22, <8 x float*> undef, <8 x i32> zeroinitializer
  %46 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %47 = or <8 x i32> %46, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %48 = add <8 x i32> %broadcast.splat19, %47
  %49 = icmp slt <8 x i32> %48, %broadcast.splat21
  %50 = extractelement <8 x i32> %48, i32 0
  %51 = add nsw i32 %50, %mul.i.i
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %7, i64 %52
  %54 = bitcast float* %53 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %54, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !99
  %55 = add nsw i32 %50, %mul16.i.i
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %7, i64 %56
  %58 = bitcast float* %57 to <8 x float>*
  %wide.masked.load24 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %58, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !100
  %59 = fneg <8 x float> %wide.masked.gather
  %60 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %59, <8 x float> %wide.masked.load24, <8 x float> %wide.masked.load)
  %61 = bitcast float* %53 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %60, <8 x float>* %61, i32 4, <8 x i1> %49), !tbaa !12, !alias.scope !93, !noalias !96, !llvm.access.group !24
  %62 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %63 = or <8 x i32> %62, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %64 = add <8 x i32> %broadcast.splat19, %63
  %65 = icmp slt <8 x i32> %64, %broadcast.splat21
  %66 = extractelement <8 x i32> %64, i32 0
  %67 = add nsw i32 %66, %mul.i.i
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %7, i64 %68
  %70 = bitcast float* %69 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %70, i32 4, <8 x i1> %65, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %65, <8 x float> undef), !tbaa !12, !alias.scope !99
  %71 = add nsw i32 %66, %mul16.i.i
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %7, i64 %72
  %74 = bitcast float* %73 to <8 x float>*
  %wide.masked.load24.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %74, i32 4, <8 x i1> %65, <8 x float> undef), !tbaa !12, !alias.scope !100
  %75 = fneg <8 x float> %wide.masked.gather.1
  %76 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %75, <8 x float> %wide.masked.load24.1, <8 x float> %wide.masked.load.1)
  %77 = bitcast float* %69 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %76, <8 x float>* %77, i32 4, <8 x i1> %65), !tbaa !12, !alias.scope !93, !noalias !96, !llvm.access.group !24
  %78 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %79 = or <8 x i32> %78, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %80 = add <8 x i32> %broadcast.splat19, %79
  %81 = icmp slt <8 x i32> %80, %broadcast.splat21
  %82 = extractelement <8 x i32> %80, i32 0
  %83 = add nsw i32 %82, %mul.i.i
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %7, i64 %84
  %86 = bitcast float* %85 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %86, i32 4, <8 x i1> %81, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %wide.masked.gather.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %81, <8 x float> undef), !tbaa !12, !alias.scope !99
  %87 = add nsw i32 %82, %mul16.i.i
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %7, i64 %88
  %90 = bitcast float* %89 to <8 x float>*
  %wide.masked.load24.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %90, i32 4, <8 x i1> %81, <8 x float> undef), !tbaa !12, !alias.scope !100
  %91 = fneg <8 x float> %wide.masked.gather.2
  %92 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %91, <8 x float> %wide.masked.load24.2, <8 x float> %wide.masked.load.2)
  %93 = bitcast float* %85 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %92, <8 x float>* %93, i32 4, <8 x i1> %81), !tbaa !12, !alias.scope !93, !noalias !96, !llvm.access.group !24
  %94 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %95 = or <8 x i32> %94, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %96 = add <8 x i32> %broadcast.splat19, %95
  %97 = icmp slt <8 x i32> %96, %broadcast.splat21
  %98 = extractelement <8 x i32> %96, i32 0
  %99 = add nsw i32 %98, %mul.i.i
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %7, i64 %100
  %102 = bitcast float* %101 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %102, i32 4, <8 x i1> %97, <8 x float> undef), !tbaa !12, !alias.scope !93, !noalias !96
  %wide.masked.gather.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %97, <8 x float> undef), !tbaa !12, !alias.scope !99
  %103 = add nsw i32 %98, %mul16.i.i
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %7, i64 %104
  %106 = bitcast float* %105 to <8 x float>*
  %wide.masked.load24.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %106, i32 4, <8 x i1> %97, <8 x float> undef), !tbaa !12, !alias.scope !100
  %107 = fneg <8 x float> %wide.masked.gather.3
  %108 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %107, <8 x float> %wide.masked.load24.3, <8 x float> %wide.masked.load.3)
  %109 = bitcast float* %101 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %108, <8 x float>* %109, i32 4, <8 x i1> %97), !tbaa !12, !alias.scope !93, !noalias !96, !llvm.access.group !24
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1403, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %870, %if.end.r_exit.i.i.us.1403 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %110 = trunc i64 %add1.i.i.i.us to i32
  %conv2.i.i.us = add i32 %add.i.i, %110
  %cmp9.i.i.us = icmp slt i32 %conv2.i.i.us, %15
  br i1 %cmp9.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add11.i.i.us = add nsw i32 %conv2.i.i.us, %mul.i.i
  %idxprom.i.i.us = sext i32 %add11.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  %111 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %112 = load float, float* %arrayidx15.i.i, align 4, !tbaa !12
  %add17.i.i.us = add nsw i32 %conv2.i.i.us, %mul16.i.i
  %idxprom18.i.i.us = sext i32 %add17.i.i.us to i64
  %arrayidx19.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us
  %113 = load float, float* %arrayidx19.i.i.us, align 4, !tbaa !12
  %neg.i.i.us = fneg float %112
  %114 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us, float %113, float %111) #6
  store float %114, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %115 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1391 = add nuw nsw i64 %115, %mul.i.i.i
  %116 = trunc i64 %add1.i.i.i.us.1391 to i32
  %conv2.i.i.us.1392 = add i32 %add.i.i, %116
  %cmp9.i.i.us.1393 = icmp slt i32 %conv2.i.i.us.1392, %15
  br i1 %cmp9.i.i.us.1393, label %if.then.i.i.us.1402, label %if.end.r_exit.i.i.us.1403

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us.1403
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %117 = trunc i64 %mul3.i.i.i to i32
  %118 = or i32 %117, 1
  %conv7.i.i.1 = add i32 %add.i.i, %118
  %cmp.i.i.1 = icmp slt i32 %conv7.i.i.1, %15
  %mul.i.i.1 = mul nsw i32 %conv7.i.i.1, %15
  %add13.i.i.1 = add nsw i32 %mul.i.i.1, %11
  %idxprom14.i.i.1 = sext i32 %add13.i.i.1 to i64
  %arrayidx15.i.i.1 = getelementptr inbounds float, float* %7, i64 %idxprom14.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck35, label %pregion_for_end.i.i.1

vector.scevcheck35:                               ; preds = %pregion_for_end.i.i
  %119 = mul i32 %15, %conv7.i.i.1
  %120 = add i32 %11, %119
  %121 = trunc i64 %2 to i32
  %122 = shl i32 %121, 5
  %123 = add i32 %120, %122
  %124 = add i32 %123, 1
  %125 = add i32 %123, 32
  %126 = icmp slt i32 %125, %124
  %127 = add i32 %15, 1
  %128 = mul i32 %11, %127
  %129 = add i32 %128, %122
  %130 = add i32 %129, 1
  %131 = add i32 %129, 32
  %132 = icmp slt i32 %131, %130
  %133 = or i1 %126, %132
  br i1 %133, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.memcheck57

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.memcheck57, %vector.scevcheck35
  br label %pregion_for_entry.entry.i.i.us.1

vector.memcheck57:                                ; preds = %vector.scevcheck35
  %134 = mul i32 %15, %conv7.i.i.1
  %135 = add i32 %11, %134
  %136 = trunc i64 %2 to i32
  %137 = shl i32 %136, 5
  %138 = add i32 %135, %137
  %139 = add i32 %138, 1
  %140 = sext i32 %139 to i64
  %scevgep37 = getelementptr float, float* %7, i64 %140
  %scevgep3738 = bitcast float* %scevgep37 to i8*
  %141 = add nsw i64 %140, 32
  %scevgep39 = getelementptr float, float* %7, i64 %141
  %scevgep41 = getelementptr float, float* %7, i64 %idxprom14.i.i.1
  %scevgep4142 = bitcast float* %scevgep41 to i8*
  %uglygep43 = getelementptr i8, i8* %scevgep4142, i64 1
  %142 = add i32 %15, 1
  %143 = mul i32 %11, %142
  %144 = add i32 %143, %137
  %145 = add i32 %144, 1
  %146 = sext i32 %145 to i64
  %scevgep44 = getelementptr float, float* %7, i64 %146
  %147 = add nsw i64 %146, 32
  %scevgep46 = getelementptr float, float* %7, i64 %147
  %bound049 = icmp ugt i8* %uglygep43, %scevgep3738
  %bound150 = icmp ult float* %arrayidx15.i.i.1, %scevgep39
  %found.conflict51 = and i1 %bound049, %bound150
  %bound052 = icmp ult float* %scevgep37, %scevgep46
  %bound153 = icmp ult float* %scevgep44, %scevgep39
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %found.conflict51, %found.conflict54
  br i1 %conflict.rdx55, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %vector.memcheck57
  %broadcast.splatinsert65 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat66 = shufflevector <8 x i64> %broadcast.splatinsert65, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat68 = shufflevector <8 x i32> %broadcast.splatinsert67, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat70 = shufflevector <8 x i32> %broadcast.splatinsert69, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert72 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.1, i32 0
  %broadcast.splat73 = shufflevector <8 x float*> %broadcast.splatinsert72, <8 x float*> undef, <8 x i32> zeroinitializer
  %148 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %149 = or <8 x i32> %148, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %150 = add <8 x i32> %broadcast.splat68, %149
  %151 = icmp slt <8 x i32> %150, %broadcast.splat70
  %152 = extractelement <8 x i32> %150, i32 0
  %153 = add nsw i32 %152, %mul.i.i.1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %7, i64 %154
  %156 = bitcast float* %155 to <8 x float>*
  %wide.masked.load71 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %156, i32 4, <8 x i1> %151, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !104
  %wide.masked.gather74 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %151, <8 x float> undef), !tbaa !12, !alias.scope !107
  %157 = add nsw i32 %152, %mul16.i.i
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %7, i64 %158
  %160 = bitcast float* %159 to <8 x float>*
  %wide.masked.load75 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %160, i32 4, <8 x i1> %151, <8 x float> undef), !tbaa !12, !alias.scope !108
  %161 = fneg <8 x float> %wide.masked.gather74
  %162 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %161, <8 x float> %wide.masked.load75, <8 x float> %wide.masked.load71)
  %163 = bitcast float* %155 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %162, <8 x float>* %163, i32 4, <8 x i1> %151), !tbaa !12, !alias.scope !101, !noalias !104, !llvm.access.group !24
  %164 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %165 = or <8 x i32> %164, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %166 = add <8 x i32> %broadcast.splat68, %165
  %167 = icmp slt <8 x i32> %166, %broadcast.splat70
  %168 = extractelement <8 x i32> %166, i32 0
  %169 = add nsw i32 %168, %mul.i.i.1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %7, i64 %170
  %172 = bitcast float* %171 to <8 x float>*
  %wide.masked.load71.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %172, i32 4, <8 x i1> %167, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !104
  %wide.masked.gather74.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %167, <8 x float> undef), !tbaa !12, !alias.scope !107
  %173 = add nsw i32 %168, %mul16.i.i
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %7, i64 %174
  %176 = bitcast float* %175 to <8 x float>*
  %wide.masked.load75.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %176, i32 4, <8 x i1> %167, <8 x float> undef), !tbaa !12, !alias.scope !108
  %177 = fneg <8 x float> %wide.masked.gather74.1
  %178 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %177, <8 x float> %wide.masked.load75.1, <8 x float> %wide.masked.load71.1)
  %179 = bitcast float* %171 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %178, <8 x float>* %179, i32 4, <8 x i1> %167), !tbaa !12, !alias.scope !101, !noalias !104, !llvm.access.group !24
  %180 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %181 = or <8 x i32> %180, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %182 = add <8 x i32> %broadcast.splat68, %181
  %183 = icmp slt <8 x i32> %182, %broadcast.splat70
  %184 = extractelement <8 x i32> %182, i32 0
  %185 = add nsw i32 %184, %mul.i.i.1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %7, i64 %186
  %188 = bitcast float* %187 to <8 x float>*
  %wide.masked.load71.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %188, i32 4, <8 x i1> %183, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !104
  %wide.masked.gather74.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %183, <8 x float> undef), !tbaa !12, !alias.scope !107
  %189 = add nsw i32 %184, %mul16.i.i
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %7, i64 %190
  %192 = bitcast float* %191 to <8 x float>*
  %wide.masked.load75.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %192, i32 4, <8 x i1> %183, <8 x float> undef), !tbaa !12, !alias.scope !108
  %193 = fneg <8 x float> %wide.masked.gather74.2
  %194 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %193, <8 x float> %wide.masked.load75.2, <8 x float> %wide.masked.load71.2)
  %195 = bitcast float* %187 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %194, <8 x float>* %195, i32 4, <8 x i1> %183), !tbaa !12, !alias.scope !101, !noalias !104, !llvm.access.group !24
  %196 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %197 = or <8 x i32> %196, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %198 = add <8 x i32> %broadcast.splat68, %197
  %199 = icmp slt <8 x i32> %198, %broadcast.splat70
  %200 = extractelement <8 x i32> %198, i32 0
  %201 = add nsw i32 %200, %mul.i.i.1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %7, i64 %202
  %204 = bitcast float* %203 to <8 x float>*
  %wide.masked.load71.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %204, i32 4, <8 x i1> %199, <8 x float> undef), !tbaa !12, !alias.scope !101, !noalias !104
  %wide.masked.gather74.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %199, <8 x float> undef), !tbaa !12, !alias.scope !107
  %205 = add nsw i32 %200, %mul16.i.i
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %7, i64 %206
  %208 = bitcast float* %207 to <8 x float>*
  %wide.masked.load75.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %208, i32 4, <8 x i1> %199, <8 x float> undef), !tbaa !12, !alias.scope !108
  %209 = fneg <8 x float> %wide.masked.gather74.3
  %210 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %209, <8 x float> %wide.masked.load75.3, <8 x float> %wide.masked.load71.3)
  %211 = bitcast float* %203 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %210, <8 x float>* %211, i32 4, <8 x i1> %199), !tbaa !12, !alias.scope !101, !noalias !104, !llvm.access.group !24
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.r_exit.i.i.us.1.1, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ], [ %865, %if.end.r_exit.i.i.us.1.1 ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %212 = trunc i64 %add1.i.i.i.us.1 to i32
  %conv2.i.i.us.1 = add i32 %add.i.i, %212
  %cmp9.i.i.us.1 = icmp slt i32 %conv2.i.i.us.1, %15
  br i1 %cmp9.i.i.us.1, label %if.then.i.i.us.1, label %if.end.r_exit.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %add11.i.i.us.1 = add nsw i32 %conv2.i.i.us.1, %mul.i.i.1
  %idxprom.i.i.us.1 = sext i32 %add11.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1
  %213 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %214 = load float, float* %arrayidx15.i.i.1, align 4, !tbaa !12
  %add17.i.i.us.1 = add nsw i32 %conv2.i.i.us.1, %mul16.i.i
  %idxprom18.i.i.us.1 = sext i32 %add17.i.i.us.1 to i64
  %arrayidx19.i.i.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.1
  %215 = load float, float* %arrayidx19.i.i.us.1, align 4, !tbaa !12
  %neg.i.i.us.1 = fneg float %214
  %216 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.1, float %215, float %213) #6
  store float %216, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %217 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %217, %mul.i.i.i
  %218 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %conv2.i.i.us.1.1 = add i32 %add.i.i, %218
  %cmp9.i.i.us.1.1 = icmp slt i32 %conv2.i.i.us.1.1, %15
  br i1 %cmp9.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.r_exit.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.r_exit.i.i.us.1.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph58, %pregion_for_end.i.i
  %219 = trunc i64 %mul3.i.i.i to i32
  %220 = or i32 %219, 2
  %conv7.i.i.2 = add i32 %add.i.i, %220
  %cmp.i.i.2 = icmp slt i32 %conv7.i.i.2, %15
  %mul.i.i.2 = mul nsw i32 %conv7.i.i.2, %15
  %add13.i.i.2 = add nsw i32 %mul.i.i.2, %11
  %idxprom14.i.i.2 = sext i32 %add13.i.i.2 to i64
  %arrayidx15.i.i.2 = getelementptr inbounds float, float* %7, i64 %idxprom14.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck86, label %pregion_for_end.i.i.2

vector.scevcheck86:                               ; preds = %pregion_for_end.i.i.1
  %221 = mul i32 %15, %conv7.i.i.2
  %222 = add i32 %11, %221
  %223 = trunc i64 %2 to i32
  %224 = shl i32 %223, 5
  %225 = add i32 %222, %224
  %226 = add i32 %225, 1
  %227 = add i32 %225, 32
  %228 = icmp slt i32 %227, %226
  %229 = add i32 %15, 1
  %230 = mul i32 %11, %229
  %231 = add i32 %230, %224
  %232 = add i32 %231, 1
  %233 = add i32 %231, 32
  %234 = icmp slt i32 %233, %232
  %235 = or i1 %228, %234
  br i1 %235, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.memcheck108

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.memcheck108, %vector.scevcheck86
  br label %pregion_for_entry.entry.i.i.us.2

vector.memcheck108:                               ; preds = %vector.scevcheck86
  %236 = mul i32 %15, %conv7.i.i.2
  %237 = add i32 %11, %236
  %238 = trunc i64 %2 to i32
  %239 = shl i32 %238, 5
  %240 = add i32 %237, %239
  %241 = add i32 %240, 1
  %242 = sext i32 %241 to i64
  %scevgep88 = getelementptr float, float* %7, i64 %242
  %scevgep8889 = bitcast float* %scevgep88 to i8*
  %243 = add nsw i64 %242, 32
  %scevgep90 = getelementptr float, float* %7, i64 %243
  %scevgep92 = getelementptr float, float* %7, i64 %idxprom14.i.i.2
  %scevgep9293 = bitcast float* %scevgep92 to i8*
  %uglygep94 = getelementptr i8, i8* %scevgep9293, i64 1
  %244 = add i32 %15, 1
  %245 = mul i32 %11, %244
  %246 = add i32 %245, %239
  %247 = add i32 %246, 1
  %248 = sext i32 %247 to i64
  %scevgep95 = getelementptr float, float* %7, i64 %248
  %249 = add nsw i64 %248, 32
  %scevgep97 = getelementptr float, float* %7, i64 %249
  %bound0100 = icmp ugt i8* %uglygep94, %scevgep8889
  %bound1101 = icmp ult float* %arrayidx15.i.i.2, %scevgep90
  %found.conflict102 = and i1 %bound0100, %bound1101
  %bound0103 = icmp ult float* %scevgep88, %scevgep97
  %bound1104 = icmp ult float* %scevgep95, %scevgep90
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %found.conflict102, %found.conflict105
  br i1 %conflict.rdx106, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck108
  %broadcast.splatinsert116 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat117 = shufflevector <8 x i64> %broadcast.splatinsert116, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat119 = shufflevector <8 x i32> %broadcast.splatinsert118, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat121 = shufflevector <8 x i32> %broadcast.splatinsert120, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.2, i32 0
  %broadcast.splat124 = shufflevector <8 x float*> %broadcast.splatinsert123, <8 x float*> undef, <8 x i32> zeroinitializer
  %250 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %251 = or <8 x i32> %250, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %252 = add <8 x i32> %broadcast.splat119, %251
  %253 = icmp slt <8 x i32> %252, %broadcast.splat121
  %254 = extractelement <8 x i32> %252, i32 0
  %255 = add nsw i32 %254, %mul.i.i.2
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %7, i64 %256
  %258 = bitcast float* %257 to <8 x float>*
  %wide.masked.load122 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %258, i32 4, <8 x i1> %253, <8 x float> undef), !tbaa !12, !alias.scope !109, !noalias !112
  %wide.masked.gather125 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %253, <8 x float> undef), !tbaa !12, !alias.scope !115
  %259 = add nsw i32 %254, %mul16.i.i
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %7, i64 %260
  %262 = bitcast float* %261 to <8 x float>*
  %wide.masked.load126 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %262, i32 4, <8 x i1> %253, <8 x float> undef), !tbaa !12, !alias.scope !116
  %263 = fneg <8 x float> %wide.masked.gather125
  %264 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %263, <8 x float> %wide.masked.load126, <8 x float> %wide.masked.load122)
  %265 = bitcast float* %257 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %264, <8 x float>* %265, i32 4, <8 x i1> %253), !tbaa !12, !alias.scope !109, !noalias !112, !llvm.access.group !24
  %266 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %267 = or <8 x i32> %266, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %268 = add <8 x i32> %broadcast.splat119, %267
  %269 = icmp slt <8 x i32> %268, %broadcast.splat121
  %270 = extractelement <8 x i32> %268, i32 0
  %271 = add nsw i32 %270, %mul.i.i.2
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %7, i64 %272
  %274 = bitcast float* %273 to <8 x float>*
  %wide.masked.load122.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %274, i32 4, <8 x i1> %269, <8 x float> undef), !tbaa !12, !alias.scope !109, !noalias !112
  %wide.masked.gather125.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %269, <8 x float> undef), !tbaa !12, !alias.scope !115
  %275 = add nsw i32 %270, %mul16.i.i
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds float, float* %7, i64 %276
  %278 = bitcast float* %277 to <8 x float>*
  %wide.masked.load126.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %278, i32 4, <8 x i1> %269, <8 x float> undef), !tbaa !12, !alias.scope !116
  %279 = fneg <8 x float> %wide.masked.gather125.1
  %280 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %279, <8 x float> %wide.masked.load126.1, <8 x float> %wide.masked.load122.1)
  %281 = bitcast float* %273 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %280, <8 x float>* %281, i32 4, <8 x i1> %269), !tbaa !12, !alias.scope !109, !noalias !112, !llvm.access.group !24
  %282 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %283 = or <8 x i32> %282, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %284 = add <8 x i32> %broadcast.splat119, %283
  %285 = icmp slt <8 x i32> %284, %broadcast.splat121
  %286 = extractelement <8 x i32> %284, i32 0
  %287 = add nsw i32 %286, %mul.i.i.2
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %7, i64 %288
  %290 = bitcast float* %289 to <8 x float>*
  %wide.masked.load122.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %290, i32 4, <8 x i1> %285, <8 x float> undef), !tbaa !12, !alias.scope !109, !noalias !112
  %wide.masked.gather125.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %285, <8 x float> undef), !tbaa !12, !alias.scope !115
  %291 = add nsw i32 %286, %mul16.i.i
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %7, i64 %292
  %294 = bitcast float* %293 to <8 x float>*
  %wide.masked.load126.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %294, i32 4, <8 x i1> %285, <8 x float> undef), !tbaa !12, !alias.scope !116
  %295 = fneg <8 x float> %wide.masked.gather125.2
  %296 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %295, <8 x float> %wide.masked.load126.2, <8 x float> %wide.masked.load122.2)
  %297 = bitcast float* %289 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %296, <8 x float>* %297, i32 4, <8 x i1> %285), !tbaa !12, !alias.scope !109, !noalias !112, !llvm.access.group !24
  %298 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %299 = or <8 x i32> %298, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %300 = add <8 x i32> %broadcast.splat119, %299
  %301 = icmp slt <8 x i32> %300, %broadcast.splat121
  %302 = extractelement <8 x i32> %300, i32 0
  %303 = add nsw i32 %302, %mul.i.i.2
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %7, i64 %304
  %306 = bitcast float* %305 to <8 x float>*
  %wide.masked.load122.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %306, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !109, !noalias !112
  %wide.masked.gather125.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !115
  %307 = add nsw i32 %302, %mul16.i.i
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %7, i64 %308
  %310 = bitcast float* %309 to <8 x float>*
  %wide.masked.load126.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %310, i32 4, <8 x i1> %301, <8 x float> undef), !tbaa !12, !alias.scope !116
  %311 = fneg <8 x float> %wide.masked.gather125.3
  %312 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %311, <8 x float> %wide.masked.load126.3, <8 x float> %wide.masked.load122.3)
  %313 = bitcast float* %305 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %312, <8 x float>* %313, i32 4, <8 x i1> %301), !tbaa !12, !alias.scope !109, !noalias !112, !llvm.access.group !24
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.r_exit.i.i.us.2.1, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ], [ %860, %if.end.r_exit.i.i.us.2.1 ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %314 = trunc i64 %add1.i.i.i.us.2 to i32
  %conv2.i.i.us.2 = add i32 %add.i.i, %314
  %cmp9.i.i.us.2 = icmp slt i32 %conv2.i.i.us.2, %15
  br i1 %cmp9.i.i.us.2, label %if.then.i.i.us.2, label %if.end.r_exit.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %add11.i.i.us.2 = add nsw i32 %conv2.i.i.us.2, %mul.i.i.2
  %idxprom.i.i.us.2 = sext i32 %add11.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.2
  %315 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %316 = load float, float* %arrayidx15.i.i.2, align 4, !tbaa !12
  %add17.i.i.us.2 = add nsw i32 %conv2.i.i.us.2, %mul16.i.i
  %idxprom18.i.i.us.2 = sext i32 %add17.i.i.us.2 to i64
  %arrayidx19.i.i.us.2 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.2
  %317 = load float, float* %arrayidx19.i.i.us.2, align 4, !tbaa !12
  %neg.i.i.us.2 = fneg float %316
  %318 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.2, float %317, float %315) #6
  store float %318, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.2

if.end.r_exit.i.i.us.2:                           ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %319 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %319, %mul.i.i.i
  %320 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %conv2.i.i.us.2.1 = add i32 %add.i.i, %320
  %cmp9.i.i.us.2.1 = icmp slt i32 %conv2.i.i.us.2.1, %15
  br i1 %cmp9.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.r_exit.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.r_exit.i.i.us.2.1
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph109, %pregion_for_end.i.i.1
  %321 = trunc i64 %mul3.i.i.i to i32
  %322 = or i32 %321, 3
  %conv7.i.i.3 = add i32 %add.i.i, %322
  %cmp.i.i.3 = icmp slt i32 %conv7.i.i.3, %15
  %mul.i.i.3 = mul nsw i32 %conv7.i.i.3, %15
  %add13.i.i.3 = add nsw i32 %mul.i.i.3, %11
  %idxprom14.i.i.3 = sext i32 %add13.i.i.3 to i64
  %arrayidx15.i.i.3 = getelementptr inbounds float, float* %7, i64 %idxprom14.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck137, label %pregion_for_end.i.i.3

vector.scevcheck137:                              ; preds = %pregion_for_end.i.i.2
  %323 = mul i32 %15, %conv7.i.i.3
  %324 = add i32 %11, %323
  %325 = trunc i64 %2 to i32
  %326 = shl i32 %325, 5
  %327 = add i32 %324, %326
  %328 = add i32 %327, 1
  %329 = add i32 %327, 32
  %330 = icmp slt i32 %329, %328
  %331 = add i32 %15, 1
  %332 = mul i32 %11, %331
  %333 = add i32 %332, %326
  %334 = add i32 %333, 1
  %335 = add i32 %333, 32
  %336 = icmp slt i32 %335, %334
  %337 = or i1 %330, %336
  br i1 %337, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.memcheck159

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.memcheck159, %vector.scevcheck137
  br label %pregion_for_entry.entry.i.i.us.3

vector.memcheck159:                               ; preds = %vector.scevcheck137
  %338 = mul i32 %15, %conv7.i.i.3
  %339 = add i32 %11, %338
  %340 = trunc i64 %2 to i32
  %341 = shl i32 %340, 5
  %342 = add i32 %339, %341
  %343 = add i32 %342, 1
  %344 = sext i32 %343 to i64
  %scevgep139 = getelementptr float, float* %7, i64 %344
  %scevgep139140 = bitcast float* %scevgep139 to i8*
  %345 = add nsw i64 %344, 32
  %scevgep141 = getelementptr float, float* %7, i64 %345
  %scevgep143 = getelementptr float, float* %7, i64 %idxprom14.i.i.3
  %scevgep143144 = bitcast float* %scevgep143 to i8*
  %uglygep145 = getelementptr i8, i8* %scevgep143144, i64 1
  %346 = add i32 %15, 1
  %347 = mul i32 %11, %346
  %348 = add i32 %347, %341
  %349 = add i32 %348, 1
  %350 = sext i32 %349 to i64
  %scevgep146 = getelementptr float, float* %7, i64 %350
  %351 = add nsw i64 %350, 32
  %scevgep148 = getelementptr float, float* %7, i64 %351
  %bound0151 = icmp ugt i8* %uglygep145, %scevgep139140
  %bound1152 = icmp ult float* %arrayidx15.i.i.3, %scevgep141
  %found.conflict153 = and i1 %bound0151, %bound1152
  %bound0154 = icmp ult float* %scevgep139, %scevgep148
  %bound1155 = icmp ult float* %scevgep146, %scevgep141
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %found.conflict153, %found.conflict156
  br i1 %conflict.rdx157, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck159
  %broadcast.splatinsert167 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat168 = shufflevector <8 x i64> %broadcast.splatinsert167, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat172 = shufflevector <8 x i32> %broadcast.splatinsert171, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert174 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.3, i32 0
  %broadcast.splat175 = shufflevector <8 x float*> %broadcast.splatinsert174, <8 x float*> undef, <8 x i32> zeroinitializer
  %352 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %353 = or <8 x i32> %352, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %354 = add <8 x i32> %broadcast.splat170, %353
  %355 = icmp slt <8 x i32> %354, %broadcast.splat172
  %356 = extractelement <8 x i32> %354, i32 0
  %357 = add nsw i32 %356, %mul.i.i.3
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %7, i64 %358
  %360 = bitcast float* %359 to <8 x float>*
  %wide.masked.load173 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %360, i32 4, <8 x i1> %355, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %wide.masked.gather176 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %355, <8 x float> undef), !tbaa !12, !alias.scope !123
  %361 = add nsw i32 %356, %mul16.i.i
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds float, float* %7, i64 %362
  %364 = bitcast float* %363 to <8 x float>*
  %wide.masked.load177 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %364, i32 4, <8 x i1> %355, <8 x float> undef), !tbaa !12, !alias.scope !124
  %365 = fneg <8 x float> %wide.masked.gather176
  %366 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %365, <8 x float> %wide.masked.load177, <8 x float> %wide.masked.load173)
  %367 = bitcast float* %359 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %366, <8 x float>* %367, i32 4, <8 x i1> %355), !tbaa !12, !alias.scope !117, !noalias !120, !llvm.access.group !24
  %368 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %369 = or <8 x i32> %368, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %370 = add <8 x i32> %broadcast.splat170, %369
  %371 = icmp slt <8 x i32> %370, %broadcast.splat172
  %372 = extractelement <8 x i32> %370, i32 0
  %373 = add nsw i32 %372, %mul.i.i.3
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds float, float* %7, i64 %374
  %376 = bitcast float* %375 to <8 x float>*
  %wide.masked.load173.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %376, i32 4, <8 x i1> %371, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %wide.masked.gather176.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %371, <8 x float> undef), !tbaa !12, !alias.scope !123
  %377 = add nsw i32 %372, %mul16.i.i
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds float, float* %7, i64 %378
  %380 = bitcast float* %379 to <8 x float>*
  %wide.masked.load177.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %380, i32 4, <8 x i1> %371, <8 x float> undef), !tbaa !12, !alias.scope !124
  %381 = fneg <8 x float> %wide.masked.gather176.1
  %382 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %381, <8 x float> %wide.masked.load177.1, <8 x float> %wide.masked.load173.1)
  %383 = bitcast float* %375 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %382, <8 x float>* %383, i32 4, <8 x i1> %371), !tbaa !12, !alias.scope !117, !noalias !120, !llvm.access.group !24
  %384 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %385 = or <8 x i32> %384, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %386 = add <8 x i32> %broadcast.splat170, %385
  %387 = icmp slt <8 x i32> %386, %broadcast.splat172
  %388 = extractelement <8 x i32> %386, i32 0
  %389 = add nsw i32 %388, %mul.i.i.3
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds float, float* %7, i64 %390
  %392 = bitcast float* %391 to <8 x float>*
  %wide.masked.load173.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %392, i32 4, <8 x i1> %387, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %wide.masked.gather176.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %387, <8 x float> undef), !tbaa !12, !alias.scope !123
  %393 = add nsw i32 %388, %mul16.i.i
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds float, float* %7, i64 %394
  %396 = bitcast float* %395 to <8 x float>*
  %wide.masked.load177.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %396, i32 4, <8 x i1> %387, <8 x float> undef), !tbaa !12, !alias.scope !124
  %397 = fneg <8 x float> %wide.masked.gather176.2
  %398 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %397, <8 x float> %wide.masked.load177.2, <8 x float> %wide.masked.load173.2)
  %399 = bitcast float* %391 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %398, <8 x float>* %399, i32 4, <8 x i1> %387), !tbaa !12, !alias.scope !117, !noalias !120, !llvm.access.group !24
  %400 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %401 = or <8 x i32> %400, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %402 = add <8 x i32> %broadcast.splat170, %401
  %403 = icmp slt <8 x i32> %402, %broadcast.splat172
  %404 = extractelement <8 x i32> %402, i32 0
  %405 = add nsw i32 %404, %mul.i.i.3
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float, float* %7, i64 %406
  %408 = bitcast float* %407 to <8 x float>*
  %wide.masked.load173.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %408, i32 4, <8 x i1> %403, <8 x float> undef), !tbaa !12, !alias.scope !117, !noalias !120
  %wide.masked.gather176.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %403, <8 x float> undef), !tbaa !12, !alias.scope !123
  %409 = add nsw i32 %404, %mul16.i.i
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds float, float* %7, i64 %410
  %412 = bitcast float* %411 to <8 x float>*
  %wide.masked.load177.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %412, i32 4, <8 x i1> %403, <8 x float> undef), !tbaa !12, !alias.scope !124
  %413 = fneg <8 x float> %wide.masked.gather176.3
  %414 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %413, <8 x float> %wide.masked.load177.3, <8 x float> %wide.masked.load173.3)
  %415 = bitcast float* %407 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %414, <8 x float>* %415, i32 4, <8 x i1> %403), !tbaa !12, !alias.scope !117, !noalias !120, !llvm.access.group !24
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.r_exit.i.i.us.3.1, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ], [ %855, %if.end.r_exit.i.i.us.3.1 ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %416 = trunc i64 %add1.i.i.i.us.3 to i32
  %conv2.i.i.us.3 = add i32 %add.i.i, %416
  %cmp9.i.i.us.3 = icmp slt i32 %conv2.i.i.us.3, %15
  br i1 %cmp9.i.i.us.3, label %if.then.i.i.us.3, label %if.end.r_exit.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %add11.i.i.us.3 = add nsw i32 %conv2.i.i.us.3, %mul.i.i.3
  %idxprom.i.i.us.3 = sext i32 %add11.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.3
  %417 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %418 = load float, float* %arrayidx15.i.i.3, align 4, !tbaa !12
  %add17.i.i.us.3 = add nsw i32 %conv2.i.i.us.3, %mul16.i.i
  %idxprom18.i.i.us.3 = sext i32 %add17.i.i.us.3 to i64
  %arrayidx19.i.i.us.3 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.3
  %419 = load float, float* %arrayidx19.i.i.us.3, align 4, !tbaa !12
  %neg.i.i.us.3 = fneg float %418
  %420 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.3, float %419, float %417) #6
  store float %420, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.3

if.end.r_exit.i.i.us.3:                           ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %421 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %421, %mul.i.i.i
  %422 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %conv2.i.i.us.3.1 = add i32 %add.i.i, %422
  %cmp9.i.i.us.3.1 = icmp slt i32 %conv2.i.i.us.3.1, %15
  br i1 %cmp9.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.r_exit.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.r_exit.i.i.us.3.1
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph160, %pregion_for_end.i.i.2
  %423 = trunc i64 %mul3.i.i.i to i32
  %424 = or i32 %423, 4
  %conv7.i.i.4 = add i32 %add.i.i, %424
  %cmp.i.i.4 = icmp slt i32 %conv7.i.i.4, %15
  %mul.i.i.4 = mul nsw i32 %conv7.i.i.4, %15
  %add13.i.i.4 = add nsw i32 %mul.i.i.4, %11
  %idxprom14.i.i.4 = sext i32 %add13.i.i.4 to i64
  %arrayidx15.i.i.4 = getelementptr inbounds float, float* %7, i64 %idxprom14.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck188, label %pregion_for_end.i.i.4

vector.scevcheck188:                              ; preds = %pregion_for_end.i.i.3
  %425 = mul i32 %15, %conv7.i.i.4
  %426 = add i32 %11, %425
  %427 = trunc i64 %2 to i32
  %428 = shl i32 %427, 5
  %429 = add i32 %426, %428
  %430 = add i32 %429, 1
  %431 = add i32 %429, 32
  %432 = icmp slt i32 %431, %430
  %433 = add i32 %15, 1
  %434 = mul i32 %11, %433
  %435 = add i32 %434, %428
  %436 = add i32 %435, 1
  %437 = add i32 %435, 32
  %438 = icmp slt i32 %437, %436
  %439 = or i1 %432, %438
  br i1 %439, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.memcheck210

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.memcheck210, %vector.scevcheck188
  br label %pregion_for_entry.entry.i.i.us.4

vector.memcheck210:                               ; preds = %vector.scevcheck188
  %440 = mul i32 %15, %conv7.i.i.4
  %441 = add i32 %11, %440
  %442 = trunc i64 %2 to i32
  %443 = shl i32 %442, 5
  %444 = add i32 %441, %443
  %445 = add i32 %444, 1
  %446 = sext i32 %445 to i64
  %scevgep190 = getelementptr float, float* %7, i64 %446
  %scevgep190191 = bitcast float* %scevgep190 to i8*
  %447 = add nsw i64 %446, 32
  %scevgep192 = getelementptr float, float* %7, i64 %447
  %scevgep194 = getelementptr float, float* %7, i64 %idxprom14.i.i.4
  %scevgep194195 = bitcast float* %scevgep194 to i8*
  %uglygep196 = getelementptr i8, i8* %scevgep194195, i64 1
  %448 = add i32 %15, 1
  %449 = mul i32 %11, %448
  %450 = add i32 %449, %443
  %451 = add i32 %450, 1
  %452 = sext i32 %451 to i64
  %scevgep197 = getelementptr float, float* %7, i64 %452
  %453 = add nsw i64 %452, 32
  %scevgep199 = getelementptr float, float* %7, i64 %453
  %bound0202 = icmp ugt i8* %uglygep196, %scevgep190191
  %bound1203 = icmp ult float* %arrayidx15.i.i.4, %scevgep192
  %found.conflict204 = and i1 %bound0202, %bound1203
  %bound0205 = icmp ult float* %scevgep190, %scevgep199
  %bound1206 = icmp ult float* %scevgep197, %scevgep192
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %found.conflict204, %found.conflict207
  br i1 %conflict.rdx208, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck210
  %broadcast.splatinsert218 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat219 = shufflevector <8 x i64> %broadcast.splatinsert218, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat221 = shufflevector <8 x i32> %broadcast.splatinsert220, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat223 = shufflevector <8 x i32> %broadcast.splatinsert222, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.4, i32 0
  %broadcast.splat226 = shufflevector <8 x float*> %broadcast.splatinsert225, <8 x float*> undef, <8 x i32> zeroinitializer
  %454 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %455 = or <8 x i32> %454, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %456 = add <8 x i32> %broadcast.splat221, %455
  %457 = icmp slt <8 x i32> %456, %broadcast.splat223
  %458 = extractelement <8 x i32> %456, i32 0
  %459 = add nsw i32 %458, %mul.i.i.4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds float, float* %7, i64 %460
  %462 = bitcast float* %461 to <8 x float>*
  %wide.masked.load224 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %462, i32 4, <8 x i1> %457, <8 x float> undef), !tbaa !12, !alias.scope !125, !noalias !128
  %wide.masked.gather227 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %457, <8 x float> undef), !tbaa !12, !alias.scope !131
  %463 = add nsw i32 %458, %mul16.i.i
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds float, float* %7, i64 %464
  %466 = bitcast float* %465 to <8 x float>*
  %wide.masked.load228 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %466, i32 4, <8 x i1> %457, <8 x float> undef), !tbaa !12, !alias.scope !132
  %467 = fneg <8 x float> %wide.masked.gather227
  %468 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %467, <8 x float> %wide.masked.load228, <8 x float> %wide.masked.load224)
  %469 = bitcast float* %461 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %468, <8 x float>* %469, i32 4, <8 x i1> %457), !tbaa !12, !alias.scope !125, !noalias !128, !llvm.access.group !24
  %470 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %471 = or <8 x i32> %470, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %472 = add <8 x i32> %broadcast.splat221, %471
  %473 = icmp slt <8 x i32> %472, %broadcast.splat223
  %474 = extractelement <8 x i32> %472, i32 0
  %475 = add nsw i32 %474, %mul.i.i.4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds float, float* %7, i64 %476
  %478 = bitcast float* %477 to <8 x float>*
  %wide.masked.load224.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %478, i32 4, <8 x i1> %473, <8 x float> undef), !tbaa !12, !alias.scope !125, !noalias !128
  %wide.masked.gather227.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %473, <8 x float> undef), !tbaa !12, !alias.scope !131
  %479 = add nsw i32 %474, %mul16.i.i
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds float, float* %7, i64 %480
  %482 = bitcast float* %481 to <8 x float>*
  %wide.masked.load228.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %482, i32 4, <8 x i1> %473, <8 x float> undef), !tbaa !12, !alias.scope !132
  %483 = fneg <8 x float> %wide.masked.gather227.1
  %484 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %483, <8 x float> %wide.masked.load228.1, <8 x float> %wide.masked.load224.1)
  %485 = bitcast float* %477 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %484, <8 x float>* %485, i32 4, <8 x i1> %473), !tbaa !12, !alias.scope !125, !noalias !128, !llvm.access.group !24
  %486 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %487 = or <8 x i32> %486, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %488 = add <8 x i32> %broadcast.splat221, %487
  %489 = icmp slt <8 x i32> %488, %broadcast.splat223
  %490 = extractelement <8 x i32> %488, i32 0
  %491 = add nsw i32 %490, %mul.i.i.4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds float, float* %7, i64 %492
  %494 = bitcast float* %493 to <8 x float>*
  %wide.masked.load224.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %494, i32 4, <8 x i1> %489, <8 x float> undef), !tbaa !12, !alias.scope !125, !noalias !128
  %wide.masked.gather227.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %489, <8 x float> undef), !tbaa !12, !alias.scope !131
  %495 = add nsw i32 %490, %mul16.i.i
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds float, float* %7, i64 %496
  %498 = bitcast float* %497 to <8 x float>*
  %wide.masked.load228.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %498, i32 4, <8 x i1> %489, <8 x float> undef), !tbaa !12, !alias.scope !132
  %499 = fneg <8 x float> %wide.masked.gather227.2
  %500 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %499, <8 x float> %wide.masked.load228.2, <8 x float> %wide.masked.load224.2)
  %501 = bitcast float* %493 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %500, <8 x float>* %501, i32 4, <8 x i1> %489), !tbaa !12, !alias.scope !125, !noalias !128, !llvm.access.group !24
  %502 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %503 = or <8 x i32> %502, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %504 = add <8 x i32> %broadcast.splat221, %503
  %505 = icmp slt <8 x i32> %504, %broadcast.splat223
  %506 = extractelement <8 x i32> %504, i32 0
  %507 = add nsw i32 %506, %mul.i.i.4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float, float* %7, i64 %508
  %510 = bitcast float* %509 to <8 x float>*
  %wide.masked.load224.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %510, i32 4, <8 x i1> %505, <8 x float> undef), !tbaa !12, !alias.scope !125, !noalias !128
  %wide.masked.gather227.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %505, <8 x float> undef), !tbaa !12, !alias.scope !131
  %511 = add nsw i32 %506, %mul16.i.i
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds float, float* %7, i64 %512
  %514 = bitcast float* %513 to <8 x float>*
  %wide.masked.load228.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %514, i32 4, <8 x i1> %505, <8 x float> undef), !tbaa !12, !alias.scope !132
  %515 = fneg <8 x float> %wide.masked.gather227.3
  %516 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %515, <8 x float> %wide.masked.load228.3, <8 x float> %wide.masked.load224.3)
  %517 = bitcast float* %509 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %516, <8 x float>* %517, i32 4, <8 x i1> %505), !tbaa !12, !alias.scope !125, !noalias !128, !llvm.access.group !24
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.r_exit.i.i.us.4.1, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ], [ %850, %if.end.r_exit.i.i.us.4.1 ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %518 = trunc i64 %add1.i.i.i.us.4 to i32
  %conv2.i.i.us.4 = add i32 %add.i.i, %518
  %cmp9.i.i.us.4 = icmp slt i32 %conv2.i.i.us.4, %15
  br i1 %cmp9.i.i.us.4, label %if.then.i.i.us.4, label %if.end.r_exit.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %add11.i.i.us.4 = add nsw i32 %conv2.i.i.us.4, %mul.i.i.4
  %idxprom.i.i.us.4 = sext i32 %add11.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.4
  %519 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %520 = load float, float* %arrayidx15.i.i.4, align 4, !tbaa !12
  %add17.i.i.us.4 = add nsw i32 %conv2.i.i.us.4, %mul16.i.i
  %idxprom18.i.i.us.4 = sext i32 %add17.i.i.us.4 to i64
  %arrayidx19.i.i.us.4 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.4
  %521 = load float, float* %arrayidx19.i.i.us.4, align 4, !tbaa !12
  %neg.i.i.us.4 = fneg float %520
  %522 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.4, float %521, float %519) #6
  store float %522, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.4

if.end.r_exit.i.i.us.4:                           ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %523 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %523, %mul.i.i.i
  %524 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %conv2.i.i.us.4.1 = add i32 %add.i.i, %524
  %cmp9.i.i.us.4.1 = icmp slt i32 %conv2.i.i.us.4.1, %15
  br i1 %cmp9.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.r_exit.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.r_exit.i.i.us.4.1
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph211, %pregion_for_end.i.i.3
  %525 = trunc i64 %mul3.i.i.i to i32
  %526 = or i32 %525, 5
  %conv7.i.i.5 = add i32 %add.i.i, %526
  %cmp.i.i.5 = icmp slt i32 %conv7.i.i.5, %15
  %mul.i.i.5 = mul nsw i32 %conv7.i.i.5, %15
  %add13.i.i.5 = add nsw i32 %mul.i.i.5, %11
  %idxprom14.i.i.5 = sext i32 %add13.i.i.5 to i64
  %arrayidx15.i.i.5 = getelementptr inbounds float, float* %7, i64 %idxprom14.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck239, label %pregion_for_end.i.i.5

vector.scevcheck239:                              ; preds = %pregion_for_end.i.i.4
  %527 = mul i32 %15, %conv7.i.i.5
  %528 = add i32 %11, %527
  %529 = trunc i64 %2 to i32
  %530 = shl i32 %529, 5
  %531 = add i32 %528, %530
  %532 = add i32 %531, 1
  %533 = add i32 %531, 32
  %534 = icmp slt i32 %533, %532
  %535 = add i32 %15, 1
  %536 = mul i32 %11, %535
  %537 = add i32 %536, %530
  %538 = add i32 %537, 1
  %539 = add i32 %537, 32
  %540 = icmp slt i32 %539, %538
  %541 = or i1 %534, %540
  br i1 %541, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.memcheck261

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.memcheck261, %vector.scevcheck239
  br label %pregion_for_entry.entry.i.i.us.5

vector.memcheck261:                               ; preds = %vector.scevcheck239
  %542 = mul i32 %15, %conv7.i.i.5
  %543 = add i32 %11, %542
  %544 = trunc i64 %2 to i32
  %545 = shl i32 %544, 5
  %546 = add i32 %543, %545
  %547 = add i32 %546, 1
  %548 = sext i32 %547 to i64
  %scevgep241 = getelementptr float, float* %7, i64 %548
  %scevgep241242 = bitcast float* %scevgep241 to i8*
  %549 = add nsw i64 %548, 32
  %scevgep243 = getelementptr float, float* %7, i64 %549
  %scevgep245 = getelementptr float, float* %7, i64 %idxprom14.i.i.5
  %scevgep245246 = bitcast float* %scevgep245 to i8*
  %uglygep247 = getelementptr i8, i8* %scevgep245246, i64 1
  %550 = add i32 %15, 1
  %551 = mul i32 %11, %550
  %552 = add i32 %551, %545
  %553 = add i32 %552, 1
  %554 = sext i32 %553 to i64
  %scevgep248 = getelementptr float, float* %7, i64 %554
  %555 = add nsw i64 %554, 32
  %scevgep250 = getelementptr float, float* %7, i64 %555
  %bound0253 = icmp ugt i8* %uglygep247, %scevgep241242
  %bound1254 = icmp ult float* %arrayidx15.i.i.5, %scevgep243
  %found.conflict255 = and i1 %bound0253, %bound1254
  %bound0256 = icmp ult float* %scevgep241, %scevgep250
  %bound1257 = icmp ult float* %scevgep248, %scevgep243
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %found.conflict255, %found.conflict258
  br i1 %conflict.rdx259, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck261
  %broadcast.splatinsert269 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat270 = shufflevector <8 x i64> %broadcast.splatinsert269, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert271 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat272 = shufflevector <8 x i32> %broadcast.splatinsert271, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert273 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat274 = shufflevector <8 x i32> %broadcast.splatinsert273, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert276 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.5, i32 0
  %broadcast.splat277 = shufflevector <8 x float*> %broadcast.splatinsert276, <8 x float*> undef, <8 x i32> zeroinitializer
  %556 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %557 = or <8 x i32> %556, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %558 = add <8 x i32> %broadcast.splat272, %557
  %559 = icmp slt <8 x i32> %558, %broadcast.splat274
  %560 = extractelement <8 x i32> %558, i32 0
  %561 = add nsw i32 %560, %mul.i.i.5
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds float, float* %7, i64 %562
  %564 = bitcast float* %563 to <8 x float>*
  %wide.masked.load275 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %564, i32 4, <8 x i1> %559, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !136
  %wide.masked.gather278 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %559, <8 x float> undef), !tbaa !12, !alias.scope !139
  %565 = add nsw i32 %560, %mul16.i.i
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds float, float* %7, i64 %566
  %568 = bitcast float* %567 to <8 x float>*
  %wide.masked.load279 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %568, i32 4, <8 x i1> %559, <8 x float> undef), !tbaa !12, !alias.scope !140
  %569 = fneg <8 x float> %wide.masked.gather278
  %570 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %569, <8 x float> %wide.masked.load279, <8 x float> %wide.masked.load275)
  %571 = bitcast float* %563 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %570, <8 x float>* %571, i32 4, <8 x i1> %559), !tbaa !12, !alias.scope !133, !noalias !136, !llvm.access.group !24
  %572 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %573 = or <8 x i32> %572, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %574 = add <8 x i32> %broadcast.splat272, %573
  %575 = icmp slt <8 x i32> %574, %broadcast.splat274
  %576 = extractelement <8 x i32> %574, i32 0
  %577 = add nsw i32 %576, %mul.i.i.5
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds float, float* %7, i64 %578
  %580 = bitcast float* %579 to <8 x float>*
  %wide.masked.load275.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %580, i32 4, <8 x i1> %575, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !136
  %wide.masked.gather278.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %575, <8 x float> undef), !tbaa !12, !alias.scope !139
  %581 = add nsw i32 %576, %mul16.i.i
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds float, float* %7, i64 %582
  %584 = bitcast float* %583 to <8 x float>*
  %wide.masked.load279.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %584, i32 4, <8 x i1> %575, <8 x float> undef), !tbaa !12, !alias.scope !140
  %585 = fneg <8 x float> %wide.masked.gather278.1
  %586 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %585, <8 x float> %wide.masked.load279.1, <8 x float> %wide.masked.load275.1)
  %587 = bitcast float* %579 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %586, <8 x float>* %587, i32 4, <8 x i1> %575), !tbaa !12, !alias.scope !133, !noalias !136, !llvm.access.group !24
  %588 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %589 = or <8 x i32> %588, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %590 = add <8 x i32> %broadcast.splat272, %589
  %591 = icmp slt <8 x i32> %590, %broadcast.splat274
  %592 = extractelement <8 x i32> %590, i32 0
  %593 = add nsw i32 %592, %mul.i.i.5
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds float, float* %7, i64 %594
  %596 = bitcast float* %595 to <8 x float>*
  %wide.masked.load275.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %596, i32 4, <8 x i1> %591, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !136
  %wide.masked.gather278.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %591, <8 x float> undef), !tbaa !12, !alias.scope !139
  %597 = add nsw i32 %592, %mul16.i.i
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds float, float* %7, i64 %598
  %600 = bitcast float* %599 to <8 x float>*
  %wide.masked.load279.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %600, i32 4, <8 x i1> %591, <8 x float> undef), !tbaa !12, !alias.scope !140
  %601 = fneg <8 x float> %wide.masked.gather278.2
  %602 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %601, <8 x float> %wide.masked.load279.2, <8 x float> %wide.masked.load275.2)
  %603 = bitcast float* %595 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %602, <8 x float>* %603, i32 4, <8 x i1> %591), !tbaa !12, !alias.scope !133, !noalias !136, !llvm.access.group !24
  %604 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %605 = or <8 x i32> %604, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %606 = add <8 x i32> %broadcast.splat272, %605
  %607 = icmp slt <8 x i32> %606, %broadcast.splat274
  %608 = extractelement <8 x i32> %606, i32 0
  %609 = add nsw i32 %608, %mul.i.i.5
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds float, float* %7, i64 %610
  %612 = bitcast float* %611 to <8 x float>*
  %wide.masked.load275.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %612, i32 4, <8 x i1> %607, <8 x float> undef), !tbaa !12, !alias.scope !133, !noalias !136
  %wide.masked.gather278.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %607, <8 x float> undef), !tbaa !12, !alias.scope !139
  %613 = add nsw i32 %608, %mul16.i.i
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds float, float* %7, i64 %614
  %616 = bitcast float* %615 to <8 x float>*
  %wide.masked.load279.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %616, i32 4, <8 x i1> %607, <8 x float> undef), !tbaa !12, !alias.scope !140
  %617 = fneg <8 x float> %wide.masked.gather278.3
  %618 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %617, <8 x float> %wide.masked.load279.3, <8 x float> %wide.masked.load275.3)
  %619 = bitcast float* %611 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %618, <8 x float>* %619, i32 4, <8 x i1> %607), !tbaa !12, !alias.scope !133, !noalias !136, !llvm.access.group !24
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.r_exit.i.i.us.5.1, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ], [ %845, %if.end.r_exit.i.i.us.5.1 ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %620 = trunc i64 %add1.i.i.i.us.5 to i32
  %conv2.i.i.us.5 = add i32 %add.i.i, %620
  %cmp9.i.i.us.5 = icmp slt i32 %conv2.i.i.us.5, %15
  br i1 %cmp9.i.i.us.5, label %if.then.i.i.us.5, label %if.end.r_exit.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %add11.i.i.us.5 = add nsw i32 %conv2.i.i.us.5, %mul.i.i.5
  %idxprom.i.i.us.5 = sext i32 %add11.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.5
  %621 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %622 = load float, float* %arrayidx15.i.i.5, align 4, !tbaa !12
  %add17.i.i.us.5 = add nsw i32 %conv2.i.i.us.5, %mul16.i.i
  %idxprom18.i.i.us.5 = sext i32 %add17.i.i.us.5 to i64
  %arrayidx19.i.i.us.5 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.5
  %623 = load float, float* %arrayidx19.i.i.us.5, align 4, !tbaa !12
  %neg.i.i.us.5 = fneg float %622
  %624 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.5, float %623, float %621) #6
  store float %624, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.5

if.end.r_exit.i.i.us.5:                           ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %625 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %625, %mul.i.i.i
  %626 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %conv2.i.i.us.5.1 = add i32 %add.i.i, %626
  %cmp9.i.i.us.5.1 = icmp slt i32 %conv2.i.i.us.5.1, %15
  br i1 %cmp9.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.r_exit.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.r_exit.i.i.us.5.1
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph262, %pregion_for_end.i.i.4
  %627 = trunc i64 %mul3.i.i.i to i32
  %628 = or i32 %627, 6
  %conv7.i.i.6 = add i32 %add.i.i, %628
  %cmp.i.i.6 = icmp slt i32 %conv7.i.i.6, %15
  %mul.i.i.6 = mul nsw i32 %conv7.i.i.6, %15
  %add13.i.i.6 = add nsw i32 %mul.i.i.6, %11
  %idxprom14.i.i.6 = sext i32 %add13.i.i.6 to i64
  %arrayidx15.i.i.6 = getelementptr inbounds float, float* %7, i64 %idxprom14.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck290, label %pregion_for_end.i.i.6

vector.scevcheck290:                              ; preds = %pregion_for_end.i.i.5
  %629 = mul i32 %15, %conv7.i.i.6
  %630 = add i32 %11, %629
  %631 = trunc i64 %2 to i32
  %632 = shl i32 %631, 5
  %633 = add i32 %630, %632
  %634 = add i32 %633, 1
  %635 = add i32 %633, 32
  %636 = icmp slt i32 %635, %634
  %637 = add i32 %15, 1
  %638 = mul i32 %11, %637
  %639 = add i32 %638, %632
  %640 = add i32 %639, 1
  %641 = add i32 %639, 32
  %642 = icmp slt i32 %641, %640
  %643 = or i1 %636, %642
  br i1 %643, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.memcheck312

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.memcheck312, %vector.scevcheck290
  br label %pregion_for_entry.entry.i.i.us.6

vector.memcheck312:                               ; preds = %vector.scevcheck290
  %644 = mul i32 %15, %conv7.i.i.6
  %645 = add i32 %11, %644
  %646 = trunc i64 %2 to i32
  %647 = shl i32 %646, 5
  %648 = add i32 %645, %647
  %649 = add i32 %648, 1
  %650 = sext i32 %649 to i64
  %scevgep292 = getelementptr float, float* %7, i64 %650
  %scevgep292293 = bitcast float* %scevgep292 to i8*
  %651 = add nsw i64 %650, 32
  %scevgep294 = getelementptr float, float* %7, i64 %651
  %scevgep296 = getelementptr float, float* %7, i64 %idxprom14.i.i.6
  %scevgep296297 = bitcast float* %scevgep296 to i8*
  %uglygep298 = getelementptr i8, i8* %scevgep296297, i64 1
  %652 = add i32 %15, 1
  %653 = mul i32 %11, %652
  %654 = add i32 %653, %647
  %655 = add i32 %654, 1
  %656 = sext i32 %655 to i64
  %scevgep299 = getelementptr float, float* %7, i64 %656
  %657 = add nsw i64 %656, 32
  %scevgep301 = getelementptr float, float* %7, i64 %657
  %bound0304 = icmp ugt i8* %uglygep298, %scevgep292293
  %bound1305 = icmp ult float* %arrayidx15.i.i.6, %scevgep294
  %found.conflict306 = and i1 %bound0304, %bound1305
  %bound0307 = icmp ult float* %scevgep292, %scevgep301
  %bound1308 = icmp ult float* %scevgep299, %scevgep294
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %found.conflict306, %found.conflict309
  br i1 %conflict.rdx310, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck312
  %broadcast.splatinsert320 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat321 = shufflevector <8 x i64> %broadcast.splatinsert320, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert322 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat323 = shufflevector <8 x i32> %broadcast.splatinsert322, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert324 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat325 = shufflevector <8 x i32> %broadcast.splatinsert324, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert327 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.6, i32 0
  %broadcast.splat328 = shufflevector <8 x float*> %broadcast.splatinsert327, <8 x float*> undef, <8 x i32> zeroinitializer
  %658 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %659 = or <8 x i32> %658, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %660 = add <8 x i32> %broadcast.splat323, %659
  %661 = icmp slt <8 x i32> %660, %broadcast.splat325
  %662 = extractelement <8 x i32> %660, i32 0
  %663 = add nsw i32 %662, %mul.i.i.6
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds float, float* %7, i64 %664
  %666 = bitcast float* %665 to <8 x float>*
  %wide.masked.load326 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %666, i32 4, <8 x i1> %661, <8 x float> undef), !tbaa !12, !alias.scope !141, !noalias !144
  %wide.masked.gather329 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %661, <8 x float> undef), !tbaa !12, !alias.scope !147
  %667 = add nsw i32 %662, %mul16.i.i
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds float, float* %7, i64 %668
  %670 = bitcast float* %669 to <8 x float>*
  %wide.masked.load330 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %670, i32 4, <8 x i1> %661, <8 x float> undef), !tbaa !12, !alias.scope !148
  %671 = fneg <8 x float> %wide.masked.gather329
  %672 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %671, <8 x float> %wide.masked.load330, <8 x float> %wide.masked.load326)
  %673 = bitcast float* %665 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %672, <8 x float>* %673, i32 4, <8 x i1> %661), !tbaa !12, !alias.scope !141, !noalias !144, !llvm.access.group !24
  %674 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %675 = or <8 x i32> %674, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %676 = add <8 x i32> %broadcast.splat323, %675
  %677 = icmp slt <8 x i32> %676, %broadcast.splat325
  %678 = extractelement <8 x i32> %676, i32 0
  %679 = add nsw i32 %678, %mul.i.i.6
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds float, float* %7, i64 %680
  %682 = bitcast float* %681 to <8 x float>*
  %wide.masked.load326.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %682, i32 4, <8 x i1> %677, <8 x float> undef), !tbaa !12, !alias.scope !141, !noalias !144
  %wide.masked.gather329.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %677, <8 x float> undef), !tbaa !12, !alias.scope !147
  %683 = add nsw i32 %678, %mul16.i.i
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds float, float* %7, i64 %684
  %686 = bitcast float* %685 to <8 x float>*
  %wide.masked.load330.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %686, i32 4, <8 x i1> %677, <8 x float> undef), !tbaa !12, !alias.scope !148
  %687 = fneg <8 x float> %wide.masked.gather329.1
  %688 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %687, <8 x float> %wide.masked.load330.1, <8 x float> %wide.masked.load326.1)
  %689 = bitcast float* %681 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %688, <8 x float>* %689, i32 4, <8 x i1> %677), !tbaa !12, !alias.scope !141, !noalias !144, !llvm.access.group !24
  %690 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %691 = or <8 x i32> %690, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %692 = add <8 x i32> %broadcast.splat323, %691
  %693 = icmp slt <8 x i32> %692, %broadcast.splat325
  %694 = extractelement <8 x i32> %692, i32 0
  %695 = add nsw i32 %694, %mul.i.i.6
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds float, float* %7, i64 %696
  %698 = bitcast float* %697 to <8 x float>*
  %wide.masked.load326.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %698, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !141, !noalias !144
  %wide.masked.gather329.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !147
  %699 = add nsw i32 %694, %mul16.i.i
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds float, float* %7, i64 %700
  %702 = bitcast float* %701 to <8 x float>*
  %wide.masked.load330.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %702, i32 4, <8 x i1> %693, <8 x float> undef), !tbaa !12, !alias.scope !148
  %703 = fneg <8 x float> %wide.masked.gather329.2
  %704 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %703, <8 x float> %wide.masked.load330.2, <8 x float> %wide.masked.load326.2)
  %705 = bitcast float* %697 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %704, <8 x float>* %705, i32 4, <8 x i1> %693), !tbaa !12, !alias.scope !141, !noalias !144, !llvm.access.group !24
  %706 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %707 = or <8 x i32> %706, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %708 = add <8 x i32> %broadcast.splat323, %707
  %709 = icmp slt <8 x i32> %708, %broadcast.splat325
  %710 = extractelement <8 x i32> %708, i32 0
  %711 = add nsw i32 %710, %mul.i.i.6
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds float, float* %7, i64 %712
  %714 = bitcast float* %713 to <8 x float>*
  %wide.masked.load326.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %714, i32 4, <8 x i1> %709, <8 x float> undef), !tbaa !12, !alias.scope !141, !noalias !144
  %wide.masked.gather329.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %709, <8 x float> undef), !tbaa !12, !alias.scope !147
  %715 = add nsw i32 %710, %mul16.i.i
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds float, float* %7, i64 %716
  %718 = bitcast float* %717 to <8 x float>*
  %wide.masked.load330.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %718, i32 4, <8 x i1> %709, <8 x float> undef), !tbaa !12, !alias.scope !148
  %719 = fneg <8 x float> %wide.masked.gather329.3
  %720 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %719, <8 x float> %wide.masked.load330.3, <8 x float> %wide.masked.load326.3)
  %721 = bitcast float* %713 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %720, <8 x float>* %721, i32 4, <8 x i1> %709), !tbaa !12, !alias.scope !141, !noalias !144, !llvm.access.group !24
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.r_exit.i.i.us.6.1, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ], [ %840, %if.end.r_exit.i.i.us.6.1 ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %722 = trunc i64 %add1.i.i.i.us.6 to i32
  %conv2.i.i.us.6 = add i32 %add.i.i, %722
  %cmp9.i.i.us.6 = icmp slt i32 %conv2.i.i.us.6, %15
  br i1 %cmp9.i.i.us.6, label %if.then.i.i.us.6, label %if.end.r_exit.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %add11.i.i.us.6 = add nsw i32 %conv2.i.i.us.6, %mul.i.i.6
  %idxprom.i.i.us.6 = sext i32 %add11.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.6
  %723 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %724 = load float, float* %arrayidx15.i.i.6, align 4, !tbaa !12
  %add17.i.i.us.6 = add nsw i32 %conv2.i.i.us.6, %mul16.i.i
  %idxprom18.i.i.us.6 = sext i32 %add17.i.i.us.6 to i64
  %arrayidx19.i.i.us.6 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.6
  %725 = load float, float* %arrayidx19.i.i.us.6, align 4, !tbaa !12
  %neg.i.i.us.6 = fneg float %724
  %726 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.6, float %725, float %723) #6
  store float %726, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.6

if.end.r_exit.i.i.us.6:                           ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %727 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %727, %mul.i.i.i
  %728 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %conv2.i.i.us.6.1 = add i32 %add.i.i, %728
  %cmp9.i.i.us.6.1 = icmp slt i32 %conv2.i.i.us.6.1, %15
  br i1 %cmp9.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.r_exit.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.r_exit.i.i.us.6.1
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph313, %pregion_for_end.i.i.5
  %729 = trunc i64 %mul3.i.i.i to i32
  %730 = or i32 %729, 7
  %conv7.i.i.7 = add i32 %add.i.i, %730
  %cmp.i.i.7 = icmp slt i32 %conv7.i.i.7, %15
  %mul.i.i.7 = mul nsw i32 %conv7.i.i.7, %15
  %add13.i.i.7 = add nsw i32 %mul.i.i.7, %11
  %idxprom14.i.i.7 = sext i32 %add13.i.i.7 to i64
  %arrayidx15.i.i.7 = getelementptr inbounds float, float* %7, i64 %idxprom14.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck341, label %pregion_for_end.i.i.7

vector.scevcheck341:                              ; preds = %pregion_for_end.i.i.6
  %731 = mul i32 %15, %conv7.i.i.7
  %732 = add i32 %11, %731
  %733 = trunc i64 %2 to i32
  %734 = shl i32 %733, 5
  %735 = add i32 %732, %734
  %736 = add i32 %735, 1
  %737 = add i32 %735, 32
  %738 = icmp slt i32 %737, %736
  %739 = add i32 %15, 1
  %740 = mul i32 %11, %739
  %741 = add i32 %740, %734
  %742 = add i32 %741, 1
  %743 = add i32 %741, 32
  %744 = icmp slt i32 %743, %742
  %745 = or i1 %738, %744
  br i1 %745, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.memcheck363

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.memcheck363, %vector.scevcheck341
  br label %pregion_for_entry.entry.i.i.us.7

vector.memcheck363:                               ; preds = %vector.scevcheck341
  %746 = mul i32 %15, %conv7.i.i.7
  %747 = add i32 %11, %746
  %748 = trunc i64 %2 to i32
  %749 = shl i32 %748, 5
  %750 = add i32 %747, %749
  %751 = add i32 %750, 1
  %752 = sext i32 %751 to i64
  %scevgep343 = getelementptr float, float* %7, i64 %752
  %scevgep343344 = bitcast float* %scevgep343 to i8*
  %753 = add nsw i64 %752, 32
  %scevgep345 = getelementptr float, float* %7, i64 %753
  %scevgep347 = getelementptr float, float* %7, i64 %idxprom14.i.i.7
  %scevgep347348 = bitcast float* %scevgep347 to i8*
  %uglygep349 = getelementptr i8, i8* %scevgep347348, i64 1
  %754 = add i32 %15, 1
  %755 = mul i32 %11, %754
  %756 = add i32 %755, %749
  %757 = add i32 %756, 1
  %758 = sext i32 %757 to i64
  %scevgep350 = getelementptr float, float* %7, i64 %758
  %759 = add nsw i64 %758, 32
  %scevgep352 = getelementptr float, float* %7, i64 %759
  %bound0355 = icmp ugt i8* %uglygep349, %scevgep343344
  %bound1356 = icmp ult float* %arrayidx15.i.i.7, %scevgep345
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0358 = icmp ult float* %scevgep343, %scevgep352
  %bound1359 = icmp ult float* %scevgep350, %scevgep345
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %found.conflict357, %found.conflict360
  br i1 %conflict.rdx361, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph364

vector.ph364:                                     ; preds = %vector.memcheck363
  %broadcast.splatinsert371 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat372 = shufflevector <8 x i64> %broadcast.splatinsert371, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert373 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat374 = shufflevector <8 x i32> %broadcast.splatinsert373, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert375 = insertelement <8 x i32> undef, i32 %15, i32 0
  %broadcast.splat376 = shufflevector <8 x i32> %broadcast.splatinsert375, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert378 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.7, i32 0
  %broadcast.splat379 = shufflevector <8 x float*> %broadcast.splatinsert378, <8 x float*> undef, <8 x i32> zeroinitializer
  %760 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %761 = or <8 x i32> %760, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %762 = add <8 x i32> %broadcast.splat374, %761
  %763 = icmp slt <8 x i32> %762, %broadcast.splat376
  %764 = extractelement <8 x i32> %762, i32 0
  %765 = add nsw i32 %764, %mul.i.i.7
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds float, float* %7, i64 %766
  %768 = bitcast float* %767 to <8 x float>*
  %wide.masked.load377 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %768, i32 4, <8 x i1> %763, <8 x float> undef), !tbaa !12, !alias.scope !149, !noalias !152
  %wide.masked.gather380 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %763, <8 x float> undef), !tbaa !12, !alias.scope !155
  %769 = add nsw i32 %764, %mul16.i.i
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds float, float* %7, i64 %770
  %772 = bitcast float* %771 to <8 x float>*
  %wide.masked.load381 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %772, i32 4, <8 x i1> %763, <8 x float> undef), !tbaa !12, !alias.scope !156
  %773 = fneg <8 x float> %wide.masked.gather380
  %774 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %773, <8 x float> %wide.masked.load381, <8 x float> %wide.masked.load377)
  %775 = bitcast float* %767 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %774, <8 x float>* %775, i32 4, <8 x i1> %763), !tbaa !12, !alias.scope !149, !noalias !152, !llvm.access.group !24
  %776 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %777 = or <8 x i32> %776, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %778 = add <8 x i32> %broadcast.splat374, %777
  %779 = icmp slt <8 x i32> %778, %broadcast.splat376
  %780 = extractelement <8 x i32> %778, i32 0
  %781 = add nsw i32 %780, %mul.i.i.7
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds float, float* %7, i64 %782
  %784 = bitcast float* %783 to <8 x float>*
  %wide.masked.load377.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %784, i32 4, <8 x i1> %779, <8 x float> undef), !tbaa !12, !alias.scope !149, !noalias !152
  %wide.masked.gather380.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %779, <8 x float> undef), !tbaa !12, !alias.scope !155
  %785 = add nsw i32 %780, %mul16.i.i
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds float, float* %7, i64 %786
  %788 = bitcast float* %787 to <8 x float>*
  %wide.masked.load381.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %788, i32 4, <8 x i1> %779, <8 x float> undef), !tbaa !12, !alias.scope !156
  %789 = fneg <8 x float> %wide.masked.gather380.1
  %790 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %789, <8 x float> %wide.masked.load381.1, <8 x float> %wide.masked.load377.1)
  %791 = bitcast float* %783 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %790, <8 x float>* %791, i32 4, <8 x i1> %779), !tbaa !12, !alias.scope !149, !noalias !152, !llvm.access.group !24
  %792 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %793 = or <8 x i32> %792, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %794 = add <8 x i32> %broadcast.splat374, %793
  %795 = icmp slt <8 x i32> %794, %broadcast.splat376
  %796 = extractelement <8 x i32> %794, i32 0
  %797 = add nsw i32 %796, %mul.i.i.7
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds float, float* %7, i64 %798
  %800 = bitcast float* %799 to <8 x float>*
  %wide.masked.load377.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %800, i32 4, <8 x i1> %795, <8 x float> undef), !tbaa !12, !alias.scope !149, !noalias !152
  %wide.masked.gather380.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %795, <8 x float> undef), !tbaa !12, !alias.scope !155
  %801 = add nsw i32 %796, %mul16.i.i
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds float, float* %7, i64 %802
  %804 = bitcast float* %803 to <8 x float>*
  %wide.masked.load381.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %804, i32 4, <8 x i1> %795, <8 x float> undef), !tbaa !12, !alias.scope !156
  %805 = fneg <8 x float> %wide.masked.gather380.2
  %806 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %805, <8 x float> %wide.masked.load381.2, <8 x float> %wide.masked.load377.2)
  %807 = bitcast float* %799 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %806, <8 x float>* %807, i32 4, <8 x i1> %795), !tbaa !12, !alias.scope !149, !noalias !152, !llvm.access.group !24
  %808 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %809 = or <8 x i32> %808, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %810 = add <8 x i32> %broadcast.splat374, %809
  %811 = icmp slt <8 x i32> %810, %broadcast.splat376
  %812 = extractelement <8 x i32> %810, i32 0
  %813 = add nsw i32 %812, %mul.i.i.7
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds float, float* %7, i64 %814
  %816 = bitcast float* %815 to <8 x float>*
  %wide.masked.load377.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %816, i32 4, <8 x i1> %811, <8 x float> undef), !tbaa !12, !alias.scope !149, !noalias !152
  %wide.masked.gather380.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %811, <8 x float> undef), !tbaa !12, !alias.scope !155
  %817 = add nsw i32 %812, %mul16.i.i
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds float, float* %7, i64 %818
  %820 = bitcast float* %819 to <8 x float>*
  %wide.masked.load381.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %820, i32 4, <8 x i1> %811, <8 x float> undef), !tbaa !12, !alias.scope !156
  %821 = fneg <8 x float> %wide.masked.gather380.3
  %822 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %821, <8 x float> %wide.masked.load381.3, <8 x float> %wide.masked.load377.3)
  %823 = bitcast float* %815 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %822, <8 x float>* %823, i32 4, <8 x i1> %811), !tbaa !12, !alias.scope !149, !noalias !152, !llvm.access.group !24
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.r_exit.i.i.us.7.1, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ], [ %835, %if.end.r_exit.i.i.us.7.1 ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %824 = trunc i64 %add1.i.i.i.us.7 to i32
  %conv2.i.i.us.7 = add i32 %add.i.i, %824
  %cmp9.i.i.us.7 = icmp slt i32 %conv2.i.i.us.7, %15
  br i1 %cmp9.i.i.us.7, label %if.then.i.i.us.7, label %if.end.r_exit.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %add11.i.i.us.7 = add nsw i32 %conv2.i.i.us.7, %mul.i.i.7
  %idxprom.i.i.us.7 = sext i32 %add11.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.7
  %825 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %826 = load float, float* %arrayidx15.i.i.7, align 4, !tbaa !12
  %add17.i.i.us.7 = add nsw i32 %conv2.i.i.us.7, %mul16.i.i
  %idxprom18.i.i.us.7 = sext i32 %add17.i.i.us.7 to i64
  %arrayidx19.i.i.us.7 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.7
  %827 = load float, float* %arrayidx19.i.i.us.7, align 4, !tbaa !12
  %neg.i.i.us.7 = fneg float %826
  %828 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.7, float %827, float %825) #6
  store float %828, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.7

if.end.r_exit.i.i.us.7:                           ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %829 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %829, %mul.i.i.i
  %830 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %conv2.i.i.us.7.1 = add i32 %add.i.i, %830
  %cmp9.i.i.us.7.1 = icmp slt i32 %conv2.i.i.us.7.1, %15
  br i1 %cmp9.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.r_exit.i.i.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.r_exit.i.i.us.7.1
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph364, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.7.1:                               ; preds = %if.end.r_exit.i.i.us.7
  %add11.i.i.us.7.1 = add nsw i32 %conv2.i.i.us.7.1, %mul.i.i.7
  %idxprom.i.i.us.7.1 = sext i32 %add11.i.i.us.7.1 to i64
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.7.1
  %831 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %832 = load float, float* %arrayidx15.i.i.7, align 4, !tbaa !12
  %add17.i.i.us.7.1 = add nsw i32 %conv2.i.i.us.7.1, %mul16.i.i
  %idxprom18.i.i.us.7.1 = sext i32 %add17.i.i.us.7.1 to i64
  %arrayidx19.i.i.us.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.7.1
  %833 = load float, float* %arrayidx19.i.i.us.7.1, align 4, !tbaa !12
  %neg.i.i.us.7.1 = fneg float %832
  %834 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.7.1, float %833, float %831) #6
  store float %834, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.7.1

if.end.r_exit.i.i.us.7.1:                         ; preds = %if.then.i.i.us.7.1, %if.end.r_exit.i.i.us.7
  %835 = add nuw nsw i64 %_local_id_x.i.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %835, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !157

if.then.i.i.us.6.1:                               ; preds = %if.end.r_exit.i.i.us.6
  %add11.i.i.us.6.1 = add nsw i32 %conv2.i.i.us.6.1, %mul.i.i.6
  %idxprom.i.i.us.6.1 = sext i32 %add11.i.i.us.6.1 to i64
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.6.1
  %836 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %837 = load float, float* %arrayidx15.i.i.6, align 4, !tbaa !12
  %add17.i.i.us.6.1 = add nsw i32 %conv2.i.i.us.6.1, %mul16.i.i
  %idxprom18.i.i.us.6.1 = sext i32 %add17.i.i.us.6.1 to i64
  %arrayidx19.i.i.us.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.6.1
  %838 = load float, float* %arrayidx19.i.i.us.6.1, align 4, !tbaa !12
  %neg.i.i.us.6.1 = fneg float %837
  %839 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.6.1, float %838, float %836) #6
  store float %839, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.6.1

if.end.r_exit.i.i.us.6.1:                         ; preds = %if.then.i.i.us.6.1, %if.end.r_exit.i.i.us.6
  %840 = add nuw nsw i64 %_local_id_x.i.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %840, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !158

if.then.i.i.us.5.1:                               ; preds = %if.end.r_exit.i.i.us.5
  %add11.i.i.us.5.1 = add nsw i32 %conv2.i.i.us.5.1, %mul.i.i.5
  %idxprom.i.i.us.5.1 = sext i32 %add11.i.i.us.5.1 to i64
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.5.1
  %841 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %842 = load float, float* %arrayidx15.i.i.5, align 4, !tbaa !12
  %add17.i.i.us.5.1 = add nsw i32 %conv2.i.i.us.5.1, %mul16.i.i
  %idxprom18.i.i.us.5.1 = sext i32 %add17.i.i.us.5.1 to i64
  %arrayidx19.i.i.us.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.5.1
  %843 = load float, float* %arrayidx19.i.i.us.5.1, align 4, !tbaa !12
  %neg.i.i.us.5.1 = fneg float %842
  %844 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.5.1, float %843, float %841) #6
  store float %844, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.5.1

if.end.r_exit.i.i.us.5.1:                         ; preds = %if.then.i.i.us.5.1, %if.end.r_exit.i.i.us.5
  %845 = add nuw nsw i64 %_local_id_x.i.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %845, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !159

if.then.i.i.us.4.1:                               ; preds = %if.end.r_exit.i.i.us.4
  %add11.i.i.us.4.1 = add nsw i32 %conv2.i.i.us.4.1, %mul.i.i.4
  %idxprom.i.i.us.4.1 = sext i32 %add11.i.i.us.4.1 to i64
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.4.1
  %846 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %847 = load float, float* %arrayidx15.i.i.4, align 4, !tbaa !12
  %add17.i.i.us.4.1 = add nsw i32 %conv2.i.i.us.4.1, %mul16.i.i
  %idxprom18.i.i.us.4.1 = sext i32 %add17.i.i.us.4.1 to i64
  %arrayidx19.i.i.us.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.4.1
  %848 = load float, float* %arrayidx19.i.i.us.4.1, align 4, !tbaa !12
  %neg.i.i.us.4.1 = fneg float %847
  %849 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.4.1, float %848, float %846) #6
  store float %849, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.4.1

if.end.r_exit.i.i.us.4.1:                         ; preds = %if.then.i.i.us.4.1, %if.end.r_exit.i.i.us.4
  %850 = add nuw nsw i64 %_local_id_x.i.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %850, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !160

if.then.i.i.us.3.1:                               ; preds = %if.end.r_exit.i.i.us.3
  %add11.i.i.us.3.1 = add nsw i32 %conv2.i.i.us.3.1, %mul.i.i.3
  %idxprom.i.i.us.3.1 = sext i32 %add11.i.i.us.3.1 to i64
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.3.1
  %851 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %852 = load float, float* %arrayidx15.i.i.3, align 4, !tbaa !12
  %add17.i.i.us.3.1 = add nsw i32 %conv2.i.i.us.3.1, %mul16.i.i
  %idxprom18.i.i.us.3.1 = sext i32 %add17.i.i.us.3.1 to i64
  %arrayidx19.i.i.us.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.3.1
  %853 = load float, float* %arrayidx19.i.i.us.3.1, align 4, !tbaa !12
  %neg.i.i.us.3.1 = fneg float %852
  %854 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.3.1, float %853, float %851) #6
  store float %854, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.3.1

if.end.r_exit.i.i.us.3.1:                         ; preds = %if.then.i.i.us.3.1, %if.end.r_exit.i.i.us.3
  %855 = add nuw nsw i64 %_local_id_x.i.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %855, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !161

if.then.i.i.us.2.1:                               ; preds = %if.end.r_exit.i.i.us.2
  %add11.i.i.us.2.1 = add nsw i32 %conv2.i.i.us.2.1, %mul.i.i.2
  %idxprom.i.i.us.2.1 = sext i32 %add11.i.i.us.2.1 to i64
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.2.1
  %856 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %857 = load float, float* %arrayidx15.i.i.2, align 4, !tbaa !12
  %add17.i.i.us.2.1 = add nsw i32 %conv2.i.i.us.2.1, %mul16.i.i
  %idxprom18.i.i.us.2.1 = sext i32 %add17.i.i.us.2.1 to i64
  %arrayidx19.i.i.us.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.2.1
  %858 = load float, float* %arrayidx19.i.i.us.2.1, align 4, !tbaa !12
  %neg.i.i.us.2.1 = fneg float %857
  %859 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.2.1, float %858, float %856) #6
  store float %859, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.2.1

if.end.r_exit.i.i.us.2.1:                         ; preds = %if.then.i.i.us.2.1, %if.end.r_exit.i.i.us.2
  %860 = add nuw nsw i64 %_local_id_x.i.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %860, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !162

if.then.i.i.us.1.1:                               ; preds = %if.end.r_exit.i.i.us.1
  %add11.i.i.us.1.1 = add nsw i32 %conv2.i.i.us.1.1, %mul.i.i.1
  %idxprom.i.i.us.1.1 = sext i32 %add11.i.i.us.1.1 to i64
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1.1
  %861 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %862 = load float, float* %arrayidx15.i.i.1, align 4, !tbaa !12
  %add17.i.i.us.1.1 = add nsw i32 %conv2.i.i.us.1.1, %mul16.i.i
  %idxprom18.i.i.us.1.1 = sext i32 %add17.i.i.us.1.1 to i64
  %arrayidx19.i.i.us.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.1.1
  %863 = load float, float* %arrayidx19.i.i.us.1.1, align 4, !tbaa !12
  %neg.i.i.us.1.1 = fneg float %862
  %864 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.1.1, float %863, float %861) #6
  store float %864, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.1.1

if.end.r_exit.i.i.us.1.1:                         ; preds = %if.then.i.i.us.1.1, %if.end.r_exit.i.i.us.1
  %865 = add nuw nsw i64 %_local_id_x.i.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %865, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !163

if.then.i.i.us.1402:                              ; preds = %if.end.r_exit.i.i.us
  %add11.i.i.us.1395 = add nsw i32 %conv2.i.i.us.1392, %mul.i.i
  %idxprom.i.i.us.1396 = sext i32 %add11.i.i.us.1395 to i64
  %arrayidx.i.i.us.1397 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.1396
  %866 = load float, float* %arrayidx.i.i.us.1397, align 4, !tbaa !12
  %867 = load float, float* %arrayidx15.i.i, align 4, !tbaa !12
  %add17.i.i.us.1398 = add nsw i32 %conv2.i.i.us.1392, %mul16.i.i
  %idxprom18.i.i.us.1399 = sext i32 %add17.i.i.us.1398 to i64
  %arrayidx19.i.i.us.1400 = getelementptr inbounds float, float* %7, i64 %idxprom18.i.i.us.1399
  %868 = load float, float* %arrayidx19.i.i.us.1400, align 4, !tbaa !12
  %neg.i.i.us.1401 = fneg float %867
  %869 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.1401, float %868, float %866) #6
  store float %869, float* %arrayidx.i.i.us.1397, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.1403

if.end.r_exit.i.i.us.1403:                        ; preds = %if.then.i.i.us.1402, %if.end.r_exit.i.i.us
  %870 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %870, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !164
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_lu_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to i32**
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %mul.i.i.i = shl i64 %2, 5
  %add.i.i = add nsw i32 %10, 1
  %mul3.i.i.i = shl i64 %3, 3
  %mul16.i.i = mul nsw i32 %14, %10
  %15 = trunc i64 %mul3.i.i.i to i32
  %conv7.i.i = add i32 %add.i.i, %15
  %cmp.i.i = icmp slt i32 %conv7.i.i, %14
  %mul.i.i = mul nsw i32 %conv7.i.i, %14
  %add13.i.i = add nsw i32 %mul.i.i, %10
  %idxprom14.i.i = sext i32 %add13.i.i to i64
  %arrayidx15.i.i = getelementptr inbounds float, float* %6, i64 %idxprom14.i.i
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %16 = mul i32 %14, %conv7.i.i
  %17 = add i32 %10, %16
  %18 = trunc i64 %2 to i32
  %19 = shl i32 %18, 5
  %20 = add i32 %17, %19
  %21 = add i32 %20, 1
  %22 = add i32 %20, 32
  %23 = icmp slt i32 %22, %21
  %24 = add i32 %14, 1
  %25 = mul i32 %10, %24
  %26 = add i32 %25, %19
  %27 = add i32 %26, 1
  %28 = add i32 %26, 32
  %29 = icmp slt i32 %28, %27
  %30 = or i1 %23, %29
  br i1 %30, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %31 = mul i32 %14, %conv7.i.i
  %32 = add i32 %10, %31
  %33 = trunc i64 %2 to i32
  %34 = shl i32 %33, 5
  %35 = add i32 %32, %34
  %36 = add i32 %35, 1
  %37 = sext i32 %36 to i64
  %scevgep = getelementptr float, float* %6, i64 %37
  %scevgep6 = bitcast float* %scevgep to i8*
  %38 = add nsw i64 %37, 32
  %scevgep7 = getelementptr float, float* %6, i64 %38
  %scevgep9 = getelementptr float, float* %6, i64 %idxprom14.i.i
  %scevgep910 = bitcast float* %scevgep9 to i8*
  %uglygep = getelementptr i8, i8* %scevgep910, i64 1
  %39 = add i32 %14, 1
  %40 = mul i32 %10, %39
  %41 = add i32 %40, %34
  %42 = add i32 %41, 1
  %43 = sext i32 %42 to i64
  %scevgep11 = getelementptr float, float* %6, i64 %43
  %44 = add nsw i64 %43, 32
  %scevgep13 = getelementptr float, float* %6, i64 %44
  %bound0 = icmp ugt i8* %uglygep, %scevgep6
  %bound1 = icmp ult float* %arrayidx15.i.i, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  %bound015 = icmp ult float* %scevgep, %scevgep13
  %bound116 = icmp ult float* %scevgep11, %scevgep7
  %found.conflict17 = and i1 %bound015, %bound116
  %conflict.rdx = or i1 %found.conflict, %found.conflict17
  br i1 %conflict.rdx, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat19 = shufflevector <8 x i32> %broadcast.splatinsert18, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <8 x float*> undef, float* %arrayidx15.i.i, i32 0
  %broadcast.splat23 = shufflevector <8 x float*> %broadcast.splatinsert22, <8 x float*> undef, <8 x i32> zeroinitializer
  %45 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %46 = or <8 x i32> %45, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %47 = add <8 x i32> %broadcast.splat19, %46
  %48 = icmp slt <8 x i32> %47, %broadcast.splat21
  %49 = extractelement <8 x i32> %47, i32 0
  %50 = add nsw i32 %49, %mul.i.i
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %6, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %53, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !165, !noalias !168
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !171
  %54 = add nsw i32 %49, %mul16.i.i
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %6, i64 %55
  %57 = bitcast float* %56 to <8 x float>*
  %wide.masked.load24 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %57, i32 4, <8 x i1> %48, <8 x float> undef), !tbaa !12, !alias.scope !172
  %58 = fneg <8 x float> %wide.masked.gather
  %59 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %58, <8 x float> %wide.masked.load24, <8 x float> %wide.masked.load)
  %60 = bitcast float* %52 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %59, <8 x float>* %60, i32 4, <8 x i1> %48), !tbaa !12, !alias.scope !165, !noalias !168, !llvm.access.group !24
  %61 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %62 = or <8 x i32> %61, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %63 = add <8 x i32> %broadcast.splat19, %62
  %64 = icmp slt <8 x i32> %63, %broadcast.splat21
  %65 = extractelement <8 x i32> %63, i32 0
  %66 = add nsw i32 %65, %mul.i.i
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %6, i64 %67
  %69 = bitcast float* %68 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %69, i32 4, <8 x i1> %64, <8 x float> undef), !tbaa !12, !alias.scope !165, !noalias !168
  %wide.masked.gather.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %64, <8 x float> undef), !tbaa !12, !alias.scope !171
  %70 = add nsw i32 %65, %mul16.i.i
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %6, i64 %71
  %73 = bitcast float* %72 to <8 x float>*
  %wide.masked.load24.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %73, i32 4, <8 x i1> %64, <8 x float> undef), !tbaa !12, !alias.scope !172
  %74 = fneg <8 x float> %wide.masked.gather.1
  %75 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %74, <8 x float> %wide.masked.load24.1, <8 x float> %wide.masked.load.1)
  %76 = bitcast float* %68 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %75, <8 x float>* %76, i32 4, <8 x i1> %64), !tbaa !12, !alias.scope !165, !noalias !168, !llvm.access.group !24
  %77 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %78 = or <8 x i32> %77, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %79 = add <8 x i32> %broadcast.splat19, %78
  %80 = icmp slt <8 x i32> %79, %broadcast.splat21
  %81 = extractelement <8 x i32> %79, i32 0
  %82 = add nsw i32 %81, %mul.i.i
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %6, i64 %83
  %85 = bitcast float* %84 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %85, i32 4, <8 x i1> %80, <8 x float> undef), !tbaa !12, !alias.scope !165, !noalias !168
  %wide.masked.gather.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %80, <8 x float> undef), !tbaa !12, !alias.scope !171
  %86 = add nsw i32 %81, %mul16.i.i
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %6, i64 %87
  %89 = bitcast float* %88 to <8 x float>*
  %wide.masked.load24.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %89, i32 4, <8 x i1> %80, <8 x float> undef), !tbaa !12, !alias.scope !172
  %90 = fneg <8 x float> %wide.masked.gather.2
  %91 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %90, <8 x float> %wide.masked.load24.2, <8 x float> %wide.masked.load.2)
  %92 = bitcast float* %84 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %91, <8 x float>* %92, i32 4, <8 x i1> %80), !tbaa !12, !alias.scope !165, !noalias !168, !llvm.access.group !24
  %93 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %94 = or <8 x i32> %93, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %95 = add <8 x i32> %broadcast.splat19, %94
  %96 = icmp slt <8 x i32> %95, %broadcast.splat21
  %97 = extractelement <8 x i32> %95, i32 0
  %98 = add nsw i32 %97, %mul.i.i
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %6, i64 %99
  %101 = bitcast float* %100 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %101, i32 4, <8 x i1> %96, <8 x float> undef), !tbaa !12, !alias.scope !165, !noalias !168
  %wide.masked.gather.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat23, i32 4, <8 x i1> %96, <8 x float> undef), !tbaa !12, !alias.scope !171
  %102 = add nsw i32 %97, %mul16.i.i
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %6, i64 %103
  %105 = bitcast float* %104 to <8 x float>*
  %wide.masked.load24.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %105, i32 4, <8 x i1> %96, <8 x float> undef), !tbaa !12, !alias.scope !172
  %106 = fneg <8 x float> %wide.masked.gather.3
  %107 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %106, <8 x float> %wide.masked.load24.3, <8 x float> %wide.masked.load.3)
  %108 = bitcast float* %100 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %107, <8 x float>* %108, i32 4, <8 x i1> %96), !tbaa !12, !alias.scope !165, !noalias !168, !llvm.access.group !24
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us.1403, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.preheader ], [ %869, %if.end.r_exit.i.i.us.1403 ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %109 = trunc i64 %add1.i.i.i.us to i32
  %conv2.i.i.us = add i32 %add.i.i, %109
  %cmp9.i.i.us = icmp slt i32 %conv2.i.i.us, %14
  br i1 %cmp9.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add11.i.i.us = add nsw i32 %conv2.i.i.us, %mul.i.i
  %idxprom.i.i.us = sext i32 %add11.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us
  %110 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %111 = load float, float* %arrayidx15.i.i, align 4, !tbaa !12
  %add17.i.i.us = add nsw i32 %conv2.i.i.us, %mul16.i.i
  %idxprom18.i.i.us = sext i32 %add17.i.i.us to i64
  %arrayidx19.i.i.us = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us
  %112 = load float, float* %arrayidx19.i.i.us, align 4, !tbaa !12
  %neg.i.i.us = fneg float %111
  %113 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us, float %112, float %110) #6
  store float %113, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %114 = or i64 %_local_id_x.i.0.us, 1
  %add1.i.i.i.us.1391 = add nuw nsw i64 %114, %mul.i.i.i
  %115 = trunc i64 %add1.i.i.i.us.1391 to i32
  %conv2.i.i.us.1392 = add i32 %add.i.i, %115
  %cmp9.i.i.us.1393 = icmp slt i32 %conv2.i.i.us.1392, %14
  br i1 %cmp9.i.i.us.1393, label %if.then.i.i.us.1402, label %if.end.r_exit.i.i.us.1403

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us.1403
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %116 = trunc i64 %mul3.i.i.i to i32
  %117 = or i32 %116, 1
  %conv7.i.i.1 = add i32 %add.i.i, %117
  %cmp.i.i.1 = icmp slt i32 %conv7.i.i.1, %14
  %mul.i.i.1 = mul nsw i32 %conv7.i.i.1, %14
  %add13.i.i.1 = add nsw i32 %mul.i.i.1, %10
  %idxprom14.i.i.1 = sext i32 %add13.i.i.1 to i64
  %arrayidx15.i.i.1 = getelementptr inbounds float, float* %6, i64 %idxprom14.i.i.1
  br i1 %cmp.i.i.1, label %vector.scevcheck35, label %pregion_for_end.i.i.1

vector.scevcheck35:                               ; preds = %pregion_for_end.i.i
  %118 = mul i32 %14, %conv7.i.i.1
  %119 = add i32 %10, %118
  %120 = trunc i64 %2 to i32
  %121 = shl i32 %120, 5
  %122 = add i32 %119, %121
  %123 = add i32 %122, 1
  %124 = add i32 %122, 32
  %125 = icmp slt i32 %124, %123
  %126 = add i32 %14, 1
  %127 = mul i32 %10, %126
  %128 = add i32 %127, %121
  %129 = add i32 %128, 1
  %130 = add i32 %128, 32
  %131 = icmp slt i32 %130, %129
  %132 = or i1 %125, %131
  br i1 %132, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.memcheck57

pregion_for_entry.entry.i.i.us.1.preheader:       ; preds = %vector.memcheck57, %vector.scevcheck35
  br label %pregion_for_entry.entry.i.i.us.1

vector.memcheck57:                                ; preds = %vector.scevcheck35
  %133 = mul i32 %14, %conv7.i.i.1
  %134 = add i32 %10, %133
  %135 = trunc i64 %2 to i32
  %136 = shl i32 %135, 5
  %137 = add i32 %134, %136
  %138 = add i32 %137, 1
  %139 = sext i32 %138 to i64
  %scevgep37 = getelementptr float, float* %6, i64 %139
  %scevgep3738 = bitcast float* %scevgep37 to i8*
  %140 = add nsw i64 %139, 32
  %scevgep39 = getelementptr float, float* %6, i64 %140
  %scevgep41 = getelementptr float, float* %6, i64 %idxprom14.i.i.1
  %scevgep4142 = bitcast float* %scevgep41 to i8*
  %uglygep43 = getelementptr i8, i8* %scevgep4142, i64 1
  %141 = add i32 %14, 1
  %142 = mul i32 %10, %141
  %143 = add i32 %142, %136
  %144 = add i32 %143, 1
  %145 = sext i32 %144 to i64
  %scevgep44 = getelementptr float, float* %6, i64 %145
  %146 = add nsw i64 %145, 32
  %scevgep46 = getelementptr float, float* %6, i64 %146
  %bound049 = icmp ugt i8* %uglygep43, %scevgep3738
  %bound150 = icmp ult float* %arrayidx15.i.i.1, %scevgep39
  %found.conflict51 = and i1 %bound049, %bound150
  %bound052 = icmp ult float* %scevgep37, %scevgep46
  %bound153 = icmp ult float* %scevgep44, %scevgep39
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %found.conflict51, %found.conflict54
  br i1 %conflict.rdx55, label %pregion_for_entry.entry.i.i.us.1.preheader, label %vector.ph58

vector.ph58:                                      ; preds = %vector.memcheck57
  %broadcast.splatinsert65 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat66 = shufflevector <8 x i64> %broadcast.splatinsert65, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat68 = shufflevector <8 x i32> %broadcast.splatinsert67, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert69 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat70 = shufflevector <8 x i32> %broadcast.splatinsert69, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert72 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.1, i32 0
  %broadcast.splat73 = shufflevector <8 x float*> %broadcast.splatinsert72, <8 x float*> undef, <8 x i32> zeroinitializer
  %147 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %148 = or <8 x i32> %147, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %149 = add <8 x i32> %broadcast.splat68, %148
  %150 = icmp slt <8 x i32> %149, %broadcast.splat70
  %151 = extractelement <8 x i32> %149, i32 0
  %152 = add nsw i32 %151, %mul.i.i.1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %6, i64 %153
  %155 = bitcast float* %154 to <8 x float>*
  %wide.masked.load71 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %155, i32 4, <8 x i1> %150, <8 x float> undef), !tbaa !12, !alias.scope !173, !noalias !176
  %wide.masked.gather74 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %150, <8 x float> undef), !tbaa !12, !alias.scope !179
  %156 = add nsw i32 %151, %mul16.i.i
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %6, i64 %157
  %159 = bitcast float* %158 to <8 x float>*
  %wide.masked.load75 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %159, i32 4, <8 x i1> %150, <8 x float> undef), !tbaa !12, !alias.scope !180
  %160 = fneg <8 x float> %wide.masked.gather74
  %161 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %160, <8 x float> %wide.masked.load75, <8 x float> %wide.masked.load71)
  %162 = bitcast float* %154 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %161, <8 x float>* %162, i32 4, <8 x i1> %150), !tbaa !12, !alias.scope !173, !noalias !176, !llvm.access.group !24
  %163 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %164 = or <8 x i32> %163, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %165 = add <8 x i32> %broadcast.splat68, %164
  %166 = icmp slt <8 x i32> %165, %broadcast.splat70
  %167 = extractelement <8 x i32> %165, i32 0
  %168 = add nsw i32 %167, %mul.i.i.1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %6, i64 %169
  %171 = bitcast float* %170 to <8 x float>*
  %wide.masked.load71.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %171, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !173, !noalias !176
  %wide.masked.gather74.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !179
  %172 = add nsw i32 %167, %mul16.i.i
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %6, i64 %173
  %175 = bitcast float* %174 to <8 x float>*
  %wide.masked.load75.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %175, i32 4, <8 x i1> %166, <8 x float> undef), !tbaa !12, !alias.scope !180
  %176 = fneg <8 x float> %wide.masked.gather74.1
  %177 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %176, <8 x float> %wide.masked.load75.1, <8 x float> %wide.masked.load71.1)
  %178 = bitcast float* %170 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %177, <8 x float>* %178, i32 4, <8 x i1> %166), !tbaa !12, !alias.scope !173, !noalias !176, !llvm.access.group !24
  %179 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %180 = or <8 x i32> %179, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %181 = add <8 x i32> %broadcast.splat68, %180
  %182 = icmp slt <8 x i32> %181, %broadcast.splat70
  %183 = extractelement <8 x i32> %181, i32 0
  %184 = add nsw i32 %183, %mul.i.i.1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %6, i64 %185
  %187 = bitcast float* %186 to <8 x float>*
  %wide.masked.load71.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %187, i32 4, <8 x i1> %182, <8 x float> undef), !tbaa !12, !alias.scope !173, !noalias !176
  %wide.masked.gather74.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %182, <8 x float> undef), !tbaa !12, !alias.scope !179
  %188 = add nsw i32 %183, %mul16.i.i
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %6, i64 %189
  %191 = bitcast float* %190 to <8 x float>*
  %wide.masked.load75.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %191, i32 4, <8 x i1> %182, <8 x float> undef), !tbaa !12, !alias.scope !180
  %192 = fneg <8 x float> %wide.masked.gather74.2
  %193 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %192, <8 x float> %wide.masked.load75.2, <8 x float> %wide.masked.load71.2)
  %194 = bitcast float* %186 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %193, <8 x float>* %194, i32 4, <8 x i1> %182), !tbaa !12, !alias.scope !173, !noalias !176, !llvm.access.group !24
  %195 = trunc <8 x i64> %broadcast.splat66 to <8 x i32>
  %196 = or <8 x i32> %195, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %197 = add <8 x i32> %broadcast.splat68, %196
  %198 = icmp slt <8 x i32> %197, %broadcast.splat70
  %199 = extractelement <8 x i32> %197, i32 0
  %200 = add nsw i32 %199, %mul.i.i.1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %6, i64 %201
  %203 = bitcast float* %202 to <8 x float>*
  %wide.masked.load71.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %203, i32 4, <8 x i1> %198, <8 x float> undef), !tbaa !12, !alias.scope !173, !noalias !176
  %wide.masked.gather74.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat73, i32 4, <8 x i1> %198, <8 x float> undef), !tbaa !12, !alias.scope !179
  %204 = add nsw i32 %199, %mul16.i.i
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %6, i64 %205
  %207 = bitcast float* %206 to <8 x float>*
  %wide.masked.load75.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %207, i32 4, <8 x i1> %198, <8 x float> undef), !tbaa !12, !alias.scope !180
  %208 = fneg <8 x float> %wide.masked.gather74.3
  %209 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %208, <8 x float> %wide.masked.load75.3, <8 x float> %wide.masked.load71.3)
  %210 = bitcast float* %202 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %209, <8 x float>* %210, i32 4, <8 x i1> %198), !tbaa !12, !alias.scope !173, !noalias !176, !llvm.access.group !24
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.1:                 ; preds = %if.end.r_exit.i.i.us.1.1, %pregion_for_entry.entry.i.i.us.1.preheader
  %_local_id_x.i.0.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.1.preheader ], [ %864, %if.end.r_exit.i.i.us.1.1 ]
  %add1.i.i.i.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.1, %mul.i.i.i
  %211 = trunc i64 %add1.i.i.i.us.1 to i32
  %conv2.i.i.us.1 = add i32 %add.i.i, %211
  %cmp9.i.i.us.1 = icmp slt i32 %conv2.i.i.us.1, %14
  br i1 %cmp9.i.i.us.1, label %if.then.i.i.us.1, label %if.end.r_exit.i.i.us.1

if.then.i.i.us.1:                                 ; preds = %pregion_for_entry.entry.i.i.us.1
  %add11.i.i.us.1 = add nsw i32 %conv2.i.i.us.1, %mul.i.i.1
  %idxprom.i.i.us.1 = sext i32 %add11.i.i.us.1 to i64
  %arrayidx.i.i.us.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1
  %212 = load float, float* %arrayidx.i.i.us.1, align 4, !tbaa !12
  %213 = load float, float* %arrayidx15.i.i.1, align 4, !tbaa !12
  %add17.i.i.us.1 = add nsw i32 %conv2.i.i.us.1, %mul16.i.i
  %idxprom18.i.i.us.1 = sext i32 %add17.i.i.us.1 to i64
  %arrayidx19.i.i.us.1 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.1
  %214 = load float, float* %arrayidx19.i.i.us.1, align 4, !tbaa !12
  %neg.i.i.us.1 = fneg float %213
  %215 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.1, float %214, float %212) #6
  store float %215, float* %arrayidx.i.i.us.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.1

if.end.r_exit.i.i.us.1:                           ; preds = %if.then.i.i.us.1, %pregion_for_entry.entry.i.i.us.1
  %216 = or i64 %_local_id_x.i.0.us.1, 1
  %add1.i.i.i.us.1.1 = add nuw nsw i64 %216, %mul.i.i.i
  %217 = trunc i64 %add1.i.i.i.us.1.1 to i32
  %conv2.i.i.us.1.1 = add i32 %add.i.i, %217
  %cmp9.i.i.us.1.1 = icmp slt i32 %conv2.i.i.us.1.1, %14
  br i1 %cmp9.i.i.us.1.1, label %if.then.i.i.us.1.1, label %if.end.r_exit.i.i.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.r_exit.i.i.us.1.1
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph58, %pregion_for_end.i.i
  %218 = trunc i64 %mul3.i.i.i to i32
  %219 = or i32 %218, 2
  %conv7.i.i.2 = add i32 %add.i.i, %219
  %cmp.i.i.2 = icmp slt i32 %conv7.i.i.2, %14
  %mul.i.i.2 = mul nsw i32 %conv7.i.i.2, %14
  %add13.i.i.2 = add nsw i32 %mul.i.i.2, %10
  %idxprom14.i.i.2 = sext i32 %add13.i.i.2 to i64
  %arrayidx15.i.i.2 = getelementptr inbounds float, float* %6, i64 %idxprom14.i.i.2
  br i1 %cmp.i.i.2, label %vector.scevcheck86, label %pregion_for_end.i.i.2

vector.scevcheck86:                               ; preds = %pregion_for_end.i.i.1
  %220 = mul i32 %14, %conv7.i.i.2
  %221 = add i32 %10, %220
  %222 = trunc i64 %2 to i32
  %223 = shl i32 %222, 5
  %224 = add i32 %221, %223
  %225 = add i32 %224, 1
  %226 = add i32 %224, 32
  %227 = icmp slt i32 %226, %225
  %228 = add i32 %14, 1
  %229 = mul i32 %10, %228
  %230 = add i32 %229, %223
  %231 = add i32 %230, 1
  %232 = add i32 %230, 32
  %233 = icmp slt i32 %232, %231
  %234 = or i1 %227, %233
  br i1 %234, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.memcheck108

pregion_for_entry.entry.i.i.us.2.preheader:       ; preds = %vector.memcheck108, %vector.scevcheck86
  br label %pregion_for_entry.entry.i.i.us.2

vector.memcheck108:                               ; preds = %vector.scevcheck86
  %235 = mul i32 %14, %conv7.i.i.2
  %236 = add i32 %10, %235
  %237 = trunc i64 %2 to i32
  %238 = shl i32 %237, 5
  %239 = add i32 %236, %238
  %240 = add i32 %239, 1
  %241 = sext i32 %240 to i64
  %scevgep88 = getelementptr float, float* %6, i64 %241
  %scevgep8889 = bitcast float* %scevgep88 to i8*
  %242 = add nsw i64 %241, 32
  %scevgep90 = getelementptr float, float* %6, i64 %242
  %scevgep92 = getelementptr float, float* %6, i64 %idxprom14.i.i.2
  %scevgep9293 = bitcast float* %scevgep92 to i8*
  %uglygep94 = getelementptr i8, i8* %scevgep9293, i64 1
  %243 = add i32 %14, 1
  %244 = mul i32 %10, %243
  %245 = add i32 %244, %238
  %246 = add i32 %245, 1
  %247 = sext i32 %246 to i64
  %scevgep95 = getelementptr float, float* %6, i64 %247
  %248 = add nsw i64 %247, 32
  %scevgep97 = getelementptr float, float* %6, i64 %248
  %bound0100 = icmp ugt i8* %uglygep94, %scevgep8889
  %bound1101 = icmp ult float* %arrayidx15.i.i.2, %scevgep90
  %found.conflict102 = and i1 %bound0100, %bound1101
  %bound0103 = icmp ult float* %scevgep88, %scevgep97
  %bound1104 = icmp ult float* %scevgep95, %scevgep90
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %found.conflict102, %found.conflict105
  br i1 %conflict.rdx106, label %pregion_for_entry.entry.i.i.us.2.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck108
  %broadcast.splatinsert116 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat117 = shufflevector <8 x i64> %broadcast.splatinsert116, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat119 = shufflevector <8 x i32> %broadcast.splatinsert118, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert120 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat121 = shufflevector <8 x i32> %broadcast.splatinsert120, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.2, i32 0
  %broadcast.splat124 = shufflevector <8 x float*> %broadcast.splatinsert123, <8 x float*> undef, <8 x i32> zeroinitializer
  %249 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %250 = or <8 x i32> %249, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %251 = add <8 x i32> %broadcast.splat119, %250
  %252 = icmp slt <8 x i32> %251, %broadcast.splat121
  %253 = extractelement <8 x i32> %251, i32 0
  %254 = add nsw i32 %253, %mul.i.i.2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %6, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  %wide.masked.load122 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %257, i32 4, <8 x i1> %252, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !184
  %wide.masked.gather125 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %252, <8 x float> undef), !tbaa !12, !alias.scope !187
  %258 = add nsw i32 %253, %mul16.i.i
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %6, i64 %259
  %261 = bitcast float* %260 to <8 x float>*
  %wide.masked.load126 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %261, i32 4, <8 x i1> %252, <8 x float> undef), !tbaa !12, !alias.scope !188
  %262 = fneg <8 x float> %wide.masked.gather125
  %263 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %262, <8 x float> %wide.masked.load126, <8 x float> %wide.masked.load122)
  %264 = bitcast float* %256 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %263, <8 x float>* %264, i32 4, <8 x i1> %252), !tbaa !12, !alias.scope !181, !noalias !184, !llvm.access.group !24
  %265 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %266 = or <8 x i32> %265, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %267 = add <8 x i32> %broadcast.splat119, %266
  %268 = icmp slt <8 x i32> %267, %broadcast.splat121
  %269 = extractelement <8 x i32> %267, i32 0
  %270 = add nsw i32 %269, %mul.i.i.2
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %6, i64 %271
  %273 = bitcast float* %272 to <8 x float>*
  %wide.masked.load122.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %273, i32 4, <8 x i1> %268, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !184
  %wide.masked.gather125.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %268, <8 x float> undef), !tbaa !12, !alias.scope !187
  %274 = add nsw i32 %269, %mul16.i.i
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %6, i64 %275
  %277 = bitcast float* %276 to <8 x float>*
  %wide.masked.load126.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %277, i32 4, <8 x i1> %268, <8 x float> undef), !tbaa !12, !alias.scope !188
  %278 = fneg <8 x float> %wide.masked.gather125.1
  %279 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %278, <8 x float> %wide.masked.load126.1, <8 x float> %wide.masked.load122.1)
  %280 = bitcast float* %272 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %279, <8 x float>* %280, i32 4, <8 x i1> %268), !tbaa !12, !alias.scope !181, !noalias !184, !llvm.access.group !24
  %281 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %282 = or <8 x i32> %281, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %283 = add <8 x i32> %broadcast.splat119, %282
  %284 = icmp slt <8 x i32> %283, %broadcast.splat121
  %285 = extractelement <8 x i32> %283, i32 0
  %286 = add nsw i32 %285, %mul.i.i.2
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %6, i64 %287
  %289 = bitcast float* %288 to <8 x float>*
  %wide.masked.load122.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %289, i32 4, <8 x i1> %284, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !184
  %wide.masked.gather125.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %284, <8 x float> undef), !tbaa !12, !alias.scope !187
  %290 = add nsw i32 %285, %mul16.i.i
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %6, i64 %291
  %293 = bitcast float* %292 to <8 x float>*
  %wide.masked.load126.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %293, i32 4, <8 x i1> %284, <8 x float> undef), !tbaa !12, !alias.scope !188
  %294 = fneg <8 x float> %wide.masked.gather125.2
  %295 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %294, <8 x float> %wide.masked.load126.2, <8 x float> %wide.masked.load122.2)
  %296 = bitcast float* %288 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %295, <8 x float>* %296, i32 4, <8 x i1> %284), !tbaa !12, !alias.scope !181, !noalias !184, !llvm.access.group !24
  %297 = trunc <8 x i64> %broadcast.splat117 to <8 x i32>
  %298 = or <8 x i32> %297, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %299 = add <8 x i32> %broadcast.splat119, %298
  %300 = icmp slt <8 x i32> %299, %broadcast.splat121
  %301 = extractelement <8 x i32> %299, i32 0
  %302 = add nsw i32 %301, %mul.i.i.2
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %6, i64 %303
  %305 = bitcast float* %304 to <8 x float>*
  %wide.masked.load122.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %305, i32 4, <8 x i1> %300, <8 x float> undef), !tbaa !12, !alias.scope !181, !noalias !184
  %wide.masked.gather125.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat124, i32 4, <8 x i1> %300, <8 x float> undef), !tbaa !12, !alias.scope !187
  %306 = add nsw i32 %301, %mul16.i.i
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %6, i64 %307
  %309 = bitcast float* %308 to <8 x float>*
  %wide.masked.load126.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %309, i32 4, <8 x i1> %300, <8 x float> undef), !tbaa !12, !alias.scope !188
  %310 = fneg <8 x float> %wide.masked.gather125.3
  %311 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %310, <8 x float> %wide.masked.load126.3, <8 x float> %wide.masked.load122.3)
  %312 = bitcast float* %304 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %311, <8 x float>* %312, i32 4, <8 x i1> %300), !tbaa !12, !alias.scope !181, !noalias !184, !llvm.access.group !24
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.2:                 ; preds = %if.end.r_exit.i.i.us.2.1, %pregion_for_entry.entry.i.i.us.2.preheader
  %_local_id_x.i.0.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.2.preheader ], [ %859, %if.end.r_exit.i.i.us.2.1 ]
  %add1.i.i.i.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.2, %mul.i.i.i
  %313 = trunc i64 %add1.i.i.i.us.2 to i32
  %conv2.i.i.us.2 = add i32 %add.i.i, %313
  %cmp9.i.i.us.2 = icmp slt i32 %conv2.i.i.us.2, %14
  br i1 %cmp9.i.i.us.2, label %if.then.i.i.us.2, label %if.end.r_exit.i.i.us.2

if.then.i.i.us.2:                                 ; preds = %pregion_for_entry.entry.i.i.us.2
  %add11.i.i.us.2 = add nsw i32 %conv2.i.i.us.2, %mul.i.i.2
  %idxprom.i.i.us.2 = sext i32 %add11.i.i.us.2 to i64
  %arrayidx.i.i.us.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.2
  %314 = load float, float* %arrayidx.i.i.us.2, align 4, !tbaa !12
  %315 = load float, float* %arrayidx15.i.i.2, align 4, !tbaa !12
  %add17.i.i.us.2 = add nsw i32 %conv2.i.i.us.2, %mul16.i.i
  %idxprom18.i.i.us.2 = sext i32 %add17.i.i.us.2 to i64
  %arrayidx19.i.i.us.2 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.2
  %316 = load float, float* %arrayidx19.i.i.us.2, align 4, !tbaa !12
  %neg.i.i.us.2 = fneg float %315
  %317 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.2, float %316, float %314) #6
  store float %317, float* %arrayidx.i.i.us.2, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.2

if.end.r_exit.i.i.us.2:                           ; preds = %if.then.i.i.us.2, %pregion_for_entry.entry.i.i.us.2
  %318 = or i64 %_local_id_x.i.0.us.2, 1
  %add1.i.i.i.us.2.1 = add nuw nsw i64 %318, %mul.i.i.i
  %319 = trunc i64 %add1.i.i.i.us.2.1 to i32
  %conv2.i.i.us.2.1 = add i32 %add.i.i, %319
  %cmp9.i.i.us.2.1 = icmp slt i32 %conv2.i.i.us.2.1, %14
  br i1 %cmp9.i.i.us.2.1, label %if.then.i.i.us.2.1, label %if.end.r_exit.i.i.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.r_exit.i.i.us.2.1
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph109, %pregion_for_end.i.i.1
  %320 = trunc i64 %mul3.i.i.i to i32
  %321 = or i32 %320, 3
  %conv7.i.i.3 = add i32 %add.i.i, %321
  %cmp.i.i.3 = icmp slt i32 %conv7.i.i.3, %14
  %mul.i.i.3 = mul nsw i32 %conv7.i.i.3, %14
  %add13.i.i.3 = add nsw i32 %mul.i.i.3, %10
  %idxprom14.i.i.3 = sext i32 %add13.i.i.3 to i64
  %arrayidx15.i.i.3 = getelementptr inbounds float, float* %6, i64 %idxprom14.i.i.3
  br i1 %cmp.i.i.3, label %vector.scevcheck137, label %pregion_for_end.i.i.3

vector.scevcheck137:                              ; preds = %pregion_for_end.i.i.2
  %322 = mul i32 %14, %conv7.i.i.3
  %323 = add i32 %10, %322
  %324 = trunc i64 %2 to i32
  %325 = shl i32 %324, 5
  %326 = add i32 %323, %325
  %327 = add i32 %326, 1
  %328 = add i32 %326, 32
  %329 = icmp slt i32 %328, %327
  %330 = add i32 %14, 1
  %331 = mul i32 %10, %330
  %332 = add i32 %331, %325
  %333 = add i32 %332, 1
  %334 = add i32 %332, 32
  %335 = icmp slt i32 %334, %333
  %336 = or i1 %329, %335
  br i1 %336, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.memcheck159

pregion_for_entry.entry.i.i.us.3.preheader:       ; preds = %vector.memcheck159, %vector.scevcheck137
  br label %pregion_for_entry.entry.i.i.us.3

vector.memcheck159:                               ; preds = %vector.scevcheck137
  %337 = mul i32 %14, %conv7.i.i.3
  %338 = add i32 %10, %337
  %339 = trunc i64 %2 to i32
  %340 = shl i32 %339, 5
  %341 = add i32 %338, %340
  %342 = add i32 %341, 1
  %343 = sext i32 %342 to i64
  %scevgep139 = getelementptr float, float* %6, i64 %343
  %scevgep139140 = bitcast float* %scevgep139 to i8*
  %344 = add nsw i64 %343, 32
  %scevgep141 = getelementptr float, float* %6, i64 %344
  %scevgep143 = getelementptr float, float* %6, i64 %idxprom14.i.i.3
  %scevgep143144 = bitcast float* %scevgep143 to i8*
  %uglygep145 = getelementptr i8, i8* %scevgep143144, i64 1
  %345 = add i32 %14, 1
  %346 = mul i32 %10, %345
  %347 = add i32 %346, %340
  %348 = add i32 %347, 1
  %349 = sext i32 %348 to i64
  %scevgep146 = getelementptr float, float* %6, i64 %349
  %350 = add nsw i64 %349, 32
  %scevgep148 = getelementptr float, float* %6, i64 %350
  %bound0151 = icmp ugt i8* %uglygep145, %scevgep139140
  %bound1152 = icmp ult float* %arrayidx15.i.i.3, %scevgep141
  %found.conflict153 = and i1 %bound0151, %bound1152
  %bound0154 = icmp ult float* %scevgep139, %scevgep148
  %bound1155 = icmp ult float* %scevgep146, %scevgep141
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %found.conflict153, %found.conflict156
  br i1 %conflict.rdx157, label %pregion_for_entry.entry.i.i.us.3.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck159
  %broadcast.splatinsert167 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat168 = shufflevector <8 x i64> %broadcast.splatinsert167, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat172 = shufflevector <8 x i32> %broadcast.splatinsert171, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert174 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.3, i32 0
  %broadcast.splat175 = shufflevector <8 x float*> %broadcast.splatinsert174, <8 x float*> undef, <8 x i32> zeroinitializer
  %351 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %352 = or <8 x i32> %351, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %353 = add <8 x i32> %broadcast.splat170, %352
  %354 = icmp slt <8 x i32> %353, %broadcast.splat172
  %355 = extractelement <8 x i32> %353, i32 0
  %356 = add nsw i32 %355, %mul.i.i.3
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %6, i64 %357
  %359 = bitcast float* %358 to <8 x float>*
  %wide.masked.load173 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %359, i32 4, <8 x i1> %354, <8 x float> undef), !tbaa !12, !alias.scope !189, !noalias !192
  %wide.masked.gather176 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %354, <8 x float> undef), !tbaa !12, !alias.scope !195
  %360 = add nsw i32 %355, %mul16.i.i
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float* %6, i64 %361
  %363 = bitcast float* %362 to <8 x float>*
  %wide.masked.load177 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %363, i32 4, <8 x i1> %354, <8 x float> undef), !tbaa !12, !alias.scope !196
  %364 = fneg <8 x float> %wide.masked.gather176
  %365 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %364, <8 x float> %wide.masked.load177, <8 x float> %wide.masked.load173)
  %366 = bitcast float* %358 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %365, <8 x float>* %366, i32 4, <8 x i1> %354), !tbaa !12, !alias.scope !189, !noalias !192, !llvm.access.group !24
  %367 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %368 = or <8 x i32> %367, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %369 = add <8 x i32> %broadcast.splat170, %368
  %370 = icmp slt <8 x i32> %369, %broadcast.splat172
  %371 = extractelement <8 x i32> %369, i32 0
  %372 = add nsw i32 %371, %mul.i.i.3
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds float, float* %6, i64 %373
  %375 = bitcast float* %374 to <8 x float>*
  %wide.masked.load173.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %375, i32 4, <8 x i1> %370, <8 x float> undef), !tbaa !12, !alias.scope !189, !noalias !192
  %wide.masked.gather176.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %370, <8 x float> undef), !tbaa !12, !alias.scope !195
  %376 = add nsw i32 %371, %mul16.i.i
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds float, float* %6, i64 %377
  %379 = bitcast float* %378 to <8 x float>*
  %wide.masked.load177.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %379, i32 4, <8 x i1> %370, <8 x float> undef), !tbaa !12, !alias.scope !196
  %380 = fneg <8 x float> %wide.masked.gather176.1
  %381 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %380, <8 x float> %wide.masked.load177.1, <8 x float> %wide.masked.load173.1)
  %382 = bitcast float* %374 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %381, <8 x float>* %382, i32 4, <8 x i1> %370), !tbaa !12, !alias.scope !189, !noalias !192, !llvm.access.group !24
  %383 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %384 = or <8 x i32> %383, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %385 = add <8 x i32> %broadcast.splat170, %384
  %386 = icmp slt <8 x i32> %385, %broadcast.splat172
  %387 = extractelement <8 x i32> %385, i32 0
  %388 = add nsw i32 %387, %mul.i.i.3
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, float* %6, i64 %389
  %391 = bitcast float* %390 to <8 x float>*
  %wide.masked.load173.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %391, i32 4, <8 x i1> %386, <8 x float> undef), !tbaa !12, !alias.scope !189, !noalias !192
  %wide.masked.gather176.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %386, <8 x float> undef), !tbaa !12, !alias.scope !195
  %392 = add nsw i32 %387, %mul16.i.i
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds float, float* %6, i64 %393
  %395 = bitcast float* %394 to <8 x float>*
  %wide.masked.load177.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %395, i32 4, <8 x i1> %386, <8 x float> undef), !tbaa !12, !alias.scope !196
  %396 = fneg <8 x float> %wide.masked.gather176.2
  %397 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %396, <8 x float> %wide.masked.load177.2, <8 x float> %wide.masked.load173.2)
  %398 = bitcast float* %390 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %397, <8 x float>* %398, i32 4, <8 x i1> %386), !tbaa !12, !alias.scope !189, !noalias !192, !llvm.access.group !24
  %399 = trunc <8 x i64> %broadcast.splat168 to <8 x i32>
  %400 = or <8 x i32> %399, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %401 = add <8 x i32> %broadcast.splat170, %400
  %402 = icmp slt <8 x i32> %401, %broadcast.splat172
  %403 = extractelement <8 x i32> %401, i32 0
  %404 = add nsw i32 %403, %mul.i.i.3
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds float, float* %6, i64 %405
  %407 = bitcast float* %406 to <8 x float>*
  %wide.masked.load173.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %407, i32 4, <8 x i1> %402, <8 x float> undef), !tbaa !12, !alias.scope !189, !noalias !192
  %wide.masked.gather176.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat175, i32 4, <8 x i1> %402, <8 x float> undef), !tbaa !12, !alias.scope !195
  %408 = add nsw i32 %403, %mul16.i.i
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds float, float* %6, i64 %409
  %411 = bitcast float* %410 to <8 x float>*
  %wide.masked.load177.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %411, i32 4, <8 x i1> %402, <8 x float> undef), !tbaa !12, !alias.scope !196
  %412 = fneg <8 x float> %wide.masked.gather176.3
  %413 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %412, <8 x float> %wide.masked.load177.3, <8 x float> %wide.masked.load173.3)
  %414 = bitcast float* %406 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %413, <8 x float>* %414, i32 4, <8 x i1> %402), !tbaa !12, !alias.scope !189, !noalias !192, !llvm.access.group !24
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.3:                 ; preds = %if.end.r_exit.i.i.us.3.1, %pregion_for_entry.entry.i.i.us.3.preheader
  %_local_id_x.i.0.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.3.preheader ], [ %854, %if.end.r_exit.i.i.us.3.1 ]
  %add1.i.i.i.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.3, %mul.i.i.i
  %415 = trunc i64 %add1.i.i.i.us.3 to i32
  %conv2.i.i.us.3 = add i32 %add.i.i, %415
  %cmp9.i.i.us.3 = icmp slt i32 %conv2.i.i.us.3, %14
  br i1 %cmp9.i.i.us.3, label %if.then.i.i.us.3, label %if.end.r_exit.i.i.us.3

if.then.i.i.us.3:                                 ; preds = %pregion_for_entry.entry.i.i.us.3
  %add11.i.i.us.3 = add nsw i32 %conv2.i.i.us.3, %mul.i.i.3
  %idxprom.i.i.us.3 = sext i32 %add11.i.i.us.3 to i64
  %arrayidx.i.i.us.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.3
  %416 = load float, float* %arrayidx.i.i.us.3, align 4, !tbaa !12
  %417 = load float, float* %arrayidx15.i.i.3, align 4, !tbaa !12
  %add17.i.i.us.3 = add nsw i32 %conv2.i.i.us.3, %mul16.i.i
  %idxprom18.i.i.us.3 = sext i32 %add17.i.i.us.3 to i64
  %arrayidx19.i.i.us.3 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.3
  %418 = load float, float* %arrayidx19.i.i.us.3, align 4, !tbaa !12
  %neg.i.i.us.3 = fneg float %417
  %419 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.3, float %418, float %416) #6
  store float %419, float* %arrayidx.i.i.us.3, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.3

if.end.r_exit.i.i.us.3:                           ; preds = %if.then.i.i.us.3, %pregion_for_entry.entry.i.i.us.3
  %420 = or i64 %_local_id_x.i.0.us.3, 1
  %add1.i.i.i.us.3.1 = add nuw nsw i64 %420, %mul.i.i.i
  %421 = trunc i64 %add1.i.i.i.us.3.1 to i32
  %conv2.i.i.us.3.1 = add i32 %add.i.i, %421
  %cmp9.i.i.us.3.1 = icmp slt i32 %conv2.i.i.us.3.1, %14
  br i1 %cmp9.i.i.us.3.1, label %if.then.i.i.us.3.1, label %if.end.r_exit.i.i.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.r_exit.i.i.us.3.1
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph160, %pregion_for_end.i.i.2
  %422 = trunc i64 %mul3.i.i.i to i32
  %423 = or i32 %422, 4
  %conv7.i.i.4 = add i32 %add.i.i, %423
  %cmp.i.i.4 = icmp slt i32 %conv7.i.i.4, %14
  %mul.i.i.4 = mul nsw i32 %conv7.i.i.4, %14
  %add13.i.i.4 = add nsw i32 %mul.i.i.4, %10
  %idxprom14.i.i.4 = sext i32 %add13.i.i.4 to i64
  %arrayidx15.i.i.4 = getelementptr inbounds float, float* %6, i64 %idxprom14.i.i.4
  br i1 %cmp.i.i.4, label %vector.scevcheck188, label %pregion_for_end.i.i.4

vector.scevcheck188:                              ; preds = %pregion_for_end.i.i.3
  %424 = mul i32 %14, %conv7.i.i.4
  %425 = add i32 %10, %424
  %426 = trunc i64 %2 to i32
  %427 = shl i32 %426, 5
  %428 = add i32 %425, %427
  %429 = add i32 %428, 1
  %430 = add i32 %428, 32
  %431 = icmp slt i32 %430, %429
  %432 = add i32 %14, 1
  %433 = mul i32 %10, %432
  %434 = add i32 %433, %427
  %435 = add i32 %434, 1
  %436 = add i32 %434, 32
  %437 = icmp slt i32 %436, %435
  %438 = or i1 %431, %437
  br i1 %438, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.memcheck210

pregion_for_entry.entry.i.i.us.4.preheader:       ; preds = %vector.memcheck210, %vector.scevcheck188
  br label %pregion_for_entry.entry.i.i.us.4

vector.memcheck210:                               ; preds = %vector.scevcheck188
  %439 = mul i32 %14, %conv7.i.i.4
  %440 = add i32 %10, %439
  %441 = trunc i64 %2 to i32
  %442 = shl i32 %441, 5
  %443 = add i32 %440, %442
  %444 = add i32 %443, 1
  %445 = sext i32 %444 to i64
  %scevgep190 = getelementptr float, float* %6, i64 %445
  %scevgep190191 = bitcast float* %scevgep190 to i8*
  %446 = add nsw i64 %445, 32
  %scevgep192 = getelementptr float, float* %6, i64 %446
  %scevgep194 = getelementptr float, float* %6, i64 %idxprom14.i.i.4
  %scevgep194195 = bitcast float* %scevgep194 to i8*
  %uglygep196 = getelementptr i8, i8* %scevgep194195, i64 1
  %447 = add i32 %14, 1
  %448 = mul i32 %10, %447
  %449 = add i32 %448, %442
  %450 = add i32 %449, 1
  %451 = sext i32 %450 to i64
  %scevgep197 = getelementptr float, float* %6, i64 %451
  %452 = add nsw i64 %451, 32
  %scevgep199 = getelementptr float, float* %6, i64 %452
  %bound0202 = icmp ugt i8* %uglygep196, %scevgep190191
  %bound1203 = icmp ult float* %arrayidx15.i.i.4, %scevgep192
  %found.conflict204 = and i1 %bound0202, %bound1203
  %bound0205 = icmp ult float* %scevgep190, %scevgep199
  %bound1206 = icmp ult float* %scevgep197, %scevgep192
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %found.conflict204, %found.conflict207
  br i1 %conflict.rdx208, label %pregion_for_entry.entry.i.i.us.4.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %vector.memcheck210
  %broadcast.splatinsert218 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat219 = shufflevector <8 x i64> %broadcast.splatinsert218, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat221 = shufflevector <8 x i32> %broadcast.splatinsert220, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat223 = shufflevector <8 x i32> %broadcast.splatinsert222, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.4, i32 0
  %broadcast.splat226 = shufflevector <8 x float*> %broadcast.splatinsert225, <8 x float*> undef, <8 x i32> zeroinitializer
  %453 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %454 = or <8 x i32> %453, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %455 = add <8 x i32> %broadcast.splat221, %454
  %456 = icmp slt <8 x i32> %455, %broadcast.splat223
  %457 = extractelement <8 x i32> %455, i32 0
  %458 = add nsw i32 %457, %mul.i.i.4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds float, float* %6, i64 %459
  %461 = bitcast float* %460 to <8 x float>*
  %wide.masked.load224 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %461, i32 4, <8 x i1> %456, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !200
  %wide.masked.gather227 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %456, <8 x float> undef), !tbaa !12, !alias.scope !203
  %462 = add nsw i32 %457, %mul16.i.i
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds float, float* %6, i64 %463
  %465 = bitcast float* %464 to <8 x float>*
  %wide.masked.load228 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %465, i32 4, <8 x i1> %456, <8 x float> undef), !tbaa !12, !alias.scope !204
  %466 = fneg <8 x float> %wide.masked.gather227
  %467 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %466, <8 x float> %wide.masked.load228, <8 x float> %wide.masked.load224)
  %468 = bitcast float* %460 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %467, <8 x float>* %468, i32 4, <8 x i1> %456), !tbaa !12, !alias.scope !197, !noalias !200, !llvm.access.group !24
  %469 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %470 = or <8 x i32> %469, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %471 = add <8 x i32> %broadcast.splat221, %470
  %472 = icmp slt <8 x i32> %471, %broadcast.splat223
  %473 = extractelement <8 x i32> %471, i32 0
  %474 = add nsw i32 %473, %mul.i.i.4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds float, float* %6, i64 %475
  %477 = bitcast float* %476 to <8 x float>*
  %wide.masked.load224.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %477, i32 4, <8 x i1> %472, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !200
  %wide.masked.gather227.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %472, <8 x float> undef), !tbaa !12, !alias.scope !203
  %478 = add nsw i32 %473, %mul16.i.i
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds float, float* %6, i64 %479
  %481 = bitcast float* %480 to <8 x float>*
  %wide.masked.load228.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %481, i32 4, <8 x i1> %472, <8 x float> undef), !tbaa !12, !alias.scope !204
  %482 = fneg <8 x float> %wide.masked.gather227.1
  %483 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %482, <8 x float> %wide.masked.load228.1, <8 x float> %wide.masked.load224.1)
  %484 = bitcast float* %476 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %483, <8 x float>* %484, i32 4, <8 x i1> %472), !tbaa !12, !alias.scope !197, !noalias !200, !llvm.access.group !24
  %485 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %486 = or <8 x i32> %485, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %487 = add <8 x i32> %broadcast.splat221, %486
  %488 = icmp slt <8 x i32> %487, %broadcast.splat223
  %489 = extractelement <8 x i32> %487, i32 0
  %490 = add nsw i32 %489, %mul.i.i.4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds float, float* %6, i64 %491
  %493 = bitcast float* %492 to <8 x float>*
  %wide.masked.load224.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %493, i32 4, <8 x i1> %488, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !200
  %wide.masked.gather227.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %488, <8 x float> undef), !tbaa !12, !alias.scope !203
  %494 = add nsw i32 %489, %mul16.i.i
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds float, float* %6, i64 %495
  %497 = bitcast float* %496 to <8 x float>*
  %wide.masked.load228.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %497, i32 4, <8 x i1> %488, <8 x float> undef), !tbaa !12, !alias.scope !204
  %498 = fneg <8 x float> %wide.masked.gather227.2
  %499 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %498, <8 x float> %wide.masked.load228.2, <8 x float> %wide.masked.load224.2)
  %500 = bitcast float* %492 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %499, <8 x float>* %500, i32 4, <8 x i1> %488), !tbaa !12, !alias.scope !197, !noalias !200, !llvm.access.group !24
  %501 = trunc <8 x i64> %broadcast.splat219 to <8 x i32>
  %502 = or <8 x i32> %501, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %503 = add <8 x i32> %broadcast.splat221, %502
  %504 = icmp slt <8 x i32> %503, %broadcast.splat223
  %505 = extractelement <8 x i32> %503, i32 0
  %506 = add nsw i32 %505, %mul.i.i.4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds float, float* %6, i64 %507
  %509 = bitcast float* %508 to <8 x float>*
  %wide.masked.load224.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %509, i32 4, <8 x i1> %504, <8 x float> undef), !tbaa !12, !alias.scope !197, !noalias !200
  %wide.masked.gather227.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat226, i32 4, <8 x i1> %504, <8 x float> undef), !tbaa !12, !alias.scope !203
  %510 = add nsw i32 %505, %mul16.i.i
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds float, float* %6, i64 %511
  %513 = bitcast float* %512 to <8 x float>*
  %wide.masked.load228.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %513, i32 4, <8 x i1> %504, <8 x float> undef), !tbaa !12, !alias.scope !204
  %514 = fneg <8 x float> %wide.masked.gather227.3
  %515 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %514, <8 x float> %wide.masked.load228.3, <8 x float> %wide.masked.load224.3)
  %516 = bitcast float* %508 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %515, <8 x float>* %516, i32 4, <8 x i1> %504), !tbaa !12, !alias.scope !197, !noalias !200, !llvm.access.group !24
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.4:                 ; preds = %if.end.r_exit.i.i.us.4.1, %pregion_for_entry.entry.i.i.us.4.preheader
  %_local_id_x.i.0.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.4.preheader ], [ %849, %if.end.r_exit.i.i.us.4.1 ]
  %add1.i.i.i.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.4, %mul.i.i.i
  %517 = trunc i64 %add1.i.i.i.us.4 to i32
  %conv2.i.i.us.4 = add i32 %add.i.i, %517
  %cmp9.i.i.us.4 = icmp slt i32 %conv2.i.i.us.4, %14
  br i1 %cmp9.i.i.us.4, label %if.then.i.i.us.4, label %if.end.r_exit.i.i.us.4

if.then.i.i.us.4:                                 ; preds = %pregion_for_entry.entry.i.i.us.4
  %add11.i.i.us.4 = add nsw i32 %conv2.i.i.us.4, %mul.i.i.4
  %idxprom.i.i.us.4 = sext i32 %add11.i.i.us.4 to i64
  %arrayidx.i.i.us.4 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.4
  %518 = load float, float* %arrayidx.i.i.us.4, align 4, !tbaa !12
  %519 = load float, float* %arrayidx15.i.i.4, align 4, !tbaa !12
  %add17.i.i.us.4 = add nsw i32 %conv2.i.i.us.4, %mul16.i.i
  %idxprom18.i.i.us.4 = sext i32 %add17.i.i.us.4 to i64
  %arrayidx19.i.i.us.4 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.4
  %520 = load float, float* %arrayidx19.i.i.us.4, align 4, !tbaa !12
  %neg.i.i.us.4 = fneg float %519
  %521 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.4, float %520, float %518) #6
  store float %521, float* %arrayidx.i.i.us.4, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.4

if.end.r_exit.i.i.us.4:                           ; preds = %if.then.i.i.us.4, %pregion_for_entry.entry.i.i.us.4
  %522 = or i64 %_local_id_x.i.0.us.4, 1
  %add1.i.i.i.us.4.1 = add nuw nsw i64 %522, %mul.i.i.i
  %523 = trunc i64 %add1.i.i.i.us.4.1 to i32
  %conv2.i.i.us.4.1 = add i32 %add.i.i, %523
  %cmp9.i.i.us.4.1 = icmp slt i32 %conv2.i.i.us.4.1, %14
  br i1 %cmp9.i.i.us.4.1, label %if.then.i.i.us.4.1, label %if.end.r_exit.i.i.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.r_exit.i.i.us.4.1
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph211, %pregion_for_end.i.i.3
  %524 = trunc i64 %mul3.i.i.i to i32
  %525 = or i32 %524, 5
  %conv7.i.i.5 = add i32 %add.i.i, %525
  %cmp.i.i.5 = icmp slt i32 %conv7.i.i.5, %14
  %mul.i.i.5 = mul nsw i32 %conv7.i.i.5, %14
  %add13.i.i.5 = add nsw i32 %mul.i.i.5, %10
  %idxprom14.i.i.5 = sext i32 %add13.i.i.5 to i64
  %arrayidx15.i.i.5 = getelementptr inbounds float, float* %6, i64 %idxprom14.i.i.5
  br i1 %cmp.i.i.5, label %vector.scevcheck239, label %pregion_for_end.i.i.5

vector.scevcheck239:                              ; preds = %pregion_for_end.i.i.4
  %526 = mul i32 %14, %conv7.i.i.5
  %527 = add i32 %10, %526
  %528 = trunc i64 %2 to i32
  %529 = shl i32 %528, 5
  %530 = add i32 %527, %529
  %531 = add i32 %530, 1
  %532 = add i32 %530, 32
  %533 = icmp slt i32 %532, %531
  %534 = add i32 %14, 1
  %535 = mul i32 %10, %534
  %536 = add i32 %535, %529
  %537 = add i32 %536, 1
  %538 = add i32 %536, 32
  %539 = icmp slt i32 %538, %537
  %540 = or i1 %533, %539
  br i1 %540, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.memcheck261

pregion_for_entry.entry.i.i.us.5.preheader:       ; preds = %vector.memcheck261, %vector.scevcheck239
  br label %pregion_for_entry.entry.i.i.us.5

vector.memcheck261:                               ; preds = %vector.scevcheck239
  %541 = mul i32 %14, %conv7.i.i.5
  %542 = add i32 %10, %541
  %543 = trunc i64 %2 to i32
  %544 = shl i32 %543, 5
  %545 = add i32 %542, %544
  %546 = add i32 %545, 1
  %547 = sext i32 %546 to i64
  %scevgep241 = getelementptr float, float* %6, i64 %547
  %scevgep241242 = bitcast float* %scevgep241 to i8*
  %548 = add nsw i64 %547, 32
  %scevgep243 = getelementptr float, float* %6, i64 %548
  %scevgep245 = getelementptr float, float* %6, i64 %idxprom14.i.i.5
  %scevgep245246 = bitcast float* %scevgep245 to i8*
  %uglygep247 = getelementptr i8, i8* %scevgep245246, i64 1
  %549 = add i32 %14, 1
  %550 = mul i32 %10, %549
  %551 = add i32 %550, %544
  %552 = add i32 %551, 1
  %553 = sext i32 %552 to i64
  %scevgep248 = getelementptr float, float* %6, i64 %553
  %554 = add nsw i64 %553, 32
  %scevgep250 = getelementptr float, float* %6, i64 %554
  %bound0253 = icmp ugt i8* %uglygep247, %scevgep241242
  %bound1254 = icmp ult float* %arrayidx15.i.i.5, %scevgep243
  %found.conflict255 = and i1 %bound0253, %bound1254
  %bound0256 = icmp ult float* %scevgep241, %scevgep250
  %bound1257 = icmp ult float* %scevgep248, %scevgep243
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %found.conflict255, %found.conflict258
  br i1 %conflict.rdx259, label %pregion_for_entry.entry.i.i.us.5.preheader, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck261
  %broadcast.splatinsert269 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat270 = shufflevector <8 x i64> %broadcast.splatinsert269, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert271 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat272 = shufflevector <8 x i32> %broadcast.splatinsert271, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert273 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat274 = shufflevector <8 x i32> %broadcast.splatinsert273, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert276 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.5, i32 0
  %broadcast.splat277 = shufflevector <8 x float*> %broadcast.splatinsert276, <8 x float*> undef, <8 x i32> zeroinitializer
  %555 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %556 = or <8 x i32> %555, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %557 = add <8 x i32> %broadcast.splat272, %556
  %558 = icmp slt <8 x i32> %557, %broadcast.splat274
  %559 = extractelement <8 x i32> %557, i32 0
  %560 = add nsw i32 %559, %mul.i.i.5
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds float, float* %6, i64 %561
  %563 = bitcast float* %562 to <8 x float>*
  %wide.masked.load275 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %563, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !205, !noalias !208
  %wide.masked.gather278 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !211
  %564 = add nsw i32 %559, %mul16.i.i
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds float, float* %6, i64 %565
  %567 = bitcast float* %566 to <8 x float>*
  %wide.masked.load279 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %567, i32 4, <8 x i1> %558, <8 x float> undef), !tbaa !12, !alias.scope !212
  %568 = fneg <8 x float> %wide.masked.gather278
  %569 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %568, <8 x float> %wide.masked.load279, <8 x float> %wide.masked.load275)
  %570 = bitcast float* %562 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %569, <8 x float>* %570, i32 4, <8 x i1> %558), !tbaa !12, !alias.scope !205, !noalias !208, !llvm.access.group !24
  %571 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %572 = or <8 x i32> %571, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %573 = add <8 x i32> %broadcast.splat272, %572
  %574 = icmp slt <8 x i32> %573, %broadcast.splat274
  %575 = extractelement <8 x i32> %573, i32 0
  %576 = add nsw i32 %575, %mul.i.i.5
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds float, float* %6, i64 %577
  %579 = bitcast float* %578 to <8 x float>*
  %wide.masked.load275.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %579, i32 4, <8 x i1> %574, <8 x float> undef), !tbaa !12, !alias.scope !205, !noalias !208
  %wide.masked.gather278.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %574, <8 x float> undef), !tbaa !12, !alias.scope !211
  %580 = add nsw i32 %575, %mul16.i.i
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds float, float* %6, i64 %581
  %583 = bitcast float* %582 to <8 x float>*
  %wide.masked.load279.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %583, i32 4, <8 x i1> %574, <8 x float> undef), !tbaa !12, !alias.scope !212
  %584 = fneg <8 x float> %wide.masked.gather278.1
  %585 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %584, <8 x float> %wide.masked.load279.1, <8 x float> %wide.masked.load275.1)
  %586 = bitcast float* %578 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %585, <8 x float>* %586, i32 4, <8 x i1> %574), !tbaa !12, !alias.scope !205, !noalias !208, !llvm.access.group !24
  %587 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %588 = or <8 x i32> %587, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %589 = add <8 x i32> %broadcast.splat272, %588
  %590 = icmp slt <8 x i32> %589, %broadcast.splat274
  %591 = extractelement <8 x i32> %589, i32 0
  %592 = add nsw i32 %591, %mul.i.i.5
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds float, float* %6, i64 %593
  %595 = bitcast float* %594 to <8 x float>*
  %wide.masked.load275.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %595, i32 4, <8 x i1> %590, <8 x float> undef), !tbaa !12, !alias.scope !205, !noalias !208
  %wide.masked.gather278.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %590, <8 x float> undef), !tbaa !12, !alias.scope !211
  %596 = add nsw i32 %591, %mul16.i.i
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds float, float* %6, i64 %597
  %599 = bitcast float* %598 to <8 x float>*
  %wide.masked.load279.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %599, i32 4, <8 x i1> %590, <8 x float> undef), !tbaa !12, !alias.scope !212
  %600 = fneg <8 x float> %wide.masked.gather278.2
  %601 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %600, <8 x float> %wide.masked.load279.2, <8 x float> %wide.masked.load275.2)
  %602 = bitcast float* %594 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %601, <8 x float>* %602, i32 4, <8 x i1> %590), !tbaa !12, !alias.scope !205, !noalias !208, !llvm.access.group !24
  %603 = trunc <8 x i64> %broadcast.splat270 to <8 x i32>
  %604 = or <8 x i32> %603, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %605 = add <8 x i32> %broadcast.splat272, %604
  %606 = icmp slt <8 x i32> %605, %broadcast.splat274
  %607 = extractelement <8 x i32> %605, i32 0
  %608 = add nsw i32 %607, %mul.i.i.5
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds float, float* %6, i64 %609
  %611 = bitcast float* %610 to <8 x float>*
  %wide.masked.load275.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %611, i32 4, <8 x i1> %606, <8 x float> undef), !tbaa !12, !alias.scope !205, !noalias !208
  %wide.masked.gather278.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat277, i32 4, <8 x i1> %606, <8 x float> undef), !tbaa !12, !alias.scope !211
  %612 = add nsw i32 %607, %mul16.i.i
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds float, float* %6, i64 %613
  %615 = bitcast float* %614 to <8 x float>*
  %wide.masked.load279.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %615, i32 4, <8 x i1> %606, <8 x float> undef), !tbaa !12, !alias.scope !212
  %616 = fneg <8 x float> %wide.masked.gather278.3
  %617 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %616, <8 x float> %wide.masked.load279.3, <8 x float> %wide.masked.load275.3)
  %618 = bitcast float* %610 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %617, <8 x float>* %618, i32 4, <8 x i1> %606), !tbaa !12, !alias.scope !205, !noalias !208, !llvm.access.group !24
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.5:                 ; preds = %if.end.r_exit.i.i.us.5.1, %pregion_for_entry.entry.i.i.us.5.preheader
  %_local_id_x.i.0.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.5.preheader ], [ %844, %if.end.r_exit.i.i.us.5.1 ]
  %add1.i.i.i.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.5, %mul.i.i.i
  %619 = trunc i64 %add1.i.i.i.us.5 to i32
  %conv2.i.i.us.5 = add i32 %add.i.i, %619
  %cmp9.i.i.us.5 = icmp slt i32 %conv2.i.i.us.5, %14
  br i1 %cmp9.i.i.us.5, label %if.then.i.i.us.5, label %if.end.r_exit.i.i.us.5

if.then.i.i.us.5:                                 ; preds = %pregion_for_entry.entry.i.i.us.5
  %add11.i.i.us.5 = add nsw i32 %conv2.i.i.us.5, %mul.i.i.5
  %idxprom.i.i.us.5 = sext i32 %add11.i.i.us.5 to i64
  %arrayidx.i.i.us.5 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.5
  %620 = load float, float* %arrayidx.i.i.us.5, align 4, !tbaa !12
  %621 = load float, float* %arrayidx15.i.i.5, align 4, !tbaa !12
  %add17.i.i.us.5 = add nsw i32 %conv2.i.i.us.5, %mul16.i.i
  %idxprom18.i.i.us.5 = sext i32 %add17.i.i.us.5 to i64
  %arrayidx19.i.i.us.5 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.5
  %622 = load float, float* %arrayidx19.i.i.us.5, align 4, !tbaa !12
  %neg.i.i.us.5 = fneg float %621
  %623 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.5, float %622, float %620) #6
  store float %623, float* %arrayidx.i.i.us.5, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.5

if.end.r_exit.i.i.us.5:                           ; preds = %if.then.i.i.us.5, %pregion_for_entry.entry.i.i.us.5
  %624 = or i64 %_local_id_x.i.0.us.5, 1
  %add1.i.i.i.us.5.1 = add nuw nsw i64 %624, %mul.i.i.i
  %625 = trunc i64 %add1.i.i.i.us.5.1 to i32
  %conv2.i.i.us.5.1 = add i32 %add.i.i, %625
  %cmp9.i.i.us.5.1 = icmp slt i32 %conv2.i.i.us.5.1, %14
  br i1 %cmp9.i.i.us.5.1, label %if.then.i.i.us.5.1, label %if.end.r_exit.i.i.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.r_exit.i.i.us.5.1
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph262, %pregion_for_end.i.i.4
  %626 = trunc i64 %mul3.i.i.i to i32
  %627 = or i32 %626, 6
  %conv7.i.i.6 = add i32 %add.i.i, %627
  %cmp.i.i.6 = icmp slt i32 %conv7.i.i.6, %14
  %mul.i.i.6 = mul nsw i32 %conv7.i.i.6, %14
  %add13.i.i.6 = add nsw i32 %mul.i.i.6, %10
  %idxprom14.i.i.6 = sext i32 %add13.i.i.6 to i64
  %arrayidx15.i.i.6 = getelementptr inbounds float, float* %6, i64 %idxprom14.i.i.6
  br i1 %cmp.i.i.6, label %vector.scevcheck290, label %pregion_for_end.i.i.6

vector.scevcheck290:                              ; preds = %pregion_for_end.i.i.5
  %628 = mul i32 %14, %conv7.i.i.6
  %629 = add i32 %10, %628
  %630 = trunc i64 %2 to i32
  %631 = shl i32 %630, 5
  %632 = add i32 %629, %631
  %633 = add i32 %632, 1
  %634 = add i32 %632, 32
  %635 = icmp slt i32 %634, %633
  %636 = add i32 %14, 1
  %637 = mul i32 %10, %636
  %638 = add i32 %637, %631
  %639 = add i32 %638, 1
  %640 = add i32 %638, 32
  %641 = icmp slt i32 %640, %639
  %642 = or i1 %635, %641
  br i1 %642, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.memcheck312

pregion_for_entry.entry.i.i.us.6.preheader:       ; preds = %vector.memcheck312, %vector.scevcheck290
  br label %pregion_for_entry.entry.i.i.us.6

vector.memcheck312:                               ; preds = %vector.scevcheck290
  %643 = mul i32 %14, %conv7.i.i.6
  %644 = add i32 %10, %643
  %645 = trunc i64 %2 to i32
  %646 = shl i32 %645, 5
  %647 = add i32 %644, %646
  %648 = add i32 %647, 1
  %649 = sext i32 %648 to i64
  %scevgep292 = getelementptr float, float* %6, i64 %649
  %scevgep292293 = bitcast float* %scevgep292 to i8*
  %650 = add nsw i64 %649, 32
  %scevgep294 = getelementptr float, float* %6, i64 %650
  %scevgep296 = getelementptr float, float* %6, i64 %idxprom14.i.i.6
  %scevgep296297 = bitcast float* %scevgep296 to i8*
  %uglygep298 = getelementptr i8, i8* %scevgep296297, i64 1
  %651 = add i32 %14, 1
  %652 = mul i32 %10, %651
  %653 = add i32 %652, %646
  %654 = add i32 %653, 1
  %655 = sext i32 %654 to i64
  %scevgep299 = getelementptr float, float* %6, i64 %655
  %656 = add nsw i64 %655, 32
  %scevgep301 = getelementptr float, float* %6, i64 %656
  %bound0304 = icmp ugt i8* %uglygep298, %scevgep292293
  %bound1305 = icmp ult float* %arrayidx15.i.i.6, %scevgep294
  %found.conflict306 = and i1 %bound0304, %bound1305
  %bound0307 = icmp ult float* %scevgep292, %scevgep301
  %bound1308 = icmp ult float* %scevgep299, %scevgep294
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %found.conflict306, %found.conflict309
  br i1 %conflict.rdx310, label %pregion_for_entry.entry.i.i.us.6.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck312
  %broadcast.splatinsert320 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat321 = shufflevector <8 x i64> %broadcast.splatinsert320, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert322 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat323 = shufflevector <8 x i32> %broadcast.splatinsert322, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert324 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat325 = shufflevector <8 x i32> %broadcast.splatinsert324, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert327 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.6, i32 0
  %broadcast.splat328 = shufflevector <8 x float*> %broadcast.splatinsert327, <8 x float*> undef, <8 x i32> zeroinitializer
  %657 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %658 = or <8 x i32> %657, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %659 = add <8 x i32> %broadcast.splat323, %658
  %660 = icmp slt <8 x i32> %659, %broadcast.splat325
  %661 = extractelement <8 x i32> %659, i32 0
  %662 = add nsw i32 %661, %mul.i.i.6
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds float, float* %6, i64 %663
  %665 = bitcast float* %664 to <8 x float>*
  %wide.masked.load326 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %665, i32 4, <8 x i1> %660, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %wide.masked.gather329 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %660, <8 x float> undef), !tbaa !12, !alias.scope !219
  %666 = add nsw i32 %661, %mul16.i.i
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds float, float* %6, i64 %667
  %669 = bitcast float* %668 to <8 x float>*
  %wide.masked.load330 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %669, i32 4, <8 x i1> %660, <8 x float> undef), !tbaa !12, !alias.scope !220
  %670 = fneg <8 x float> %wide.masked.gather329
  %671 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %670, <8 x float> %wide.masked.load330, <8 x float> %wide.masked.load326)
  %672 = bitcast float* %664 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %671, <8 x float>* %672, i32 4, <8 x i1> %660), !tbaa !12, !alias.scope !213, !noalias !216, !llvm.access.group !24
  %673 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %674 = or <8 x i32> %673, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %675 = add <8 x i32> %broadcast.splat323, %674
  %676 = icmp slt <8 x i32> %675, %broadcast.splat325
  %677 = extractelement <8 x i32> %675, i32 0
  %678 = add nsw i32 %677, %mul.i.i.6
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds float, float* %6, i64 %679
  %681 = bitcast float* %680 to <8 x float>*
  %wide.masked.load326.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %681, i32 4, <8 x i1> %676, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %wide.masked.gather329.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %676, <8 x float> undef), !tbaa !12, !alias.scope !219
  %682 = add nsw i32 %677, %mul16.i.i
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds float, float* %6, i64 %683
  %685 = bitcast float* %684 to <8 x float>*
  %wide.masked.load330.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %685, i32 4, <8 x i1> %676, <8 x float> undef), !tbaa !12, !alias.scope !220
  %686 = fneg <8 x float> %wide.masked.gather329.1
  %687 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %686, <8 x float> %wide.masked.load330.1, <8 x float> %wide.masked.load326.1)
  %688 = bitcast float* %680 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %687, <8 x float>* %688, i32 4, <8 x i1> %676), !tbaa !12, !alias.scope !213, !noalias !216, !llvm.access.group !24
  %689 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %690 = or <8 x i32> %689, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %691 = add <8 x i32> %broadcast.splat323, %690
  %692 = icmp slt <8 x i32> %691, %broadcast.splat325
  %693 = extractelement <8 x i32> %691, i32 0
  %694 = add nsw i32 %693, %mul.i.i.6
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds float, float* %6, i64 %695
  %697 = bitcast float* %696 to <8 x float>*
  %wide.masked.load326.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %697, i32 4, <8 x i1> %692, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %wide.masked.gather329.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %692, <8 x float> undef), !tbaa !12, !alias.scope !219
  %698 = add nsw i32 %693, %mul16.i.i
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds float, float* %6, i64 %699
  %701 = bitcast float* %700 to <8 x float>*
  %wide.masked.load330.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %701, i32 4, <8 x i1> %692, <8 x float> undef), !tbaa !12, !alias.scope !220
  %702 = fneg <8 x float> %wide.masked.gather329.2
  %703 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %702, <8 x float> %wide.masked.load330.2, <8 x float> %wide.masked.load326.2)
  %704 = bitcast float* %696 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %703, <8 x float>* %704, i32 4, <8 x i1> %692), !tbaa !12, !alias.scope !213, !noalias !216, !llvm.access.group !24
  %705 = trunc <8 x i64> %broadcast.splat321 to <8 x i32>
  %706 = or <8 x i32> %705, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %707 = add <8 x i32> %broadcast.splat323, %706
  %708 = icmp slt <8 x i32> %707, %broadcast.splat325
  %709 = extractelement <8 x i32> %707, i32 0
  %710 = add nsw i32 %709, %mul.i.i.6
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds float, float* %6, i64 %711
  %713 = bitcast float* %712 to <8 x float>*
  %wide.masked.load326.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %713, i32 4, <8 x i1> %708, <8 x float> undef), !tbaa !12, !alias.scope !213, !noalias !216
  %wide.masked.gather329.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat328, i32 4, <8 x i1> %708, <8 x float> undef), !tbaa !12, !alias.scope !219
  %714 = add nsw i32 %709, %mul16.i.i
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds float, float* %6, i64 %715
  %717 = bitcast float* %716 to <8 x float>*
  %wide.masked.load330.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %717, i32 4, <8 x i1> %708, <8 x float> undef), !tbaa !12, !alias.scope !220
  %718 = fneg <8 x float> %wide.masked.gather329.3
  %719 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %718, <8 x float> %wide.masked.load330.3, <8 x float> %wide.masked.load326.3)
  %720 = bitcast float* %712 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %719, <8 x float>* %720, i32 4, <8 x i1> %708), !tbaa !12, !alias.scope !213, !noalias !216, !llvm.access.group !24
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.6:                 ; preds = %if.end.r_exit.i.i.us.6.1, %pregion_for_entry.entry.i.i.us.6.preheader
  %_local_id_x.i.0.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.6.preheader ], [ %839, %if.end.r_exit.i.i.us.6.1 ]
  %add1.i.i.i.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.6, %mul.i.i.i
  %721 = trunc i64 %add1.i.i.i.us.6 to i32
  %conv2.i.i.us.6 = add i32 %add.i.i, %721
  %cmp9.i.i.us.6 = icmp slt i32 %conv2.i.i.us.6, %14
  br i1 %cmp9.i.i.us.6, label %if.then.i.i.us.6, label %if.end.r_exit.i.i.us.6

if.then.i.i.us.6:                                 ; preds = %pregion_for_entry.entry.i.i.us.6
  %add11.i.i.us.6 = add nsw i32 %conv2.i.i.us.6, %mul.i.i.6
  %idxprom.i.i.us.6 = sext i32 %add11.i.i.us.6 to i64
  %arrayidx.i.i.us.6 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.6
  %722 = load float, float* %arrayidx.i.i.us.6, align 4, !tbaa !12
  %723 = load float, float* %arrayidx15.i.i.6, align 4, !tbaa !12
  %add17.i.i.us.6 = add nsw i32 %conv2.i.i.us.6, %mul16.i.i
  %idxprom18.i.i.us.6 = sext i32 %add17.i.i.us.6 to i64
  %arrayidx19.i.i.us.6 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.6
  %724 = load float, float* %arrayidx19.i.i.us.6, align 4, !tbaa !12
  %neg.i.i.us.6 = fneg float %723
  %725 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.6, float %724, float %722) #6
  store float %725, float* %arrayidx.i.i.us.6, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.6

if.end.r_exit.i.i.us.6:                           ; preds = %if.then.i.i.us.6, %pregion_for_entry.entry.i.i.us.6
  %726 = or i64 %_local_id_x.i.0.us.6, 1
  %add1.i.i.i.us.6.1 = add nuw nsw i64 %726, %mul.i.i.i
  %727 = trunc i64 %add1.i.i.i.us.6.1 to i32
  %conv2.i.i.us.6.1 = add i32 %add.i.i, %727
  %cmp9.i.i.us.6.1 = icmp slt i32 %conv2.i.i.us.6.1, %14
  br i1 %cmp9.i.i.us.6.1, label %if.then.i.i.us.6.1, label %if.end.r_exit.i.i.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.r_exit.i.i.us.6.1
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph313, %pregion_for_end.i.i.5
  %728 = trunc i64 %mul3.i.i.i to i32
  %729 = or i32 %728, 7
  %conv7.i.i.7 = add i32 %add.i.i, %729
  %cmp.i.i.7 = icmp slt i32 %conv7.i.i.7, %14
  %mul.i.i.7 = mul nsw i32 %conv7.i.i.7, %14
  %add13.i.i.7 = add nsw i32 %mul.i.i.7, %10
  %idxprom14.i.i.7 = sext i32 %add13.i.i.7 to i64
  %arrayidx15.i.i.7 = getelementptr inbounds float, float* %6, i64 %idxprom14.i.i.7
  br i1 %cmp.i.i.7, label %vector.scevcheck341, label %pregion_for_end.i.i.7

vector.scevcheck341:                              ; preds = %pregion_for_end.i.i.6
  %730 = mul i32 %14, %conv7.i.i.7
  %731 = add i32 %10, %730
  %732 = trunc i64 %2 to i32
  %733 = shl i32 %732, 5
  %734 = add i32 %731, %733
  %735 = add i32 %734, 1
  %736 = add i32 %734, 32
  %737 = icmp slt i32 %736, %735
  %738 = add i32 %14, 1
  %739 = mul i32 %10, %738
  %740 = add i32 %739, %733
  %741 = add i32 %740, 1
  %742 = add i32 %740, 32
  %743 = icmp slt i32 %742, %741
  %744 = or i1 %737, %743
  br i1 %744, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.memcheck363

pregion_for_entry.entry.i.i.us.7.preheader:       ; preds = %vector.memcheck363, %vector.scevcheck341
  br label %pregion_for_entry.entry.i.i.us.7

vector.memcheck363:                               ; preds = %vector.scevcheck341
  %745 = mul i32 %14, %conv7.i.i.7
  %746 = add i32 %10, %745
  %747 = trunc i64 %2 to i32
  %748 = shl i32 %747, 5
  %749 = add i32 %746, %748
  %750 = add i32 %749, 1
  %751 = sext i32 %750 to i64
  %scevgep343 = getelementptr float, float* %6, i64 %751
  %scevgep343344 = bitcast float* %scevgep343 to i8*
  %752 = add nsw i64 %751, 32
  %scevgep345 = getelementptr float, float* %6, i64 %752
  %scevgep347 = getelementptr float, float* %6, i64 %idxprom14.i.i.7
  %scevgep347348 = bitcast float* %scevgep347 to i8*
  %uglygep349 = getelementptr i8, i8* %scevgep347348, i64 1
  %753 = add i32 %14, 1
  %754 = mul i32 %10, %753
  %755 = add i32 %754, %748
  %756 = add i32 %755, 1
  %757 = sext i32 %756 to i64
  %scevgep350 = getelementptr float, float* %6, i64 %757
  %758 = add nsw i64 %757, 32
  %scevgep352 = getelementptr float, float* %6, i64 %758
  %bound0355 = icmp ugt i8* %uglygep349, %scevgep343344
  %bound1356 = icmp ult float* %arrayidx15.i.i.7, %scevgep345
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0358 = icmp ult float* %scevgep343, %scevgep352
  %bound1359 = icmp ult float* %scevgep350, %scevgep345
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %found.conflict357, %found.conflict360
  br i1 %conflict.rdx361, label %pregion_for_entry.entry.i.i.us.7.preheader, label %vector.ph364

vector.ph364:                                     ; preds = %vector.memcheck363
  %broadcast.splatinsert371 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat372 = shufflevector <8 x i64> %broadcast.splatinsert371, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert373 = insertelement <8 x i32> undef, i32 %add.i.i, i32 0
  %broadcast.splat374 = shufflevector <8 x i32> %broadcast.splatinsert373, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert375 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat376 = shufflevector <8 x i32> %broadcast.splatinsert375, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert378 = insertelement <8 x float*> undef, float* %arrayidx15.i.i.7, i32 0
  %broadcast.splat379 = shufflevector <8 x float*> %broadcast.splatinsert378, <8 x float*> undef, <8 x i32> zeroinitializer
  %759 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %760 = or <8 x i32> %759, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %761 = add <8 x i32> %broadcast.splat374, %760
  %762 = icmp slt <8 x i32> %761, %broadcast.splat376
  %763 = extractelement <8 x i32> %761, i32 0
  %764 = add nsw i32 %763, %mul.i.i.7
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds float, float* %6, i64 %765
  %767 = bitcast float* %766 to <8 x float>*
  %wide.masked.load377 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %767, i32 4, <8 x i1> %762, <8 x float> undef), !tbaa !12, !alias.scope !221, !noalias !224
  %wide.masked.gather380 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %762, <8 x float> undef), !tbaa !12, !alias.scope !227
  %768 = add nsw i32 %763, %mul16.i.i
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds float, float* %6, i64 %769
  %771 = bitcast float* %770 to <8 x float>*
  %wide.masked.load381 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %771, i32 4, <8 x i1> %762, <8 x float> undef), !tbaa !12, !alias.scope !228
  %772 = fneg <8 x float> %wide.masked.gather380
  %773 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %772, <8 x float> %wide.masked.load381, <8 x float> %wide.masked.load377)
  %774 = bitcast float* %766 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %773, <8 x float>* %774, i32 4, <8 x i1> %762), !tbaa !12, !alias.scope !221, !noalias !224, !llvm.access.group !24
  %775 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %776 = or <8 x i32> %775, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %777 = add <8 x i32> %broadcast.splat374, %776
  %778 = icmp slt <8 x i32> %777, %broadcast.splat376
  %779 = extractelement <8 x i32> %777, i32 0
  %780 = add nsw i32 %779, %mul.i.i.7
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds float, float* %6, i64 %781
  %783 = bitcast float* %782 to <8 x float>*
  %wide.masked.load377.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %783, i32 4, <8 x i1> %778, <8 x float> undef), !tbaa !12, !alias.scope !221, !noalias !224
  %wide.masked.gather380.1 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %778, <8 x float> undef), !tbaa !12, !alias.scope !227
  %784 = add nsw i32 %779, %mul16.i.i
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds float, float* %6, i64 %785
  %787 = bitcast float* %786 to <8 x float>*
  %wide.masked.load381.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %787, i32 4, <8 x i1> %778, <8 x float> undef), !tbaa !12, !alias.scope !228
  %788 = fneg <8 x float> %wide.masked.gather380.1
  %789 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %788, <8 x float> %wide.masked.load381.1, <8 x float> %wide.masked.load377.1)
  %790 = bitcast float* %782 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %789, <8 x float>* %790, i32 4, <8 x i1> %778), !tbaa !12, !alias.scope !221, !noalias !224, !llvm.access.group !24
  %791 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %792 = or <8 x i32> %791, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %793 = add <8 x i32> %broadcast.splat374, %792
  %794 = icmp slt <8 x i32> %793, %broadcast.splat376
  %795 = extractelement <8 x i32> %793, i32 0
  %796 = add nsw i32 %795, %mul.i.i.7
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds float, float* %6, i64 %797
  %799 = bitcast float* %798 to <8 x float>*
  %wide.masked.load377.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %799, i32 4, <8 x i1> %794, <8 x float> undef), !tbaa !12, !alias.scope !221, !noalias !224
  %wide.masked.gather380.2 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %794, <8 x float> undef), !tbaa !12, !alias.scope !227
  %800 = add nsw i32 %795, %mul16.i.i
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds float, float* %6, i64 %801
  %803 = bitcast float* %802 to <8 x float>*
  %wide.masked.load381.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %803, i32 4, <8 x i1> %794, <8 x float> undef), !tbaa !12, !alias.scope !228
  %804 = fneg <8 x float> %wide.masked.gather380.2
  %805 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %804, <8 x float> %wide.masked.load381.2, <8 x float> %wide.masked.load377.2)
  %806 = bitcast float* %798 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %805, <8 x float>* %806, i32 4, <8 x i1> %794), !tbaa !12, !alias.scope !221, !noalias !224, !llvm.access.group !24
  %807 = trunc <8 x i64> %broadcast.splat372 to <8 x i32>
  %808 = or <8 x i32> %807, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %809 = add <8 x i32> %broadcast.splat374, %808
  %810 = icmp slt <8 x i32> %809, %broadcast.splat376
  %811 = extractelement <8 x i32> %809, i32 0
  %812 = add nsw i32 %811, %mul.i.i.7
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds float, float* %6, i64 %813
  %815 = bitcast float* %814 to <8 x float>*
  %wide.masked.load377.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %815, i32 4, <8 x i1> %810, <8 x float> undef), !tbaa !12, !alias.scope !221, !noalias !224
  %wide.masked.gather380.3 = call <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*> %broadcast.splat379, i32 4, <8 x i1> %810, <8 x float> undef), !tbaa !12, !alias.scope !227
  %816 = add nsw i32 %811, %mul16.i.i
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds float, float* %6, i64 %817
  %819 = bitcast float* %818 to <8 x float>*
  %wide.masked.load381.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %819, i32 4, <8 x i1> %810, <8 x float> undef), !tbaa !12, !alias.scope !228
  %820 = fneg <8 x float> %wide.masked.gather380.3
  %821 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %820, <8 x float> %wide.masked.load381.3, <8 x float> %wide.masked.load377.3)
  %822 = bitcast float* %814 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %821, <8 x float>* %822, i32 4, <8 x i1> %810), !tbaa !12, !alias.scope !221, !noalias !224, !llvm.access.group !24
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.7:                 ; preds = %if.end.r_exit.i.i.us.7.1, %pregion_for_entry.entry.i.i.us.7.preheader
  %_local_id_x.i.0.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.7.preheader ], [ %834, %if.end.r_exit.i.i.us.7.1 ]
  %add1.i.i.i.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.7, %mul.i.i.i
  %823 = trunc i64 %add1.i.i.i.us.7 to i32
  %conv2.i.i.us.7 = add i32 %add.i.i, %823
  %cmp9.i.i.us.7 = icmp slt i32 %conv2.i.i.us.7, %14
  br i1 %cmp9.i.i.us.7, label %if.then.i.i.us.7, label %if.end.r_exit.i.i.us.7

if.then.i.i.us.7:                                 ; preds = %pregion_for_entry.entry.i.i.us.7
  %add11.i.i.us.7 = add nsw i32 %conv2.i.i.us.7, %mul.i.i.7
  %idxprom.i.i.us.7 = sext i32 %add11.i.i.us.7 to i64
  %arrayidx.i.i.us.7 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.7
  %824 = load float, float* %arrayidx.i.i.us.7, align 4, !tbaa !12
  %825 = load float, float* %arrayidx15.i.i.7, align 4, !tbaa !12
  %add17.i.i.us.7 = add nsw i32 %conv2.i.i.us.7, %mul16.i.i
  %idxprom18.i.i.us.7 = sext i32 %add17.i.i.us.7 to i64
  %arrayidx19.i.i.us.7 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.7
  %826 = load float, float* %arrayidx19.i.i.us.7, align 4, !tbaa !12
  %neg.i.i.us.7 = fneg float %825
  %827 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.7, float %826, float %824) #6
  store float %827, float* %arrayidx.i.i.us.7, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.7

if.end.r_exit.i.i.us.7:                           ; preds = %if.then.i.i.us.7, %pregion_for_entry.entry.i.i.us.7
  %828 = or i64 %_local_id_x.i.0.us.7, 1
  %add1.i.i.i.us.7.1 = add nuw nsw i64 %828, %mul.i.i.i
  %829 = trunc i64 %add1.i.i.i.us.7.1 to i32
  %conv2.i.i.us.7.1 = add i32 %add.i.i, %829
  %cmp9.i.i.us.7.1 = icmp slt i32 %conv2.i.i.us.7.1, %14
  br i1 %cmp9.i.i.us.7.1, label %if.then.i.i.us.7.1, label %if.end.r_exit.i.i.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.r_exit.i.i.us.7.1
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph364, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.7.1:                               ; preds = %if.end.r_exit.i.i.us.7
  %add11.i.i.us.7.1 = add nsw i32 %conv2.i.i.us.7.1, %mul.i.i.7
  %idxprom.i.i.us.7.1 = sext i32 %add11.i.i.us.7.1 to i64
  %arrayidx.i.i.us.7.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.7.1
  %830 = load float, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12
  %831 = load float, float* %arrayidx15.i.i.7, align 4, !tbaa !12
  %add17.i.i.us.7.1 = add nsw i32 %conv2.i.i.us.7.1, %mul16.i.i
  %idxprom18.i.i.us.7.1 = sext i32 %add17.i.i.us.7.1 to i64
  %arrayidx19.i.i.us.7.1 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.7.1
  %832 = load float, float* %arrayidx19.i.i.us.7.1, align 4, !tbaa !12
  %neg.i.i.us.7.1 = fneg float %831
  %833 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.7.1, float %832, float %830) #6
  store float %833, float* %arrayidx.i.i.us.7.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.7.1

if.end.r_exit.i.i.us.7.1:                         ; preds = %if.then.i.i.us.7.1, %if.end.r_exit.i.i.us.7
  %834 = add nuw nsw i64 %_local_id_x.i.0.us.7, 2
  %exitcond.7.not.1 = icmp eq i64 %834, 32
  br i1 %exitcond.7.not.1, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.7, !llvm.loop !229

if.then.i.i.us.6.1:                               ; preds = %if.end.r_exit.i.i.us.6
  %add11.i.i.us.6.1 = add nsw i32 %conv2.i.i.us.6.1, %mul.i.i.6
  %idxprom.i.i.us.6.1 = sext i32 %add11.i.i.us.6.1 to i64
  %arrayidx.i.i.us.6.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.6.1
  %835 = load float, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12
  %836 = load float, float* %arrayidx15.i.i.6, align 4, !tbaa !12
  %add17.i.i.us.6.1 = add nsw i32 %conv2.i.i.us.6.1, %mul16.i.i
  %idxprom18.i.i.us.6.1 = sext i32 %add17.i.i.us.6.1 to i64
  %arrayidx19.i.i.us.6.1 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.6.1
  %837 = load float, float* %arrayidx19.i.i.us.6.1, align 4, !tbaa !12
  %neg.i.i.us.6.1 = fneg float %836
  %838 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.6.1, float %837, float %835) #6
  store float %838, float* %arrayidx.i.i.us.6.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.6.1

if.end.r_exit.i.i.us.6.1:                         ; preds = %if.then.i.i.us.6.1, %if.end.r_exit.i.i.us.6
  %839 = add nuw nsw i64 %_local_id_x.i.0.us.6, 2
  %exitcond.6.not.1 = icmp eq i64 %839, 32
  br i1 %exitcond.6.not.1, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.6, !llvm.loop !230

if.then.i.i.us.5.1:                               ; preds = %if.end.r_exit.i.i.us.5
  %add11.i.i.us.5.1 = add nsw i32 %conv2.i.i.us.5.1, %mul.i.i.5
  %idxprom.i.i.us.5.1 = sext i32 %add11.i.i.us.5.1 to i64
  %arrayidx.i.i.us.5.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.5.1
  %840 = load float, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12
  %841 = load float, float* %arrayidx15.i.i.5, align 4, !tbaa !12
  %add17.i.i.us.5.1 = add nsw i32 %conv2.i.i.us.5.1, %mul16.i.i
  %idxprom18.i.i.us.5.1 = sext i32 %add17.i.i.us.5.1 to i64
  %arrayidx19.i.i.us.5.1 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.5.1
  %842 = load float, float* %arrayidx19.i.i.us.5.1, align 4, !tbaa !12
  %neg.i.i.us.5.1 = fneg float %841
  %843 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.5.1, float %842, float %840) #6
  store float %843, float* %arrayidx.i.i.us.5.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.5.1

if.end.r_exit.i.i.us.5.1:                         ; preds = %if.then.i.i.us.5.1, %if.end.r_exit.i.i.us.5
  %844 = add nuw nsw i64 %_local_id_x.i.0.us.5, 2
  %exitcond.5.not.1 = icmp eq i64 %844, 32
  br i1 %exitcond.5.not.1, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.5, !llvm.loop !231

if.then.i.i.us.4.1:                               ; preds = %if.end.r_exit.i.i.us.4
  %add11.i.i.us.4.1 = add nsw i32 %conv2.i.i.us.4.1, %mul.i.i.4
  %idxprom.i.i.us.4.1 = sext i32 %add11.i.i.us.4.1 to i64
  %arrayidx.i.i.us.4.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.4.1
  %845 = load float, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12
  %846 = load float, float* %arrayidx15.i.i.4, align 4, !tbaa !12
  %add17.i.i.us.4.1 = add nsw i32 %conv2.i.i.us.4.1, %mul16.i.i
  %idxprom18.i.i.us.4.1 = sext i32 %add17.i.i.us.4.1 to i64
  %arrayidx19.i.i.us.4.1 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.4.1
  %847 = load float, float* %arrayidx19.i.i.us.4.1, align 4, !tbaa !12
  %neg.i.i.us.4.1 = fneg float %846
  %848 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.4.1, float %847, float %845) #6
  store float %848, float* %arrayidx.i.i.us.4.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.4.1

if.end.r_exit.i.i.us.4.1:                         ; preds = %if.then.i.i.us.4.1, %if.end.r_exit.i.i.us.4
  %849 = add nuw nsw i64 %_local_id_x.i.0.us.4, 2
  %exitcond.4.not.1 = icmp eq i64 %849, 32
  br i1 %exitcond.4.not.1, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.4, !llvm.loop !232

if.then.i.i.us.3.1:                               ; preds = %if.end.r_exit.i.i.us.3
  %add11.i.i.us.3.1 = add nsw i32 %conv2.i.i.us.3.1, %mul.i.i.3
  %idxprom.i.i.us.3.1 = sext i32 %add11.i.i.us.3.1 to i64
  %arrayidx.i.i.us.3.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.3.1
  %850 = load float, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12
  %851 = load float, float* %arrayidx15.i.i.3, align 4, !tbaa !12
  %add17.i.i.us.3.1 = add nsw i32 %conv2.i.i.us.3.1, %mul16.i.i
  %idxprom18.i.i.us.3.1 = sext i32 %add17.i.i.us.3.1 to i64
  %arrayidx19.i.i.us.3.1 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.3.1
  %852 = load float, float* %arrayidx19.i.i.us.3.1, align 4, !tbaa !12
  %neg.i.i.us.3.1 = fneg float %851
  %853 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.3.1, float %852, float %850) #6
  store float %853, float* %arrayidx.i.i.us.3.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.3.1

if.end.r_exit.i.i.us.3.1:                         ; preds = %if.then.i.i.us.3.1, %if.end.r_exit.i.i.us.3
  %854 = add nuw nsw i64 %_local_id_x.i.0.us.3, 2
  %exitcond.3.not.1 = icmp eq i64 %854, 32
  br i1 %exitcond.3.not.1, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.3, !llvm.loop !233

if.then.i.i.us.2.1:                               ; preds = %if.end.r_exit.i.i.us.2
  %add11.i.i.us.2.1 = add nsw i32 %conv2.i.i.us.2.1, %mul.i.i.2
  %idxprom.i.i.us.2.1 = sext i32 %add11.i.i.us.2.1 to i64
  %arrayidx.i.i.us.2.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.2.1
  %855 = load float, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12
  %856 = load float, float* %arrayidx15.i.i.2, align 4, !tbaa !12
  %add17.i.i.us.2.1 = add nsw i32 %conv2.i.i.us.2.1, %mul16.i.i
  %idxprom18.i.i.us.2.1 = sext i32 %add17.i.i.us.2.1 to i64
  %arrayidx19.i.i.us.2.1 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.2.1
  %857 = load float, float* %arrayidx19.i.i.us.2.1, align 4, !tbaa !12
  %neg.i.i.us.2.1 = fneg float %856
  %858 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.2.1, float %857, float %855) #6
  store float %858, float* %arrayidx.i.i.us.2.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.2.1

if.end.r_exit.i.i.us.2.1:                         ; preds = %if.then.i.i.us.2.1, %if.end.r_exit.i.i.us.2
  %859 = add nuw nsw i64 %_local_id_x.i.0.us.2, 2
  %exitcond.2.not.1 = icmp eq i64 %859, 32
  br i1 %exitcond.2.not.1, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.2, !llvm.loop !234

if.then.i.i.us.1.1:                               ; preds = %if.end.r_exit.i.i.us.1
  %add11.i.i.us.1.1 = add nsw i32 %conv2.i.i.us.1.1, %mul.i.i.1
  %idxprom.i.i.us.1.1 = sext i32 %add11.i.i.us.1.1 to i64
  %arrayidx.i.i.us.1.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1.1
  %860 = load float, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12
  %861 = load float, float* %arrayidx15.i.i.1, align 4, !tbaa !12
  %add17.i.i.us.1.1 = add nsw i32 %conv2.i.i.us.1.1, %mul16.i.i
  %idxprom18.i.i.us.1.1 = sext i32 %add17.i.i.us.1.1 to i64
  %arrayidx19.i.i.us.1.1 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.1.1
  %862 = load float, float* %arrayidx19.i.i.us.1.1, align 4, !tbaa !12
  %neg.i.i.us.1.1 = fneg float %861
  %863 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.1.1, float %862, float %860) #6
  store float %863, float* %arrayidx.i.i.us.1.1, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.1.1

if.end.r_exit.i.i.us.1.1:                         ; preds = %if.then.i.i.us.1.1, %if.end.r_exit.i.i.us.1
  %864 = add nuw nsw i64 %_local_id_x.i.0.us.1, 2
  %exitcond.1.not.1 = icmp eq i64 %864, 32
  br i1 %exitcond.1.not.1, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.1, !llvm.loop !235

if.then.i.i.us.1402:                              ; preds = %if.end.r_exit.i.i.us
  %add11.i.i.us.1395 = add nsw i32 %conv2.i.i.us.1392, %mul.i.i
  %idxprom.i.i.us.1396 = sext i32 %add11.i.i.us.1395 to i64
  %arrayidx.i.i.us.1397 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.1396
  %865 = load float, float* %arrayidx.i.i.us.1397, align 4, !tbaa !12
  %866 = load float, float* %arrayidx15.i.i, align 4, !tbaa !12
  %add17.i.i.us.1398 = add nsw i32 %conv2.i.i.us.1392, %mul16.i.i
  %idxprom18.i.i.us.1399 = sext i32 %add17.i.i.us.1398 to i64
  %arrayidx19.i.i.us.1400 = getelementptr inbounds float, float* %6, i64 %idxprom18.i.i.us.1399
  %867 = load float, float* %arrayidx19.i.i.us.1400, align 4, !tbaa !12
  %neg.i.i.us.1401 = fneg float %866
  %868 = tail call float @llvm.fmuladd.f32(float %neg.i.i.us.1401, float %867, float %865) #6
  store float %868, float* %arrayidx.i.i.us.1397, align 4, !tbaa !12, !llvm.access.group !24
  br label %if.end.r_exit.i.i.us.1403

if.end.r_exit.i.i.us.1403:                        ; preds = %if.then.i.i.us.1402, %if.end.r_exit.i.i.us
  %869 = add nuw nsw i64 %_local_id_x.i.0.us, 2
  %exitcond.not.1 = icmp eq i64 %869, 32
  br i1 %exitcond.not.1, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !236
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: nounwind readonly willreturn
declare <8 x float> @llvm.masked.gather.v8f32.v8p0f32(<8 x float*>, i32 immarg, <8 x i1>, <8 x float>) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #5

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { argmemonly nounwind readonly willreturn }
attributes #4 = { nounwind readonly willreturn }
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
!5 = !{i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"int", !"int"}
!9 = !{!"", !"", !""}
!10 = !{!"A", !"k", !"n"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = !{!20}
!23 = !{!21}
!24 = !{!25, !26}
!25 = distinct !{}
!26 = distinct !{}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31, !32}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = !{!31}
!34 = !{!32}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39, !40}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = !{!39}
!42 = !{!40}
!43 = !{!44}
!44 = distinct !{!44, !45}
!45 = distinct !{!45, !"LVerDomain"}
!46 = !{!47, !48}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = !{!47}
!50 = !{!48}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55, !56}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = !{!55}
!58 = !{!56}
!59 = !{!60}
!60 = distinct !{!60, !61}
!61 = distinct !{!61, !"LVerDomain"}
!62 = !{!63, !64}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !61}
!65 = !{!63}
!66 = !{!64}
!67 = !{!68}
!68 = distinct !{!68, !69}
!69 = distinct !{!69, !"LVerDomain"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69}
!72 = distinct !{!72, !69}
!73 = !{!71}
!74 = !{!72}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79, !80}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !77}
!81 = !{!79}
!82 = !{!80}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.parallel_accesses", !25}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = distinct !{!86, !84, !85}
!87 = distinct !{!87, !84, !85}
!88 = distinct !{!88, !84, !85}
!89 = distinct !{!89, !84, !85}
!90 = distinct !{!90, !84, !85}
!91 = distinct !{!91, !84, !85}
!92 = distinct !{!92, !84, !85}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !95}
!99 = !{!97}
!100 = !{!98}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105, !106}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !103}
!107 = !{!105}
!108 = !{!106}
!109 = !{!110}
!110 = distinct !{!110, !111}
!111 = distinct !{!111, !"LVerDomain"}
!112 = !{!113, !114}
!113 = distinct !{!113, !111}
!114 = distinct !{!114, !111}
!115 = !{!113}
!116 = !{!114}
!117 = !{!118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, !"LVerDomain"}
!120 = !{!121, !122}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !119}
!123 = !{!121}
!124 = !{!122}
!125 = !{!126}
!126 = distinct !{!126, !127}
!127 = distinct !{!127, !"LVerDomain"}
!128 = !{!129, !130}
!129 = distinct !{!129, !127}
!130 = distinct !{!130, !127}
!131 = !{!129}
!132 = !{!130}
!133 = !{!134}
!134 = distinct !{!134, !135}
!135 = distinct !{!135, !"LVerDomain"}
!136 = !{!137, !138}
!137 = distinct !{!137, !135}
!138 = distinct !{!138, !135}
!139 = !{!137}
!140 = !{!138}
!141 = !{!142}
!142 = distinct !{!142, !143}
!143 = distinct !{!143, !"LVerDomain"}
!144 = !{!145, !146}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !143}
!147 = !{!145}
!148 = !{!146}
!149 = !{!150}
!150 = distinct !{!150, !151}
!151 = distinct !{!151, !"LVerDomain"}
!152 = !{!153, !154}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !151}
!155 = !{!153}
!156 = !{!154}
!157 = distinct !{!157, !84, !85}
!158 = distinct !{!158, !84, !85}
!159 = distinct !{!159, !84, !85}
!160 = distinct !{!160, !84, !85}
!161 = distinct !{!161, !84, !85}
!162 = distinct !{!162, !84, !85}
!163 = distinct !{!163, !84, !85}
!164 = distinct !{!164, !84, !85}
!165 = !{!166}
!166 = distinct !{!166, !167}
!167 = distinct !{!167, !"LVerDomain"}
!168 = !{!169, !170}
!169 = distinct !{!169, !167}
!170 = distinct !{!170, !167}
!171 = !{!169}
!172 = !{!170}
!173 = !{!174}
!174 = distinct !{!174, !175}
!175 = distinct !{!175, !"LVerDomain"}
!176 = !{!177, !178}
!177 = distinct !{!177, !175}
!178 = distinct !{!178, !175}
!179 = !{!177}
!180 = !{!178}
!181 = !{!182}
!182 = distinct !{!182, !183}
!183 = distinct !{!183, !"LVerDomain"}
!184 = !{!185, !186}
!185 = distinct !{!185, !183}
!186 = distinct !{!186, !183}
!187 = !{!185}
!188 = !{!186}
!189 = !{!190}
!190 = distinct !{!190, !191}
!191 = distinct !{!191, !"LVerDomain"}
!192 = !{!193, !194}
!193 = distinct !{!193, !191}
!194 = distinct !{!194, !191}
!195 = !{!193}
!196 = !{!194}
!197 = !{!198}
!198 = distinct !{!198, !199}
!199 = distinct !{!199, !"LVerDomain"}
!200 = !{!201, !202}
!201 = distinct !{!201, !199}
!202 = distinct !{!202, !199}
!203 = !{!201}
!204 = !{!202}
!205 = !{!206}
!206 = distinct !{!206, !207}
!207 = distinct !{!207, !"LVerDomain"}
!208 = !{!209, !210}
!209 = distinct !{!209, !207}
!210 = distinct !{!210, !207}
!211 = !{!209}
!212 = !{!210}
!213 = !{!214}
!214 = distinct !{!214, !215}
!215 = distinct !{!215, !"LVerDomain"}
!216 = !{!217, !218}
!217 = distinct !{!217, !215}
!218 = distinct !{!218, !215}
!219 = !{!217}
!220 = !{!218}
!221 = !{!222}
!222 = distinct !{!222, !223}
!223 = distinct !{!223, !"LVerDomain"}
!224 = !{!225, !226}
!225 = distinct !{!225, !223}
!226 = distinct !{!226, !223}
!227 = !{!225}
!228 = !{!226}
!229 = distinct !{!229, !84, !85}
!230 = distinct !{!230, !84, !85}
!231 = distinct !{!231, !84, !85}
!232 = distinct !{!232, !84, !85}
!233 = distinct !{!233, !84, !85}
!234 = distinct !{!234, !84, !85}
!235 = distinct !{!235, !84, !85}
!236 = distinct !{!236, !84, !85}
