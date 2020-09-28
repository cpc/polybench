; ModuleID = './PK/NHAONNAKOLMMJBLNPENBBBCNNPFLDHLMKECDA/runJacobi2D_kernel2/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_runJacobi2D_kernel2(float* nocapture %0, float* nocapture readonly %1, i32 %2, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %3, i64 %4, i64 %5, i64 %6) local_unnamed_addr #0 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
pregion_for_entry.pregion_for_init.i:
  %mul3.i.i = shl i64 %5, 3
  %mul.i.i = shl i64 %4, 5
  %sub.i = add nsw i32 %2, -1
  %conv.i = trunc i64 %mul3.i.i to i32
  %cmp.i = icmp sgt i32 %conv.i, 0
  %mul.i = mul nsw i32 %conv.i, %2
  %cmp4.i = icmp sgt i32 %sub.i, %conv.i
  %or.cond = and i1 %cmp.i, %cmp4.i
  br i1 %or.cond, label %vector.scevcheck, label %pregion_for_end.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i
  %7 = trunc i64 %5 to i32
  %8 = mul i32 %7, %2
  %9 = shl i32 %8, 3
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 5
  %12 = add i32 %9, %11
  %13 = icmp sgt i32 %12, 2147483616
  br i1 %13, label %pregion_for_entry.entry.i.us.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.us.preheader:        ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.us.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %14 = trunc i64 %5 to i32
  %15 = mul i32 %14, %2
  %16 = shl i32 %15, 3
  %17 = trunc i64 %4 to i32
  %18 = shl i32 %17, 5
  %19 = add i32 %16, %18
  %20 = sext i32 %19 to i64
  %scevgep = getelementptr float, float* %0, i64 %20
  %21 = add nsw i64 %20, 32
  %scevgep12 = getelementptr float, float* %0, i64 %21
  %scevgep14 = getelementptr float, float* %1, i64 %20
  %scevgep16 = getelementptr float, float* %1, i64 %21
  %bound0 = icmp ult float* %scevgep, %scevgep16
  %bound1 = icmp ult float* %scevgep14, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x i32> undef, i32 %sub.i, i32 0
  %broadcast.splat19 = shufflevector <8 x i32> %broadcast.splatinsert18, <8 x i32> undef, <8 x i32> zeroinitializer
  %22 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %23 = or <8 x i32> %22, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %24 = icmp sgt <8 x i32> %23, zeroinitializer
  %25 = icmp sgt <8 x i32> %broadcast.splat19, %23
  %26 = and <8 x i1> %25, %24
  %27 = extractelement <8 x i32> %23, i32 0
  %28 = add nsw i32 %mul.i, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %1, i64 %29
  %31 = bitcast float* %30 to <8 x i32>*
  %wide.masked.load = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %31, i32 4, <8 x i1> %26, <8 x i32> undef), !tbaa !12, !alias.scope !16
  %32 = getelementptr inbounds float, float* %0, i64 %29
  %33 = bitcast float* %32 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load, <8 x i32>* %33, i32 4, <8 x i1> %26), !tbaa !12, !alias.scope !19, !noalias !16, !llvm.access.group !21
  %34 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %35 = or <8 x i32> %34, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %36 = icmp sgt <8 x i32> %35, zeroinitializer
  %37 = icmp sgt <8 x i32> %broadcast.splat19, %35
  %38 = and <8 x i1> %37, %36
  %39 = extractelement <8 x i32> %35, i32 0
  %40 = add nsw i32 %mul.i, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %1, i64 %41
  %43 = bitcast float* %42 to <8 x i32>*
  %wide.masked.load.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %43, i32 4, <8 x i1> %38, <8 x i32> undef), !tbaa !12, !alias.scope !16
  %44 = getelementptr inbounds float, float* %0, i64 %41
  %45 = bitcast float* %44 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.1, <8 x i32>* %45, i32 4, <8 x i1> %38), !tbaa !12, !alias.scope !19, !noalias !16, !llvm.access.group !21
  %46 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %47 = or <8 x i32> %46, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %48 = icmp sgt <8 x i32> %47, zeroinitializer
  %49 = icmp sgt <8 x i32> %broadcast.splat19, %47
  %50 = and <8 x i1> %49, %48
  %51 = extractelement <8 x i32> %47, i32 0
  %52 = add nsw i32 %mul.i, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %1, i64 %53
  %55 = bitcast float* %54 to <8 x i32>*
  %wide.masked.load.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %55, i32 4, <8 x i1> %50, <8 x i32> undef), !tbaa !12, !alias.scope !16
  %56 = getelementptr inbounds float, float* %0, i64 %53
  %57 = bitcast float* %56 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.2, <8 x i32>* %57, i32 4, <8 x i1> %50), !tbaa !12, !alias.scope !19, !noalias !16, !llvm.access.group !21
  %58 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %59 = or <8 x i32> %58, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %60 = icmp sgt <8 x i32> %59, zeroinitializer
  %61 = icmp sgt <8 x i32> %broadcast.splat19, %59
  %62 = and <8 x i1> %61, %60
  %63 = extractelement <8 x i32> %59, i32 0
  %64 = add nsw i32 %mul.i, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %1, i64 %65
  %67 = bitcast float* %66 to <8 x i32>*
  %wide.masked.load.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %67, i32 4, <8 x i1> %62, <8 x i32> undef), !tbaa !12, !alias.scope !16
  %68 = getelementptr inbounds float, float* %0, i64 %65
  %69 = bitcast float* %68 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.3, <8 x i32>* %69, i32 4, <8 x i1> %62), !tbaa !12, !alias.scope !19, !noalias !16, !llvm.access.group !21
  br label %pregion_for_end.i

pregion_for_entry.entry.i.us.us:                  ; preds = %if.end.i.us.us.3304, %pregion_for_entry.entry.i.us.us.preheader
  %_local_id_x.0.us.us = phi i64 [ 0, %pregion_for_entry.entry.i.us.us.preheader ], [ %617, %if.end.i.us.us.3304 ]
  %add1.i.i.us.us = add nuw nsw i64 %_local_id_x.0.us.us, %mul.i.i
  %conv2.i.us.us = trunc i64 %add1.i.i.us.us to i32
  %cmp7.i.us.us = icmp sgt i32 %conv2.i.us.us, 0
  %cmp11.i.us.us = icmp sgt i32 %sub.i, %conv2.i.us.us
  %or.cond28.i.us.us = and i1 %cmp11.i.us.us, %cmp7.i.us.us
  br i1 %or.cond28.i.us.us, label %if.then.i.us.us, label %if.end.i.us.us

if.then.i.us.us:                                  ; preds = %pregion_for_entry.entry.i.us.us
  %add.i.us.us = add nsw i32 %mul.i, %conv2.i.us.us
  %idxprom.i.us.us = sext i32 %add.i.us.us to i64
  %arrayidx.i.us.us = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us
  %70 = bitcast float* %arrayidx.i.us.us to i32*
  %71 = load i32, i32* %70, align 4, !tbaa !12
  %arrayidx16.i.us.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us
  %72 = bitcast float* %arrayidx16.i.us.us to i32*
  store i32 %71, i32* %72, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us

if.end.i.us.us:                                   ; preds = %if.then.i.us.us, %pregion_for_entry.entry.i.us.us
  %73 = or i64 %_local_id_x.0.us.us, 1
  %add1.i.i.us.us.1267 = add nuw nsw i64 %73, %mul.i.i
  %conv2.i.us.us.1268 = trunc i64 %add1.i.i.us.us.1267 to i32
  %cmp7.i.us.us.1269 = icmp sgt i32 %conv2.i.us.us.1268, 0
  %cmp11.i.us.us.1270 = icmp sgt i32 %sub.i, %conv2.i.us.us.1268
  %or.cond28.i.us.us.1271 = and i1 %cmp11.i.us.us.1270, %cmp7.i.us.us.1269
  br i1 %or.cond28.i.us.us.1271, label %if.then.i.us.us.1277, label %if.end.i.us.us.1278

pregion_for_end.i.loopexit:                       ; preds = %if.end.i.us.us.3304
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i
  %74 = trunc i64 %mul3.i.i to i32
  %conv.i.1 = or i32 %74, 1
  %cmp.i.1 = icmp sgt i32 %conv.i.1, 0
  %mul.i.1 = mul nsw i32 %conv.i.1, %2
  %cmp4.i.1 = icmp sgt i32 %sub.i, %conv.i.1
  %or.cond4 = and i1 %cmp.i.1, %cmp4.i.1
  br i1 %or.cond4, label %vector.scevcheck27, label %pregion_for_end.i.1

vector.scevcheck27:                               ; preds = %pregion_for_end.i
  %75 = mul i32 %conv.i.1, %2
  %76 = trunc i64 %4 to i32
  %77 = shl i32 %76, 5
  %78 = add i32 %75, %77
  %79 = icmp sgt i32 %78, 2147483616
  br i1 %79, label %pregion_for_entry.entry.i.us.us.1.preheader, label %vector.memcheck41

pregion_for_entry.entry.i.us.us.1.preheader:      ; preds = %vector.memcheck41, %vector.scevcheck27
  br label %pregion_for_entry.entry.i.us.us.1

vector.memcheck41:                                ; preds = %vector.scevcheck27
  %80 = mul i32 %conv.i.1, %2
  %81 = trunc i64 %4 to i32
  %82 = shl i32 %81, 5
  %83 = add i32 %80, %82
  %84 = sext i32 %83 to i64
  %scevgep29 = getelementptr float, float* %0, i64 %84
  %85 = add nsw i64 %84, 32
  %scevgep31 = getelementptr float, float* %0, i64 %85
  %scevgep33 = getelementptr float, float* %1, i64 %84
  %scevgep35 = getelementptr float, float* %1, i64 %85
  %bound037 = icmp ult float* %scevgep29, %scevgep35
  %bound138 = icmp ult float* %scevgep33, %scevgep31
  %found.conflict39 = and i1 %bound037, %bound138
  br i1 %found.conflict39, label %pregion_for_entry.entry.i.us.us.1.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %vector.memcheck41
  %broadcast.splatinsert49 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat50 = shufflevector <8 x i64> %broadcast.splatinsert49, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <8 x i32> undef, i32 %sub.i, i32 0
  %broadcast.splat52 = shufflevector <8 x i32> %broadcast.splatinsert51, <8 x i32> undef, <8 x i32> zeroinitializer
  %86 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %87 = or <8 x i32> %86, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %88 = icmp sgt <8 x i32> %87, zeroinitializer
  %89 = icmp sgt <8 x i32> %broadcast.splat52, %87
  %90 = and <8 x i1> %89, %88
  %91 = extractelement <8 x i32> %87, i32 0
  %92 = add nsw i32 %mul.i.1, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %1, i64 %93
  %95 = bitcast float* %94 to <8 x i32>*
  %wide.masked.load53 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %95, i32 4, <8 x i1> %90, <8 x i32> undef), !tbaa !12, !alias.scope !24
  %96 = getelementptr inbounds float, float* %0, i64 %93
  %97 = bitcast float* %96 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53, <8 x i32>* %97, i32 4, <8 x i1> %90), !tbaa !12, !alias.scope !27, !noalias !24, !llvm.access.group !21
  %98 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %99 = or <8 x i32> %98, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %100 = icmp sgt <8 x i32> %99, zeroinitializer
  %101 = icmp sgt <8 x i32> %broadcast.splat52, %99
  %102 = and <8 x i1> %101, %100
  %103 = extractelement <8 x i32> %99, i32 0
  %104 = add nsw i32 %mul.i.1, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %1, i64 %105
  %107 = bitcast float* %106 to <8 x i32>*
  %wide.masked.load53.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %107, i32 4, <8 x i1> %102, <8 x i32> undef), !tbaa !12, !alias.scope !24
  %108 = getelementptr inbounds float, float* %0, i64 %105
  %109 = bitcast float* %108 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53.1, <8 x i32>* %109, i32 4, <8 x i1> %102), !tbaa !12, !alias.scope !27, !noalias !24, !llvm.access.group !21
  %110 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %111 = or <8 x i32> %110, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %112 = icmp sgt <8 x i32> %111, zeroinitializer
  %113 = icmp sgt <8 x i32> %broadcast.splat52, %111
  %114 = and <8 x i1> %113, %112
  %115 = extractelement <8 x i32> %111, i32 0
  %116 = add nsw i32 %mul.i.1, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %1, i64 %117
  %119 = bitcast float* %118 to <8 x i32>*
  %wide.masked.load53.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %119, i32 4, <8 x i1> %114, <8 x i32> undef), !tbaa !12, !alias.scope !24
  %120 = getelementptr inbounds float, float* %0, i64 %117
  %121 = bitcast float* %120 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53.2, <8 x i32>* %121, i32 4, <8 x i1> %114), !tbaa !12, !alias.scope !27, !noalias !24, !llvm.access.group !21
  %122 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %123 = or <8 x i32> %122, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %124 = icmp sgt <8 x i32> %123, zeroinitializer
  %125 = icmp sgt <8 x i32> %broadcast.splat52, %123
  %126 = and <8 x i1> %125, %124
  %127 = extractelement <8 x i32> %123, i32 0
  %128 = add nsw i32 %mul.i.1, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %1, i64 %129
  %131 = bitcast float* %130 to <8 x i32>*
  %wide.masked.load53.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %131, i32 4, <8 x i1> %126, <8 x i32> undef), !tbaa !12, !alias.scope !24
  %132 = getelementptr inbounds float, float* %0, i64 %129
  %133 = bitcast float* %132 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53.3, <8 x i32>* %133, i32 4, <8 x i1> %126), !tbaa !12, !alias.scope !27, !noalias !24, !llvm.access.group !21
  br label %pregion_for_end.i.1

pregion_for_entry.entry.i.us.us.1:                ; preds = %if.end.i.us.us.1.3, %pregion_for_entry.entry.i.us.us.1.preheader
  %_local_id_x.0.us.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.us.us.1.preheader ], [ %605, %if.end.i.us.us.1.3 ]
  %add1.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.0.us.us.1, %mul.i.i
  %conv2.i.us.us.1 = trunc i64 %add1.i.i.us.us.1 to i32
  %cmp7.i.us.us.1 = icmp sgt i32 %conv2.i.us.us.1, 0
  %cmp11.i.us.us.1 = icmp sgt i32 %sub.i, %conv2.i.us.us.1
  %or.cond28.i.us.us.1 = and i1 %cmp11.i.us.us.1, %cmp7.i.us.us.1
  br i1 %or.cond28.i.us.us.1, label %if.then.i.us.us.1, label %if.end.i.us.us.1

if.then.i.us.us.1:                                ; preds = %pregion_for_entry.entry.i.us.us.1
  %add.i.us.us.1 = add nsw i32 %mul.i.1, %conv2.i.us.us.1
  %idxprom.i.us.us.1 = sext i32 %add.i.us.us.1 to i64
  %arrayidx.i.us.us.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.1
  %134 = bitcast float* %arrayidx.i.us.us.1 to i32*
  %135 = load i32, i32* %134, align 4, !tbaa !12
  %arrayidx16.i.us.us.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.1
  %136 = bitcast float* %arrayidx16.i.us.us.1 to i32*
  store i32 %135, i32* %136, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.1

if.end.i.us.us.1:                                 ; preds = %if.then.i.us.us.1, %pregion_for_entry.entry.i.us.us.1
  %137 = or i64 %_local_id_x.0.us.us.1, 1
  %add1.i.i.us.us.1.1 = add nuw nsw i64 %137, %mul.i.i
  %conv2.i.us.us.1.1 = trunc i64 %add1.i.i.us.us.1.1 to i32
  %cmp7.i.us.us.1.1 = icmp sgt i32 %conv2.i.us.us.1.1, 0
  %cmp11.i.us.us.1.1 = icmp sgt i32 %sub.i, %conv2.i.us.us.1.1
  %or.cond28.i.us.us.1.1 = and i1 %cmp11.i.us.us.1.1, %cmp7.i.us.us.1.1
  br i1 %or.cond28.i.us.us.1.1, label %if.then.i.us.us.1.1, label %if.end.i.us.us.1.1

pregion_for_end.i.1.loopexit:                     ; preds = %if.end.i.us.us.1.3
  br label %pregion_for_end.i.1

pregion_for_end.i.1:                              ; preds = %pregion_for_end.i.1.loopexit, %vector.ph42, %pregion_for_end.i
  %138 = trunc i64 %mul3.i.i to i32
  %conv.i.2 = or i32 %138, 2
  %cmp.i.2 = icmp sgt i32 %conv.i.2, 0
  %mul.i.2 = mul nsw i32 %conv.i.2, %2
  %cmp4.i.2 = icmp sgt i32 %sub.i, %conv.i.2
  %or.cond5 = and i1 %cmp.i.2, %cmp4.i.2
  br i1 %or.cond5, label %vector.scevcheck61, label %pregion_for_end.i.2

vector.scevcheck61:                               ; preds = %pregion_for_end.i.1
  %139 = mul i32 %conv.i.2, %2
  %140 = trunc i64 %4 to i32
  %141 = shl i32 %140, 5
  %142 = add i32 %139, %141
  %143 = icmp sgt i32 %142, 2147483616
  br i1 %143, label %pregion_for_entry.entry.i.us.us.2.preheader, label %vector.memcheck75

pregion_for_entry.entry.i.us.us.2.preheader:      ; preds = %vector.memcheck75, %vector.scevcheck61
  br label %pregion_for_entry.entry.i.us.us.2

vector.memcheck75:                                ; preds = %vector.scevcheck61
  %144 = mul i32 %conv.i.2, %2
  %145 = trunc i64 %4 to i32
  %146 = shl i32 %145, 5
  %147 = add i32 %144, %146
  %148 = sext i32 %147 to i64
  %scevgep63 = getelementptr float, float* %0, i64 %148
  %149 = add nsw i64 %148, 32
  %scevgep65 = getelementptr float, float* %0, i64 %149
  %scevgep67 = getelementptr float, float* %1, i64 %148
  %scevgep69 = getelementptr float, float* %1, i64 %149
  %bound071 = icmp ult float* %scevgep63, %scevgep69
  %bound172 = icmp ult float* %scevgep67, %scevgep65
  %found.conflict73 = and i1 %bound071, %bound172
  br i1 %found.conflict73, label %pregion_for_entry.entry.i.us.us.2.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %vector.memcheck75
  %broadcast.splatinsert83 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat84 = shufflevector <8 x i64> %broadcast.splatinsert83, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert85 = insertelement <8 x i32> undef, i32 %sub.i, i32 0
  %broadcast.splat86 = shufflevector <8 x i32> %broadcast.splatinsert85, <8 x i32> undef, <8 x i32> zeroinitializer
  %150 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %151 = or <8 x i32> %150, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %152 = icmp sgt <8 x i32> %151, zeroinitializer
  %153 = icmp sgt <8 x i32> %broadcast.splat86, %151
  %154 = and <8 x i1> %153, %152
  %155 = extractelement <8 x i32> %151, i32 0
  %156 = add nsw i32 %mul.i.2, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %1, i64 %157
  %159 = bitcast float* %158 to <8 x i32>*
  %wide.masked.load87 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %159, i32 4, <8 x i1> %154, <8 x i32> undef), !tbaa !12, !alias.scope !29
  %160 = getelementptr inbounds float, float* %0, i64 %157
  %161 = bitcast float* %160 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87, <8 x i32>* %161, i32 4, <8 x i1> %154), !tbaa !12, !alias.scope !32, !noalias !29, !llvm.access.group !21
  %162 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %163 = or <8 x i32> %162, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %164 = icmp sgt <8 x i32> %163, zeroinitializer
  %165 = icmp sgt <8 x i32> %broadcast.splat86, %163
  %166 = and <8 x i1> %165, %164
  %167 = extractelement <8 x i32> %163, i32 0
  %168 = add nsw i32 %mul.i.2, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %1, i64 %169
  %171 = bitcast float* %170 to <8 x i32>*
  %wide.masked.load87.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %171, i32 4, <8 x i1> %166, <8 x i32> undef), !tbaa !12, !alias.scope !29
  %172 = getelementptr inbounds float, float* %0, i64 %169
  %173 = bitcast float* %172 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87.1, <8 x i32>* %173, i32 4, <8 x i1> %166), !tbaa !12, !alias.scope !32, !noalias !29, !llvm.access.group !21
  %174 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %175 = or <8 x i32> %174, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %176 = icmp sgt <8 x i32> %175, zeroinitializer
  %177 = icmp sgt <8 x i32> %broadcast.splat86, %175
  %178 = and <8 x i1> %177, %176
  %179 = extractelement <8 x i32> %175, i32 0
  %180 = add nsw i32 %mul.i.2, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %1, i64 %181
  %183 = bitcast float* %182 to <8 x i32>*
  %wide.masked.load87.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %183, i32 4, <8 x i1> %178, <8 x i32> undef), !tbaa !12, !alias.scope !29
  %184 = getelementptr inbounds float, float* %0, i64 %181
  %185 = bitcast float* %184 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87.2, <8 x i32>* %185, i32 4, <8 x i1> %178), !tbaa !12, !alias.scope !32, !noalias !29, !llvm.access.group !21
  %186 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %187 = or <8 x i32> %186, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %188 = icmp sgt <8 x i32> %187, zeroinitializer
  %189 = icmp sgt <8 x i32> %broadcast.splat86, %187
  %190 = and <8 x i1> %189, %188
  %191 = extractelement <8 x i32> %187, i32 0
  %192 = add nsw i32 %mul.i.2, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %1, i64 %193
  %195 = bitcast float* %194 to <8 x i32>*
  %wide.masked.load87.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %195, i32 4, <8 x i1> %190, <8 x i32> undef), !tbaa !12, !alias.scope !29
  %196 = getelementptr inbounds float, float* %0, i64 %193
  %197 = bitcast float* %196 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87.3, <8 x i32>* %197, i32 4, <8 x i1> %190), !tbaa !12, !alias.scope !32, !noalias !29, !llvm.access.group !21
  br label %pregion_for_end.i.2

pregion_for_entry.entry.i.us.us.2:                ; preds = %if.end.i.us.us.2.3, %pregion_for_entry.entry.i.us.us.2.preheader
  %_local_id_x.0.us.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.us.us.2.preheader ], [ %593, %if.end.i.us.us.2.3 ]
  %add1.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.0.us.us.2, %mul.i.i
  %conv2.i.us.us.2 = trunc i64 %add1.i.i.us.us.2 to i32
  %cmp7.i.us.us.2 = icmp sgt i32 %conv2.i.us.us.2, 0
  %cmp11.i.us.us.2 = icmp sgt i32 %sub.i, %conv2.i.us.us.2
  %or.cond28.i.us.us.2 = and i1 %cmp11.i.us.us.2, %cmp7.i.us.us.2
  br i1 %or.cond28.i.us.us.2, label %if.then.i.us.us.2, label %if.end.i.us.us.2

if.then.i.us.us.2:                                ; preds = %pregion_for_entry.entry.i.us.us.2
  %add.i.us.us.2 = add nsw i32 %mul.i.2, %conv2.i.us.us.2
  %idxprom.i.us.us.2 = sext i32 %add.i.us.us.2 to i64
  %arrayidx.i.us.us.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.2
  %198 = bitcast float* %arrayidx.i.us.us.2 to i32*
  %199 = load i32, i32* %198, align 4, !tbaa !12
  %arrayidx16.i.us.us.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.2
  %200 = bitcast float* %arrayidx16.i.us.us.2 to i32*
  store i32 %199, i32* %200, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.2

if.end.i.us.us.2:                                 ; preds = %if.then.i.us.us.2, %pregion_for_entry.entry.i.us.us.2
  %201 = or i64 %_local_id_x.0.us.us.2, 1
  %add1.i.i.us.us.2.1 = add nuw nsw i64 %201, %mul.i.i
  %conv2.i.us.us.2.1 = trunc i64 %add1.i.i.us.us.2.1 to i32
  %cmp7.i.us.us.2.1 = icmp sgt i32 %conv2.i.us.us.2.1, 0
  %cmp11.i.us.us.2.1 = icmp sgt i32 %sub.i, %conv2.i.us.us.2.1
  %or.cond28.i.us.us.2.1 = and i1 %cmp11.i.us.us.2.1, %cmp7.i.us.us.2.1
  br i1 %or.cond28.i.us.us.2.1, label %if.then.i.us.us.2.1, label %if.end.i.us.us.2.1

pregion_for_end.i.2.loopexit:                     ; preds = %if.end.i.us.us.2.3
  br label %pregion_for_end.i.2

pregion_for_end.i.2:                              ; preds = %pregion_for_end.i.2.loopexit, %vector.ph76, %pregion_for_end.i.1
  %202 = trunc i64 %mul3.i.i to i32
  %conv.i.3 = or i32 %202, 3
  %cmp.i.3 = icmp sgt i32 %conv.i.3, 0
  %mul.i.3 = mul nsw i32 %conv.i.3, %2
  %cmp4.i.3 = icmp sgt i32 %sub.i, %conv.i.3
  %or.cond6 = and i1 %cmp.i.3, %cmp4.i.3
  br i1 %or.cond6, label %vector.scevcheck95, label %pregion_for_end.i.3

vector.scevcheck95:                               ; preds = %pregion_for_end.i.2
  %203 = mul i32 %conv.i.3, %2
  %204 = trunc i64 %4 to i32
  %205 = shl i32 %204, 5
  %206 = add i32 %203, %205
  %207 = icmp sgt i32 %206, 2147483616
  br i1 %207, label %pregion_for_entry.entry.i.us.us.3.preheader, label %vector.memcheck109

pregion_for_entry.entry.i.us.us.3.preheader:      ; preds = %vector.memcheck109, %vector.scevcheck95
  br label %pregion_for_entry.entry.i.us.us.3

vector.memcheck109:                               ; preds = %vector.scevcheck95
  %208 = mul i32 %conv.i.3, %2
  %209 = trunc i64 %4 to i32
  %210 = shl i32 %209, 5
  %211 = add i32 %208, %210
  %212 = sext i32 %211 to i64
  %scevgep97 = getelementptr float, float* %0, i64 %212
  %213 = add nsw i64 %212, 32
  %scevgep99 = getelementptr float, float* %0, i64 %213
  %scevgep101 = getelementptr float, float* %1, i64 %212
  %scevgep103 = getelementptr float, float* %1, i64 %213
  %bound0105 = icmp ult float* %scevgep97, %scevgep103
  %bound1106 = icmp ult float* %scevgep101, %scevgep99
  %found.conflict107 = and i1 %bound0105, %bound1106
  br i1 %found.conflict107, label %pregion_for_entry.entry.i.us.us.3.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck109
  %broadcast.splatinsert117 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat118 = shufflevector <8 x i64> %broadcast.splatinsert117, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <8 x i32> undef, i32 %sub.i, i32 0
  %broadcast.splat120 = shufflevector <8 x i32> %broadcast.splatinsert119, <8 x i32> undef, <8 x i32> zeroinitializer
  %214 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %215 = or <8 x i32> %214, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %216 = icmp sgt <8 x i32> %215, zeroinitializer
  %217 = icmp sgt <8 x i32> %broadcast.splat120, %215
  %218 = and <8 x i1> %217, %216
  %219 = extractelement <8 x i32> %215, i32 0
  %220 = add nsw i32 %mul.i.3, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds float, float* %1, i64 %221
  %223 = bitcast float* %222 to <8 x i32>*
  %wide.masked.load121 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %223, i32 4, <8 x i1> %218, <8 x i32> undef), !tbaa !12, !alias.scope !34
  %224 = getelementptr inbounds float, float* %0, i64 %221
  %225 = bitcast float* %224 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121, <8 x i32>* %225, i32 4, <8 x i1> %218), !tbaa !12, !alias.scope !37, !noalias !34, !llvm.access.group !21
  %226 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %227 = or <8 x i32> %226, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %228 = icmp sgt <8 x i32> %227, zeroinitializer
  %229 = icmp sgt <8 x i32> %broadcast.splat120, %227
  %230 = and <8 x i1> %229, %228
  %231 = extractelement <8 x i32> %227, i32 0
  %232 = add nsw i32 %mul.i.3, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %1, i64 %233
  %235 = bitcast float* %234 to <8 x i32>*
  %wide.masked.load121.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %235, i32 4, <8 x i1> %230, <8 x i32> undef), !tbaa !12, !alias.scope !34
  %236 = getelementptr inbounds float, float* %0, i64 %233
  %237 = bitcast float* %236 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121.1, <8 x i32>* %237, i32 4, <8 x i1> %230), !tbaa !12, !alias.scope !37, !noalias !34, !llvm.access.group !21
  %238 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %239 = or <8 x i32> %238, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %240 = icmp sgt <8 x i32> %239, zeroinitializer
  %241 = icmp sgt <8 x i32> %broadcast.splat120, %239
  %242 = and <8 x i1> %241, %240
  %243 = extractelement <8 x i32> %239, i32 0
  %244 = add nsw i32 %mul.i.3, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %1, i64 %245
  %247 = bitcast float* %246 to <8 x i32>*
  %wide.masked.load121.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %247, i32 4, <8 x i1> %242, <8 x i32> undef), !tbaa !12, !alias.scope !34
  %248 = getelementptr inbounds float, float* %0, i64 %245
  %249 = bitcast float* %248 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121.2, <8 x i32>* %249, i32 4, <8 x i1> %242), !tbaa !12, !alias.scope !37, !noalias !34, !llvm.access.group !21
  %250 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %251 = or <8 x i32> %250, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %252 = icmp sgt <8 x i32> %251, zeroinitializer
  %253 = icmp sgt <8 x i32> %broadcast.splat120, %251
  %254 = and <8 x i1> %253, %252
  %255 = extractelement <8 x i32> %251, i32 0
  %256 = add nsw i32 %mul.i.3, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds float, float* %1, i64 %257
  %259 = bitcast float* %258 to <8 x i32>*
  %wide.masked.load121.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %259, i32 4, <8 x i1> %254, <8 x i32> undef), !tbaa !12, !alias.scope !34
  %260 = getelementptr inbounds float, float* %0, i64 %257
  %261 = bitcast float* %260 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121.3, <8 x i32>* %261, i32 4, <8 x i1> %254), !tbaa !12, !alias.scope !37, !noalias !34, !llvm.access.group !21
  br label %pregion_for_end.i.3

pregion_for_entry.entry.i.us.us.3:                ; preds = %if.end.i.us.us.3.3, %pregion_for_entry.entry.i.us.us.3.preheader
  %_local_id_x.0.us.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.us.us.3.preheader ], [ %581, %if.end.i.us.us.3.3 ]
  %add1.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.0.us.us.3, %mul.i.i
  %conv2.i.us.us.3 = trunc i64 %add1.i.i.us.us.3 to i32
  %cmp7.i.us.us.3 = icmp sgt i32 %conv2.i.us.us.3, 0
  %cmp11.i.us.us.3 = icmp sgt i32 %sub.i, %conv2.i.us.us.3
  %or.cond28.i.us.us.3 = and i1 %cmp11.i.us.us.3, %cmp7.i.us.us.3
  br i1 %or.cond28.i.us.us.3, label %if.then.i.us.us.3, label %if.end.i.us.us.3

if.then.i.us.us.3:                                ; preds = %pregion_for_entry.entry.i.us.us.3
  %add.i.us.us.3 = add nsw i32 %mul.i.3, %conv2.i.us.us.3
  %idxprom.i.us.us.3 = sext i32 %add.i.us.us.3 to i64
  %arrayidx.i.us.us.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.3
  %262 = bitcast float* %arrayidx.i.us.us.3 to i32*
  %263 = load i32, i32* %262, align 4, !tbaa !12
  %arrayidx16.i.us.us.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.3
  %264 = bitcast float* %arrayidx16.i.us.us.3 to i32*
  store i32 %263, i32* %264, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.3

if.end.i.us.us.3:                                 ; preds = %if.then.i.us.us.3, %pregion_for_entry.entry.i.us.us.3
  %265 = or i64 %_local_id_x.0.us.us.3, 1
  %add1.i.i.us.us.3.1 = add nuw nsw i64 %265, %mul.i.i
  %conv2.i.us.us.3.1 = trunc i64 %add1.i.i.us.us.3.1 to i32
  %cmp7.i.us.us.3.1 = icmp sgt i32 %conv2.i.us.us.3.1, 0
  %cmp11.i.us.us.3.1 = icmp sgt i32 %sub.i, %conv2.i.us.us.3.1
  %or.cond28.i.us.us.3.1 = and i1 %cmp11.i.us.us.3.1, %cmp7.i.us.us.3.1
  br i1 %or.cond28.i.us.us.3.1, label %if.then.i.us.us.3.1, label %if.end.i.us.us.3.1

pregion_for_end.i.3.loopexit:                     ; preds = %if.end.i.us.us.3.3
  br label %pregion_for_end.i.3

pregion_for_end.i.3:                              ; preds = %pregion_for_end.i.3.loopexit, %vector.ph110, %pregion_for_end.i.2
  %266 = trunc i64 %mul3.i.i to i32
  %conv.i.4 = or i32 %266, 4
  %cmp.i.4 = icmp sgt i32 %conv.i.4, 0
  %mul.i.4 = mul nsw i32 %conv.i.4, %2
  %cmp4.i.4 = icmp sgt i32 %sub.i, %conv.i.4
  %or.cond7 = and i1 %cmp.i.4, %cmp4.i.4
  br i1 %or.cond7, label %vector.scevcheck129, label %pregion_for_end.i.4

vector.scevcheck129:                              ; preds = %pregion_for_end.i.3
  %267 = mul i32 %conv.i.4, %2
  %268 = trunc i64 %4 to i32
  %269 = shl i32 %268, 5
  %270 = add i32 %267, %269
  %271 = icmp sgt i32 %270, 2147483616
  br i1 %271, label %pregion_for_entry.entry.i.us.us.4.preheader, label %vector.memcheck143

pregion_for_entry.entry.i.us.us.4.preheader:      ; preds = %vector.memcheck143, %vector.scevcheck129
  br label %pregion_for_entry.entry.i.us.us.4

vector.memcheck143:                               ; preds = %vector.scevcheck129
  %272 = mul i32 %conv.i.4, %2
  %273 = trunc i64 %4 to i32
  %274 = shl i32 %273, 5
  %275 = add i32 %272, %274
  %276 = sext i32 %275 to i64
  %scevgep131 = getelementptr float, float* %0, i64 %276
  %277 = add nsw i64 %276, 32
  %scevgep133 = getelementptr float, float* %0, i64 %277
  %scevgep135 = getelementptr float, float* %1, i64 %276
  %scevgep137 = getelementptr float, float* %1, i64 %277
  %bound0139 = icmp ult float* %scevgep131, %scevgep137
  %bound1140 = icmp ult float* %scevgep135, %scevgep133
  %found.conflict141 = and i1 %bound0139, %bound1140
  br i1 %found.conflict141, label %pregion_for_entry.entry.i.us.us.4.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck143
  %broadcast.splatinsert151 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat152 = shufflevector <8 x i64> %broadcast.splatinsert151, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert153 = insertelement <8 x i32> undef, i32 %sub.i, i32 0
  %broadcast.splat154 = shufflevector <8 x i32> %broadcast.splatinsert153, <8 x i32> undef, <8 x i32> zeroinitializer
  %278 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %279 = or <8 x i32> %278, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %280 = icmp sgt <8 x i32> %279, zeroinitializer
  %281 = icmp sgt <8 x i32> %broadcast.splat154, %279
  %282 = and <8 x i1> %281, %280
  %283 = extractelement <8 x i32> %279, i32 0
  %284 = add nsw i32 %mul.i.4, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %1, i64 %285
  %287 = bitcast float* %286 to <8 x i32>*
  %wide.masked.load155 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %287, i32 4, <8 x i1> %282, <8 x i32> undef), !tbaa !12, !alias.scope !39
  %288 = getelementptr inbounds float, float* %0, i64 %285
  %289 = bitcast float* %288 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155, <8 x i32>* %289, i32 4, <8 x i1> %282), !tbaa !12, !alias.scope !42, !noalias !39, !llvm.access.group !21
  %290 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %291 = or <8 x i32> %290, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %292 = icmp sgt <8 x i32> %291, zeroinitializer
  %293 = icmp sgt <8 x i32> %broadcast.splat154, %291
  %294 = and <8 x i1> %293, %292
  %295 = extractelement <8 x i32> %291, i32 0
  %296 = add nsw i32 %mul.i.4, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %1, i64 %297
  %299 = bitcast float* %298 to <8 x i32>*
  %wide.masked.load155.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %299, i32 4, <8 x i1> %294, <8 x i32> undef), !tbaa !12, !alias.scope !39
  %300 = getelementptr inbounds float, float* %0, i64 %297
  %301 = bitcast float* %300 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155.1, <8 x i32>* %301, i32 4, <8 x i1> %294), !tbaa !12, !alias.scope !42, !noalias !39, !llvm.access.group !21
  %302 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %303 = or <8 x i32> %302, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %304 = icmp sgt <8 x i32> %303, zeroinitializer
  %305 = icmp sgt <8 x i32> %broadcast.splat154, %303
  %306 = and <8 x i1> %305, %304
  %307 = extractelement <8 x i32> %303, i32 0
  %308 = add nsw i32 %mul.i.4, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %1, i64 %309
  %311 = bitcast float* %310 to <8 x i32>*
  %wide.masked.load155.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %311, i32 4, <8 x i1> %306, <8 x i32> undef), !tbaa !12, !alias.scope !39
  %312 = getelementptr inbounds float, float* %0, i64 %309
  %313 = bitcast float* %312 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155.2, <8 x i32>* %313, i32 4, <8 x i1> %306), !tbaa !12, !alias.scope !42, !noalias !39, !llvm.access.group !21
  %314 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %315 = or <8 x i32> %314, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %316 = icmp sgt <8 x i32> %315, zeroinitializer
  %317 = icmp sgt <8 x i32> %broadcast.splat154, %315
  %318 = and <8 x i1> %317, %316
  %319 = extractelement <8 x i32> %315, i32 0
  %320 = add nsw i32 %mul.i.4, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %1, i64 %321
  %323 = bitcast float* %322 to <8 x i32>*
  %wide.masked.load155.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %323, i32 4, <8 x i1> %318, <8 x i32> undef), !tbaa !12, !alias.scope !39
  %324 = getelementptr inbounds float, float* %0, i64 %321
  %325 = bitcast float* %324 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155.3, <8 x i32>* %325, i32 4, <8 x i1> %318), !tbaa !12, !alias.scope !42, !noalias !39, !llvm.access.group !21
  br label %pregion_for_end.i.4

pregion_for_entry.entry.i.us.us.4:                ; preds = %if.end.i.us.us.4.3, %pregion_for_entry.entry.i.us.us.4.preheader
  %_local_id_x.0.us.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.us.us.4.preheader ], [ %569, %if.end.i.us.us.4.3 ]
  %add1.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.0.us.us.4, %mul.i.i
  %conv2.i.us.us.4 = trunc i64 %add1.i.i.us.us.4 to i32
  %cmp7.i.us.us.4 = icmp sgt i32 %conv2.i.us.us.4, 0
  %cmp11.i.us.us.4 = icmp sgt i32 %sub.i, %conv2.i.us.us.4
  %or.cond28.i.us.us.4 = and i1 %cmp11.i.us.us.4, %cmp7.i.us.us.4
  br i1 %or.cond28.i.us.us.4, label %if.then.i.us.us.4, label %if.end.i.us.us.4

if.then.i.us.us.4:                                ; preds = %pregion_for_entry.entry.i.us.us.4
  %add.i.us.us.4 = add nsw i32 %mul.i.4, %conv2.i.us.us.4
  %idxprom.i.us.us.4 = sext i32 %add.i.us.us.4 to i64
  %arrayidx.i.us.us.4 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.4
  %326 = bitcast float* %arrayidx.i.us.us.4 to i32*
  %327 = load i32, i32* %326, align 4, !tbaa !12
  %arrayidx16.i.us.us.4 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.4
  %328 = bitcast float* %arrayidx16.i.us.us.4 to i32*
  store i32 %327, i32* %328, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.4

if.end.i.us.us.4:                                 ; preds = %if.then.i.us.us.4, %pregion_for_entry.entry.i.us.us.4
  %329 = or i64 %_local_id_x.0.us.us.4, 1
  %add1.i.i.us.us.4.1 = add nuw nsw i64 %329, %mul.i.i
  %conv2.i.us.us.4.1 = trunc i64 %add1.i.i.us.us.4.1 to i32
  %cmp7.i.us.us.4.1 = icmp sgt i32 %conv2.i.us.us.4.1, 0
  %cmp11.i.us.us.4.1 = icmp sgt i32 %sub.i, %conv2.i.us.us.4.1
  %or.cond28.i.us.us.4.1 = and i1 %cmp11.i.us.us.4.1, %cmp7.i.us.us.4.1
  br i1 %or.cond28.i.us.us.4.1, label %if.then.i.us.us.4.1, label %if.end.i.us.us.4.1

pregion_for_end.i.4.loopexit:                     ; preds = %if.end.i.us.us.4.3
  br label %pregion_for_end.i.4

pregion_for_end.i.4:                              ; preds = %pregion_for_end.i.4.loopexit, %vector.ph144, %pregion_for_end.i.3
  %330 = trunc i64 %mul3.i.i to i32
  %conv.i.5 = or i32 %330, 5
  %cmp.i.5 = icmp sgt i32 %conv.i.5, 0
  %mul.i.5 = mul nsw i32 %conv.i.5, %2
  %cmp4.i.5 = icmp sgt i32 %sub.i, %conv.i.5
  %or.cond8 = and i1 %cmp.i.5, %cmp4.i.5
  br i1 %or.cond8, label %vector.scevcheck163, label %pregion_for_end.i.5

vector.scevcheck163:                              ; preds = %pregion_for_end.i.4
  %331 = mul i32 %conv.i.5, %2
  %332 = trunc i64 %4 to i32
  %333 = shl i32 %332, 5
  %334 = add i32 %331, %333
  %335 = icmp sgt i32 %334, 2147483616
  br i1 %335, label %pregion_for_entry.entry.i.us.us.5.preheader, label %vector.memcheck177

pregion_for_entry.entry.i.us.us.5.preheader:      ; preds = %vector.memcheck177, %vector.scevcheck163
  br label %pregion_for_entry.entry.i.us.us.5

vector.memcheck177:                               ; preds = %vector.scevcheck163
  %336 = mul i32 %conv.i.5, %2
  %337 = trunc i64 %4 to i32
  %338 = shl i32 %337, 5
  %339 = add i32 %336, %338
  %340 = sext i32 %339 to i64
  %scevgep165 = getelementptr float, float* %0, i64 %340
  %341 = add nsw i64 %340, 32
  %scevgep167 = getelementptr float, float* %0, i64 %341
  %scevgep169 = getelementptr float, float* %1, i64 %340
  %scevgep171 = getelementptr float, float* %1, i64 %341
  %bound0173 = icmp ult float* %scevgep165, %scevgep171
  %bound1174 = icmp ult float* %scevgep169, %scevgep167
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %pregion_for_entry.entry.i.us.us.5.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck177
  %broadcast.splatinsert185 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat186 = shufflevector <8 x i64> %broadcast.splatinsert185, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert187 = insertelement <8 x i32> undef, i32 %sub.i, i32 0
  %broadcast.splat188 = shufflevector <8 x i32> %broadcast.splatinsert187, <8 x i32> undef, <8 x i32> zeroinitializer
  %342 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %343 = or <8 x i32> %342, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %344 = icmp sgt <8 x i32> %343, zeroinitializer
  %345 = icmp sgt <8 x i32> %broadcast.splat188, %343
  %346 = and <8 x i1> %345, %344
  %347 = extractelement <8 x i32> %343, i32 0
  %348 = add nsw i32 %mul.i.5, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %1, i64 %349
  %351 = bitcast float* %350 to <8 x i32>*
  %wide.masked.load189 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %351, i32 4, <8 x i1> %346, <8 x i32> undef), !tbaa !12, !alias.scope !44
  %352 = getelementptr inbounds float, float* %0, i64 %349
  %353 = bitcast float* %352 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189, <8 x i32>* %353, i32 4, <8 x i1> %346), !tbaa !12, !alias.scope !47, !noalias !44, !llvm.access.group !21
  %354 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %355 = or <8 x i32> %354, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %356 = icmp sgt <8 x i32> %355, zeroinitializer
  %357 = icmp sgt <8 x i32> %broadcast.splat188, %355
  %358 = and <8 x i1> %357, %356
  %359 = extractelement <8 x i32> %355, i32 0
  %360 = add nsw i32 %mul.i.5, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float* %1, i64 %361
  %363 = bitcast float* %362 to <8 x i32>*
  %wide.masked.load189.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %363, i32 4, <8 x i1> %358, <8 x i32> undef), !tbaa !12, !alias.scope !44
  %364 = getelementptr inbounds float, float* %0, i64 %361
  %365 = bitcast float* %364 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189.1, <8 x i32>* %365, i32 4, <8 x i1> %358), !tbaa !12, !alias.scope !47, !noalias !44, !llvm.access.group !21
  %366 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %367 = or <8 x i32> %366, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %368 = icmp sgt <8 x i32> %367, zeroinitializer
  %369 = icmp sgt <8 x i32> %broadcast.splat188, %367
  %370 = and <8 x i1> %369, %368
  %371 = extractelement <8 x i32> %367, i32 0
  %372 = add nsw i32 %mul.i.5, %371
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds float, float* %1, i64 %373
  %375 = bitcast float* %374 to <8 x i32>*
  %wide.masked.load189.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %375, i32 4, <8 x i1> %370, <8 x i32> undef), !tbaa !12, !alias.scope !44
  %376 = getelementptr inbounds float, float* %0, i64 %373
  %377 = bitcast float* %376 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189.2, <8 x i32>* %377, i32 4, <8 x i1> %370), !tbaa !12, !alias.scope !47, !noalias !44, !llvm.access.group !21
  %378 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %379 = or <8 x i32> %378, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %380 = icmp sgt <8 x i32> %379, zeroinitializer
  %381 = icmp sgt <8 x i32> %broadcast.splat188, %379
  %382 = and <8 x i1> %381, %380
  %383 = extractelement <8 x i32> %379, i32 0
  %384 = add nsw i32 %mul.i.5, %383
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %1, i64 %385
  %387 = bitcast float* %386 to <8 x i32>*
  %wide.masked.load189.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %387, i32 4, <8 x i1> %382, <8 x i32> undef), !tbaa !12, !alias.scope !44
  %388 = getelementptr inbounds float, float* %0, i64 %385
  %389 = bitcast float* %388 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189.3, <8 x i32>* %389, i32 4, <8 x i1> %382), !tbaa !12, !alias.scope !47, !noalias !44, !llvm.access.group !21
  br label %pregion_for_end.i.5

pregion_for_entry.entry.i.us.us.5:                ; preds = %if.end.i.us.us.5.3, %pregion_for_entry.entry.i.us.us.5.preheader
  %_local_id_x.0.us.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.us.us.5.preheader ], [ %557, %if.end.i.us.us.5.3 ]
  %add1.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.0.us.us.5, %mul.i.i
  %conv2.i.us.us.5 = trunc i64 %add1.i.i.us.us.5 to i32
  %cmp7.i.us.us.5 = icmp sgt i32 %conv2.i.us.us.5, 0
  %cmp11.i.us.us.5 = icmp sgt i32 %sub.i, %conv2.i.us.us.5
  %or.cond28.i.us.us.5 = and i1 %cmp11.i.us.us.5, %cmp7.i.us.us.5
  br i1 %or.cond28.i.us.us.5, label %if.then.i.us.us.5, label %if.end.i.us.us.5

if.then.i.us.us.5:                                ; preds = %pregion_for_entry.entry.i.us.us.5
  %add.i.us.us.5 = add nsw i32 %mul.i.5, %conv2.i.us.us.5
  %idxprom.i.us.us.5 = sext i32 %add.i.us.us.5 to i64
  %arrayidx.i.us.us.5 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.5
  %390 = bitcast float* %arrayidx.i.us.us.5 to i32*
  %391 = load i32, i32* %390, align 4, !tbaa !12
  %arrayidx16.i.us.us.5 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.5
  %392 = bitcast float* %arrayidx16.i.us.us.5 to i32*
  store i32 %391, i32* %392, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.5

if.end.i.us.us.5:                                 ; preds = %if.then.i.us.us.5, %pregion_for_entry.entry.i.us.us.5
  %393 = or i64 %_local_id_x.0.us.us.5, 1
  %add1.i.i.us.us.5.1 = add nuw nsw i64 %393, %mul.i.i
  %conv2.i.us.us.5.1 = trunc i64 %add1.i.i.us.us.5.1 to i32
  %cmp7.i.us.us.5.1 = icmp sgt i32 %conv2.i.us.us.5.1, 0
  %cmp11.i.us.us.5.1 = icmp sgt i32 %sub.i, %conv2.i.us.us.5.1
  %or.cond28.i.us.us.5.1 = and i1 %cmp11.i.us.us.5.1, %cmp7.i.us.us.5.1
  br i1 %or.cond28.i.us.us.5.1, label %if.then.i.us.us.5.1, label %if.end.i.us.us.5.1

pregion_for_end.i.5.loopexit:                     ; preds = %if.end.i.us.us.5.3
  br label %pregion_for_end.i.5

pregion_for_end.i.5:                              ; preds = %pregion_for_end.i.5.loopexit, %vector.ph178, %pregion_for_end.i.4
  %394 = trunc i64 %mul3.i.i to i32
  %conv.i.6 = or i32 %394, 6
  %cmp.i.6 = icmp sgt i32 %conv.i.6, 0
  %mul.i.6 = mul nsw i32 %conv.i.6, %2
  %cmp4.i.6 = icmp sgt i32 %sub.i, %conv.i.6
  %or.cond9 = and i1 %cmp.i.6, %cmp4.i.6
  br i1 %or.cond9, label %vector.scevcheck197, label %pregion_for_end.i.6

vector.scevcheck197:                              ; preds = %pregion_for_end.i.5
  %395 = mul i32 %conv.i.6, %2
  %396 = trunc i64 %4 to i32
  %397 = shl i32 %396, 5
  %398 = add i32 %395, %397
  %399 = icmp sgt i32 %398, 2147483616
  br i1 %399, label %pregion_for_entry.entry.i.us.us.6.preheader, label %vector.memcheck211

pregion_for_entry.entry.i.us.us.6.preheader:      ; preds = %vector.memcheck211, %vector.scevcheck197
  br label %pregion_for_entry.entry.i.us.us.6

vector.memcheck211:                               ; preds = %vector.scevcheck197
  %400 = mul i32 %conv.i.6, %2
  %401 = trunc i64 %4 to i32
  %402 = shl i32 %401, 5
  %403 = add i32 %400, %402
  %404 = sext i32 %403 to i64
  %scevgep199 = getelementptr float, float* %0, i64 %404
  %405 = add nsw i64 %404, 32
  %scevgep201 = getelementptr float, float* %0, i64 %405
  %scevgep203 = getelementptr float, float* %1, i64 %404
  %scevgep205 = getelementptr float, float* %1, i64 %405
  %bound0207 = icmp ult float* %scevgep199, %scevgep205
  %bound1208 = icmp ult float* %scevgep203, %scevgep201
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %pregion_for_entry.entry.i.us.us.6.preheader, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck211
  %broadcast.splatinsert219 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat220 = shufflevector <8 x i64> %broadcast.splatinsert219, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert221 = insertelement <8 x i32> undef, i32 %sub.i, i32 0
  %broadcast.splat222 = shufflevector <8 x i32> %broadcast.splatinsert221, <8 x i32> undef, <8 x i32> zeroinitializer
  %406 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %407 = or <8 x i32> %406, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %408 = icmp sgt <8 x i32> %407, zeroinitializer
  %409 = icmp sgt <8 x i32> %broadcast.splat222, %407
  %410 = and <8 x i1> %409, %408
  %411 = extractelement <8 x i32> %407, i32 0
  %412 = add nsw i32 %mul.i.6, %411
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds float, float* %1, i64 %413
  %415 = bitcast float* %414 to <8 x i32>*
  %wide.masked.load223 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %415, i32 4, <8 x i1> %410, <8 x i32> undef), !tbaa !12, !alias.scope !49
  %416 = getelementptr inbounds float, float* %0, i64 %413
  %417 = bitcast float* %416 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223, <8 x i32>* %417, i32 4, <8 x i1> %410), !tbaa !12, !alias.scope !52, !noalias !49, !llvm.access.group !21
  %418 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %419 = or <8 x i32> %418, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %420 = icmp sgt <8 x i32> %419, zeroinitializer
  %421 = icmp sgt <8 x i32> %broadcast.splat222, %419
  %422 = and <8 x i1> %421, %420
  %423 = extractelement <8 x i32> %419, i32 0
  %424 = add nsw i32 %mul.i.6, %423
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds float, float* %1, i64 %425
  %427 = bitcast float* %426 to <8 x i32>*
  %wide.masked.load223.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %427, i32 4, <8 x i1> %422, <8 x i32> undef), !tbaa !12, !alias.scope !49
  %428 = getelementptr inbounds float, float* %0, i64 %425
  %429 = bitcast float* %428 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223.1, <8 x i32>* %429, i32 4, <8 x i1> %422), !tbaa !12, !alias.scope !52, !noalias !49, !llvm.access.group !21
  %430 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %431 = or <8 x i32> %430, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %432 = icmp sgt <8 x i32> %431, zeroinitializer
  %433 = icmp sgt <8 x i32> %broadcast.splat222, %431
  %434 = and <8 x i1> %433, %432
  %435 = extractelement <8 x i32> %431, i32 0
  %436 = add nsw i32 %mul.i.6, %435
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds float, float* %1, i64 %437
  %439 = bitcast float* %438 to <8 x i32>*
  %wide.masked.load223.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %439, i32 4, <8 x i1> %434, <8 x i32> undef), !tbaa !12, !alias.scope !49
  %440 = getelementptr inbounds float, float* %0, i64 %437
  %441 = bitcast float* %440 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223.2, <8 x i32>* %441, i32 4, <8 x i1> %434), !tbaa !12, !alias.scope !52, !noalias !49, !llvm.access.group !21
  %442 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %443 = or <8 x i32> %442, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %444 = icmp sgt <8 x i32> %443, zeroinitializer
  %445 = icmp sgt <8 x i32> %broadcast.splat222, %443
  %446 = and <8 x i1> %445, %444
  %447 = extractelement <8 x i32> %443, i32 0
  %448 = add nsw i32 %mul.i.6, %447
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds float, float* %1, i64 %449
  %451 = bitcast float* %450 to <8 x i32>*
  %wide.masked.load223.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %451, i32 4, <8 x i1> %446, <8 x i32> undef), !tbaa !12, !alias.scope !49
  %452 = getelementptr inbounds float, float* %0, i64 %449
  %453 = bitcast float* %452 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223.3, <8 x i32>* %453, i32 4, <8 x i1> %446), !tbaa !12, !alias.scope !52, !noalias !49, !llvm.access.group !21
  br label %pregion_for_end.i.6

pregion_for_entry.entry.i.us.us.6:                ; preds = %if.end.i.us.us.6.3, %pregion_for_entry.entry.i.us.us.6.preheader
  %_local_id_x.0.us.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.us.us.6.preheader ], [ %545, %if.end.i.us.us.6.3 ]
  %add1.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.0.us.us.6, %mul.i.i
  %conv2.i.us.us.6 = trunc i64 %add1.i.i.us.us.6 to i32
  %cmp7.i.us.us.6 = icmp sgt i32 %conv2.i.us.us.6, 0
  %cmp11.i.us.us.6 = icmp sgt i32 %sub.i, %conv2.i.us.us.6
  %or.cond28.i.us.us.6 = and i1 %cmp11.i.us.us.6, %cmp7.i.us.us.6
  br i1 %or.cond28.i.us.us.6, label %if.then.i.us.us.6, label %if.end.i.us.us.6

if.then.i.us.us.6:                                ; preds = %pregion_for_entry.entry.i.us.us.6
  %add.i.us.us.6 = add nsw i32 %mul.i.6, %conv2.i.us.us.6
  %idxprom.i.us.us.6 = sext i32 %add.i.us.us.6 to i64
  %arrayidx.i.us.us.6 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.6
  %454 = bitcast float* %arrayidx.i.us.us.6 to i32*
  %455 = load i32, i32* %454, align 4, !tbaa !12
  %arrayidx16.i.us.us.6 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.6
  %456 = bitcast float* %arrayidx16.i.us.us.6 to i32*
  store i32 %455, i32* %456, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.6

if.end.i.us.us.6:                                 ; preds = %if.then.i.us.us.6, %pregion_for_entry.entry.i.us.us.6
  %457 = or i64 %_local_id_x.0.us.us.6, 1
  %add1.i.i.us.us.6.1 = add nuw nsw i64 %457, %mul.i.i
  %conv2.i.us.us.6.1 = trunc i64 %add1.i.i.us.us.6.1 to i32
  %cmp7.i.us.us.6.1 = icmp sgt i32 %conv2.i.us.us.6.1, 0
  %cmp11.i.us.us.6.1 = icmp sgt i32 %sub.i, %conv2.i.us.us.6.1
  %or.cond28.i.us.us.6.1 = and i1 %cmp11.i.us.us.6.1, %cmp7.i.us.us.6.1
  br i1 %or.cond28.i.us.us.6.1, label %if.then.i.us.us.6.1, label %if.end.i.us.us.6.1

pregion_for_end.i.6.loopexit:                     ; preds = %if.end.i.us.us.6.3
  br label %pregion_for_end.i.6

pregion_for_end.i.6:                              ; preds = %pregion_for_end.i.6.loopexit, %vector.ph212, %pregion_for_end.i.5
  %458 = trunc i64 %mul3.i.i to i32
  %conv.i.7 = or i32 %458, 7
  %cmp.i.7 = icmp sgt i32 %conv.i.7, 0
  %mul.i.7 = mul nsw i32 %conv.i.7, %2
  %cmp4.i.7 = icmp sgt i32 %sub.i, %conv.i.7
  %or.cond10 = and i1 %cmp.i.7, %cmp4.i.7
  br i1 %or.cond10, label %vector.scevcheck231, label %pregion_for_end.i.7

vector.scevcheck231:                              ; preds = %pregion_for_end.i.6
  %459 = mul i32 %conv.i.7, %2
  %460 = trunc i64 %4 to i32
  %461 = shl i32 %460, 5
  %462 = add i32 %459, %461
  %463 = icmp sgt i32 %462, 2147483616
  br i1 %463, label %pregion_for_entry.entry.i.us.us.7.preheader, label %vector.memcheck245

pregion_for_entry.entry.i.us.us.7.preheader:      ; preds = %vector.memcheck245, %vector.scevcheck231
  br label %pregion_for_entry.entry.i.us.us.7

vector.memcheck245:                               ; preds = %vector.scevcheck231
  %464 = mul i32 %conv.i.7, %2
  %465 = trunc i64 %4 to i32
  %466 = shl i32 %465, 5
  %467 = add i32 %464, %466
  %468 = sext i32 %467 to i64
  %scevgep233 = getelementptr float, float* %0, i64 %468
  %469 = add nsw i64 %468, 32
  %scevgep235 = getelementptr float, float* %0, i64 %469
  %scevgep237 = getelementptr float, float* %1, i64 %468
  %scevgep239 = getelementptr float, float* %1, i64 %469
  %bound0241 = icmp ult float* %scevgep233, %scevgep239
  %bound1242 = icmp ult float* %scevgep237, %scevgep235
  %found.conflict243 = and i1 %bound0241, %bound1242
  br i1 %found.conflict243, label %pregion_for_entry.entry.i.us.us.7.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck245
  %broadcast.splatinsert253 = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat254 = shufflevector <8 x i64> %broadcast.splatinsert253, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert255 = insertelement <8 x i32> undef, i32 %sub.i, i32 0
  %broadcast.splat256 = shufflevector <8 x i32> %broadcast.splatinsert255, <8 x i32> undef, <8 x i32> zeroinitializer
  %470 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %471 = or <8 x i32> %470, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %472 = icmp sgt <8 x i32> %471, zeroinitializer
  %473 = icmp sgt <8 x i32> %broadcast.splat256, %471
  %474 = and <8 x i1> %473, %472
  %475 = extractelement <8 x i32> %471, i32 0
  %476 = add nsw i32 %mul.i.7, %475
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds float, float* %1, i64 %477
  %479 = bitcast float* %478 to <8 x i32>*
  %wide.masked.load257 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %479, i32 4, <8 x i1> %474, <8 x i32> undef), !tbaa !12, !alias.scope !54
  %480 = getelementptr inbounds float, float* %0, i64 %477
  %481 = bitcast float* %480 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257, <8 x i32>* %481, i32 4, <8 x i1> %474), !tbaa !12, !alias.scope !57, !noalias !54, !llvm.access.group !21
  %482 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %483 = or <8 x i32> %482, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %484 = icmp sgt <8 x i32> %483, zeroinitializer
  %485 = icmp sgt <8 x i32> %broadcast.splat256, %483
  %486 = and <8 x i1> %485, %484
  %487 = extractelement <8 x i32> %483, i32 0
  %488 = add nsw i32 %mul.i.7, %487
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds float, float* %1, i64 %489
  %491 = bitcast float* %490 to <8 x i32>*
  %wide.masked.load257.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %491, i32 4, <8 x i1> %486, <8 x i32> undef), !tbaa !12, !alias.scope !54
  %492 = getelementptr inbounds float, float* %0, i64 %489
  %493 = bitcast float* %492 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257.1, <8 x i32>* %493, i32 4, <8 x i1> %486), !tbaa !12, !alias.scope !57, !noalias !54, !llvm.access.group !21
  %494 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %495 = or <8 x i32> %494, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %496 = icmp sgt <8 x i32> %495, zeroinitializer
  %497 = icmp sgt <8 x i32> %broadcast.splat256, %495
  %498 = and <8 x i1> %497, %496
  %499 = extractelement <8 x i32> %495, i32 0
  %500 = add nsw i32 %mul.i.7, %499
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds float, float* %1, i64 %501
  %503 = bitcast float* %502 to <8 x i32>*
  %wide.masked.load257.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %503, i32 4, <8 x i1> %498, <8 x i32> undef), !tbaa !12, !alias.scope !54
  %504 = getelementptr inbounds float, float* %0, i64 %501
  %505 = bitcast float* %504 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257.2, <8 x i32>* %505, i32 4, <8 x i1> %498), !tbaa !12, !alias.scope !57, !noalias !54, !llvm.access.group !21
  %506 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %507 = or <8 x i32> %506, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %508 = icmp sgt <8 x i32> %507, zeroinitializer
  %509 = icmp sgt <8 x i32> %broadcast.splat256, %507
  %510 = and <8 x i1> %509, %508
  %511 = extractelement <8 x i32> %507, i32 0
  %512 = add nsw i32 %mul.i.7, %511
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds float, float* %1, i64 %513
  %515 = bitcast float* %514 to <8 x i32>*
  %wide.masked.load257.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %515, i32 4, <8 x i1> %510, <8 x i32> undef), !tbaa !12, !alias.scope !54
  %516 = getelementptr inbounds float, float* %0, i64 %513
  %517 = bitcast float* %516 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257.3, <8 x i32>* %517, i32 4, <8 x i1> %510), !tbaa !12, !alias.scope !57, !noalias !54, !llvm.access.group !21
  br label %pregion_for_end.i.7

pregion_for_entry.entry.i.us.us.7:                ; preds = %if.end.i.us.us.7.3, %pregion_for_entry.entry.i.us.us.7.preheader
  %_local_id_x.0.us.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.us.us.7.preheader ], [ %533, %if.end.i.us.us.7.3 ]
  %add1.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.0.us.us.7, %mul.i.i
  %conv2.i.us.us.7 = trunc i64 %add1.i.i.us.us.7 to i32
  %cmp7.i.us.us.7 = icmp sgt i32 %conv2.i.us.us.7, 0
  %cmp11.i.us.us.7 = icmp sgt i32 %sub.i, %conv2.i.us.us.7
  %or.cond28.i.us.us.7 = and i1 %cmp11.i.us.us.7, %cmp7.i.us.us.7
  br i1 %or.cond28.i.us.us.7, label %if.then.i.us.us.7, label %if.end.i.us.us.7

if.then.i.us.us.7:                                ; preds = %pregion_for_entry.entry.i.us.us.7
  %add.i.us.us.7 = add nsw i32 %mul.i.7, %conv2.i.us.us.7
  %idxprom.i.us.us.7 = sext i32 %add.i.us.us.7 to i64
  %arrayidx.i.us.us.7 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.7
  %518 = bitcast float* %arrayidx.i.us.us.7 to i32*
  %519 = load i32, i32* %518, align 4, !tbaa !12
  %arrayidx16.i.us.us.7 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.7
  %520 = bitcast float* %arrayidx16.i.us.us.7 to i32*
  store i32 %519, i32* %520, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.7

if.end.i.us.us.7:                                 ; preds = %if.then.i.us.us.7, %pregion_for_entry.entry.i.us.us.7
  %521 = or i64 %_local_id_x.0.us.us.7, 1
  %add1.i.i.us.us.7.1 = add nuw nsw i64 %521, %mul.i.i
  %conv2.i.us.us.7.1 = trunc i64 %add1.i.i.us.us.7.1 to i32
  %cmp7.i.us.us.7.1 = icmp sgt i32 %conv2.i.us.us.7.1, 0
  %cmp11.i.us.us.7.1 = icmp sgt i32 %sub.i, %conv2.i.us.us.7.1
  %or.cond28.i.us.us.7.1 = and i1 %cmp11.i.us.us.7.1, %cmp7.i.us.us.7.1
  br i1 %or.cond28.i.us.us.7.1, label %if.then.i.us.us.7.1, label %if.end.i.us.us.7.1

pregion_for_end.i.7.loopexit:                     ; preds = %if.end.i.us.us.7.3
  br label %pregion_for_end.i.7

pregion_for_end.i.7:                              ; preds = %pregion_for_end.i.7.loopexit, %vector.ph246, %pregion_for_end.i.6
  ret void

if.then.i.us.us.7.1:                              ; preds = %if.end.i.us.us.7
  %add.i.us.us.7.1 = add nsw i32 %mul.i.7, %conv2.i.us.us.7.1
  %idxprom.i.us.us.7.1 = sext i32 %add.i.us.us.7.1 to i64
  %arrayidx.i.us.us.7.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.7.1
  %522 = bitcast float* %arrayidx.i.us.us.7.1 to i32*
  %523 = load i32, i32* %522, align 4, !tbaa !12
  %arrayidx16.i.us.us.7.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.7.1
  %524 = bitcast float* %arrayidx16.i.us.us.7.1 to i32*
  store i32 %523, i32* %524, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.7.1

if.end.i.us.us.7.1:                               ; preds = %if.then.i.us.us.7.1, %if.end.i.us.us.7
  %525 = or i64 %_local_id_x.0.us.us.7, 2
  %add1.i.i.us.us.7.2 = add nuw nsw i64 %525, %mul.i.i
  %conv2.i.us.us.7.2 = trunc i64 %add1.i.i.us.us.7.2 to i32
  %cmp7.i.us.us.7.2 = icmp sgt i32 %conv2.i.us.us.7.2, 0
  %cmp11.i.us.us.7.2 = icmp sgt i32 %sub.i, %conv2.i.us.us.7.2
  %or.cond28.i.us.us.7.2 = and i1 %cmp11.i.us.us.7.2, %cmp7.i.us.us.7.2
  br i1 %or.cond28.i.us.us.7.2, label %if.then.i.us.us.7.2, label %if.end.i.us.us.7.2

if.then.i.us.us.7.2:                              ; preds = %if.end.i.us.us.7.1
  %add.i.us.us.7.2 = add nsw i32 %mul.i.7, %conv2.i.us.us.7.2
  %idxprom.i.us.us.7.2 = sext i32 %add.i.us.us.7.2 to i64
  %arrayidx.i.us.us.7.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.7.2
  %526 = bitcast float* %arrayidx.i.us.us.7.2 to i32*
  %527 = load i32, i32* %526, align 4, !tbaa !12
  %arrayidx16.i.us.us.7.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.7.2
  %528 = bitcast float* %arrayidx16.i.us.us.7.2 to i32*
  store i32 %527, i32* %528, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.7.2

if.end.i.us.us.7.2:                               ; preds = %if.then.i.us.us.7.2, %if.end.i.us.us.7.1
  %529 = or i64 %_local_id_x.0.us.us.7, 3
  %add1.i.i.us.us.7.3 = add nuw nsw i64 %529, %mul.i.i
  %conv2.i.us.us.7.3 = trunc i64 %add1.i.i.us.us.7.3 to i32
  %cmp7.i.us.us.7.3 = icmp sgt i32 %conv2.i.us.us.7.3, 0
  %cmp11.i.us.us.7.3 = icmp sgt i32 %sub.i, %conv2.i.us.us.7.3
  %or.cond28.i.us.us.7.3 = and i1 %cmp11.i.us.us.7.3, %cmp7.i.us.us.7.3
  br i1 %or.cond28.i.us.us.7.3, label %if.then.i.us.us.7.3, label %if.end.i.us.us.7.3

if.then.i.us.us.7.3:                              ; preds = %if.end.i.us.us.7.2
  %add.i.us.us.7.3 = add nsw i32 %mul.i.7, %conv2.i.us.us.7.3
  %idxprom.i.us.us.7.3 = sext i32 %add.i.us.us.7.3 to i64
  %arrayidx.i.us.us.7.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.7.3
  %530 = bitcast float* %arrayidx.i.us.us.7.3 to i32*
  %531 = load i32, i32* %530, align 4, !tbaa !12
  %arrayidx16.i.us.us.7.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.7.3
  %532 = bitcast float* %arrayidx16.i.us.us.7.3 to i32*
  store i32 %531, i32* %532, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.7.3

if.end.i.us.us.7.3:                               ; preds = %if.then.i.us.us.7.3, %if.end.i.us.us.7.2
  %533 = add nuw nsw i64 %_local_id_x.0.us.us.7, 4
  %exitcond.7.not.3 = icmp eq i64 %533, 32
  br i1 %exitcond.7.not.3, label %pregion_for_end.i.7.loopexit, label %pregion_for_entry.entry.i.us.us.7, !llvm.loop !59

if.then.i.us.us.6.1:                              ; preds = %if.end.i.us.us.6
  %add.i.us.us.6.1 = add nsw i32 %mul.i.6, %conv2.i.us.us.6.1
  %idxprom.i.us.us.6.1 = sext i32 %add.i.us.us.6.1 to i64
  %arrayidx.i.us.us.6.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.6.1
  %534 = bitcast float* %arrayidx.i.us.us.6.1 to i32*
  %535 = load i32, i32* %534, align 4, !tbaa !12
  %arrayidx16.i.us.us.6.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.6.1
  %536 = bitcast float* %arrayidx16.i.us.us.6.1 to i32*
  store i32 %535, i32* %536, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.6.1

if.end.i.us.us.6.1:                               ; preds = %if.then.i.us.us.6.1, %if.end.i.us.us.6
  %537 = or i64 %_local_id_x.0.us.us.6, 2
  %add1.i.i.us.us.6.2 = add nuw nsw i64 %537, %mul.i.i
  %conv2.i.us.us.6.2 = trunc i64 %add1.i.i.us.us.6.2 to i32
  %cmp7.i.us.us.6.2 = icmp sgt i32 %conv2.i.us.us.6.2, 0
  %cmp11.i.us.us.6.2 = icmp sgt i32 %sub.i, %conv2.i.us.us.6.2
  %or.cond28.i.us.us.6.2 = and i1 %cmp11.i.us.us.6.2, %cmp7.i.us.us.6.2
  br i1 %or.cond28.i.us.us.6.2, label %if.then.i.us.us.6.2, label %if.end.i.us.us.6.2

if.then.i.us.us.6.2:                              ; preds = %if.end.i.us.us.6.1
  %add.i.us.us.6.2 = add nsw i32 %mul.i.6, %conv2.i.us.us.6.2
  %idxprom.i.us.us.6.2 = sext i32 %add.i.us.us.6.2 to i64
  %arrayidx.i.us.us.6.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.6.2
  %538 = bitcast float* %arrayidx.i.us.us.6.2 to i32*
  %539 = load i32, i32* %538, align 4, !tbaa !12
  %arrayidx16.i.us.us.6.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.6.2
  %540 = bitcast float* %arrayidx16.i.us.us.6.2 to i32*
  store i32 %539, i32* %540, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.6.2

if.end.i.us.us.6.2:                               ; preds = %if.then.i.us.us.6.2, %if.end.i.us.us.6.1
  %541 = or i64 %_local_id_x.0.us.us.6, 3
  %add1.i.i.us.us.6.3 = add nuw nsw i64 %541, %mul.i.i
  %conv2.i.us.us.6.3 = trunc i64 %add1.i.i.us.us.6.3 to i32
  %cmp7.i.us.us.6.3 = icmp sgt i32 %conv2.i.us.us.6.3, 0
  %cmp11.i.us.us.6.3 = icmp sgt i32 %sub.i, %conv2.i.us.us.6.3
  %or.cond28.i.us.us.6.3 = and i1 %cmp11.i.us.us.6.3, %cmp7.i.us.us.6.3
  br i1 %or.cond28.i.us.us.6.3, label %if.then.i.us.us.6.3, label %if.end.i.us.us.6.3

if.then.i.us.us.6.3:                              ; preds = %if.end.i.us.us.6.2
  %add.i.us.us.6.3 = add nsw i32 %mul.i.6, %conv2.i.us.us.6.3
  %idxprom.i.us.us.6.3 = sext i32 %add.i.us.us.6.3 to i64
  %arrayidx.i.us.us.6.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.6.3
  %542 = bitcast float* %arrayidx.i.us.us.6.3 to i32*
  %543 = load i32, i32* %542, align 4, !tbaa !12
  %arrayidx16.i.us.us.6.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.6.3
  %544 = bitcast float* %arrayidx16.i.us.us.6.3 to i32*
  store i32 %543, i32* %544, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.6.3

if.end.i.us.us.6.3:                               ; preds = %if.then.i.us.us.6.3, %if.end.i.us.us.6.2
  %545 = add nuw nsw i64 %_local_id_x.0.us.us.6, 4
  %exitcond.6.not.3 = icmp eq i64 %545, 32
  br i1 %exitcond.6.not.3, label %pregion_for_end.i.6.loopexit, label %pregion_for_entry.entry.i.us.us.6, !llvm.loop !62

if.then.i.us.us.5.1:                              ; preds = %if.end.i.us.us.5
  %add.i.us.us.5.1 = add nsw i32 %mul.i.5, %conv2.i.us.us.5.1
  %idxprom.i.us.us.5.1 = sext i32 %add.i.us.us.5.1 to i64
  %arrayidx.i.us.us.5.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.5.1
  %546 = bitcast float* %arrayidx.i.us.us.5.1 to i32*
  %547 = load i32, i32* %546, align 4, !tbaa !12
  %arrayidx16.i.us.us.5.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.5.1
  %548 = bitcast float* %arrayidx16.i.us.us.5.1 to i32*
  store i32 %547, i32* %548, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.5.1

if.end.i.us.us.5.1:                               ; preds = %if.then.i.us.us.5.1, %if.end.i.us.us.5
  %549 = or i64 %_local_id_x.0.us.us.5, 2
  %add1.i.i.us.us.5.2 = add nuw nsw i64 %549, %mul.i.i
  %conv2.i.us.us.5.2 = trunc i64 %add1.i.i.us.us.5.2 to i32
  %cmp7.i.us.us.5.2 = icmp sgt i32 %conv2.i.us.us.5.2, 0
  %cmp11.i.us.us.5.2 = icmp sgt i32 %sub.i, %conv2.i.us.us.5.2
  %or.cond28.i.us.us.5.2 = and i1 %cmp11.i.us.us.5.2, %cmp7.i.us.us.5.2
  br i1 %or.cond28.i.us.us.5.2, label %if.then.i.us.us.5.2, label %if.end.i.us.us.5.2

if.then.i.us.us.5.2:                              ; preds = %if.end.i.us.us.5.1
  %add.i.us.us.5.2 = add nsw i32 %mul.i.5, %conv2.i.us.us.5.2
  %idxprom.i.us.us.5.2 = sext i32 %add.i.us.us.5.2 to i64
  %arrayidx.i.us.us.5.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.5.2
  %550 = bitcast float* %arrayidx.i.us.us.5.2 to i32*
  %551 = load i32, i32* %550, align 4, !tbaa !12
  %arrayidx16.i.us.us.5.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.5.2
  %552 = bitcast float* %arrayidx16.i.us.us.5.2 to i32*
  store i32 %551, i32* %552, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.5.2

if.end.i.us.us.5.2:                               ; preds = %if.then.i.us.us.5.2, %if.end.i.us.us.5.1
  %553 = or i64 %_local_id_x.0.us.us.5, 3
  %add1.i.i.us.us.5.3 = add nuw nsw i64 %553, %mul.i.i
  %conv2.i.us.us.5.3 = trunc i64 %add1.i.i.us.us.5.3 to i32
  %cmp7.i.us.us.5.3 = icmp sgt i32 %conv2.i.us.us.5.3, 0
  %cmp11.i.us.us.5.3 = icmp sgt i32 %sub.i, %conv2.i.us.us.5.3
  %or.cond28.i.us.us.5.3 = and i1 %cmp11.i.us.us.5.3, %cmp7.i.us.us.5.3
  br i1 %or.cond28.i.us.us.5.3, label %if.then.i.us.us.5.3, label %if.end.i.us.us.5.3

if.then.i.us.us.5.3:                              ; preds = %if.end.i.us.us.5.2
  %add.i.us.us.5.3 = add nsw i32 %mul.i.5, %conv2.i.us.us.5.3
  %idxprom.i.us.us.5.3 = sext i32 %add.i.us.us.5.3 to i64
  %arrayidx.i.us.us.5.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.5.3
  %554 = bitcast float* %arrayidx.i.us.us.5.3 to i32*
  %555 = load i32, i32* %554, align 4, !tbaa !12
  %arrayidx16.i.us.us.5.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.5.3
  %556 = bitcast float* %arrayidx16.i.us.us.5.3 to i32*
  store i32 %555, i32* %556, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.5.3

if.end.i.us.us.5.3:                               ; preds = %if.then.i.us.us.5.3, %if.end.i.us.us.5.2
  %557 = add nuw nsw i64 %_local_id_x.0.us.us.5, 4
  %exitcond.5.not.3 = icmp eq i64 %557, 32
  br i1 %exitcond.5.not.3, label %pregion_for_end.i.5.loopexit, label %pregion_for_entry.entry.i.us.us.5, !llvm.loop !63

if.then.i.us.us.4.1:                              ; preds = %if.end.i.us.us.4
  %add.i.us.us.4.1 = add nsw i32 %mul.i.4, %conv2.i.us.us.4.1
  %idxprom.i.us.us.4.1 = sext i32 %add.i.us.us.4.1 to i64
  %arrayidx.i.us.us.4.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.4.1
  %558 = bitcast float* %arrayidx.i.us.us.4.1 to i32*
  %559 = load i32, i32* %558, align 4, !tbaa !12
  %arrayidx16.i.us.us.4.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.4.1
  %560 = bitcast float* %arrayidx16.i.us.us.4.1 to i32*
  store i32 %559, i32* %560, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.4.1

if.end.i.us.us.4.1:                               ; preds = %if.then.i.us.us.4.1, %if.end.i.us.us.4
  %561 = or i64 %_local_id_x.0.us.us.4, 2
  %add1.i.i.us.us.4.2 = add nuw nsw i64 %561, %mul.i.i
  %conv2.i.us.us.4.2 = trunc i64 %add1.i.i.us.us.4.2 to i32
  %cmp7.i.us.us.4.2 = icmp sgt i32 %conv2.i.us.us.4.2, 0
  %cmp11.i.us.us.4.2 = icmp sgt i32 %sub.i, %conv2.i.us.us.4.2
  %or.cond28.i.us.us.4.2 = and i1 %cmp11.i.us.us.4.2, %cmp7.i.us.us.4.2
  br i1 %or.cond28.i.us.us.4.2, label %if.then.i.us.us.4.2, label %if.end.i.us.us.4.2

if.then.i.us.us.4.2:                              ; preds = %if.end.i.us.us.4.1
  %add.i.us.us.4.2 = add nsw i32 %mul.i.4, %conv2.i.us.us.4.2
  %idxprom.i.us.us.4.2 = sext i32 %add.i.us.us.4.2 to i64
  %arrayidx.i.us.us.4.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.4.2
  %562 = bitcast float* %arrayidx.i.us.us.4.2 to i32*
  %563 = load i32, i32* %562, align 4, !tbaa !12
  %arrayidx16.i.us.us.4.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.4.2
  %564 = bitcast float* %arrayidx16.i.us.us.4.2 to i32*
  store i32 %563, i32* %564, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.4.2

if.end.i.us.us.4.2:                               ; preds = %if.then.i.us.us.4.2, %if.end.i.us.us.4.1
  %565 = or i64 %_local_id_x.0.us.us.4, 3
  %add1.i.i.us.us.4.3 = add nuw nsw i64 %565, %mul.i.i
  %conv2.i.us.us.4.3 = trunc i64 %add1.i.i.us.us.4.3 to i32
  %cmp7.i.us.us.4.3 = icmp sgt i32 %conv2.i.us.us.4.3, 0
  %cmp11.i.us.us.4.3 = icmp sgt i32 %sub.i, %conv2.i.us.us.4.3
  %or.cond28.i.us.us.4.3 = and i1 %cmp11.i.us.us.4.3, %cmp7.i.us.us.4.3
  br i1 %or.cond28.i.us.us.4.3, label %if.then.i.us.us.4.3, label %if.end.i.us.us.4.3

if.then.i.us.us.4.3:                              ; preds = %if.end.i.us.us.4.2
  %add.i.us.us.4.3 = add nsw i32 %mul.i.4, %conv2.i.us.us.4.3
  %idxprom.i.us.us.4.3 = sext i32 %add.i.us.us.4.3 to i64
  %arrayidx.i.us.us.4.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.4.3
  %566 = bitcast float* %arrayidx.i.us.us.4.3 to i32*
  %567 = load i32, i32* %566, align 4, !tbaa !12
  %arrayidx16.i.us.us.4.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.4.3
  %568 = bitcast float* %arrayidx16.i.us.us.4.3 to i32*
  store i32 %567, i32* %568, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.4.3

if.end.i.us.us.4.3:                               ; preds = %if.then.i.us.us.4.3, %if.end.i.us.us.4.2
  %569 = add nuw nsw i64 %_local_id_x.0.us.us.4, 4
  %exitcond.4.not.3 = icmp eq i64 %569, 32
  br i1 %exitcond.4.not.3, label %pregion_for_end.i.4.loopexit, label %pregion_for_entry.entry.i.us.us.4, !llvm.loop !64

if.then.i.us.us.3.1:                              ; preds = %if.end.i.us.us.3
  %add.i.us.us.3.1 = add nsw i32 %mul.i.3, %conv2.i.us.us.3.1
  %idxprom.i.us.us.3.1 = sext i32 %add.i.us.us.3.1 to i64
  %arrayidx.i.us.us.3.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.3.1
  %570 = bitcast float* %arrayidx.i.us.us.3.1 to i32*
  %571 = load i32, i32* %570, align 4, !tbaa !12
  %arrayidx16.i.us.us.3.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.3.1
  %572 = bitcast float* %arrayidx16.i.us.us.3.1 to i32*
  store i32 %571, i32* %572, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.3.1

if.end.i.us.us.3.1:                               ; preds = %if.then.i.us.us.3.1, %if.end.i.us.us.3
  %573 = or i64 %_local_id_x.0.us.us.3, 2
  %add1.i.i.us.us.3.2 = add nuw nsw i64 %573, %mul.i.i
  %conv2.i.us.us.3.2 = trunc i64 %add1.i.i.us.us.3.2 to i32
  %cmp7.i.us.us.3.2 = icmp sgt i32 %conv2.i.us.us.3.2, 0
  %cmp11.i.us.us.3.2 = icmp sgt i32 %sub.i, %conv2.i.us.us.3.2
  %or.cond28.i.us.us.3.2 = and i1 %cmp11.i.us.us.3.2, %cmp7.i.us.us.3.2
  br i1 %or.cond28.i.us.us.3.2, label %if.then.i.us.us.3.2, label %if.end.i.us.us.3.2

if.then.i.us.us.3.2:                              ; preds = %if.end.i.us.us.3.1
  %add.i.us.us.3.2 = add nsw i32 %mul.i.3, %conv2.i.us.us.3.2
  %idxprom.i.us.us.3.2 = sext i32 %add.i.us.us.3.2 to i64
  %arrayidx.i.us.us.3.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.3.2
  %574 = bitcast float* %arrayidx.i.us.us.3.2 to i32*
  %575 = load i32, i32* %574, align 4, !tbaa !12
  %arrayidx16.i.us.us.3.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.3.2
  %576 = bitcast float* %arrayidx16.i.us.us.3.2 to i32*
  store i32 %575, i32* %576, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.3.2

if.end.i.us.us.3.2:                               ; preds = %if.then.i.us.us.3.2, %if.end.i.us.us.3.1
  %577 = or i64 %_local_id_x.0.us.us.3, 3
  %add1.i.i.us.us.3.3 = add nuw nsw i64 %577, %mul.i.i
  %conv2.i.us.us.3.3 = trunc i64 %add1.i.i.us.us.3.3 to i32
  %cmp7.i.us.us.3.3 = icmp sgt i32 %conv2.i.us.us.3.3, 0
  %cmp11.i.us.us.3.3 = icmp sgt i32 %sub.i, %conv2.i.us.us.3.3
  %or.cond28.i.us.us.3.3 = and i1 %cmp11.i.us.us.3.3, %cmp7.i.us.us.3.3
  br i1 %or.cond28.i.us.us.3.3, label %if.then.i.us.us.3.3, label %if.end.i.us.us.3.3

if.then.i.us.us.3.3:                              ; preds = %if.end.i.us.us.3.2
  %add.i.us.us.3.3 = add nsw i32 %mul.i.3, %conv2.i.us.us.3.3
  %idxprom.i.us.us.3.3 = sext i32 %add.i.us.us.3.3 to i64
  %arrayidx.i.us.us.3.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.3.3
  %578 = bitcast float* %arrayidx.i.us.us.3.3 to i32*
  %579 = load i32, i32* %578, align 4, !tbaa !12
  %arrayidx16.i.us.us.3.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.3.3
  %580 = bitcast float* %arrayidx16.i.us.us.3.3 to i32*
  store i32 %579, i32* %580, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.3.3

if.end.i.us.us.3.3:                               ; preds = %if.then.i.us.us.3.3, %if.end.i.us.us.3.2
  %581 = add nuw nsw i64 %_local_id_x.0.us.us.3, 4
  %exitcond.3.not.3 = icmp eq i64 %581, 32
  br i1 %exitcond.3.not.3, label %pregion_for_end.i.3.loopexit, label %pregion_for_entry.entry.i.us.us.3, !llvm.loop !65

if.then.i.us.us.2.1:                              ; preds = %if.end.i.us.us.2
  %add.i.us.us.2.1 = add nsw i32 %mul.i.2, %conv2.i.us.us.2.1
  %idxprom.i.us.us.2.1 = sext i32 %add.i.us.us.2.1 to i64
  %arrayidx.i.us.us.2.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.2.1
  %582 = bitcast float* %arrayidx.i.us.us.2.1 to i32*
  %583 = load i32, i32* %582, align 4, !tbaa !12
  %arrayidx16.i.us.us.2.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.2.1
  %584 = bitcast float* %arrayidx16.i.us.us.2.1 to i32*
  store i32 %583, i32* %584, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.2.1

if.end.i.us.us.2.1:                               ; preds = %if.then.i.us.us.2.1, %if.end.i.us.us.2
  %585 = or i64 %_local_id_x.0.us.us.2, 2
  %add1.i.i.us.us.2.2 = add nuw nsw i64 %585, %mul.i.i
  %conv2.i.us.us.2.2 = trunc i64 %add1.i.i.us.us.2.2 to i32
  %cmp7.i.us.us.2.2 = icmp sgt i32 %conv2.i.us.us.2.2, 0
  %cmp11.i.us.us.2.2 = icmp sgt i32 %sub.i, %conv2.i.us.us.2.2
  %or.cond28.i.us.us.2.2 = and i1 %cmp11.i.us.us.2.2, %cmp7.i.us.us.2.2
  br i1 %or.cond28.i.us.us.2.2, label %if.then.i.us.us.2.2, label %if.end.i.us.us.2.2

if.then.i.us.us.2.2:                              ; preds = %if.end.i.us.us.2.1
  %add.i.us.us.2.2 = add nsw i32 %mul.i.2, %conv2.i.us.us.2.2
  %idxprom.i.us.us.2.2 = sext i32 %add.i.us.us.2.2 to i64
  %arrayidx.i.us.us.2.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.2.2
  %586 = bitcast float* %arrayidx.i.us.us.2.2 to i32*
  %587 = load i32, i32* %586, align 4, !tbaa !12
  %arrayidx16.i.us.us.2.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.2.2
  %588 = bitcast float* %arrayidx16.i.us.us.2.2 to i32*
  store i32 %587, i32* %588, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.2.2

if.end.i.us.us.2.2:                               ; preds = %if.then.i.us.us.2.2, %if.end.i.us.us.2.1
  %589 = or i64 %_local_id_x.0.us.us.2, 3
  %add1.i.i.us.us.2.3 = add nuw nsw i64 %589, %mul.i.i
  %conv2.i.us.us.2.3 = trunc i64 %add1.i.i.us.us.2.3 to i32
  %cmp7.i.us.us.2.3 = icmp sgt i32 %conv2.i.us.us.2.3, 0
  %cmp11.i.us.us.2.3 = icmp sgt i32 %sub.i, %conv2.i.us.us.2.3
  %or.cond28.i.us.us.2.3 = and i1 %cmp11.i.us.us.2.3, %cmp7.i.us.us.2.3
  br i1 %or.cond28.i.us.us.2.3, label %if.then.i.us.us.2.3, label %if.end.i.us.us.2.3

if.then.i.us.us.2.3:                              ; preds = %if.end.i.us.us.2.2
  %add.i.us.us.2.3 = add nsw i32 %mul.i.2, %conv2.i.us.us.2.3
  %idxprom.i.us.us.2.3 = sext i32 %add.i.us.us.2.3 to i64
  %arrayidx.i.us.us.2.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.2.3
  %590 = bitcast float* %arrayidx.i.us.us.2.3 to i32*
  %591 = load i32, i32* %590, align 4, !tbaa !12
  %arrayidx16.i.us.us.2.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.2.3
  %592 = bitcast float* %arrayidx16.i.us.us.2.3 to i32*
  store i32 %591, i32* %592, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.2.3

if.end.i.us.us.2.3:                               ; preds = %if.then.i.us.us.2.3, %if.end.i.us.us.2.2
  %593 = add nuw nsw i64 %_local_id_x.0.us.us.2, 4
  %exitcond.2.not.3 = icmp eq i64 %593, 32
  br i1 %exitcond.2.not.3, label %pregion_for_end.i.2.loopexit, label %pregion_for_entry.entry.i.us.us.2, !llvm.loop !66

if.then.i.us.us.1.1:                              ; preds = %if.end.i.us.us.1
  %add.i.us.us.1.1 = add nsw i32 %mul.i.1, %conv2.i.us.us.1.1
  %idxprom.i.us.us.1.1 = sext i32 %add.i.us.us.1.1 to i64
  %arrayidx.i.us.us.1.1 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.1.1
  %594 = bitcast float* %arrayidx.i.us.us.1.1 to i32*
  %595 = load i32, i32* %594, align 4, !tbaa !12
  %arrayidx16.i.us.us.1.1 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.1.1
  %596 = bitcast float* %arrayidx16.i.us.us.1.1 to i32*
  store i32 %595, i32* %596, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.1.1

if.end.i.us.us.1.1:                               ; preds = %if.then.i.us.us.1.1, %if.end.i.us.us.1
  %597 = or i64 %_local_id_x.0.us.us.1, 2
  %add1.i.i.us.us.1.2 = add nuw nsw i64 %597, %mul.i.i
  %conv2.i.us.us.1.2 = trunc i64 %add1.i.i.us.us.1.2 to i32
  %cmp7.i.us.us.1.2 = icmp sgt i32 %conv2.i.us.us.1.2, 0
  %cmp11.i.us.us.1.2 = icmp sgt i32 %sub.i, %conv2.i.us.us.1.2
  %or.cond28.i.us.us.1.2 = and i1 %cmp11.i.us.us.1.2, %cmp7.i.us.us.1.2
  br i1 %or.cond28.i.us.us.1.2, label %if.then.i.us.us.1.2, label %if.end.i.us.us.1.2

if.then.i.us.us.1.2:                              ; preds = %if.end.i.us.us.1.1
  %add.i.us.us.1.2 = add nsw i32 %mul.i.1, %conv2.i.us.us.1.2
  %idxprom.i.us.us.1.2 = sext i32 %add.i.us.us.1.2 to i64
  %arrayidx.i.us.us.1.2 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.1.2
  %598 = bitcast float* %arrayidx.i.us.us.1.2 to i32*
  %599 = load i32, i32* %598, align 4, !tbaa !12
  %arrayidx16.i.us.us.1.2 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.1.2
  %600 = bitcast float* %arrayidx16.i.us.us.1.2 to i32*
  store i32 %599, i32* %600, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.1.2

if.end.i.us.us.1.2:                               ; preds = %if.then.i.us.us.1.2, %if.end.i.us.us.1.1
  %601 = or i64 %_local_id_x.0.us.us.1, 3
  %add1.i.i.us.us.1.3 = add nuw nsw i64 %601, %mul.i.i
  %conv2.i.us.us.1.3 = trunc i64 %add1.i.i.us.us.1.3 to i32
  %cmp7.i.us.us.1.3 = icmp sgt i32 %conv2.i.us.us.1.3, 0
  %cmp11.i.us.us.1.3 = icmp sgt i32 %sub.i, %conv2.i.us.us.1.3
  %or.cond28.i.us.us.1.3 = and i1 %cmp11.i.us.us.1.3, %cmp7.i.us.us.1.3
  br i1 %or.cond28.i.us.us.1.3, label %if.then.i.us.us.1.3, label %if.end.i.us.us.1.3

if.then.i.us.us.1.3:                              ; preds = %if.end.i.us.us.1.2
  %add.i.us.us.1.3 = add nsw i32 %mul.i.1, %conv2.i.us.us.1.3
  %idxprom.i.us.us.1.3 = sext i32 %add.i.us.us.1.3 to i64
  %arrayidx.i.us.us.1.3 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.1.3
  %602 = bitcast float* %arrayidx.i.us.us.1.3 to i32*
  %603 = load i32, i32* %602, align 4, !tbaa !12
  %arrayidx16.i.us.us.1.3 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.1.3
  %604 = bitcast float* %arrayidx16.i.us.us.1.3 to i32*
  store i32 %603, i32* %604, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.1.3

if.end.i.us.us.1.3:                               ; preds = %if.then.i.us.us.1.3, %if.end.i.us.us.1.2
  %605 = add nuw nsw i64 %_local_id_x.0.us.us.1, 4
  %exitcond.1.not.3 = icmp eq i64 %605, 32
  br i1 %exitcond.1.not.3, label %pregion_for_end.i.1.loopexit, label %pregion_for_entry.entry.i.us.us.1, !llvm.loop !67

if.then.i.us.us.1277:                             ; preds = %if.end.i.us.us
  %add.i.us.us.1273 = add nsw i32 %mul.i, %conv2.i.us.us.1268
  %idxprom.i.us.us.1274 = sext i32 %add.i.us.us.1273 to i64
  %arrayidx.i.us.us.1275 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.1274
  %606 = bitcast float* %arrayidx.i.us.us.1275 to i32*
  %607 = load i32, i32* %606, align 4, !tbaa !12
  %arrayidx16.i.us.us.1276 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.1274
  %608 = bitcast float* %arrayidx16.i.us.us.1276 to i32*
  store i32 %607, i32* %608, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.1278

if.end.i.us.us.1278:                              ; preds = %if.then.i.us.us.1277, %if.end.i.us.us
  %609 = or i64 %_local_id_x.0.us.us, 2
  %add1.i.i.us.us.2280 = add nuw nsw i64 %609, %mul.i.i
  %conv2.i.us.us.2281 = trunc i64 %add1.i.i.us.us.2280 to i32
  %cmp7.i.us.us.2282 = icmp sgt i32 %conv2.i.us.us.2281, 0
  %cmp11.i.us.us.2283 = icmp sgt i32 %sub.i, %conv2.i.us.us.2281
  %or.cond28.i.us.us.2284 = and i1 %cmp11.i.us.us.2283, %cmp7.i.us.us.2282
  br i1 %or.cond28.i.us.us.2284, label %if.then.i.us.us.2290, label %if.end.i.us.us.2291

if.then.i.us.us.2290:                             ; preds = %if.end.i.us.us.1278
  %add.i.us.us.2286 = add nsw i32 %mul.i, %conv2.i.us.us.2281
  %idxprom.i.us.us.2287 = sext i32 %add.i.us.us.2286 to i64
  %arrayidx.i.us.us.2288 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.2287
  %610 = bitcast float* %arrayidx.i.us.us.2288 to i32*
  %611 = load i32, i32* %610, align 4, !tbaa !12
  %arrayidx16.i.us.us.2289 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.2287
  %612 = bitcast float* %arrayidx16.i.us.us.2289 to i32*
  store i32 %611, i32* %612, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.2291

if.end.i.us.us.2291:                              ; preds = %if.then.i.us.us.2290, %if.end.i.us.us.1278
  %613 = or i64 %_local_id_x.0.us.us, 3
  %add1.i.i.us.us.3293 = add nuw nsw i64 %613, %mul.i.i
  %conv2.i.us.us.3294 = trunc i64 %add1.i.i.us.us.3293 to i32
  %cmp7.i.us.us.3295 = icmp sgt i32 %conv2.i.us.us.3294, 0
  %cmp11.i.us.us.3296 = icmp sgt i32 %sub.i, %conv2.i.us.us.3294
  %or.cond28.i.us.us.3297 = and i1 %cmp11.i.us.us.3296, %cmp7.i.us.us.3295
  br i1 %or.cond28.i.us.us.3297, label %if.then.i.us.us.3303, label %if.end.i.us.us.3304

if.then.i.us.us.3303:                             ; preds = %if.end.i.us.us.2291
  %add.i.us.us.3299 = add nsw i32 %mul.i, %conv2.i.us.us.3294
  %idxprom.i.us.us.3300 = sext i32 %add.i.us.us.3299 to i64
  %arrayidx.i.us.us.3301 = getelementptr inbounds float, float* %1, i64 %idxprom.i.us.us.3300
  %614 = bitcast float* %arrayidx.i.us.us.3301 to i32*
  %615 = load i32, i32* %614, align 4, !tbaa !12
  %arrayidx16.i.us.us.3302 = getelementptr inbounds float, float* %0, i64 %idxprom.i.us.us.3300
  %616 = bitcast float* %arrayidx16.i.us.us.3302 to i32*
  store i32 %615, i32* %616, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.us.us.3304

if.end.i.us.us.3304:                              ; preds = %if.then.i.us.us.3303, %if.end.i.us.us.2291
  %617 = add nuw nsw i64 %_local_id_x.0.us.us, 4
  %exitcond.not.3 = icmp eq i64 %617, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us.us, !llvm.loop !68
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi2D_kernel2_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float***
  %6 = load float**, float*** %5, align 8
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float***
  %10 = load float**, float*** %9, align 8
  %11 = load float*, float** %10, align 8
  %12 = getelementptr i8*, i8** %0, i64 2
  %13 = bitcast i8** %12 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %mul3.i.i.i = shl i64 %3, 3
  %mul.i.i.i = shl i64 %2, 5
  %sub.i.i = add nsw i32 %15, -1
  %conv.i.i = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %conv.i.i, 0
  %mul.i.i = mul nsw i32 %15, %conv.i.i
  %cmp4.i.i = icmp sgt i32 %sub.i.i, %conv.i.i
  %or.cond = and i1 %cmp.i.i, %cmp4.i.i
  br i1 %or.cond, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %16 = trunc i64 %3 to i32
  %17 = mul i32 %15, %16
  %18 = shl i32 %17, 3
  %19 = trunc i64 %2 to i32
  %20 = shl i32 %19, 5
  %21 = add i32 %18, %20
  %22 = icmp sgt i32 %21, 2147483616
  br i1 %22, label %pregion_for_entry.entry.i.i.us.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %23 = trunc i64 %3 to i32
  %24 = mul i32 %15, %23
  %25 = shl i32 %24, 3
  %26 = trunc i64 %2 to i32
  %27 = shl i32 %26, 5
  %28 = add i32 %25, %27
  %29 = sext i32 %28 to i64
  %scevgep = getelementptr float, float* %7, i64 %29
  %30 = add nsw i64 %29, 32
  %scevgep12 = getelementptr float, float* %7, i64 %30
  %scevgep14 = getelementptr float, float* %11, i64 %29
  %scevgep16 = getelementptr float, float* %11, i64 %30
  %bound0 = icmp ult float* %scevgep, %scevgep16
  %bound1 = icmp ult float* %scevgep14, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat19 = shufflevector <8 x i32> %broadcast.splatinsert18, <8 x i32> undef, <8 x i32> zeroinitializer
  %31 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %32 = or <8 x i32> %31, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %33 = icmp sgt <8 x i32> %32, zeroinitializer
  %34 = icmp sgt <8 x i32> %broadcast.splat19, %32
  %35 = and <8 x i1> %34, %33
  %36 = extractelement <8 x i32> %32, i32 0
  %37 = add nsw i32 %mul.i.i, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %11, i64 %38
  %40 = bitcast float* %39 to <8 x i32>*
  %wide.masked.load = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %40, i32 4, <8 x i1> %35, <8 x i32> undef), !tbaa !12, !alias.scope !69
  %41 = getelementptr inbounds float, float* %7, i64 %38
  %42 = bitcast float* %41 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load, <8 x i32>* %42, i32 4, <8 x i1> %35), !tbaa !12, !alias.scope !72, !noalias !69, !llvm.access.group !21
  %43 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %44 = or <8 x i32> %43, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %45 = icmp sgt <8 x i32> %44, zeroinitializer
  %46 = icmp sgt <8 x i32> %broadcast.splat19, %44
  %47 = and <8 x i1> %46, %45
  %48 = extractelement <8 x i32> %44, i32 0
  %49 = add nsw i32 %mul.i.i, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %11, i64 %50
  %52 = bitcast float* %51 to <8 x i32>*
  %wide.masked.load.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %52, i32 4, <8 x i1> %47, <8 x i32> undef), !tbaa !12, !alias.scope !69
  %53 = getelementptr inbounds float, float* %7, i64 %50
  %54 = bitcast float* %53 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.1, <8 x i32>* %54, i32 4, <8 x i1> %47), !tbaa !12, !alias.scope !72, !noalias !69, !llvm.access.group !21
  %55 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %56 = or <8 x i32> %55, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %57 = icmp sgt <8 x i32> %56, zeroinitializer
  %58 = icmp sgt <8 x i32> %broadcast.splat19, %56
  %59 = and <8 x i1> %58, %57
  %60 = extractelement <8 x i32> %56, i32 0
  %61 = add nsw i32 %mul.i.i, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %11, i64 %62
  %64 = bitcast float* %63 to <8 x i32>*
  %wide.masked.load.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %64, i32 4, <8 x i1> %59, <8 x i32> undef), !tbaa !12, !alias.scope !69
  %65 = getelementptr inbounds float, float* %7, i64 %62
  %66 = bitcast float* %65 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.2, <8 x i32>* %66, i32 4, <8 x i1> %59), !tbaa !12, !alias.scope !72, !noalias !69, !llvm.access.group !21
  %67 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %68 = or <8 x i32> %67, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %69 = icmp sgt <8 x i32> %68, zeroinitializer
  %70 = icmp sgt <8 x i32> %broadcast.splat19, %68
  %71 = and <8 x i1> %70, %69
  %72 = extractelement <8 x i32> %68, i32 0
  %73 = add nsw i32 %mul.i.i, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %11, i64 %74
  %76 = bitcast float* %75 to <8 x i32>*
  %wide.masked.load.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %76, i32 4, <8 x i1> %71, <8 x i32> undef), !tbaa !12, !alias.scope !69
  %77 = getelementptr inbounds float, float* %7, i64 %74
  %78 = bitcast float* %77 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.3, <8 x i32>* %78, i32 4, <8 x i1> %71), !tbaa !12, !alias.scope !72, !noalias !69, !llvm.access.group !21
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us.3304, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ], [ %626, %if.end.i.i.us.us.3304 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv2.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp7.i.i.us.us = icmp sgt i32 %conv2.i.i.us.us, 0
  %cmp11.i.i.us.us = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us
  %or.cond28.i.i.us.us = and i1 %cmp11.i.i.us.us, %cmp7.i.i.us.us
  br i1 %or.cond28.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i, %conv2.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us
  %79 = bitcast float* %arrayidx.i.i.us.us to i32*
  %80 = load i32, i32* %79, align 4, !tbaa !12
  %arrayidx16.i.i.us.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us
  %81 = bitcast float* %arrayidx16.i.i.us.us to i32*
  store i32 %80, i32* %81, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.then.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %82 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1267 = add nuw nsw i64 %82, %mul.i.i.i
  %conv2.i.i.us.us.1268 = trunc i64 %add1.i.i.i.us.us.1267 to i32
  %cmp7.i.i.us.us.1269 = icmp sgt i32 %conv2.i.i.us.us.1268, 0
  %cmp11.i.i.us.us.1270 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.1268
  %or.cond28.i.i.us.us.1271 = and i1 %cmp11.i.i.us.us.1270, %cmp7.i.i.us.us.1269
  br i1 %or.cond28.i.i.us.us.1271, label %if.then.i.i.us.us.1277, label %if.end.i.i.us.us.1278

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us.us.3304
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %83 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.1 = or i32 %83, 1
  %cmp.i.i.1 = icmp sgt i32 %conv.i.i.1, 0
  %mul.i.i.1 = mul nsw i32 %15, %conv.i.i.1
  %cmp4.i.i.1 = icmp sgt i32 %sub.i.i, %conv.i.i.1
  %or.cond4 = and i1 %cmp.i.i.1, %cmp4.i.i.1
  br i1 %or.cond4, label %vector.scevcheck27, label %pregion_for_end.i.i.1

vector.scevcheck27:                               ; preds = %pregion_for_end.i.i
  %84 = mul i32 %15, %conv.i.i.1
  %85 = trunc i64 %2 to i32
  %86 = shl i32 %85, 5
  %87 = add i32 %84, %86
  %88 = icmp sgt i32 %87, 2147483616
  br i1 %88, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %vector.memcheck41

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %vector.memcheck41, %vector.scevcheck27
  br label %pregion_for_entry.entry.i.i.us.us.1

vector.memcheck41:                                ; preds = %vector.scevcheck27
  %89 = mul i32 %15, %conv.i.i.1
  %90 = trunc i64 %2 to i32
  %91 = shl i32 %90, 5
  %92 = add i32 %89, %91
  %93 = sext i32 %92 to i64
  %scevgep29 = getelementptr float, float* %7, i64 %93
  %94 = add nsw i64 %93, 32
  %scevgep31 = getelementptr float, float* %7, i64 %94
  %scevgep33 = getelementptr float, float* %11, i64 %93
  %scevgep35 = getelementptr float, float* %11, i64 %94
  %bound037 = icmp ult float* %scevgep29, %scevgep35
  %bound138 = icmp ult float* %scevgep33, %scevgep31
  %found.conflict39 = and i1 %bound037, %bound138
  br i1 %found.conflict39, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %vector.memcheck41
  %broadcast.splatinsert49 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat50 = shufflevector <8 x i64> %broadcast.splatinsert49, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat52 = shufflevector <8 x i32> %broadcast.splatinsert51, <8 x i32> undef, <8 x i32> zeroinitializer
  %95 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %96 = or <8 x i32> %95, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %97 = icmp sgt <8 x i32> %96, zeroinitializer
  %98 = icmp sgt <8 x i32> %broadcast.splat52, %96
  %99 = and <8 x i1> %98, %97
  %100 = extractelement <8 x i32> %96, i32 0
  %101 = add nsw i32 %mul.i.i.1, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %11, i64 %102
  %104 = bitcast float* %103 to <8 x i32>*
  %wide.masked.load53 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %104, i32 4, <8 x i1> %99, <8 x i32> undef), !tbaa !12, !alias.scope !74
  %105 = getelementptr inbounds float, float* %7, i64 %102
  %106 = bitcast float* %105 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53, <8 x i32>* %106, i32 4, <8 x i1> %99), !tbaa !12, !alias.scope !77, !noalias !74, !llvm.access.group !21
  %107 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %108 = or <8 x i32> %107, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %109 = icmp sgt <8 x i32> %108, zeroinitializer
  %110 = icmp sgt <8 x i32> %broadcast.splat52, %108
  %111 = and <8 x i1> %110, %109
  %112 = extractelement <8 x i32> %108, i32 0
  %113 = add nsw i32 %mul.i.i.1, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %11, i64 %114
  %116 = bitcast float* %115 to <8 x i32>*
  %wide.masked.load53.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %116, i32 4, <8 x i1> %111, <8 x i32> undef), !tbaa !12, !alias.scope !74
  %117 = getelementptr inbounds float, float* %7, i64 %114
  %118 = bitcast float* %117 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53.1, <8 x i32>* %118, i32 4, <8 x i1> %111), !tbaa !12, !alias.scope !77, !noalias !74, !llvm.access.group !21
  %119 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %120 = or <8 x i32> %119, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %121 = icmp sgt <8 x i32> %120, zeroinitializer
  %122 = icmp sgt <8 x i32> %broadcast.splat52, %120
  %123 = and <8 x i1> %122, %121
  %124 = extractelement <8 x i32> %120, i32 0
  %125 = add nsw i32 %mul.i.i.1, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %11, i64 %126
  %128 = bitcast float* %127 to <8 x i32>*
  %wide.masked.load53.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %128, i32 4, <8 x i1> %123, <8 x i32> undef), !tbaa !12, !alias.scope !74
  %129 = getelementptr inbounds float, float* %7, i64 %126
  %130 = bitcast float* %129 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53.2, <8 x i32>* %130, i32 4, <8 x i1> %123), !tbaa !12, !alias.scope !77, !noalias !74, !llvm.access.group !21
  %131 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %132 = or <8 x i32> %131, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %133 = icmp sgt <8 x i32> %132, zeroinitializer
  %134 = icmp sgt <8 x i32> %broadcast.splat52, %132
  %135 = and <8 x i1> %134, %133
  %136 = extractelement <8 x i32> %132, i32 0
  %137 = add nsw i32 %mul.i.i.1, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %11, i64 %138
  %140 = bitcast float* %139 to <8 x i32>*
  %wide.masked.load53.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %140, i32 4, <8 x i1> %135, <8 x i32> undef), !tbaa !12, !alias.scope !74
  %141 = getelementptr inbounds float, float* %7, i64 %138
  %142 = bitcast float* %141 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53.3, <8 x i32>* %142, i32 4, <8 x i1> %135), !tbaa !12, !alias.scope !77, !noalias !74, !llvm.access.group !21
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1.3, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ], [ %614, %if.end.i.i.us.us.1.3 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv2.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp7.i.i.us.us.1 = icmp sgt i32 %conv2.i.i.us.us.1, 0
  %cmp11.i.i.us.us.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.1
  %or.cond28.i.i.us.us.1 = and i1 %cmp11.i.i.us.us.1, %cmp7.i.i.us.us.1
  br i1 %or.cond28.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.1, %conv2.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.1
  %143 = bitcast float* %arrayidx.i.i.us.us.1 to i32*
  %144 = load i32, i32* %143, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.1
  %145 = bitcast float* %arrayidx16.i.i.us.us.1 to i32*
  store i32 %144, i32* %145, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.then.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %146 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %146, %mul.i.i.i
  %conv2.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %cmp7.i.i.us.us.1.1 = icmp sgt i32 %conv2.i.i.us.us.1.1, 0
  %cmp11.i.i.us.us.1.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.1.1
  %or.cond28.i.i.us.us.1.1 = and i1 %cmp11.i.i.us.us.1.1, %cmp7.i.i.us.us.1.1
  br i1 %or.cond28.i.i.us.us.1.1, label %if.then.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.i.i.us.us.1.3
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph42, %pregion_for_end.i.i
  %147 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.2 = or i32 %147, 2
  %cmp.i.i.2 = icmp sgt i32 %conv.i.i.2, 0
  %mul.i.i.2 = mul nsw i32 %15, %conv.i.i.2
  %cmp4.i.i.2 = icmp sgt i32 %sub.i.i, %conv.i.i.2
  %or.cond5 = and i1 %cmp.i.i.2, %cmp4.i.i.2
  br i1 %or.cond5, label %vector.scevcheck61, label %pregion_for_end.i.i.2

vector.scevcheck61:                               ; preds = %pregion_for_end.i.i.1
  %148 = mul i32 %15, %conv.i.i.2
  %149 = trunc i64 %2 to i32
  %150 = shl i32 %149, 5
  %151 = add i32 %148, %150
  %152 = icmp sgt i32 %151, 2147483616
  br i1 %152, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %vector.memcheck75

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %vector.memcheck75, %vector.scevcheck61
  br label %pregion_for_entry.entry.i.i.us.us.2

vector.memcheck75:                                ; preds = %vector.scevcheck61
  %153 = mul i32 %15, %conv.i.i.2
  %154 = trunc i64 %2 to i32
  %155 = shl i32 %154, 5
  %156 = add i32 %153, %155
  %157 = sext i32 %156 to i64
  %scevgep63 = getelementptr float, float* %7, i64 %157
  %158 = add nsw i64 %157, 32
  %scevgep65 = getelementptr float, float* %7, i64 %158
  %scevgep67 = getelementptr float, float* %11, i64 %157
  %scevgep69 = getelementptr float, float* %11, i64 %158
  %bound071 = icmp ult float* %scevgep63, %scevgep69
  %bound172 = icmp ult float* %scevgep67, %scevgep65
  %found.conflict73 = and i1 %bound071, %bound172
  br i1 %found.conflict73, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %vector.memcheck75
  %broadcast.splatinsert83 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat84 = shufflevector <8 x i64> %broadcast.splatinsert83, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert85 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat86 = shufflevector <8 x i32> %broadcast.splatinsert85, <8 x i32> undef, <8 x i32> zeroinitializer
  %159 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %160 = or <8 x i32> %159, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %161 = icmp sgt <8 x i32> %160, zeroinitializer
  %162 = icmp sgt <8 x i32> %broadcast.splat86, %160
  %163 = and <8 x i1> %162, %161
  %164 = extractelement <8 x i32> %160, i32 0
  %165 = add nsw i32 %mul.i.i.2, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %11, i64 %166
  %168 = bitcast float* %167 to <8 x i32>*
  %wide.masked.load87 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %168, i32 4, <8 x i1> %163, <8 x i32> undef), !tbaa !12, !alias.scope !79
  %169 = getelementptr inbounds float, float* %7, i64 %166
  %170 = bitcast float* %169 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87, <8 x i32>* %170, i32 4, <8 x i1> %163), !tbaa !12, !alias.scope !82, !noalias !79, !llvm.access.group !21
  %171 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %172 = or <8 x i32> %171, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %173 = icmp sgt <8 x i32> %172, zeroinitializer
  %174 = icmp sgt <8 x i32> %broadcast.splat86, %172
  %175 = and <8 x i1> %174, %173
  %176 = extractelement <8 x i32> %172, i32 0
  %177 = add nsw i32 %mul.i.i.2, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %11, i64 %178
  %180 = bitcast float* %179 to <8 x i32>*
  %wide.masked.load87.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %180, i32 4, <8 x i1> %175, <8 x i32> undef), !tbaa !12, !alias.scope !79
  %181 = getelementptr inbounds float, float* %7, i64 %178
  %182 = bitcast float* %181 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87.1, <8 x i32>* %182, i32 4, <8 x i1> %175), !tbaa !12, !alias.scope !82, !noalias !79, !llvm.access.group !21
  %183 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %184 = or <8 x i32> %183, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %185 = icmp sgt <8 x i32> %184, zeroinitializer
  %186 = icmp sgt <8 x i32> %broadcast.splat86, %184
  %187 = and <8 x i1> %186, %185
  %188 = extractelement <8 x i32> %184, i32 0
  %189 = add nsw i32 %mul.i.i.2, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %11, i64 %190
  %192 = bitcast float* %191 to <8 x i32>*
  %wide.masked.load87.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %192, i32 4, <8 x i1> %187, <8 x i32> undef), !tbaa !12, !alias.scope !79
  %193 = getelementptr inbounds float, float* %7, i64 %190
  %194 = bitcast float* %193 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87.2, <8 x i32>* %194, i32 4, <8 x i1> %187), !tbaa !12, !alias.scope !82, !noalias !79, !llvm.access.group !21
  %195 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %196 = or <8 x i32> %195, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %197 = icmp sgt <8 x i32> %196, zeroinitializer
  %198 = icmp sgt <8 x i32> %broadcast.splat86, %196
  %199 = and <8 x i1> %198, %197
  %200 = extractelement <8 x i32> %196, i32 0
  %201 = add nsw i32 %mul.i.i.2, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %11, i64 %202
  %204 = bitcast float* %203 to <8 x i32>*
  %wide.masked.load87.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %204, i32 4, <8 x i1> %199, <8 x i32> undef), !tbaa !12, !alias.scope !79
  %205 = getelementptr inbounds float, float* %7, i64 %202
  %206 = bitcast float* %205 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87.3, <8 x i32>* %206, i32 4, <8 x i1> %199), !tbaa !12, !alias.scope !82, !noalias !79, !llvm.access.group !21
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2.3, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ], [ %602, %if.end.i.i.us.us.2.3 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv2.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp7.i.i.us.us.2 = icmp sgt i32 %conv2.i.i.us.us.2, 0
  %cmp11.i.i.us.us.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.2
  %or.cond28.i.i.us.us.2 = and i1 %cmp11.i.i.us.us.2, %cmp7.i.i.us.us.2
  br i1 %or.cond28.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.2, %conv2.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.2
  %207 = bitcast float* %arrayidx.i.i.us.us.2 to i32*
  %208 = load i32, i32* %207, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.2
  %209 = bitcast float* %arrayidx16.i.i.us.us.2 to i32*
  store i32 %208, i32* %209, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.then.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %210 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %210, %mul.i.i.i
  %conv2.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %cmp7.i.i.us.us.2.1 = icmp sgt i32 %conv2.i.i.us.us.2.1, 0
  %cmp11.i.i.us.us.2.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.2.1
  %or.cond28.i.i.us.us.2.1 = and i1 %cmp11.i.i.us.us.2.1, %cmp7.i.i.us.us.2.1
  br i1 %or.cond28.i.i.us.us.2.1, label %if.then.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.i.i.us.us.2.3
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph76, %pregion_for_end.i.i.1
  %211 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.3 = or i32 %211, 3
  %cmp.i.i.3 = icmp sgt i32 %conv.i.i.3, 0
  %mul.i.i.3 = mul nsw i32 %15, %conv.i.i.3
  %cmp4.i.i.3 = icmp sgt i32 %sub.i.i, %conv.i.i.3
  %or.cond6 = and i1 %cmp.i.i.3, %cmp4.i.i.3
  br i1 %or.cond6, label %vector.scevcheck95, label %pregion_for_end.i.i.3

vector.scevcheck95:                               ; preds = %pregion_for_end.i.i.2
  %212 = mul i32 %15, %conv.i.i.3
  %213 = trunc i64 %2 to i32
  %214 = shl i32 %213, 5
  %215 = add i32 %212, %214
  %216 = icmp sgt i32 %215, 2147483616
  br i1 %216, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %vector.memcheck109

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %vector.memcheck109, %vector.scevcheck95
  br label %pregion_for_entry.entry.i.i.us.us.3

vector.memcheck109:                               ; preds = %vector.scevcheck95
  %217 = mul i32 %15, %conv.i.i.3
  %218 = trunc i64 %2 to i32
  %219 = shl i32 %218, 5
  %220 = add i32 %217, %219
  %221 = sext i32 %220 to i64
  %scevgep97 = getelementptr float, float* %7, i64 %221
  %222 = add nsw i64 %221, 32
  %scevgep99 = getelementptr float, float* %7, i64 %222
  %scevgep101 = getelementptr float, float* %11, i64 %221
  %scevgep103 = getelementptr float, float* %11, i64 %222
  %bound0105 = icmp ult float* %scevgep97, %scevgep103
  %bound1106 = icmp ult float* %scevgep101, %scevgep99
  %found.conflict107 = and i1 %bound0105, %bound1106
  br i1 %found.conflict107, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck109
  %broadcast.splatinsert117 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat118 = shufflevector <8 x i64> %broadcast.splatinsert117, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat120 = shufflevector <8 x i32> %broadcast.splatinsert119, <8 x i32> undef, <8 x i32> zeroinitializer
  %223 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %224 = or <8 x i32> %223, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %225 = icmp sgt <8 x i32> %224, zeroinitializer
  %226 = icmp sgt <8 x i32> %broadcast.splat120, %224
  %227 = and <8 x i1> %226, %225
  %228 = extractelement <8 x i32> %224, i32 0
  %229 = add nsw i32 %mul.i.i.3, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float, float* %11, i64 %230
  %232 = bitcast float* %231 to <8 x i32>*
  %wide.masked.load121 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %232, i32 4, <8 x i1> %227, <8 x i32> undef), !tbaa !12, !alias.scope !84
  %233 = getelementptr inbounds float, float* %7, i64 %230
  %234 = bitcast float* %233 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121, <8 x i32>* %234, i32 4, <8 x i1> %227), !tbaa !12, !alias.scope !87, !noalias !84, !llvm.access.group !21
  %235 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %236 = or <8 x i32> %235, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %237 = icmp sgt <8 x i32> %236, zeroinitializer
  %238 = icmp sgt <8 x i32> %broadcast.splat120, %236
  %239 = and <8 x i1> %238, %237
  %240 = extractelement <8 x i32> %236, i32 0
  %241 = add nsw i32 %mul.i.i.3, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %11, i64 %242
  %244 = bitcast float* %243 to <8 x i32>*
  %wide.masked.load121.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %244, i32 4, <8 x i1> %239, <8 x i32> undef), !tbaa !12, !alias.scope !84
  %245 = getelementptr inbounds float, float* %7, i64 %242
  %246 = bitcast float* %245 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121.1, <8 x i32>* %246, i32 4, <8 x i1> %239), !tbaa !12, !alias.scope !87, !noalias !84, !llvm.access.group !21
  %247 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %248 = or <8 x i32> %247, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %249 = icmp sgt <8 x i32> %248, zeroinitializer
  %250 = icmp sgt <8 x i32> %broadcast.splat120, %248
  %251 = and <8 x i1> %250, %249
  %252 = extractelement <8 x i32> %248, i32 0
  %253 = add nsw i32 %mul.i.i.3, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %11, i64 %254
  %256 = bitcast float* %255 to <8 x i32>*
  %wide.masked.load121.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %256, i32 4, <8 x i1> %251, <8 x i32> undef), !tbaa !12, !alias.scope !84
  %257 = getelementptr inbounds float, float* %7, i64 %254
  %258 = bitcast float* %257 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121.2, <8 x i32>* %258, i32 4, <8 x i1> %251), !tbaa !12, !alias.scope !87, !noalias !84, !llvm.access.group !21
  %259 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %260 = or <8 x i32> %259, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %261 = icmp sgt <8 x i32> %260, zeroinitializer
  %262 = icmp sgt <8 x i32> %broadcast.splat120, %260
  %263 = and <8 x i1> %262, %261
  %264 = extractelement <8 x i32> %260, i32 0
  %265 = add nsw i32 %mul.i.i.3, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %11, i64 %266
  %268 = bitcast float* %267 to <8 x i32>*
  %wide.masked.load121.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %268, i32 4, <8 x i1> %263, <8 x i32> undef), !tbaa !12, !alias.scope !84
  %269 = getelementptr inbounds float, float* %7, i64 %266
  %270 = bitcast float* %269 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121.3, <8 x i32>* %270, i32 4, <8 x i1> %263), !tbaa !12, !alias.scope !87, !noalias !84, !llvm.access.group !21
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3.3, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ], [ %590, %if.end.i.i.us.us.3.3 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv2.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp7.i.i.us.us.3 = icmp sgt i32 %conv2.i.i.us.us.3, 0
  %cmp11.i.i.us.us.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.3
  %or.cond28.i.i.us.us.3 = and i1 %cmp11.i.i.us.us.3, %cmp7.i.i.us.us.3
  br i1 %or.cond28.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.3, %conv2.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.3
  %271 = bitcast float* %arrayidx.i.i.us.us.3 to i32*
  %272 = load i32, i32* %271, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.3
  %273 = bitcast float* %arrayidx16.i.i.us.us.3 to i32*
  store i32 %272, i32* %273, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.then.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %274 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %274, %mul.i.i.i
  %conv2.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %cmp7.i.i.us.us.3.1 = icmp sgt i32 %conv2.i.i.us.us.3.1, 0
  %cmp11.i.i.us.us.3.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.3.1
  %or.cond28.i.i.us.us.3.1 = and i1 %cmp11.i.i.us.us.3.1, %cmp7.i.i.us.us.3.1
  br i1 %or.cond28.i.i.us.us.3.1, label %if.then.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.i.i.us.us.3.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph110, %pregion_for_end.i.i.2
  %275 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.4 = or i32 %275, 4
  %cmp.i.i.4 = icmp sgt i32 %conv.i.i.4, 0
  %mul.i.i.4 = mul nsw i32 %15, %conv.i.i.4
  %cmp4.i.i.4 = icmp sgt i32 %sub.i.i, %conv.i.i.4
  %or.cond7 = and i1 %cmp.i.i.4, %cmp4.i.i.4
  br i1 %or.cond7, label %vector.scevcheck129, label %pregion_for_end.i.i.4

vector.scevcheck129:                              ; preds = %pregion_for_end.i.i.3
  %276 = mul i32 %15, %conv.i.i.4
  %277 = trunc i64 %2 to i32
  %278 = shl i32 %277, 5
  %279 = add i32 %276, %278
  %280 = icmp sgt i32 %279, 2147483616
  br i1 %280, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %vector.memcheck143

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %vector.memcheck143, %vector.scevcheck129
  br label %pregion_for_entry.entry.i.i.us.us.4

vector.memcheck143:                               ; preds = %vector.scevcheck129
  %281 = mul i32 %15, %conv.i.i.4
  %282 = trunc i64 %2 to i32
  %283 = shl i32 %282, 5
  %284 = add i32 %281, %283
  %285 = sext i32 %284 to i64
  %scevgep131 = getelementptr float, float* %7, i64 %285
  %286 = add nsw i64 %285, 32
  %scevgep133 = getelementptr float, float* %7, i64 %286
  %scevgep135 = getelementptr float, float* %11, i64 %285
  %scevgep137 = getelementptr float, float* %11, i64 %286
  %bound0139 = icmp ult float* %scevgep131, %scevgep137
  %bound1140 = icmp ult float* %scevgep135, %scevgep133
  %found.conflict141 = and i1 %bound0139, %bound1140
  br i1 %found.conflict141, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck143
  %broadcast.splatinsert151 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat152 = shufflevector <8 x i64> %broadcast.splatinsert151, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert153 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat154 = shufflevector <8 x i32> %broadcast.splatinsert153, <8 x i32> undef, <8 x i32> zeroinitializer
  %287 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %288 = or <8 x i32> %287, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %289 = icmp sgt <8 x i32> %288, zeroinitializer
  %290 = icmp sgt <8 x i32> %broadcast.splat154, %288
  %291 = and <8 x i1> %290, %289
  %292 = extractelement <8 x i32> %288, i32 0
  %293 = add nsw i32 %mul.i.i.4, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %11, i64 %294
  %296 = bitcast float* %295 to <8 x i32>*
  %wide.masked.load155 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %296, i32 4, <8 x i1> %291, <8 x i32> undef), !tbaa !12, !alias.scope !89
  %297 = getelementptr inbounds float, float* %7, i64 %294
  %298 = bitcast float* %297 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155, <8 x i32>* %298, i32 4, <8 x i1> %291), !tbaa !12, !alias.scope !92, !noalias !89, !llvm.access.group !21
  %299 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %300 = or <8 x i32> %299, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %301 = icmp sgt <8 x i32> %300, zeroinitializer
  %302 = icmp sgt <8 x i32> %broadcast.splat154, %300
  %303 = and <8 x i1> %302, %301
  %304 = extractelement <8 x i32> %300, i32 0
  %305 = add nsw i32 %mul.i.i.4, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %11, i64 %306
  %308 = bitcast float* %307 to <8 x i32>*
  %wide.masked.load155.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %308, i32 4, <8 x i1> %303, <8 x i32> undef), !tbaa !12, !alias.scope !89
  %309 = getelementptr inbounds float, float* %7, i64 %306
  %310 = bitcast float* %309 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155.1, <8 x i32>* %310, i32 4, <8 x i1> %303), !tbaa !12, !alias.scope !92, !noalias !89, !llvm.access.group !21
  %311 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %312 = or <8 x i32> %311, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %313 = icmp sgt <8 x i32> %312, zeroinitializer
  %314 = icmp sgt <8 x i32> %broadcast.splat154, %312
  %315 = and <8 x i1> %314, %313
  %316 = extractelement <8 x i32> %312, i32 0
  %317 = add nsw i32 %mul.i.i.4, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float* %11, i64 %318
  %320 = bitcast float* %319 to <8 x i32>*
  %wide.masked.load155.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %320, i32 4, <8 x i1> %315, <8 x i32> undef), !tbaa !12, !alias.scope !89
  %321 = getelementptr inbounds float, float* %7, i64 %318
  %322 = bitcast float* %321 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155.2, <8 x i32>* %322, i32 4, <8 x i1> %315), !tbaa !12, !alias.scope !92, !noalias !89, !llvm.access.group !21
  %323 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %324 = or <8 x i32> %323, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %325 = icmp sgt <8 x i32> %324, zeroinitializer
  %326 = icmp sgt <8 x i32> %broadcast.splat154, %324
  %327 = and <8 x i1> %326, %325
  %328 = extractelement <8 x i32> %324, i32 0
  %329 = add nsw i32 %mul.i.i.4, %328
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %11, i64 %330
  %332 = bitcast float* %331 to <8 x i32>*
  %wide.masked.load155.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %332, i32 4, <8 x i1> %327, <8 x i32> undef), !tbaa !12, !alias.scope !89
  %333 = getelementptr inbounds float, float* %7, i64 %330
  %334 = bitcast float* %333 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155.3, <8 x i32>* %334, i32 4, <8 x i1> %327), !tbaa !12, !alias.scope !92, !noalias !89, !llvm.access.group !21
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4.3, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ], [ %578, %if.end.i.i.us.us.4.3 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv2.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp7.i.i.us.us.4 = icmp sgt i32 %conv2.i.i.us.us.4, 0
  %cmp11.i.i.us.us.4 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.4
  %or.cond28.i.i.us.us.4 = and i1 %cmp11.i.i.us.us.4, %cmp7.i.i.us.us.4
  br i1 %or.cond28.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.4, %conv2.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.4
  %335 = bitcast float* %arrayidx.i.i.us.us.4 to i32*
  %336 = load i32, i32* %335, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.4 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.4
  %337 = bitcast float* %arrayidx16.i.i.us.us.4 to i32*
  store i32 %336, i32* %337, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.then.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %338 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %338, %mul.i.i.i
  %conv2.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %cmp7.i.i.us.us.4.1 = icmp sgt i32 %conv2.i.i.us.us.4.1, 0
  %cmp11.i.i.us.us.4.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.4.1
  %or.cond28.i.i.us.us.4.1 = and i1 %cmp11.i.i.us.us.4.1, %cmp7.i.i.us.us.4.1
  br i1 %or.cond28.i.i.us.us.4.1, label %if.then.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.i.i.us.us.4.3
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph144, %pregion_for_end.i.i.3
  %339 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.5 = or i32 %339, 5
  %cmp.i.i.5 = icmp sgt i32 %conv.i.i.5, 0
  %mul.i.i.5 = mul nsw i32 %15, %conv.i.i.5
  %cmp4.i.i.5 = icmp sgt i32 %sub.i.i, %conv.i.i.5
  %or.cond8 = and i1 %cmp.i.i.5, %cmp4.i.i.5
  br i1 %or.cond8, label %vector.scevcheck163, label %pregion_for_end.i.i.5

vector.scevcheck163:                              ; preds = %pregion_for_end.i.i.4
  %340 = mul i32 %15, %conv.i.i.5
  %341 = trunc i64 %2 to i32
  %342 = shl i32 %341, 5
  %343 = add i32 %340, %342
  %344 = icmp sgt i32 %343, 2147483616
  br i1 %344, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %vector.memcheck177

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %vector.memcheck177, %vector.scevcheck163
  br label %pregion_for_entry.entry.i.i.us.us.5

vector.memcheck177:                               ; preds = %vector.scevcheck163
  %345 = mul i32 %15, %conv.i.i.5
  %346 = trunc i64 %2 to i32
  %347 = shl i32 %346, 5
  %348 = add i32 %345, %347
  %349 = sext i32 %348 to i64
  %scevgep165 = getelementptr float, float* %7, i64 %349
  %350 = add nsw i64 %349, 32
  %scevgep167 = getelementptr float, float* %7, i64 %350
  %scevgep169 = getelementptr float, float* %11, i64 %349
  %scevgep171 = getelementptr float, float* %11, i64 %350
  %bound0173 = icmp ult float* %scevgep165, %scevgep171
  %bound1174 = icmp ult float* %scevgep169, %scevgep167
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck177
  %broadcast.splatinsert185 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat186 = shufflevector <8 x i64> %broadcast.splatinsert185, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert187 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat188 = shufflevector <8 x i32> %broadcast.splatinsert187, <8 x i32> undef, <8 x i32> zeroinitializer
  %351 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %352 = or <8 x i32> %351, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %353 = icmp sgt <8 x i32> %352, zeroinitializer
  %354 = icmp sgt <8 x i32> %broadcast.splat188, %352
  %355 = and <8 x i1> %354, %353
  %356 = extractelement <8 x i32> %352, i32 0
  %357 = add nsw i32 %mul.i.i.5, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds float, float* %11, i64 %358
  %360 = bitcast float* %359 to <8 x i32>*
  %wide.masked.load189 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %360, i32 4, <8 x i1> %355, <8 x i32> undef), !tbaa !12, !alias.scope !94
  %361 = getelementptr inbounds float, float* %7, i64 %358
  %362 = bitcast float* %361 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189, <8 x i32>* %362, i32 4, <8 x i1> %355), !tbaa !12, !alias.scope !97, !noalias !94, !llvm.access.group !21
  %363 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %364 = or <8 x i32> %363, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %365 = icmp sgt <8 x i32> %364, zeroinitializer
  %366 = icmp sgt <8 x i32> %broadcast.splat188, %364
  %367 = and <8 x i1> %366, %365
  %368 = extractelement <8 x i32> %364, i32 0
  %369 = add nsw i32 %mul.i.i.5, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %11, i64 %370
  %372 = bitcast float* %371 to <8 x i32>*
  %wide.masked.load189.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %372, i32 4, <8 x i1> %367, <8 x i32> undef), !tbaa !12, !alias.scope !94
  %373 = getelementptr inbounds float, float* %7, i64 %370
  %374 = bitcast float* %373 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189.1, <8 x i32>* %374, i32 4, <8 x i1> %367), !tbaa !12, !alias.scope !97, !noalias !94, !llvm.access.group !21
  %375 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %376 = or <8 x i32> %375, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %377 = icmp sgt <8 x i32> %376, zeroinitializer
  %378 = icmp sgt <8 x i32> %broadcast.splat188, %376
  %379 = and <8 x i1> %378, %377
  %380 = extractelement <8 x i32> %376, i32 0
  %381 = add nsw i32 %mul.i.i.5, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds float, float* %11, i64 %382
  %384 = bitcast float* %383 to <8 x i32>*
  %wide.masked.load189.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %384, i32 4, <8 x i1> %379, <8 x i32> undef), !tbaa !12, !alias.scope !94
  %385 = getelementptr inbounds float, float* %7, i64 %382
  %386 = bitcast float* %385 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189.2, <8 x i32>* %386, i32 4, <8 x i1> %379), !tbaa !12, !alias.scope !97, !noalias !94, !llvm.access.group !21
  %387 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %388 = or <8 x i32> %387, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %389 = icmp sgt <8 x i32> %388, zeroinitializer
  %390 = icmp sgt <8 x i32> %broadcast.splat188, %388
  %391 = and <8 x i1> %390, %389
  %392 = extractelement <8 x i32> %388, i32 0
  %393 = add nsw i32 %mul.i.i.5, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds float, float* %11, i64 %394
  %396 = bitcast float* %395 to <8 x i32>*
  %wide.masked.load189.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %396, i32 4, <8 x i1> %391, <8 x i32> undef), !tbaa !12, !alias.scope !94
  %397 = getelementptr inbounds float, float* %7, i64 %394
  %398 = bitcast float* %397 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189.3, <8 x i32>* %398, i32 4, <8 x i1> %391), !tbaa !12, !alias.scope !97, !noalias !94, !llvm.access.group !21
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5.3, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ], [ %566, %if.end.i.i.us.us.5.3 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv2.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp7.i.i.us.us.5 = icmp sgt i32 %conv2.i.i.us.us.5, 0
  %cmp11.i.i.us.us.5 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.5
  %or.cond28.i.i.us.us.5 = and i1 %cmp11.i.i.us.us.5, %cmp7.i.i.us.us.5
  br i1 %or.cond28.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.5, %conv2.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.5
  %399 = bitcast float* %arrayidx.i.i.us.us.5 to i32*
  %400 = load i32, i32* %399, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.5 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.5
  %401 = bitcast float* %arrayidx16.i.i.us.us.5 to i32*
  store i32 %400, i32* %401, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.then.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %402 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %402, %mul.i.i.i
  %conv2.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %cmp7.i.i.us.us.5.1 = icmp sgt i32 %conv2.i.i.us.us.5.1, 0
  %cmp11.i.i.us.us.5.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.5.1
  %or.cond28.i.i.us.us.5.1 = and i1 %cmp11.i.i.us.us.5.1, %cmp7.i.i.us.us.5.1
  br i1 %or.cond28.i.i.us.us.5.1, label %if.then.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.i.i.us.us.5.3
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph178, %pregion_for_end.i.i.4
  %403 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.6 = or i32 %403, 6
  %cmp.i.i.6 = icmp sgt i32 %conv.i.i.6, 0
  %mul.i.i.6 = mul nsw i32 %15, %conv.i.i.6
  %cmp4.i.i.6 = icmp sgt i32 %sub.i.i, %conv.i.i.6
  %or.cond9 = and i1 %cmp.i.i.6, %cmp4.i.i.6
  br i1 %or.cond9, label %vector.scevcheck197, label %pregion_for_end.i.i.6

vector.scevcheck197:                              ; preds = %pregion_for_end.i.i.5
  %404 = mul i32 %15, %conv.i.i.6
  %405 = trunc i64 %2 to i32
  %406 = shl i32 %405, 5
  %407 = add i32 %404, %406
  %408 = icmp sgt i32 %407, 2147483616
  br i1 %408, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %vector.memcheck211

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %vector.memcheck211, %vector.scevcheck197
  br label %pregion_for_entry.entry.i.i.us.us.6

vector.memcheck211:                               ; preds = %vector.scevcheck197
  %409 = mul i32 %15, %conv.i.i.6
  %410 = trunc i64 %2 to i32
  %411 = shl i32 %410, 5
  %412 = add i32 %409, %411
  %413 = sext i32 %412 to i64
  %scevgep199 = getelementptr float, float* %7, i64 %413
  %414 = add nsw i64 %413, 32
  %scevgep201 = getelementptr float, float* %7, i64 %414
  %scevgep203 = getelementptr float, float* %11, i64 %413
  %scevgep205 = getelementptr float, float* %11, i64 %414
  %bound0207 = icmp ult float* %scevgep199, %scevgep205
  %bound1208 = icmp ult float* %scevgep203, %scevgep201
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck211
  %broadcast.splatinsert219 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat220 = shufflevector <8 x i64> %broadcast.splatinsert219, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert221 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat222 = shufflevector <8 x i32> %broadcast.splatinsert221, <8 x i32> undef, <8 x i32> zeroinitializer
  %415 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %416 = or <8 x i32> %415, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %417 = icmp sgt <8 x i32> %416, zeroinitializer
  %418 = icmp sgt <8 x i32> %broadcast.splat222, %416
  %419 = and <8 x i1> %418, %417
  %420 = extractelement <8 x i32> %416, i32 0
  %421 = add nsw i32 %mul.i.i.6, %420
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds float, float* %11, i64 %422
  %424 = bitcast float* %423 to <8 x i32>*
  %wide.masked.load223 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %424, i32 4, <8 x i1> %419, <8 x i32> undef), !tbaa !12, !alias.scope !99
  %425 = getelementptr inbounds float, float* %7, i64 %422
  %426 = bitcast float* %425 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223, <8 x i32>* %426, i32 4, <8 x i1> %419), !tbaa !12, !alias.scope !102, !noalias !99, !llvm.access.group !21
  %427 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %428 = or <8 x i32> %427, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %429 = icmp sgt <8 x i32> %428, zeroinitializer
  %430 = icmp sgt <8 x i32> %broadcast.splat222, %428
  %431 = and <8 x i1> %430, %429
  %432 = extractelement <8 x i32> %428, i32 0
  %433 = add nsw i32 %mul.i.i.6, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds float, float* %11, i64 %434
  %436 = bitcast float* %435 to <8 x i32>*
  %wide.masked.load223.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %436, i32 4, <8 x i1> %431, <8 x i32> undef), !tbaa !12, !alias.scope !99
  %437 = getelementptr inbounds float, float* %7, i64 %434
  %438 = bitcast float* %437 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223.1, <8 x i32>* %438, i32 4, <8 x i1> %431), !tbaa !12, !alias.scope !102, !noalias !99, !llvm.access.group !21
  %439 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %440 = or <8 x i32> %439, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %441 = icmp sgt <8 x i32> %440, zeroinitializer
  %442 = icmp sgt <8 x i32> %broadcast.splat222, %440
  %443 = and <8 x i1> %442, %441
  %444 = extractelement <8 x i32> %440, i32 0
  %445 = add nsw i32 %mul.i.i.6, %444
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds float, float* %11, i64 %446
  %448 = bitcast float* %447 to <8 x i32>*
  %wide.masked.load223.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %448, i32 4, <8 x i1> %443, <8 x i32> undef), !tbaa !12, !alias.scope !99
  %449 = getelementptr inbounds float, float* %7, i64 %446
  %450 = bitcast float* %449 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223.2, <8 x i32>* %450, i32 4, <8 x i1> %443), !tbaa !12, !alias.scope !102, !noalias !99, !llvm.access.group !21
  %451 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %452 = or <8 x i32> %451, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %453 = icmp sgt <8 x i32> %452, zeroinitializer
  %454 = icmp sgt <8 x i32> %broadcast.splat222, %452
  %455 = and <8 x i1> %454, %453
  %456 = extractelement <8 x i32> %452, i32 0
  %457 = add nsw i32 %mul.i.i.6, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds float, float* %11, i64 %458
  %460 = bitcast float* %459 to <8 x i32>*
  %wide.masked.load223.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %460, i32 4, <8 x i1> %455, <8 x i32> undef), !tbaa !12, !alias.scope !99
  %461 = getelementptr inbounds float, float* %7, i64 %458
  %462 = bitcast float* %461 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223.3, <8 x i32>* %462, i32 4, <8 x i1> %455), !tbaa !12, !alias.scope !102, !noalias !99, !llvm.access.group !21
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6.3, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ], [ %554, %if.end.i.i.us.us.6.3 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv2.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp7.i.i.us.us.6 = icmp sgt i32 %conv2.i.i.us.us.6, 0
  %cmp11.i.i.us.us.6 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.6
  %or.cond28.i.i.us.us.6 = and i1 %cmp11.i.i.us.us.6, %cmp7.i.i.us.us.6
  br i1 %or.cond28.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.6, %conv2.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.6
  %463 = bitcast float* %arrayidx.i.i.us.us.6 to i32*
  %464 = load i32, i32* %463, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.6 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.6
  %465 = bitcast float* %arrayidx16.i.i.us.us.6 to i32*
  store i32 %464, i32* %465, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.then.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %466 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %466, %mul.i.i.i
  %conv2.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %cmp7.i.i.us.us.6.1 = icmp sgt i32 %conv2.i.i.us.us.6.1, 0
  %cmp11.i.i.us.us.6.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.6.1
  %or.cond28.i.i.us.us.6.1 = and i1 %cmp11.i.i.us.us.6.1, %cmp7.i.i.us.us.6.1
  br i1 %or.cond28.i.i.us.us.6.1, label %if.then.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.i.i.us.us.6.3
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph212, %pregion_for_end.i.i.5
  %467 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.7 = or i32 %467, 7
  %cmp.i.i.7 = icmp sgt i32 %conv.i.i.7, 0
  %mul.i.i.7 = mul nsw i32 %15, %conv.i.i.7
  %cmp4.i.i.7 = icmp sgt i32 %sub.i.i, %conv.i.i.7
  %or.cond10 = and i1 %cmp.i.i.7, %cmp4.i.i.7
  br i1 %or.cond10, label %vector.scevcheck231, label %pregion_for_end.i.i.7

vector.scevcheck231:                              ; preds = %pregion_for_end.i.i.6
  %468 = mul i32 %15, %conv.i.i.7
  %469 = trunc i64 %2 to i32
  %470 = shl i32 %469, 5
  %471 = add i32 %468, %470
  %472 = icmp sgt i32 %471, 2147483616
  br i1 %472, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %vector.memcheck245

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %vector.memcheck245, %vector.scevcheck231
  br label %pregion_for_entry.entry.i.i.us.us.7

vector.memcheck245:                               ; preds = %vector.scevcheck231
  %473 = mul i32 %15, %conv.i.i.7
  %474 = trunc i64 %2 to i32
  %475 = shl i32 %474, 5
  %476 = add i32 %473, %475
  %477 = sext i32 %476 to i64
  %scevgep233 = getelementptr float, float* %7, i64 %477
  %478 = add nsw i64 %477, 32
  %scevgep235 = getelementptr float, float* %7, i64 %478
  %scevgep237 = getelementptr float, float* %11, i64 %477
  %scevgep239 = getelementptr float, float* %11, i64 %478
  %bound0241 = icmp ult float* %scevgep233, %scevgep239
  %bound1242 = icmp ult float* %scevgep237, %scevgep235
  %found.conflict243 = and i1 %bound0241, %bound1242
  br i1 %found.conflict243, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck245
  %broadcast.splatinsert253 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat254 = shufflevector <8 x i64> %broadcast.splatinsert253, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert255 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat256 = shufflevector <8 x i32> %broadcast.splatinsert255, <8 x i32> undef, <8 x i32> zeroinitializer
  %479 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %480 = or <8 x i32> %479, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %481 = icmp sgt <8 x i32> %480, zeroinitializer
  %482 = icmp sgt <8 x i32> %broadcast.splat256, %480
  %483 = and <8 x i1> %482, %481
  %484 = extractelement <8 x i32> %480, i32 0
  %485 = add nsw i32 %mul.i.i.7, %484
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds float, float* %11, i64 %486
  %488 = bitcast float* %487 to <8 x i32>*
  %wide.masked.load257 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %488, i32 4, <8 x i1> %483, <8 x i32> undef), !tbaa !12, !alias.scope !104
  %489 = getelementptr inbounds float, float* %7, i64 %486
  %490 = bitcast float* %489 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257, <8 x i32>* %490, i32 4, <8 x i1> %483), !tbaa !12, !alias.scope !107, !noalias !104, !llvm.access.group !21
  %491 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %492 = or <8 x i32> %491, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %493 = icmp sgt <8 x i32> %492, zeroinitializer
  %494 = icmp sgt <8 x i32> %broadcast.splat256, %492
  %495 = and <8 x i1> %494, %493
  %496 = extractelement <8 x i32> %492, i32 0
  %497 = add nsw i32 %mul.i.i.7, %496
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds float, float* %11, i64 %498
  %500 = bitcast float* %499 to <8 x i32>*
  %wide.masked.load257.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %500, i32 4, <8 x i1> %495, <8 x i32> undef), !tbaa !12, !alias.scope !104
  %501 = getelementptr inbounds float, float* %7, i64 %498
  %502 = bitcast float* %501 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257.1, <8 x i32>* %502, i32 4, <8 x i1> %495), !tbaa !12, !alias.scope !107, !noalias !104, !llvm.access.group !21
  %503 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %504 = or <8 x i32> %503, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %505 = icmp sgt <8 x i32> %504, zeroinitializer
  %506 = icmp sgt <8 x i32> %broadcast.splat256, %504
  %507 = and <8 x i1> %506, %505
  %508 = extractelement <8 x i32> %504, i32 0
  %509 = add nsw i32 %mul.i.i.7, %508
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds float, float* %11, i64 %510
  %512 = bitcast float* %511 to <8 x i32>*
  %wide.masked.load257.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %512, i32 4, <8 x i1> %507, <8 x i32> undef), !tbaa !12, !alias.scope !104
  %513 = getelementptr inbounds float, float* %7, i64 %510
  %514 = bitcast float* %513 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257.2, <8 x i32>* %514, i32 4, <8 x i1> %507), !tbaa !12, !alias.scope !107, !noalias !104, !llvm.access.group !21
  %515 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %516 = or <8 x i32> %515, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %517 = icmp sgt <8 x i32> %516, zeroinitializer
  %518 = icmp sgt <8 x i32> %broadcast.splat256, %516
  %519 = and <8 x i1> %518, %517
  %520 = extractelement <8 x i32> %516, i32 0
  %521 = add nsw i32 %mul.i.i.7, %520
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds float, float* %11, i64 %522
  %524 = bitcast float* %523 to <8 x i32>*
  %wide.masked.load257.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %524, i32 4, <8 x i1> %519, <8 x i32> undef), !tbaa !12, !alias.scope !104
  %525 = getelementptr inbounds float, float* %7, i64 %522
  %526 = bitcast float* %525 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257.3, <8 x i32>* %526, i32 4, <8 x i1> %519), !tbaa !12, !alias.scope !107, !noalias !104, !llvm.access.group !21
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7.3, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ], [ %542, %if.end.i.i.us.us.7.3 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv2.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp7.i.i.us.us.7 = icmp sgt i32 %conv2.i.i.us.us.7, 0
  %cmp11.i.i.us.us.7 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.7
  %or.cond28.i.i.us.us.7 = and i1 %cmp11.i.i.us.us.7, %cmp7.i.i.us.us.7
  br i1 %or.cond28.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.7, %conv2.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.7
  %527 = bitcast float* %arrayidx.i.i.us.us.7 to i32*
  %528 = load i32, i32* %527, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.7 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.7
  %529 = bitcast float* %arrayidx16.i.i.us.us.7 to i32*
  store i32 %528, i32* %529, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.then.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %530 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %530, %mul.i.i.i
  %conv2.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %cmp7.i.i.us.us.7.1 = icmp sgt i32 %conv2.i.i.us.us.7.1, 0
  %cmp11.i.i.us.us.7.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.7.1
  %or.cond28.i.i.us.us.7.1 = and i1 %cmp11.i.i.us.us.7.1, %cmp7.i.i.us.us.7.1
  br i1 %or.cond28.i.i.us.us.7.1, label %if.then.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.i.i.us.us.7.3
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph246, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.us.7.1:                            ; preds = %if.end.i.i.us.us.7
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.7, %conv2.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.7.1
  %531 = bitcast float* %arrayidx.i.i.us.us.7.1 to i32*
  %532 = load i32, i32* %531, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.7.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.7.1
  %533 = bitcast float* %arrayidx16.i.i.us.us.7.1 to i32*
  store i32 %532, i32* %533, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.7.1

if.end.i.i.us.us.7.1:                             ; preds = %if.then.i.i.us.us.7.1, %if.end.i.i.us.us.7
  %534 = or i64 %_local_id_x.i.0.us.us.7, 2
  %add1.i.i.i.us.us.7.2 = add nuw nsw i64 %534, %mul.i.i.i
  %conv2.i.i.us.us.7.2 = trunc i64 %add1.i.i.i.us.us.7.2 to i32
  %cmp7.i.i.us.us.7.2 = icmp sgt i32 %conv2.i.i.us.us.7.2, 0
  %cmp11.i.i.us.us.7.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.7.2
  %or.cond28.i.i.us.us.7.2 = and i1 %cmp11.i.i.us.us.7.2, %cmp7.i.i.us.us.7.2
  br i1 %or.cond28.i.i.us.us.7.2, label %if.then.i.i.us.us.7.2, label %if.end.i.i.us.us.7.2

if.then.i.i.us.us.7.2:                            ; preds = %if.end.i.i.us.us.7.1
  %add.i.i.us.us.7.2 = add nsw i32 %mul.i.i.7, %conv2.i.i.us.us.7.2
  %idxprom.i.i.us.us.7.2 = sext i32 %add.i.i.us.us.7.2 to i64
  %arrayidx.i.i.us.us.7.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.7.2
  %535 = bitcast float* %arrayidx.i.i.us.us.7.2 to i32*
  %536 = load i32, i32* %535, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.7.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.7.2
  %537 = bitcast float* %arrayidx16.i.i.us.us.7.2 to i32*
  store i32 %536, i32* %537, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.7.2

if.end.i.i.us.us.7.2:                             ; preds = %if.then.i.i.us.us.7.2, %if.end.i.i.us.us.7.1
  %538 = or i64 %_local_id_x.i.0.us.us.7, 3
  %add1.i.i.i.us.us.7.3 = add nuw nsw i64 %538, %mul.i.i.i
  %conv2.i.i.us.us.7.3 = trunc i64 %add1.i.i.i.us.us.7.3 to i32
  %cmp7.i.i.us.us.7.3 = icmp sgt i32 %conv2.i.i.us.us.7.3, 0
  %cmp11.i.i.us.us.7.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.7.3
  %or.cond28.i.i.us.us.7.3 = and i1 %cmp11.i.i.us.us.7.3, %cmp7.i.i.us.us.7.3
  br i1 %or.cond28.i.i.us.us.7.3, label %if.then.i.i.us.us.7.3, label %if.end.i.i.us.us.7.3

if.then.i.i.us.us.7.3:                            ; preds = %if.end.i.i.us.us.7.2
  %add.i.i.us.us.7.3 = add nsw i32 %mul.i.i.7, %conv2.i.i.us.us.7.3
  %idxprom.i.i.us.us.7.3 = sext i32 %add.i.i.us.us.7.3 to i64
  %arrayidx.i.i.us.us.7.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.7.3
  %539 = bitcast float* %arrayidx.i.i.us.us.7.3 to i32*
  %540 = load i32, i32* %539, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.7.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.7.3
  %541 = bitcast float* %arrayidx16.i.i.us.us.7.3 to i32*
  store i32 %540, i32* %541, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.7.3

if.end.i.i.us.us.7.3:                             ; preds = %if.then.i.i.us.us.7.3, %if.end.i.i.us.us.7.2
  %542 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 4
  %exitcond.7.not.3 = icmp eq i64 %542, 32
  br i1 %exitcond.7.not.3, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !109

if.then.i.i.us.us.6.1:                            ; preds = %if.end.i.i.us.us.6
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.6, %conv2.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.6.1
  %543 = bitcast float* %arrayidx.i.i.us.us.6.1 to i32*
  %544 = load i32, i32* %543, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.6.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.6.1
  %545 = bitcast float* %arrayidx16.i.i.us.us.6.1 to i32*
  store i32 %544, i32* %545, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.6.1

if.end.i.i.us.us.6.1:                             ; preds = %if.then.i.i.us.us.6.1, %if.end.i.i.us.us.6
  %546 = or i64 %_local_id_x.i.0.us.us.6, 2
  %add1.i.i.i.us.us.6.2 = add nuw nsw i64 %546, %mul.i.i.i
  %conv2.i.i.us.us.6.2 = trunc i64 %add1.i.i.i.us.us.6.2 to i32
  %cmp7.i.i.us.us.6.2 = icmp sgt i32 %conv2.i.i.us.us.6.2, 0
  %cmp11.i.i.us.us.6.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.6.2
  %or.cond28.i.i.us.us.6.2 = and i1 %cmp11.i.i.us.us.6.2, %cmp7.i.i.us.us.6.2
  br i1 %or.cond28.i.i.us.us.6.2, label %if.then.i.i.us.us.6.2, label %if.end.i.i.us.us.6.2

if.then.i.i.us.us.6.2:                            ; preds = %if.end.i.i.us.us.6.1
  %add.i.i.us.us.6.2 = add nsw i32 %mul.i.i.6, %conv2.i.i.us.us.6.2
  %idxprom.i.i.us.us.6.2 = sext i32 %add.i.i.us.us.6.2 to i64
  %arrayidx.i.i.us.us.6.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.6.2
  %547 = bitcast float* %arrayidx.i.i.us.us.6.2 to i32*
  %548 = load i32, i32* %547, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.6.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.6.2
  %549 = bitcast float* %arrayidx16.i.i.us.us.6.2 to i32*
  store i32 %548, i32* %549, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.6.2

if.end.i.i.us.us.6.2:                             ; preds = %if.then.i.i.us.us.6.2, %if.end.i.i.us.us.6.1
  %550 = or i64 %_local_id_x.i.0.us.us.6, 3
  %add1.i.i.i.us.us.6.3 = add nuw nsw i64 %550, %mul.i.i.i
  %conv2.i.i.us.us.6.3 = trunc i64 %add1.i.i.i.us.us.6.3 to i32
  %cmp7.i.i.us.us.6.3 = icmp sgt i32 %conv2.i.i.us.us.6.3, 0
  %cmp11.i.i.us.us.6.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.6.3
  %or.cond28.i.i.us.us.6.3 = and i1 %cmp11.i.i.us.us.6.3, %cmp7.i.i.us.us.6.3
  br i1 %or.cond28.i.i.us.us.6.3, label %if.then.i.i.us.us.6.3, label %if.end.i.i.us.us.6.3

if.then.i.i.us.us.6.3:                            ; preds = %if.end.i.i.us.us.6.2
  %add.i.i.us.us.6.3 = add nsw i32 %mul.i.i.6, %conv2.i.i.us.us.6.3
  %idxprom.i.i.us.us.6.3 = sext i32 %add.i.i.us.us.6.3 to i64
  %arrayidx.i.i.us.us.6.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.6.3
  %551 = bitcast float* %arrayidx.i.i.us.us.6.3 to i32*
  %552 = load i32, i32* %551, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.6.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.6.3
  %553 = bitcast float* %arrayidx16.i.i.us.us.6.3 to i32*
  store i32 %552, i32* %553, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.6.3

if.end.i.i.us.us.6.3:                             ; preds = %if.then.i.i.us.us.6.3, %if.end.i.i.us.us.6.2
  %554 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 4
  %exitcond.6.not.3 = icmp eq i64 %554, 32
  br i1 %exitcond.6.not.3, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !110

if.then.i.i.us.us.5.1:                            ; preds = %if.end.i.i.us.us.5
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.5, %conv2.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.5.1
  %555 = bitcast float* %arrayidx.i.i.us.us.5.1 to i32*
  %556 = load i32, i32* %555, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.5.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.5.1
  %557 = bitcast float* %arrayidx16.i.i.us.us.5.1 to i32*
  store i32 %556, i32* %557, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.5.1

if.end.i.i.us.us.5.1:                             ; preds = %if.then.i.i.us.us.5.1, %if.end.i.i.us.us.5
  %558 = or i64 %_local_id_x.i.0.us.us.5, 2
  %add1.i.i.i.us.us.5.2 = add nuw nsw i64 %558, %mul.i.i.i
  %conv2.i.i.us.us.5.2 = trunc i64 %add1.i.i.i.us.us.5.2 to i32
  %cmp7.i.i.us.us.5.2 = icmp sgt i32 %conv2.i.i.us.us.5.2, 0
  %cmp11.i.i.us.us.5.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.5.2
  %or.cond28.i.i.us.us.5.2 = and i1 %cmp11.i.i.us.us.5.2, %cmp7.i.i.us.us.5.2
  br i1 %or.cond28.i.i.us.us.5.2, label %if.then.i.i.us.us.5.2, label %if.end.i.i.us.us.5.2

if.then.i.i.us.us.5.2:                            ; preds = %if.end.i.i.us.us.5.1
  %add.i.i.us.us.5.2 = add nsw i32 %mul.i.i.5, %conv2.i.i.us.us.5.2
  %idxprom.i.i.us.us.5.2 = sext i32 %add.i.i.us.us.5.2 to i64
  %arrayidx.i.i.us.us.5.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.5.2
  %559 = bitcast float* %arrayidx.i.i.us.us.5.2 to i32*
  %560 = load i32, i32* %559, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.5.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.5.2
  %561 = bitcast float* %arrayidx16.i.i.us.us.5.2 to i32*
  store i32 %560, i32* %561, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.5.2

if.end.i.i.us.us.5.2:                             ; preds = %if.then.i.i.us.us.5.2, %if.end.i.i.us.us.5.1
  %562 = or i64 %_local_id_x.i.0.us.us.5, 3
  %add1.i.i.i.us.us.5.3 = add nuw nsw i64 %562, %mul.i.i.i
  %conv2.i.i.us.us.5.3 = trunc i64 %add1.i.i.i.us.us.5.3 to i32
  %cmp7.i.i.us.us.5.3 = icmp sgt i32 %conv2.i.i.us.us.5.3, 0
  %cmp11.i.i.us.us.5.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.5.3
  %or.cond28.i.i.us.us.5.3 = and i1 %cmp11.i.i.us.us.5.3, %cmp7.i.i.us.us.5.3
  br i1 %or.cond28.i.i.us.us.5.3, label %if.then.i.i.us.us.5.3, label %if.end.i.i.us.us.5.3

if.then.i.i.us.us.5.3:                            ; preds = %if.end.i.i.us.us.5.2
  %add.i.i.us.us.5.3 = add nsw i32 %mul.i.i.5, %conv2.i.i.us.us.5.3
  %idxprom.i.i.us.us.5.3 = sext i32 %add.i.i.us.us.5.3 to i64
  %arrayidx.i.i.us.us.5.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.5.3
  %563 = bitcast float* %arrayidx.i.i.us.us.5.3 to i32*
  %564 = load i32, i32* %563, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.5.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.5.3
  %565 = bitcast float* %arrayidx16.i.i.us.us.5.3 to i32*
  store i32 %564, i32* %565, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.5.3

if.end.i.i.us.us.5.3:                             ; preds = %if.then.i.i.us.us.5.3, %if.end.i.i.us.us.5.2
  %566 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 4
  %exitcond.5.not.3 = icmp eq i64 %566, 32
  br i1 %exitcond.5.not.3, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !111

if.then.i.i.us.us.4.1:                            ; preds = %if.end.i.i.us.us.4
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.4, %conv2.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.4.1
  %567 = bitcast float* %arrayidx.i.i.us.us.4.1 to i32*
  %568 = load i32, i32* %567, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.4.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.4.1
  %569 = bitcast float* %arrayidx16.i.i.us.us.4.1 to i32*
  store i32 %568, i32* %569, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.4.1

if.end.i.i.us.us.4.1:                             ; preds = %if.then.i.i.us.us.4.1, %if.end.i.i.us.us.4
  %570 = or i64 %_local_id_x.i.0.us.us.4, 2
  %add1.i.i.i.us.us.4.2 = add nuw nsw i64 %570, %mul.i.i.i
  %conv2.i.i.us.us.4.2 = trunc i64 %add1.i.i.i.us.us.4.2 to i32
  %cmp7.i.i.us.us.4.2 = icmp sgt i32 %conv2.i.i.us.us.4.2, 0
  %cmp11.i.i.us.us.4.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.4.2
  %or.cond28.i.i.us.us.4.2 = and i1 %cmp11.i.i.us.us.4.2, %cmp7.i.i.us.us.4.2
  br i1 %or.cond28.i.i.us.us.4.2, label %if.then.i.i.us.us.4.2, label %if.end.i.i.us.us.4.2

if.then.i.i.us.us.4.2:                            ; preds = %if.end.i.i.us.us.4.1
  %add.i.i.us.us.4.2 = add nsw i32 %mul.i.i.4, %conv2.i.i.us.us.4.2
  %idxprom.i.i.us.us.4.2 = sext i32 %add.i.i.us.us.4.2 to i64
  %arrayidx.i.i.us.us.4.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.4.2
  %571 = bitcast float* %arrayidx.i.i.us.us.4.2 to i32*
  %572 = load i32, i32* %571, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.4.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.4.2
  %573 = bitcast float* %arrayidx16.i.i.us.us.4.2 to i32*
  store i32 %572, i32* %573, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.4.2

if.end.i.i.us.us.4.2:                             ; preds = %if.then.i.i.us.us.4.2, %if.end.i.i.us.us.4.1
  %574 = or i64 %_local_id_x.i.0.us.us.4, 3
  %add1.i.i.i.us.us.4.3 = add nuw nsw i64 %574, %mul.i.i.i
  %conv2.i.i.us.us.4.3 = trunc i64 %add1.i.i.i.us.us.4.3 to i32
  %cmp7.i.i.us.us.4.3 = icmp sgt i32 %conv2.i.i.us.us.4.3, 0
  %cmp11.i.i.us.us.4.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.4.3
  %or.cond28.i.i.us.us.4.3 = and i1 %cmp11.i.i.us.us.4.3, %cmp7.i.i.us.us.4.3
  br i1 %or.cond28.i.i.us.us.4.3, label %if.then.i.i.us.us.4.3, label %if.end.i.i.us.us.4.3

if.then.i.i.us.us.4.3:                            ; preds = %if.end.i.i.us.us.4.2
  %add.i.i.us.us.4.3 = add nsw i32 %mul.i.i.4, %conv2.i.i.us.us.4.3
  %idxprom.i.i.us.us.4.3 = sext i32 %add.i.i.us.us.4.3 to i64
  %arrayidx.i.i.us.us.4.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.4.3
  %575 = bitcast float* %arrayidx.i.i.us.us.4.3 to i32*
  %576 = load i32, i32* %575, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.4.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.4.3
  %577 = bitcast float* %arrayidx16.i.i.us.us.4.3 to i32*
  store i32 %576, i32* %577, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.4.3

if.end.i.i.us.us.4.3:                             ; preds = %if.then.i.i.us.us.4.3, %if.end.i.i.us.us.4.2
  %578 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 4
  %exitcond.4.not.3 = icmp eq i64 %578, 32
  br i1 %exitcond.4.not.3, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !112

if.then.i.i.us.us.3.1:                            ; preds = %if.end.i.i.us.us.3
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.3, %conv2.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.3.1
  %579 = bitcast float* %arrayidx.i.i.us.us.3.1 to i32*
  %580 = load i32, i32* %579, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.3.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.3.1
  %581 = bitcast float* %arrayidx16.i.i.us.us.3.1 to i32*
  store i32 %580, i32* %581, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.3.1

if.end.i.i.us.us.3.1:                             ; preds = %if.then.i.i.us.us.3.1, %if.end.i.i.us.us.3
  %582 = or i64 %_local_id_x.i.0.us.us.3, 2
  %add1.i.i.i.us.us.3.2 = add nuw nsw i64 %582, %mul.i.i.i
  %conv2.i.i.us.us.3.2 = trunc i64 %add1.i.i.i.us.us.3.2 to i32
  %cmp7.i.i.us.us.3.2 = icmp sgt i32 %conv2.i.i.us.us.3.2, 0
  %cmp11.i.i.us.us.3.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.3.2
  %or.cond28.i.i.us.us.3.2 = and i1 %cmp11.i.i.us.us.3.2, %cmp7.i.i.us.us.3.2
  br i1 %or.cond28.i.i.us.us.3.2, label %if.then.i.i.us.us.3.2, label %if.end.i.i.us.us.3.2

if.then.i.i.us.us.3.2:                            ; preds = %if.end.i.i.us.us.3.1
  %add.i.i.us.us.3.2 = add nsw i32 %mul.i.i.3, %conv2.i.i.us.us.3.2
  %idxprom.i.i.us.us.3.2 = sext i32 %add.i.i.us.us.3.2 to i64
  %arrayidx.i.i.us.us.3.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.3.2
  %583 = bitcast float* %arrayidx.i.i.us.us.3.2 to i32*
  %584 = load i32, i32* %583, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.3.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.3.2
  %585 = bitcast float* %arrayidx16.i.i.us.us.3.2 to i32*
  store i32 %584, i32* %585, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.3.2

if.end.i.i.us.us.3.2:                             ; preds = %if.then.i.i.us.us.3.2, %if.end.i.i.us.us.3.1
  %586 = or i64 %_local_id_x.i.0.us.us.3, 3
  %add1.i.i.i.us.us.3.3 = add nuw nsw i64 %586, %mul.i.i.i
  %conv2.i.i.us.us.3.3 = trunc i64 %add1.i.i.i.us.us.3.3 to i32
  %cmp7.i.i.us.us.3.3 = icmp sgt i32 %conv2.i.i.us.us.3.3, 0
  %cmp11.i.i.us.us.3.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.3.3
  %or.cond28.i.i.us.us.3.3 = and i1 %cmp11.i.i.us.us.3.3, %cmp7.i.i.us.us.3.3
  br i1 %or.cond28.i.i.us.us.3.3, label %if.then.i.i.us.us.3.3, label %if.end.i.i.us.us.3.3

if.then.i.i.us.us.3.3:                            ; preds = %if.end.i.i.us.us.3.2
  %add.i.i.us.us.3.3 = add nsw i32 %mul.i.i.3, %conv2.i.i.us.us.3.3
  %idxprom.i.i.us.us.3.3 = sext i32 %add.i.i.us.us.3.3 to i64
  %arrayidx.i.i.us.us.3.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.3.3
  %587 = bitcast float* %arrayidx.i.i.us.us.3.3 to i32*
  %588 = load i32, i32* %587, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.3.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.3.3
  %589 = bitcast float* %arrayidx16.i.i.us.us.3.3 to i32*
  store i32 %588, i32* %589, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.3.3

if.end.i.i.us.us.3.3:                             ; preds = %if.then.i.i.us.us.3.3, %if.end.i.i.us.us.3.2
  %590 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 4
  %exitcond.3.not.3 = icmp eq i64 %590, 32
  br i1 %exitcond.3.not.3, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !113

if.then.i.i.us.us.2.1:                            ; preds = %if.end.i.i.us.us.2
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.2, %conv2.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.2.1
  %591 = bitcast float* %arrayidx.i.i.us.us.2.1 to i32*
  %592 = load i32, i32* %591, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.2.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.2.1
  %593 = bitcast float* %arrayidx16.i.i.us.us.2.1 to i32*
  store i32 %592, i32* %593, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.2.1

if.end.i.i.us.us.2.1:                             ; preds = %if.then.i.i.us.us.2.1, %if.end.i.i.us.us.2
  %594 = or i64 %_local_id_x.i.0.us.us.2, 2
  %add1.i.i.i.us.us.2.2 = add nuw nsw i64 %594, %mul.i.i.i
  %conv2.i.i.us.us.2.2 = trunc i64 %add1.i.i.i.us.us.2.2 to i32
  %cmp7.i.i.us.us.2.2 = icmp sgt i32 %conv2.i.i.us.us.2.2, 0
  %cmp11.i.i.us.us.2.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.2.2
  %or.cond28.i.i.us.us.2.2 = and i1 %cmp11.i.i.us.us.2.2, %cmp7.i.i.us.us.2.2
  br i1 %or.cond28.i.i.us.us.2.2, label %if.then.i.i.us.us.2.2, label %if.end.i.i.us.us.2.2

if.then.i.i.us.us.2.2:                            ; preds = %if.end.i.i.us.us.2.1
  %add.i.i.us.us.2.2 = add nsw i32 %mul.i.i.2, %conv2.i.i.us.us.2.2
  %idxprom.i.i.us.us.2.2 = sext i32 %add.i.i.us.us.2.2 to i64
  %arrayidx.i.i.us.us.2.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.2.2
  %595 = bitcast float* %arrayidx.i.i.us.us.2.2 to i32*
  %596 = load i32, i32* %595, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.2.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.2.2
  %597 = bitcast float* %arrayidx16.i.i.us.us.2.2 to i32*
  store i32 %596, i32* %597, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.2.2

if.end.i.i.us.us.2.2:                             ; preds = %if.then.i.i.us.us.2.2, %if.end.i.i.us.us.2.1
  %598 = or i64 %_local_id_x.i.0.us.us.2, 3
  %add1.i.i.i.us.us.2.3 = add nuw nsw i64 %598, %mul.i.i.i
  %conv2.i.i.us.us.2.3 = trunc i64 %add1.i.i.i.us.us.2.3 to i32
  %cmp7.i.i.us.us.2.3 = icmp sgt i32 %conv2.i.i.us.us.2.3, 0
  %cmp11.i.i.us.us.2.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.2.3
  %or.cond28.i.i.us.us.2.3 = and i1 %cmp11.i.i.us.us.2.3, %cmp7.i.i.us.us.2.3
  br i1 %or.cond28.i.i.us.us.2.3, label %if.then.i.i.us.us.2.3, label %if.end.i.i.us.us.2.3

if.then.i.i.us.us.2.3:                            ; preds = %if.end.i.i.us.us.2.2
  %add.i.i.us.us.2.3 = add nsw i32 %mul.i.i.2, %conv2.i.i.us.us.2.3
  %idxprom.i.i.us.us.2.3 = sext i32 %add.i.i.us.us.2.3 to i64
  %arrayidx.i.i.us.us.2.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.2.3
  %599 = bitcast float* %arrayidx.i.i.us.us.2.3 to i32*
  %600 = load i32, i32* %599, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.2.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.2.3
  %601 = bitcast float* %arrayidx16.i.i.us.us.2.3 to i32*
  store i32 %600, i32* %601, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.2.3

if.end.i.i.us.us.2.3:                             ; preds = %if.then.i.i.us.us.2.3, %if.end.i.i.us.us.2.2
  %602 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 4
  %exitcond.2.not.3 = icmp eq i64 %602, 32
  br i1 %exitcond.2.not.3, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !114

if.then.i.i.us.us.1.1:                            ; preds = %if.end.i.i.us.us.1
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.1, %conv2.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.1.1
  %603 = bitcast float* %arrayidx.i.i.us.us.1.1 to i32*
  %604 = load i32, i32* %603, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.1.1 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.1.1
  %605 = bitcast float* %arrayidx16.i.i.us.us.1.1 to i32*
  store i32 %604, i32* %605, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.1.1

if.end.i.i.us.us.1.1:                             ; preds = %if.then.i.i.us.us.1.1, %if.end.i.i.us.us.1
  %606 = or i64 %_local_id_x.i.0.us.us.1, 2
  %add1.i.i.i.us.us.1.2 = add nuw nsw i64 %606, %mul.i.i.i
  %conv2.i.i.us.us.1.2 = trunc i64 %add1.i.i.i.us.us.1.2 to i32
  %cmp7.i.i.us.us.1.2 = icmp sgt i32 %conv2.i.i.us.us.1.2, 0
  %cmp11.i.i.us.us.1.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.1.2
  %or.cond28.i.i.us.us.1.2 = and i1 %cmp11.i.i.us.us.1.2, %cmp7.i.i.us.us.1.2
  br i1 %or.cond28.i.i.us.us.1.2, label %if.then.i.i.us.us.1.2, label %if.end.i.i.us.us.1.2

if.then.i.i.us.us.1.2:                            ; preds = %if.end.i.i.us.us.1.1
  %add.i.i.us.us.1.2 = add nsw i32 %mul.i.i.1, %conv2.i.i.us.us.1.2
  %idxprom.i.i.us.us.1.2 = sext i32 %add.i.i.us.us.1.2 to i64
  %arrayidx.i.i.us.us.1.2 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.1.2
  %607 = bitcast float* %arrayidx.i.i.us.us.1.2 to i32*
  %608 = load i32, i32* %607, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.1.2 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.1.2
  %609 = bitcast float* %arrayidx16.i.i.us.us.1.2 to i32*
  store i32 %608, i32* %609, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.1.2

if.end.i.i.us.us.1.2:                             ; preds = %if.then.i.i.us.us.1.2, %if.end.i.i.us.us.1.1
  %610 = or i64 %_local_id_x.i.0.us.us.1, 3
  %add1.i.i.i.us.us.1.3 = add nuw nsw i64 %610, %mul.i.i.i
  %conv2.i.i.us.us.1.3 = trunc i64 %add1.i.i.i.us.us.1.3 to i32
  %cmp7.i.i.us.us.1.3 = icmp sgt i32 %conv2.i.i.us.us.1.3, 0
  %cmp11.i.i.us.us.1.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.1.3
  %or.cond28.i.i.us.us.1.3 = and i1 %cmp11.i.i.us.us.1.3, %cmp7.i.i.us.us.1.3
  br i1 %or.cond28.i.i.us.us.1.3, label %if.then.i.i.us.us.1.3, label %if.end.i.i.us.us.1.3

if.then.i.i.us.us.1.3:                            ; preds = %if.end.i.i.us.us.1.2
  %add.i.i.us.us.1.3 = add nsw i32 %mul.i.i.1, %conv2.i.i.us.us.1.3
  %idxprom.i.i.us.us.1.3 = sext i32 %add.i.i.us.us.1.3 to i64
  %arrayidx.i.i.us.us.1.3 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.1.3
  %611 = bitcast float* %arrayidx.i.i.us.us.1.3 to i32*
  %612 = load i32, i32* %611, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.1.3 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.1.3
  %613 = bitcast float* %arrayidx16.i.i.us.us.1.3 to i32*
  store i32 %612, i32* %613, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.1.3

if.end.i.i.us.us.1.3:                             ; preds = %if.then.i.i.us.us.1.3, %if.end.i.i.us.us.1.2
  %614 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 4
  %exitcond.1.not.3 = icmp eq i64 %614, 32
  br i1 %exitcond.1.not.3, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !115

if.then.i.i.us.us.1277:                           ; preds = %if.end.i.i.us.us
  %add.i.i.us.us.1273 = add nsw i32 %mul.i.i, %conv2.i.i.us.us.1268
  %idxprom.i.i.us.us.1274 = sext i32 %add.i.i.us.us.1273 to i64
  %arrayidx.i.i.us.us.1275 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.1274
  %615 = bitcast float* %arrayidx.i.i.us.us.1275 to i32*
  %616 = load i32, i32* %615, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.1276 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.1274
  %617 = bitcast float* %arrayidx16.i.i.us.us.1276 to i32*
  store i32 %616, i32* %617, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.1278

if.end.i.i.us.us.1278:                            ; preds = %if.then.i.i.us.us.1277, %if.end.i.i.us.us
  %618 = or i64 %_local_id_x.i.0.us.us, 2
  %add1.i.i.i.us.us.2280 = add nuw nsw i64 %618, %mul.i.i.i
  %conv2.i.i.us.us.2281 = trunc i64 %add1.i.i.i.us.us.2280 to i32
  %cmp7.i.i.us.us.2282 = icmp sgt i32 %conv2.i.i.us.us.2281, 0
  %cmp11.i.i.us.us.2283 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.2281
  %or.cond28.i.i.us.us.2284 = and i1 %cmp11.i.i.us.us.2283, %cmp7.i.i.us.us.2282
  br i1 %or.cond28.i.i.us.us.2284, label %if.then.i.i.us.us.2290, label %if.end.i.i.us.us.2291

if.then.i.i.us.us.2290:                           ; preds = %if.end.i.i.us.us.1278
  %add.i.i.us.us.2286 = add nsw i32 %mul.i.i, %conv2.i.i.us.us.2281
  %idxprom.i.i.us.us.2287 = sext i32 %add.i.i.us.us.2286 to i64
  %arrayidx.i.i.us.us.2288 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.2287
  %619 = bitcast float* %arrayidx.i.i.us.us.2288 to i32*
  %620 = load i32, i32* %619, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.2289 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.2287
  %621 = bitcast float* %arrayidx16.i.i.us.us.2289 to i32*
  store i32 %620, i32* %621, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.2291

if.end.i.i.us.us.2291:                            ; preds = %if.then.i.i.us.us.2290, %if.end.i.i.us.us.1278
  %622 = or i64 %_local_id_x.i.0.us.us, 3
  %add1.i.i.i.us.us.3293 = add nuw nsw i64 %622, %mul.i.i.i
  %conv2.i.i.us.us.3294 = trunc i64 %add1.i.i.i.us.us.3293 to i32
  %cmp7.i.i.us.us.3295 = icmp sgt i32 %conv2.i.i.us.us.3294, 0
  %cmp11.i.i.us.us.3296 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.3294
  %or.cond28.i.i.us.us.3297 = and i1 %cmp11.i.i.us.us.3296, %cmp7.i.i.us.us.3295
  br i1 %or.cond28.i.i.us.us.3297, label %if.then.i.i.us.us.3303, label %if.end.i.i.us.us.3304

if.then.i.i.us.us.3303:                           ; preds = %if.end.i.i.us.us.2291
  %add.i.i.us.us.3299 = add nsw i32 %mul.i.i, %conv2.i.i.us.us.3294
  %idxprom.i.i.us.us.3300 = sext i32 %add.i.i.us.us.3299 to i64
  %arrayidx.i.i.us.us.3301 = getelementptr inbounds float, float* %11, i64 %idxprom.i.i.us.us.3300
  %623 = bitcast float* %arrayidx.i.i.us.us.3301 to i32*
  %624 = load i32, i32* %623, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.3302 = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us.us.3300
  %625 = bitcast float* %arrayidx16.i.i.us.us.3302 to i32*
  store i32 %624, i32* %625, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.3304

if.end.i.i.us.us.3304:                            ; preds = %if.then.i.i.us.us.3303, %if.end.i.i.us.us.2291
  %626 = add nuw nsw i64 %_local_id_x.i.0.us.us, 4
  %exitcond.not.3 = icmp eq i64 %626, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !116
}

; Function Attrs: nofree norecurse nounwind
define void @_pocl_kernel_runJacobi2D_kernel2_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #1 {
pregion_for_entry.pregion_for_init.i.i:
  %5 = bitcast i8** %0 to float**
  %6 = load float*, float** %5, align 8
  %7 = getelementptr i8*, i8** %0, i64 1
  %8 = bitcast i8** %7 to float**
  %9 = load float*, float** %8, align 8
  %10 = getelementptr i8*, i8** %0, i64 2
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %12, align 4
  %mul3.i.i.i = shl i64 %3, 3
  %mul.i.i.i = shl i64 %2, 5
  %sub.i.i = add nsw i32 %13, -1
  %conv.i.i = trunc i64 %mul3.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %conv.i.i, 0
  %mul.i.i = mul nsw i32 %13, %conv.i.i
  %cmp4.i.i = icmp sgt i32 %sub.i.i, %conv.i.i
  %or.cond = and i1 %cmp.i.i, %cmp4.i.i
  br i1 %or.cond, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %14 = trunc i64 %3 to i32
  %15 = mul i32 %13, %14
  %16 = shl i32 %15, 3
  %17 = trunc i64 %2 to i32
  %18 = shl i32 %17, 5
  %19 = add i32 %16, %18
  %20 = icmp sgt i32 %19, 2147483616
  br i1 %20, label %pregion_for_entry.entry.i.i.us.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.us.preheader:      ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %21 = trunc i64 %3 to i32
  %22 = mul i32 %13, %21
  %23 = shl i32 %22, 3
  %24 = trunc i64 %2 to i32
  %25 = shl i32 %24, 5
  %26 = add i32 %23, %25
  %27 = sext i32 %26 to i64
  %scevgep = getelementptr float, float* %6, i64 %27
  %28 = add nsw i64 %27, 32
  %scevgep12 = getelementptr float, float* %6, i64 %28
  %scevgep14 = getelementptr float, float* %9, i64 %27
  %scevgep16 = getelementptr float, float* %9, i64 %28
  %bound0 = icmp ult float* %scevgep, %scevgep16
  %bound1 = icmp ult float* %scevgep14, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %pregion_for_entry.entry.i.i.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert18 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat19 = shufflevector <8 x i32> %broadcast.splatinsert18, <8 x i32> undef, <8 x i32> zeroinitializer
  %29 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %30 = or <8 x i32> %29, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %31 = icmp sgt <8 x i32> %30, zeroinitializer
  %32 = icmp sgt <8 x i32> %broadcast.splat19, %30
  %33 = and <8 x i1> %32, %31
  %34 = extractelement <8 x i32> %30, i32 0
  %35 = add nsw i32 %mul.i.i, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %9, i64 %36
  %38 = bitcast float* %37 to <8 x i32>*
  %wide.masked.load = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %38, i32 4, <8 x i1> %33, <8 x i32> undef), !tbaa !12, !alias.scope !117
  %39 = getelementptr inbounds float, float* %6, i64 %36
  %40 = bitcast float* %39 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load, <8 x i32>* %40, i32 4, <8 x i1> %33), !tbaa !12, !alias.scope !120, !noalias !117, !llvm.access.group !21
  %41 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %42 = or <8 x i32> %41, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %43 = icmp sgt <8 x i32> %42, zeroinitializer
  %44 = icmp sgt <8 x i32> %broadcast.splat19, %42
  %45 = and <8 x i1> %44, %43
  %46 = extractelement <8 x i32> %42, i32 0
  %47 = add nsw i32 %mul.i.i, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %9, i64 %48
  %50 = bitcast float* %49 to <8 x i32>*
  %wide.masked.load.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %50, i32 4, <8 x i1> %45, <8 x i32> undef), !tbaa !12, !alias.scope !117
  %51 = getelementptr inbounds float, float* %6, i64 %48
  %52 = bitcast float* %51 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.1, <8 x i32>* %52, i32 4, <8 x i1> %45), !tbaa !12, !alias.scope !120, !noalias !117, !llvm.access.group !21
  %53 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %54 = or <8 x i32> %53, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %55 = icmp sgt <8 x i32> %54, zeroinitializer
  %56 = icmp sgt <8 x i32> %broadcast.splat19, %54
  %57 = and <8 x i1> %56, %55
  %58 = extractelement <8 x i32> %54, i32 0
  %59 = add nsw i32 %mul.i.i, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %9, i64 %60
  %62 = bitcast float* %61 to <8 x i32>*
  %wide.masked.load.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %62, i32 4, <8 x i1> %57, <8 x i32> undef), !tbaa !12, !alias.scope !117
  %63 = getelementptr inbounds float, float* %6, i64 %60
  %64 = bitcast float* %63 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.2, <8 x i32>* %64, i32 4, <8 x i1> %57), !tbaa !12, !alias.scope !120, !noalias !117, !llvm.access.group !21
  %65 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %66 = or <8 x i32> %65, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %67 = icmp sgt <8 x i32> %66, zeroinitializer
  %68 = icmp sgt <8 x i32> %broadcast.splat19, %66
  %69 = and <8 x i1> %68, %67
  %70 = extractelement <8 x i32> %66, i32 0
  %71 = add nsw i32 %mul.i.i, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %9, i64 %72
  %74 = bitcast float* %73 to <8 x i32>*
  %wide.masked.load.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %74, i32 4, <8 x i1> %69, <8 x i32> undef), !tbaa !12, !alias.scope !117
  %75 = getelementptr inbounds float, float* %6, i64 %72
  %76 = bitcast float* %75 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load.3, <8 x i32>* %76, i32 4, <8 x i1> %69), !tbaa !12, !alias.scope !120, !noalias !117, !llvm.access.group !21
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us.us:                ; preds = %if.end.i.i.us.us.3304, %pregion_for_entry.entry.i.i.us.us.preheader
  %_local_id_x.i.0.us.us = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.preheader ], [ %624, %if.end.i.i.us.us.3304 ]
  %add1.i.i.i.us.us = add nuw nsw i64 %_local_id_x.i.0.us.us, %mul.i.i.i
  %conv2.i.i.us.us = trunc i64 %add1.i.i.i.us.us to i32
  %cmp7.i.i.us.us = icmp sgt i32 %conv2.i.i.us.us, 0
  %cmp11.i.i.us.us = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us
  %or.cond28.i.i.us.us = and i1 %cmp11.i.i.us.us, %cmp7.i.i.us.us
  br i1 %or.cond28.i.i.us.us, label %if.then.i.i.us.us, label %if.end.i.i.us.us

if.then.i.i.us.us:                                ; preds = %pregion_for_entry.entry.i.i.us.us
  %add.i.i.us.us = add nsw i32 %mul.i.i, %conv2.i.i.us.us
  %idxprom.i.i.us.us = sext i32 %add.i.i.us.us to i64
  %arrayidx.i.i.us.us = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us
  %77 = bitcast float* %arrayidx.i.i.us.us to i32*
  %78 = load i32, i32* %77, align 4, !tbaa !12
  %arrayidx16.i.i.us.us = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us
  %79 = bitcast float* %arrayidx16.i.i.us.us to i32*
  store i32 %78, i32* %79, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us

if.end.i.i.us.us:                                 ; preds = %if.then.i.i.us.us, %pregion_for_entry.entry.i.i.us.us
  %80 = or i64 %_local_id_x.i.0.us.us, 1
  %add1.i.i.i.us.us.1267 = add nuw nsw i64 %80, %mul.i.i.i
  %conv2.i.i.us.us.1268 = trunc i64 %add1.i.i.i.us.us.1267 to i32
  %cmp7.i.i.us.us.1269 = icmp sgt i32 %conv2.i.i.us.us.1268, 0
  %cmp11.i.i.us.us.1270 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.1268
  %or.cond28.i.i.us.us.1271 = and i1 %cmp11.i.i.us.us.1270, %cmp7.i.i.us.us.1269
  br i1 %or.cond28.i.i.us.us.1271, label %if.then.i.i.us.us.1277, label %if.end.i.i.us.us.1278

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.i.i.us.us.3304
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.ph, %pregion_for_entry.pregion_for_init.i.i
  %81 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.1 = or i32 %81, 1
  %cmp.i.i.1 = icmp sgt i32 %conv.i.i.1, 0
  %mul.i.i.1 = mul nsw i32 %13, %conv.i.i.1
  %cmp4.i.i.1 = icmp sgt i32 %sub.i.i, %conv.i.i.1
  %or.cond4 = and i1 %cmp.i.i.1, %cmp4.i.i.1
  br i1 %or.cond4, label %vector.scevcheck27, label %pregion_for_end.i.i.1

vector.scevcheck27:                               ; preds = %pregion_for_end.i.i
  %82 = mul i32 %13, %conv.i.i.1
  %83 = trunc i64 %2 to i32
  %84 = shl i32 %83, 5
  %85 = add i32 %82, %84
  %86 = icmp sgt i32 %85, 2147483616
  br i1 %86, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %vector.memcheck41

pregion_for_entry.entry.i.i.us.us.1.preheader:    ; preds = %vector.memcheck41, %vector.scevcheck27
  br label %pregion_for_entry.entry.i.i.us.us.1

vector.memcheck41:                                ; preds = %vector.scevcheck27
  %87 = mul i32 %13, %conv.i.i.1
  %88 = trunc i64 %2 to i32
  %89 = shl i32 %88, 5
  %90 = add i32 %87, %89
  %91 = sext i32 %90 to i64
  %scevgep29 = getelementptr float, float* %6, i64 %91
  %92 = add nsw i64 %91, 32
  %scevgep31 = getelementptr float, float* %6, i64 %92
  %scevgep33 = getelementptr float, float* %9, i64 %91
  %scevgep35 = getelementptr float, float* %9, i64 %92
  %bound037 = icmp ult float* %scevgep29, %scevgep35
  %bound138 = icmp ult float* %scevgep33, %scevgep31
  %found.conflict39 = and i1 %bound037, %bound138
  br i1 %found.conflict39, label %pregion_for_entry.entry.i.i.us.us.1.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %vector.memcheck41
  %broadcast.splatinsert49 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat50 = shufflevector <8 x i64> %broadcast.splatinsert49, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat52 = shufflevector <8 x i32> %broadcast.splatinsert51, <8 x i32> undef, <8 x i32> zeroinitializer
  %93 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %94 = or <8 x i32> %93, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %95 = icmp sgt <8 x i32> %94, zeroinitializer
  %96 = icmp sgt <8 x i32> %broadcast.splat52, %94
  %97 = and <8 x i1> %96, %95
  %98 = extractelement <8 x i32> %94, i32 0
  %99 = add nsw i32 %mul.i.i.1, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %9, i64 %100
  %102 = bitcast float* %101 to <8 x i32>*
  %wide.masked.load53 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %102, i32 4, <8 x i1> %97, <8 x i32> undef), !tbaa !12, !alias.scope !122
  %103 = getelementptr inbounds float, float* %6, i64 %100
  %104 = bitcast float* %103 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53, <8 x i32>* %104, i32 4, <8 x i1> %97), !tbaa !12, !alias.scope !125, !noalias !122, !llvm.access.group !21
  %105 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %106 = or <8 x i32> %105, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %107 = icmp sgt <8 x i32> %106, zeroinitializer
  %108 = icmp sgt <8 x i32> %broadcast.splat52, %106
  %109 = and <8 x i1> %108, %107
  %110 = extractelement <8 x i32> %106, i32 0
  %111 = add nsw i32 %mul.i.i.1, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %9, i64 %112
  %114 = bitcast float* %113 to <8 x i32>*
  %wide.masked.load53.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %114, i32 4, <8 x i1> %109, <8 x i32> undef), !tbaa !12, !alias.scope !122
  %115 = getelementptr inbounds float, float* %6, i64 %112
  %116 = bitcast float* %115 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53.1, <8 x i32>* %116, i32 4, <8 x i1> %109), !tbaa !12, !alias.scope !125, !noalias !122, !llvm.access.group !21
  %117 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %118 = or <8 x i32> %117, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %119 = icmp sgt <8 x i32> %118, zeroinitializer
  %120 = icmp sgt <8 x i32> %broadcast.splat52, %118
  %121 = and <8 x i1> %120, %119
  %122 = extractelement <8 x i32> %118, i32 0
  %123 = add nsw i32 %mul.i.i.1, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %9, i64 %124
  %126 = bitcast float* %125 to <8 x i32>*
  %wide.masked.load53.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %126, i32 4, <8 x i1> %121, <8 x i32> undef), !tbaa !12, !alias.scope !122
  %127 = getelementptr inbounds float, float* %6, i64 %124
  %128 = bitcast float* %127 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53.2, <8 x i32>* %128, i32 4, <8 x i1> %121), !tbaa !12, !alias.scope !125, !noalias !122, !llvm.access.group !21
  %129 = trunc <8 x i64> %broadcast.splat50 to <8 x i32>
  %130 = or <8 x i32> %129, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %131 = icmp sgt <8 x i32> %130, zeroinitializer
  %132 = icmp sgt <8 x i32> %broadcast.splat52, %130
  %133 = and <8 x i1> %132, %131
  %134 = extractelement <8 x i32> %130, i32 0
  %135 = add nsw i32 %mul.i.i.1, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %9, i64 %136
  %138 = bitcast float* %137 to <8 x i32>*
  %wide.masked.load53.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %138, i32 4, <8 x i1> %133, <8 x i32> undef), !tbaa !12, !alias.scope !122
  %139 = getelementptr inbounds float, float* %6, i64 %136
  %140 = bitcast float* %139 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load53.3, <8 x i32>* %140, i32 4, <8 x i1> %133), !tbaa !12, !alias.scope !125, !noalias !122, !llvm.access.group !21
  br label %pregion_for_end.i.i.1

pregion_for_entry.entry.i.i.us.us.1:              ; preds = %if.end.i.i.us.us.1.3, %pregion_for_entry.entry.i.i.us.us.1.preheader
  %_local_id_x.i.0.us.us.1 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.1.preheader ], [ %612, %if.end.i.i.us.us.1.3 ]
  %add1.i.i.i.us.us.1 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, %mul.i.i.i
  %conv2.i.i.us.us.1 = trunc i64 %add1.i.i.i.us.us.1 to i32
  %cmp7.i.i.us.us.1 = icmp sgt i32 %conv2.i.i.us.us.1, 0
  %cmp11.i.i.us.us.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.1
  %or.cond28.i.i.us.us.1 = and i1 %cmp11.i.i.us.us.1, %cmp7.i.i.us.us.1
  br i1 %or.cond28.i.i.us.us.1, label %if.then.i.i.us.us.1, label %if.end.i.i.us.us.1

if.then.i.i.us.us.1:                              ; preds = %pregion_for_entry.entry.i.i.us.us.1
  %add.i.i.us.us.1 = add nsw i32 %mul.i.i.1, %conv2.i.i.us.us.1
  %idxprom.i.i.us.us.1 = sext i32 %add.i.i.us.us.1 to i64
  %arrayidx.i.i.us.us.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.1
  %141 = bitcast float* %arrayidx.i.i.us.us.1 to i32*
  %142 = load i32, i32* %141, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.1
  %143 = bitcast float* %arrayidx16.i.i.us.us.1 to i32*
  store i32 %142, i32* %143, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.1

if.end.i.i.us.us.1:                               ; preds = %if.then.i.i.us.us.1, %pregion_for_entry.entry.i.i.us.us.1
  %144 = or i64 %_local_id_x.i.0.us.us.1, 1
  %add1.i.i.i.us.us.1.1 = add nuw nsw i64 %144, %mul.i.i.i
  %conv2.i.i.us.us.1.1 = trunc i64 %add1.i.i.i.us.us.1.1 to i32
  %cmp7.i.i.us.us.1.1 = icmp sgt i32 %conv2.i.i.us.us.1.1, 0
  %cmp11.i.i.us.us.1.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.1.1
  %or.cond28.i.i.us.us.1.1 = and i1 %cmp11.i.i.us.us.1.1, %cmp7.i.i.us.us.1.1
  br i1 %or.cond28.i.i.us.us.1.1, label %if.then.i.i.us.us.1.1, label %if.end.i.i.us.us.1.1

pregion_for_end.i.i.1.loopexit:                   ; preds = %if.end.i.i.us.us.1.3
  br label %pregion_for_end.i.i.1

pregion_for_end.i.i.1:                            ; preds = %pregion_for_end.i.i.1.loopexit, %vector.ph42, %pregion_for_end.i.i
  %145 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.2 = or i32 %145, 2
  %cmp.i.i.2 = icmp sgt i32 %conv.i.i.2, 0
  %mul.i.i.2 = mul nsw i32 %13, %conv.i.i.2
  %cmp4.i.i.2 = icmp sgt i32 %sub.i.i, %conv.i.i.2
  %or.cond5 = and i1 %cmp.i.i.2, %cmp4.i.i.2
  br i1 %or.cond5, label %vector.scevcheck61, label %pregion_for_end.i.i.2

vector.scevcheck61:                               ; preds = %pregion_for_end.i.i.1
  %146 = mul i32 %13, %conv.i.i.2
  %147 = trunc i64 %2 to i32
  %148 = shl i32 %147, 5
  %149 = add i32 %146, %148
  %150 = icmp sgt i32 %149, 2147483616
  br i1 %150, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %vector.memcheck75

pregion_for_entry.entry.i.i.us.us.2.preheader:    ; preds = %vector.memcheck75, %vector.scevcheck61
  br label %pregion_for_entry.entry.i.i.us.us.2

vector.memcheck75:                                ; preds = %vector.scevcheck61
  %151 = mul i32 %13, %conv.i.i.2
  %152 = trunc i64 %2 to i32
  %153 = shl i32 %152, 5
  %154 = add i32 %151, %153
  %155 = sext i32 %154 to i64
  %scevgep63 = getelementptr float, float* %6, i64 %155
  %156 = add nsw i64 %155, 32
  %scevgep65 = getelementptr float, float* %6, i64 %156
  %scevgep67 = getelementptr float, float* %9, i64 %155
  %scevgep69 = getelementptr float, float* %9, i64 %156
  %bound071 = icmp ult float* %scevgep63, %scevgep69
  %bound172 = icmp ult float* %scevgep67, %scevgep65
  %found.conflict73 = and i1 %bound071, %bound172
  br i1 %found.conflict73, label %pregion_for_entry.entry.i.i.us.us.2.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %vector.memcheck75
  %broadcast.splatinsert83 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat84 = shufflevector <8 x i64> %broadcast.splatinsert83, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert85 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat86 = shufflevector <8 x i32> %broadcast.splatinsert85, <8 x i32> undef, <8 x i32> zeroinitializer
  %157 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %158 = or <8 x i32> %157, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %159 = icmp sgt <8 x i32> %158, zeroinitializer
  %160 = icmp sgt <8 x i32> %broadcast.splat86, %158
  %161 = and <8 x i1> %160, %159
  %162 = extractelement <8 x i32> %158, i32 0
  %163 = add nsw i32 %mul.i.i.2, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %9, i64 %164
  %166 = bitcast float* %165 to <8 x i32>*
  %wide.masked.load87 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %166, i32 4, <8 x i1> %161, <8 x i32> undef), !tbaa !12, !alias.scope !127
  %167 = getelementptr inbounds float, float* %6, i64 %164
  %168 = bitcast float* %167 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87, <8 x i32>* %168, i32 4, <8 x i1> %161), !tbaa !12, !alias.scope !130, !noalias !127, !llvm.access.group !21
  %169 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %170 = or <8 x i32> %169, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %171 = icmp sgt <8 x i32> %170, zeroinitializer
  %172 = icmp sgt <8 x i32> %broadcast.splat86, %170
  %173 = and <8 x i1> %172, %171
  %174 = extractelement <8 x i32> %170, i32 0
  %175 = add nsw i32 %mul.i.i.2, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %9, i64 %176
  %178 = bitcast float* %177 to <8 x i32>*
  %wide.masked.load87.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %178, i32 4, <8 x i1> %173, <8 x i32> undef), !tbaa !12, !alias.scope !127
  %179 = getelementptr inbounds float, float* %6, i64 %176
  %180 = bitcast float* %179 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87.1, <8 x i32>* %180, i32 4, <8 x i1> %173), !tbaa !12, !alias.scope !130, !noalias !127, !llvm.access.group !21
  %181 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %182 = or <8 x i32> %181, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %183 = icmp sgt <8 x i32> %182, zeroinitializer
  %184 = icmp sgt <8 x i32> %broadcast.splat86, %182
  %185 = and <8 x i1> %184, %183
  %186 = extractelement <8 x i32> %182, i32 0
  %187 = add nsw i32 %mul.i.i.2, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %9, i64 %188
  %190 = bitcast float* %189 to <8 x i32>*
  %wide.masked.load87.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %190, i32 4, <8 x i1> %185, <8 x i32> undef), !tbaa !12, !alias.scope !127
  %191 = getelementptr inbounds float, float* %6, i64 %188
  %192 = bitcast float* %191 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87.2, <8 x i32>* %192, i32 4, <8 x i1> %185), !tbaa !12, !alias.scope !130, !noalias !127, !llvm.access.group !21
  %193 = trunc <8 x i64> %broadcast.splat84 to <8 x i32>
  %194 = or <8 x i32> %193, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %195 = icmp sgt <8 x i32> %194, zeroinitializer
  %196 = icmp sgt <8 x i32> %broadcast.splat86, %194
  %197 = and <8 x i1> %196, %195
  %198 = extractelement <8 x i32> %194, i32 0
  %199 = add nsw i32 %mul.i.i.2, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %9, i64 %200
  %202 = bitcast float* %201 to <8 x i32>*
  %wide.masked.load87.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %202, i32 4, <8 x i1> %197, <8 x i32> undef), !tbaa !12, !alias.scope !127
  %203 = getelementptr inbounds float, float* %6, i64 %200
  %204 = bitcast float* %203 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load87.3, <8 x i32>* %204, i32 4, <8 x i1> %197), !tbaa !12, !alias.scope !130, !noalias !127, !llvm.access.group !21
  br label %pregion_for_end.i.i.2

pregion_for_entry.entry.i.i.us.us.2:              ; preds = %if.end.i.i.us.us.2.3, %pregion_for_entry.entry.i.i.us.us.2.preheader
  %_local_id_x.i.0.us.us.2 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.2.preheader ], [ %600, %if.end.i.i.us.us.2.3 ]
  %add1.i.i.i.us.us.2 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, %mul.i.i.i
  %conv2.i.i.us.us.2 = trunc i64 %add1.i.i.i.us.us.2 to i32
  %cmp7.i.i.us.us.2 = icmp sgt i32 %conv2.i.i.us.us.2, 0
  %cmp11.i.i.us.us.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.2
  %or.cond28.i.i.us.us.2 = and i1 %cmp11.i.i.us.us.2, %cmp7.i.i.us.us.2
  br i1 %or.cond28.i.i.us.us.2, label %if.then.i.i.us.us.2, label %if.end.i.i.us.us.2

if.then.i.i.us.us.2:                              ; preds = %pregion_for_entry.entry.i.i.us.us.2
  %add.i.i.us.us.2 = add nsw i32 %mul.i.i.2, %conv2.i.i.us.us.2
  %idxprom.i.i.us.us.2 = sext i32 %add.i.i.us.us.2 to i64
  %arrayidx.i.i.us.us.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.2
  %205 = bitcast float* %arrayidx.i.i.us.us.2 to i32*
  %206 = load i32, i32* %205, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.2
  %207 = bitcast float* %arrayidx16.i.i.us.us.2 to i32*
  store i32 %206, i32* %207, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.2

if.end.i.i.us.us.2:                               ; preds = %if.then.i.i.us.us.2, %pregion_for_entry.entry.i.i.us.us.2
  %208 = or i64 %_local_id_x.i.0.us.us.2, 1
  %add1.i.i.i.us.us.2.1 = add nuw nsw i64 %208, %mul.i.i.i
  %conv2.i.i.us.us.2.1 = trunc i64 %add1.i.i.i.us.us.2.1 to i32
  %cmp7.i.i.us.us.2.1 = icmp sgt i32 %conv2.i.i.us.us.2.1, 0
  %cmp11.i.i.us.us.2.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.2.1
  %or.cond28.i.i.us.us.2.1 = and i1 %cmp11.i.i.us.us.2.1, %cmp7.i.i.us.us.2.1
  br i1 %or.cond28.i.i.us.us.2.1, label %if.then.i.i.us.us.2.1, label %if.end.i.i.us.us.2.1

pregion_for_end.i.i.2.loopexit:                   ; preds = %if.end.i.i.us.us.2.3
  br label %pregion_for_end.i.i.2

pregion_for_end.i.i.2:                            ; preds = %pregion_for_end.i.i.2.loopexit, %vector.ph76, %pregion_for_end.i.i.1
  %209 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.3 = or i32 %209, 3
  %cmp.i.i.3 = icmp sgt i32 %conv.i.i.3, 0
  %mul.i.i.3 = mul nsw i32 %13, %conv.i.i.3
  %cmp4.i.i.3 = icmp sgt i32 %sub.i.i, %conv.i.i.3
  %or.cond6 = and i1 %cmp.i.i.3, %cmp4.i.i.3
  br i1 %or.cond6, label %vector.scevcheck95, label %pregion_for_end.i.i.3

vector.scevcheck95:                               ; preds = %pregion_for_end.i.i.2
  %210 = mul i32 %13, %conv.i.i.3
  %211 = trunc i64 %2 to i32
  %212 = shl i32 %211, 5
  %213 = add i32 %210, %212
  %214 = icmp sgt i32 %213, 2147483616
  br i1 %214, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %vector.memcheck109

pregion_for_entry.entry.i.i.us.us.3.preheader:    ; preds = %vector.memcheck109, %vector.scevcheck95
  br label %pregion_for_entry.entry.i.i.us.us.3

vector.memcheck109:                               ; preds = %vector.scevcheck95
  %215 = mul i32 %13, %conv.i.i.3
  %216 = trunc i64 %2 to i32
  %217 = shl i32 %216, 5
  %218 = add i32 %215, %217
  %219 = sext i32 %218 to i64
  %scevgep97 = getelementptr float, float* %6, i64 %219
  %220 = add nsw i64 %219, 32
  %scevgep99 = getelementptr float, float* %6, i64 %220
  %scevgep101 = getelementptr float, float* %9, i64 %219
  %scevgep103 = getelementptr float, float* %9, i64 %220
  %bound0105 = icmp ult float* %scevgep97, %scevgep103
  %bound1106 = icmp ult float* %scevgep101, %scevgep99
  %found.conflict107 = and i1 %bound0105, %bound1106
  br i1 %found.conflict107, label %pregion_for_entry.entry.i.i.us.us.3.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck109
  %broadcast.splatinsert117 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat118 = shufflevector <8 x i64> %broadcast.splatinsert117, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat120 = shufflevector <8 x i32> %broadcast.splatinsert119, <8 x i32> undef, <8 x i32> zeroinitializer
  %221 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %222 = or <8 x i32> %221, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %223 = icmp sgt <8 x i32> %222, zeroinitializer
  %224 = icmp sgt <8 x i32> %broadcast.splat120, %222
  %225 = and <8 x i1> %224, %223
  %226 = extractelement <8 x i32> %222, i32 0
  %227 = add nsw i32 %mul.i.i.3, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %9, i64 %228
  %230 = bitcast float* %229 to <8 x i32>*
  %wide.masked.load121 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %230, i32 4, <8 x i1> %225, <8 x i32> undef), !tbaa !12, !alias.scope !132
  %231 = getelementptr inbounds float, float* %6, i64 %228
  %232 = bitcast float* %231 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121, <8 x i32>* %232, i32 4, <8 x i1> %225), !tbaa !12, !alias.scope !135, !noalias !132, !llvm.access.group !21
  %233 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %234 = or <8 x i32> %233, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %235 = icmp sgt <8 x i32> %234, zeroinitializer
  %236 = icmp sgt <8 x i32> %broadcast.splat120, %234
  %237 = and <8 x i1> %236, %235
  %238 = extractelement <8 x i32> %234, i32 0
  %239 = add nsw i32 %mul.i.i.3, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %9, i64 %240
  %242 = bitcast float* %241 to <8 x i32>*
  %wide.masked.load121.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %242, i32 4, <8 x i1> %237, <8 x i32> undef), !tbaa !12, !alias.scope !132
  %243 = getelementptr inbounds float, float* %6, i64 %240
  %244 = bitcast float* %243 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121.1, <8 x i32>* %244, i32 4, <8 x i1> %237), !tbaa !12, !alias.scope !135, !noalias !132, !llvm.access.group !21
  %245 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %246 = or <8 x i32> %245, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %247 = icmp sgt <8 x i32> %246, zeroinitializer
  %248 = icmp sgt <8 x i32> %broadcast.splat120, %246
  %249 = and <8 x i1> %248, %247
  %250 = extractelement <8 x i32> %246, i32 0
  %251 = add nsw i32 %mul.i.i.3, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %9, i64 %252
  %254 = bitcast float* %253 to <8 x i32>*
  %wide.masked.load121.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %254, i32 4, <8 x i1> %249, <8 x i32> undef), !tbaa !12, !alias.scope !132
  %255 = getelementptr inbounds float, float* %6, i64 %252
  %256 = bitcast float* %255 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121.2, <8 x i32>* %256, i32 4, <8 x i1> %249), !tbaa !12, !alias.scope !135, !noalias !132, !llvm.access.group !21
  %257 = trunc <8 x i64> %broadcast.splat118 to <8 x i32>
  %258 = or <8 x i32> %257, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %259 = icmp sgt <8 x i32> %258, zeroinitializer
  %260 = icmp sgt <8 x i32> %broadcast.splat120, %258
  %261 = and <8 x i1> %260, %259
  %262 = extractelement <8 x i32> %258, i32 0
  %263 = add nsw i32 %mul.i.i.3, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %9, i64 %264
  %266 = bitcast float* %265 to <8 x i32>*
  %wide.masked.load121.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %266, i32 4, <8 x i1> %261, <8 x i32> undef), !tbaa !12, !alias.scope !132
  %267 = getelementptr inbounds float, float* %6, i64 %264
  %268 = bitcast float* %267 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load121.3, <8 x i32>* %268, i32 4, <8 x i1> %261), !tbaa !12, !alias.scope !135, !noalias !132, !llvm.access.group !21
  br label %pregion_for_end.i.i.3

pregion_for_entry.entry.i.i.us.us.3:              ; preds = %if.end.i.i.us.us.3.3, %pregion_for_entry.entry.i.i.us.us.3.preheader
  %_local_id_x.i.0.us.us.3 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.3.preheader ], [ %588, %if.end.i.i.us.us.3.3 ]
  %add1.i.i.i.us.us.3 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, %mul.i.i.i
  %conv2.i.i.us.us.3 = trunc i64 %add1.i.i.i.us.us.3 to i32
  %cmp7.i.i.us.us.3 = icmp sgt i32 %conv2.i.i.us.us.3, 0
  %cmp11.i.i.us.us.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.3
  %or.cond28.i.i.us.us.3 = and i1 %cmp11.i.i.us.us.3, %cmp7.i.i.us.us.3
  br i1 %or.cond28.i.i.us.us.3, label %if.then.i.i.us.us.3, label %if.end.i.i.us.us.3

if.then.i.i.us.us.3:                              ; preds = %pregion_for_entry.entry.i.i.us.us.3
  %add.i.i.us.us.3 = add nsw i32 %mul.i.i.3, %conv2.i.i.us.us.3
  %idxprom.i.i.us.us.3 = sext i32 %add.i.i.us.us.3 to i64
  %arrayidx.i.i.us.us.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.3
  %269 = bitcast float* %arrayidx.i.i.us.us.3 to i32*
  %270 = load i32, i32* %269, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.3
  %271 = bitcast float* %arrayidx16.i.i.us.us.3 to i32*
  store i32 %270, i32* %271, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.3

if.end.i.i.us.us.3:                               ; preds = %if.then.i.i.us.us.3, %pregion_for_entry.entry.i.i.us.us.3
  %272 = or i64 %_local_id_x.i.0.us.us.3, 1
  %add1.i.i.i.us.us.3.1 = add nuw nsw i64 %272, %mul.i.i.i
  %conv2.i.i.us.us.3.1 = trunc i64 %add1.i.i.i.us.us.3.1 to i32
  %cmp7.i.i.us.us.3.1 = icmp sgt i32 %conv2.i.i.us.us.3.1, 0
  %cmp11.i.i.us.us.3.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.3.1
  %or.cond28.i.i.us.us.3.1 = and i1 %cmp11.i.i.us.us.3.1, %cmp7.i.i.us.us.3.1
  br i1 %or.cond28.i.i.us.us.3.1, label %if.then.i.i.us.us.3.1, label %if.end.i.i.us.us.3.1

pregion_for_end.i.i.3.loopexit:                   ; preds = %if.end.i.i.us.us.3.3
  br label %pregion_for_end.i.i.3

pregion_for_end.i.i.3:                            ; preds = %pregion_for_end.i.i.3.loopexit, %vector.ph110, %pregion_for_end.i.i.2
  %273 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.4 = or i32 %273, 4
  %cmp.i.i.4 = icmp sgt i32 %conv.i.i.4, 0
  %mul.i.i.4 = mul nsw i32 %13, %conv.i.i.4
  %cmp4.i.i.4 = icmp sgt i32 %sub.i.i, %conv.i.i.4
  %or.cond7 = and i1 %cmp.i.i.4, %cmp4.i.i.4
  br i1 %or.cond7, label %vector.scevcheck129, label %pregion_for_end.i.i.4

vector.scevcheck129:                              ; preds = %pregion_for_end.i.i.3
  %274 = mul i32 %13, %conv.i.i.4
  %275 = trunc i64 %2 to i32
  %276 = shl i32 %275, 5
  %277 = add i32 %274, %276
  %278 = icmp sgt i32 %277, 2147483616
  br i1 %278, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %vector.memcheck143

pregion_for_entry.entry.i.i.us.us.4.preheader:    ; preds = %vector.memcheck143, %vector.scevcheck129
  br label %pregion_for_entry.entry.i.i.us.us.4

vector.memcheck143:                               ; preds = %vector.scevcheck129
  %279 = mul i32 %13, %conv.i.i.4
  %280 = trunc i64 %2 to i32
  %281 = shl i32 %280, 5
  %282 = add i32 %279, %281
  %283 = sext i32 %282 to i64
  %scevgep131 = getelementptr float, float* %6, i64 %283
  %284 = add nsw i64 %283, 32
  %scevgep133 = getelementptr float, float* %6, i64 %284
  %scevgep135 = getelementptr float, float* %9, i64 %283
  %scevgep137 = getelementptr float, float* %9, i64 %284
  %bound0139 = icmp ult float* %scevgep131, %scevgep137
  %bound1140 = icmp ult float* %scevgep135, %scevgep133
  %found.conflict141 = and i1 %bound0139, %bound1140
  br i1 %found.conflict141, label %pregion_for_entry.entry.i.i.us.us.4.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck143
  %broadcast.splatinsert151 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat152 = shufflevector <8 x i64> %broadcast.splatinsert151, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert153 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat154 = shufflevector <8 x i32> %broadcast.splatinsert153, <8 x i32> undef, <8 x i32> zeroinitializer
  %285 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %286 = or <8 x i32> %285, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %287 = icmp sgt <8 x i32> %286, zeroinitializer
  %288 = icmp sgt <8 x i32> %broadcast.splat154, %286
  %289 = and <8 x i1> %288, %287
  %290 = extractelement <8 x i32> %286, i32 0
  %291 = add nsw i32 %mul.i.i.4, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds float, float* %9, i64 %292
  %294 = bitcast float* %293 to <8 x i32>*
  %wide.masked.load155 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %294, i32 4, <8 x i1> %289, <8 x i32> undef), !tbaa !12, !alias.scope !137
  %295 = getelementptr inbounds float, float* %6, i64 %292
  %296 = bitcast float* %295 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155, <8 x i32>* %296, i32 4, <8 x i1> %289), !tbaa !12, !alias.scope !140, !noalias !137, !llvm.access.group !21
  %297 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %298 = or <8 x i32> %297, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %299 = icmp sgt <8 x i32> %298, zeroinitializer
  %300 = icmp sgt <8 x i32> %broadcast.splat154, %298
  %301 = and <8 x i1> %300, %299
  %302 = extractelement <8 x i32> %298, i32 0
  %303 = add nsw i32 %mul.i.i.4, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %9, i64 %304
  %306 = bitcast float* %305 to <8 x i32>*
  %wide.masked.load155.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %306, i32 4, <8 x i1> %301, <8 x i32> undef), !tbaa !12, !alias.scope !137
  %307 = getelementptr inbounds float, float* %6, i64 %304
  %308 = bitcast float* %307 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155.1, <8 x i32>* %308, i32 4, <8 x i1> %301), !tbaa !12, !alias.scope !140, !noalias !137, !llvm.access.group !21
  %309 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %310 = or <8 x i32> %309, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %311 = icmp sgt <8 x i32> %310, zeroinitializer
  %312 = icmp sgt <8 x i32> %broadcast.splat154, %310
  %313 = and <8 x i1> %312, %311
  %314 = extractelement <8 x i32> %310, i32 0
  %315 = add nsw i32 %mul.i.i.4, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %9, i64 %316
  %318 = bitcast float* %317 to <8 x i32>*
  %wide.masked.load155.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %318, i32 4, <8 x i1> %313, <8 x i32> undef), !tbaa !12, !alias.scope !137
  %319 = getelementptr inbounds float, float* %6, i64 %316
  %320 = bitcast float* %319 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155.2, <8 x i32>* %320, i32 4, <8 x i1> %313), !tbaa !12, !alias.scope !140, !noalias !137, !llvm.access.group !21
  %321 = trunc <8 x i64> %broadcast.splat152 to <8 x i32>
  %322 = or <8 x i32> %321, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %323 = icmp sgt <8 x i32> %322, zeroinitializer
  %324 = icmp sgt <8 x i32> %broadcast.splat154, %322
  %325 = and <8 x i1> %324, %323
  %326 = extractelement <8 x i32> %322, i32 0
  %327 = add nsw i32 %mul.i.i.4, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %9, i64 %328
  %330 = bitcast float* %329 to <8 x i32>*
  %wide.masked.load155.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %330, i32 4, <8 x i1> %325, <8 x i32> undef), !tbaa !12, !alias.scope !137
  %331 = getelementptr inbounds float, float* %6, i64 %328
  %332 = bitcast float* %331 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load155.3, <8 x i32>* %332, i32 4, <8 x i1> %325), !tbaa !12, !alias.scope !140, !noalias !137, !llvm.access.group !21
  br label %pregion_for_end.i.i.4

pregion_for_entry.entry.i.i.us.us.4:              ; preds = %if.end.i.i.us.us.4.3, %pregion_for_entry.entry.i.i.us.us.4.preheader
  %_local_id_x.i.0.us.us.4 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.4.preheader ], [ %576, %if.end.i.i.us.us.4.3 ]
  %add1.i.i.i.us.us.4 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, %mul.i.i.i
  %conv2.i.i.us.us.4 = trunc i64 %add1.i.i.i.us.us.4 to i32
  %cmp7.i.i.us.us.4 = icmp sgt i32 %conv2.i.i.us.us.4, 0
  %cmp11.i.i.us.us.4 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.4
  %or.cond28.i.i.us.us.4 = and i1 %cmp11.i.i.us.us.4, %cmp7.i.i.us.us.4
  br i1 %or.cond28.i.i.us.us.4, label %if.then.i.i.us.us.4, label %if.end.i.i.us.us.4

if.then.i.i.us.us.4:                              ; preds = %pregion_for_entry.entry.i.i.us.us.4
  %add.i.i.us.us.4 = add nsw i32 %mul.i.i.4, %conv2.i.i.us.us.4
  %idxprom.i.i.us.us.4 = sext i32 %add.i.i.us.us.4 to i64
  %arrayidx.i.i.us.us.4 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.4
  %333 = bitcast float* %arrayidx.i.i.us.us.4 to i32*
  %334 = load i32, i32* %333, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.4 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.4
  %335 = bitcast float* %arrayidx16.i.i.us.us.4 to i32*
  store i32 %334, i32* %335, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.4

if.end.i.i.us.us.4:                               ; preds = %if.then.i.i.us.us.4, %pregion_for_entry.entry.i.i.us.us.4
  %336 = or i64 %_local_id_x.i.0.us.us.4, 1
  %add1.i.i.i.us.us.4.1 = add nuw nsw i64 %336, %mul.i.i.i
  %conv2.i.i.us.us.4.1 = trunc i64 %add1.i.i.i.us.us.4.1 to i32
  %cmp7.i.i.us.us.4.1 = icmp sgt i32 %conv2.i.i.us.us.4.1, 0
  %cmp11.i.i.us.us.4.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.4.1
  %or.cond28.i.i.us.us.4.1 = and i1 %cmp11.i.i.us.us.4.1, %cmp7.i.i.us.us.4.1
  br i1 %or.cond28.i.i.us.us.4.1, label %if.then.i.i.us.us.4.1, label %if.end.i.i.us.us.4.1

pregion_for_end.i.i.4.loopexit:                   ; preds = %if.end.i.i.us.us.4.3
  br label %pregion_for_end.i.i.4

pregion_for_end.i.i.4:                            ; preds = %pregion_for_end.i.i.4.loopexit, %vector.ph144, %pregion_for_end.i.i.3
  %337 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.5 = or i32 %337, 5
  %cmp.i.i.5 = icmp sgt i32 %conv.i.i.5, 0
  %mul.i.i.5 = mul nsw i32 %13, %conv.i.i.5
  %cmp4.i.i.5 = icmp sgt i32 %sub.i.i, %conv.i.i.5
  %or.cond8 = and i1 %cmp.i.i.5, %cmp4.i.i.5
  br i1 %or.cond8, label %vector.scevcheck163, label %pregion_for_end.i.i.5

vector.scevcheck163:                              ; preds = %pregion_for_end.i.i.4
  %338 = mul i32 %13, %conv.i.i.5
  %339 = trunc i64 %2 to i32
  %340 = shl i32 %339, 5
  %341 = add i32 %338, %340
  %342 = icmp sgt i32 %341, 2147483616
  br i1 %342, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %vector.memcheck177

pregion_for_entry.entry.i.i.us.us.5.preheader:    ; preds = %vector.memcheck177, %vector.scevcheck163
  br label %pregion_for_entry.entry.i.i.us.us.5

vector.memcheck177:                               ; preds = %vector.scevcheck163
  %343 = mul i32 %13, %conv.i.i.5
  %344 = trunc i64 %2 to i32
  %345 = shl i32 %344, 5
  %346 = add i32 %343, %345
  %347 = sext i32 %346 to i64
  %scevgep165 = getelementptr float, float* %6, i64 %347
  %348 = add nsw i64 %347, 32
  %scevgep167 = getelementptr float, float* %6, i64 %348
  %scevgep169 = getelementptr float, float* %9, i64 %347
  %scevgep171 = getelementptr float, float* %9, i64 %348
  %bound0173 = icmp ult float* %scevgep165, %scevgep171
  %bound1174 = icmp ult float* %scevgep169, %scevgep167
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %pregion_for_entry.entry.i.i.us.us.5.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck177
  %broadcast.splatinsert185 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat186 = shufflevector <8 x i64> %broadcast.splatinsert185, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert187 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat188 = shufflevector <8 x i32> %broadcast.splatinsert187, <8 x i32> undef, <8 x i32> zeroinitializer
  %349 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %350 = or <8 x i32> %349, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %351 = icmp sgt <8 x i32> %350, zeroinitializer
  %352 = icmp sgt <8 x i32> %broadcast.splat188, %350
  %353 = and <8 x i1> %352, %351
  %354 = extractelement <8 x i32> %350, i32 0
  %355 = add nsw i32 %mul.i.i.5, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds float, float* %9, i64 %356
  %358 = bitcast float* %357 to <8 x i32>*
  %wide.masked.load189 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %358, i32 4, <8 x i1> %353, <8 x i32> undef), !tbaa !12, !alias.scope !142
  %359 = getelementptr inbounds float, float* %6, i64 %356
  %360 = bitcast float* %359 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189, <8 x i32>* %360, i32 4, <8 x i1> %353), !tbaa !12, !alias.scope !145, !noalias !142, !llvm.access.group !21
  %361 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %362 = or <8 x i32> %361, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %363 = icmp sgt <8 x i32> %362, zeroinitializer
  %364 = icmp sgt <8 x i32> %broadcast.splat188, %362
  %365 = and <8 x i1> %364, %363
  %366 = extractelement <8 x i32> %362, i32 0
  %367 = add nsw i32 %mul.i.i.5, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds float, float* %9, i64 %368
  %370 = bitcast float* %369 to <8 x i32>*
  %wide.masked.load189.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %370, i32 4, <8 x i1> %365, <8 x i32> undef), !tbaa !12, !alias.scope !142
  %371 = getelementptr inbounds float, float* %6, i64 %368
  %372 = bitcast float* %371 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189.1, <8 x i32>* %372, i32 4, <8 x i1> %365), !tbaa !12, !alias.scope !145, !noalias !142, !llvm.access.group !21
  %373 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %374 = or <8 x i32> %373, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %375 = icmp sgt <8 x i32> %374, zeroinitializer
  %376 = icmp sgt <8 x i32> %broadcast.splat188, %374
  %377 = and <8 x i1> %376, %375
  %378 = extractelement <8 x i32> %374, i32 0
  %379 = add nsw i32 %mul.i.i.5, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds float, float* %9, i64 %380
  %382 = bitcast float* %381 to <8 x i32>*
  %wide.masked.load189.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %382, i32 4, <8 x i1> %377, <8 x i32> undef), !tbaa !12, !alias.scope !142
  %383 = getelementptr inbounds float, float* %6, i64 %380
  %384 = bitcast float* %383 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189.2, <8 x i32>* %384, i32 4, <8 x i1> %377), !tbaa !12, !alias.scope !145, !noalias !142, !llvm.access.group !21
  %385 = trunc <8 x i64> %broadcast.splat186 to <8 x i32>
  %386 = or <8 x i32> %385, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %387 = icmp sgt <8 x i32> %386, zeroinitializer
  %388 = icmp sgt <8 x i32> %broadcast.splat188, %386
  %389 = and <8 x i1> %388, %387
  %390 = extractelement <8 x i32> %386, i32 0
  %391 = add nsw i32 %mul.i.i.5, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %9, i64 %392
  %394 = bitcast float* %393 to <8 x i32>*
  %wide.masked.load189.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %394, i32 4, <8 x i1> %389, <8 x i32> undef), !tbaa !12, !alias.scope !142
  %395 = getelementptr inbounds float, float* %6, i64 %392
  %396 = bitcast float* %395 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load189.3, <8 x i32>* %396, i32 4, <8 x i1> %389), !tbaa !12, !alias.scope !145, !noalias !142, !llvm.access.group !21
  br label %pregion_for_end.i.i.5

pregion_for_entry.entry.i.i.us.us.5:              ; preds = %if.end.i.i.us.us.5.3, %pregion_for_entry.entry.i.i.us.us.5.preheader
  %_local_id_x.i.0.us.us.5 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.5.preheader ], [ %564, %if.end.i.i.us.us.5.3 ]
  %add1.i.i.i.us.us.5 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, %mul.i.i.i
  %conv2.i.i.us.us.5 = trunc i64 %add1.i.i.i.us.us.5 to i32
  %cmp7.i.i.us.us.5 = icmp sgt i32 %conv2.i.i.us.us.5, 0
  %cmp11.i.i.us.us.5 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.5
  %or.cond28.i.i.us.us.5 = and i1 %cmp11.i.i.us.us.5, %cmp7.i.i.us.us.5
  br i1 %or.cond28.i.i.us.us.5, label %if.then.i.i.us.us.5, label %if.end.i.i.us.us.5

if.then.i.i.us.us.5:                              ; preds = %pregion_for_entry.entry.i.i.us.us.5
  %add.i.i.us.us.5 = add nsw i32 %mul.i.i.5, %conv2.i.i.us.us.5
  %idxprom.i.i.us.us.5 = sext i32 %add.i.i.us.us.5 to i64
  %arrayidx.i.i.us.us.5 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.5
  %397 = bitcast float* %arrayidx.i.i.us.us.5 to i32*
  %398 = load i32, i32* %397, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.5 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.5
  %399 = bitcast float* %arrayidx16.i.i.us.us.5 to i32*
  store i32 %398, i32* %399, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.5

if.end.i.i.us.us.5:                               ; preds = %if.then.i.i.us.us.5, %pregion_for_entry.entry.i.i.us.us.5
  %400 = or i64 %_local_id_x.i.0.us.us.5, 1
  %add1.i.i.i.us.us.5.1 = add nuw nsw i64 %400, %mul.i.i.i
  %conv2.i.i.us.us.5.1 = trunc i64 %add1.i.i.i.us.us.5.1 to i32
  %cmp7.i.i.us.us.5.1 = icmp sgt i32 %conv2.i.i.us.us.5.1, 0
  %cmp11.i.i.us.us.5.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.5.1
  %or.cond28.i.i.us.us.5.1 = and i1 %cmp11.i.i.us.us.5.1, %cmp7.i.i.us.us.5.1
  br i1 %or.cond28.i.i.us.us.5.1, label %if.then.i.i.us.us.5.1, label %if.end.i.i.us.us.5.1

pregion_for_end.i.i.5.loopexit:                   ; preds = %if.end.i.i.us.us.5.3
  br label %pregion_for_end.i.i.5

pregion_for_end.i.i.5:                            ; preds = %pregion_for_end.i.i.5.loopexit, %vector.ph178, %pregion_for_end.i.i.4
  %401 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.6 = or i32 %401, 6
  %cmp.i.i.6 = icmp sgt i32 %conv.i.i.6, 0
  %mul.i.i.6 = mul nsw i32 %13, %conv.i.i.6
  %cmp4.i.i.6 = icmp sgt i32 %sub.i.i, %conv.i.i.6
  %or.cond9 = and i1 %cmp.i.i.6, %cmp4.i.i.6
  br i1 %or.cond9, label %vector.scevcheck197, label %pregion_for_end.i.i.6

vector.scevcheck197:                              ; preds = %pregion_for_end.i.i.5
  %402 = mul i32 %13, %conv.i.i.6
  %403 = trunc i64 %2 to i32
  %404 = shl i32 %403, 5
  %405 = add i32 %402, %404
  %406 = icmp sgt i32 %405, 2147483616
  br i1 %406, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %vector.memcheck211

pregion_for_entry.entry.i.i.us.us.6.preheader:    ; preds = %vector.memcheck211, %vector.scevcheck197
  br label %pregion_for_entry.entry.i.i.us.us.6

vector.memcheck211:                               ; preds = %vector.scevcheck197
  %407 = mul i32 %13, %conv.i.i.6
  %408 = trunc i64 %2 to i32
  %409 = shl i32 %408, 5
  %410 = add i32 %407, %409
  %411 = sext i32 %410 to i64
  %scevgep199 = getelementptr float, float* %6, i64 %411
  %412 = add nsw i64 %411, 32
  %scevgep201 = getelementptr float, float* %6, i64 %412
  %scevgep203 = getelementptr float, float* %9, i64 %411
  %scevgep205 = getelementptr float, float* %9, i64 %412
  %bound0207 = icmp ult float* %scevgep199, %scevgep205
  %bound1208 = icmp ult float* %scevgep203, %scevgep201
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %pregion_for_entry.entry.i.i.us.us.6.preheader, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck211
  %broadcast.splatinsert219 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat220 = shufflevector <8 x i64> %broadcast.splatinsert219, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert221 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat222 = shufflevector <8 x i32> %broadcast.splatinsert221, <8 x i32> undef, <8 x i32> zeroinitializer
  %413 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %414 = or <8 x i32> %413, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %415 = icmp sgt <8 x i32> %414, zeroinitializer
  %416 = icmp sgt <8 x i32> %broadcast.splat222, %414
  %417 = and <8 x i1> %416, %415
  %418 = extractelement <8 x i32> %414, i32 0
  %419 = add nsw i32 %mul.i.i.6, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds float, float* %9, i64 %420
  %422 = bitcast float* %421 to <8 x i32>*
  %wide.masked.load223 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %422, i32 4, <8 x i1> %417, <8 x i32> undef), !tbaa !12, !alias.scope !147
  %423 = getelementptr inbounds float, float* %6, i64 %420
  %424 = bitcast float* %423 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223, <8 x i32>* %424, i32 4, <8 x i1> %417), !tbaa !12, !alias.scope !150, !noalias !147, !llvm.access.group !21
  %425 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %426 = or <8 x i32> %425, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %427 = icmp sgt <8 x i32> %426, zeroinitializer
  %428 = icmp sgt <8 x i32> %broadcast.splat222, %426
  %429 = and <8 x i1> %428, %427
  %430 = extractelement <8 x i32> %426, i32 0
  %431 = add nsw i32 %mul.i.i.6, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds float, float* %9, i64 %432
  %434 = bitcast float* %433 to <8 x i32>*
  %wide.masked.load223.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %434, i32 4, <8 x i1> %429, <8 x i32> undef), !tbaa !12, !alias.scope !147
  %435 = getelementptr inbounds float, float* %6, i64 %432
  %436 = bitcast float* %435 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223.1, <8 x i32>* %436, i32 4, <8 x i1> %429), !tbaa !12, !alias.scope !150, !noalias !147, !llvm.access.group !21
  %437 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %438 = or <8 x i32> %437, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %439 = icmp sgt <8 x i32> %438, zeroinitializer
  %440 = icmp sgt <8 x i32> %broadcast.splat222, %438
  %441 = and <8 x i1> %440, %439
  %442 = extractelement <8 x i32> %438, i32 0
  %443 = add nsw i32 %mul.i.i.6, %442
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, float* %9, i64 %444
  %446 = bitcast float* %445 to <8 x i32>*
  %wide.masked.load223.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %446, i32 4, <8 x i1> %441, <8 x i32> undef), !tbaa !12, !alias.scope !147
  %447 = getelementptr inbounds float, float* %6, i64 %444
  %448 = bitcast float* %447 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223.2, <8 x i32>* %448, i32 4, <8 x i1> %441), !tbaa !12, !alias.scope !150, !noalias !147, !llvm.access.group !21
  %449 = trunc <8 x i64> %broadcast.splat220 to <8 x i32>
  %450 = or <8 x i32> %449, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %451 = icmp sgt <8 x i32> %450, zeroinitializer
  %452 = icmp sgt <8 x i32> %broadcast.splat222, %450
  %453 = and <8 x i1> %452, %451
  %454 = extractelement <8 x i32> %450, i32 0
  %455 = add nsw i32 %mul.i.i.6, %454
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds float, float* %9, i64 %456
  %458 = bitcast float* %457 to <8 x i32>*
  %wide.masked.load223.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %458, i32 4, <8 x i1> %453, <8 x i32> undef), !tbaa !12, !alias.scope !147
  %459 = getelementptr inbounds float, float* %6, i64 %456
  %460 = bitcast float* %459 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load223.3, <8 x i32>* %460, i32 4, <8 x i1> %453), !tbaa !12, !alias.scope !150, !noalias !147, !llvm.access.group !21
  br label %pregion_for_end.i.i.6

pregion_for_entry.entry.i.i.us.us.6:              ; preds = %if.end.i.i.us.us.6.3, %pregion_for_entry.entry.i.i.us.us.6.preheader
  %_local_id_x.i.0.us.us.6 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.6.preheader ], [ %552, %if.end.i.i.us.us.6.3 ]
  %add1.i.i.i.us.us.6 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, %mul.i.i.i
  %conv2.i.i.us.us.6 = trunc i64 %add1.i.i.i.us.us.6 to i32
  %cmp7.i.i.us.us.6 = icmp sgt i32 %conv2.i.i.us.us.6, 0
  %cmp11.i.i.us.us.6 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.6
  %or.cond28.i.i.us.us.6 = and i1 %cmp11.i.i.us.us.6, %cmp7.i.i.us.us.6
  br i1 %or.cond28.i.i.us.us.6, label %if.then.i.i.us.us.6, label %if.end.i.i.us.us.6

if.then.i.i.us.us.6:                              ; preds = %pregion_for_entry.entry.i.i.us.us.6
  %add.i.i.us.us.6 = add nsw i32 %mul.i.i.6, %conv2.i.i.us.us.6
  %idxprom.i.i.us.us.6 = sext i32 %add.i.i.us.us.6 to i64
  %arrayidx.i.i.us.us.6 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.6
  %461 = bitcast float* %arrayidx.i.i.us.us.6 to i32*
  %462 = load i32, i32* %461, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.6 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.6
  %463 = bitcast float* %arrayidx16.i.i.us.us.6 to i32*
  store i32 %462, i32* %463, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.6

if.end.i.i.us.us.6:                               ; preds = %if.then.i.i.us.us.6, %pregion_for_entry.entry.i.i.us.us.6
  %464 = or i64 %_local_id_x.i.0.us.us.6, 1
  %add1.i.i.i.us.us.6.1 = add nuw nsw i64 %464, %mul.i.i.i
  %conv2.i.i.us.us.6.1 = trunc i64 %add1.i.i.i.us.us.6.1 to i32
  %cmp7.i.i.us.us.6.1 = icmp sgt i32 %conv2.i.i.us.us.6.1, 0
  %cmp11.i.i.us.us.6.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.6.1
  %or.cond28.i.i.us.us.6.1 = and i1 %cmp11.i.i.us.us.6.1, %cmp7.i.i.us.us.6.1
  br i1 %or.cond28.i.i.us.us.6.1, label %if.then.i.i.us.us.6.1, label %if.end.i.i.us.us.6.1

pregion_for_end.i.i.6.loopexit:                   ; preds = %if.end.i.i.us.us.6.3
  br label %pregion_for_end.i.i.6

pregion_for_end.i.i.6:                            ; preds = %pregion_for_end.i.i.6.loopexit, %vector.ph212, %pregion_for_end.i.i.5
  %465 = trunc i64 %mul3.i.i.i to i32
  %conv.i.i.7 = or i32 %465, 7
  %cmp.i.i.7 = icmp sgt i32 %conv.i.i.7, 0
  %mul.i.i.7 = mul nsw i32 %13, %conv.i.i.7
  %cmp4.i.i.7 = icmp sgt i32 %sub.i.i, %conv.i.i.7
  %or.cond10 = and i1 %cmp.i.i.7, %cmp4.i.i.7
  br i1 %or.cond10, label %vector.scevcheck231, label %pregion_for_end.i.i.7

vector.scevcheck231:                              ; preds = %pregion_for_end.i.i.6
  %466 = mul i32 %13, %conv.i.i.7
  %467 = trunc i64 %2 to i32
  %468 = shl i32 %467, 5
  %469 = add i32 %466, %468
  %470 = icmp sgt i32 %469, 2147483616
  br i1 %470, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %vector.memcheck245

pregion_for_entry.entry.i.i.us.us.7.preheader:    ; preds = %vector.memcheck245, %vector.scevcheck231
  br label %pregion_for_entry.entry.i.i.us.us.7

vector.memcheck245:                               ; preds = %vector.scevcheck231
  %471 = mul i32 %13, %conv.i.i.7
  %472 = trunc i64 %2 to i32
  %473 = shl i32 %472, 5
  %474 = add i32 %471, %473
  %475 = sext i32 %474 to i64
  %scevgep233 = getelementptr float, float* %6, i64 %475
  %476 = add nsw i64 %475, 32
  %scevgep235 = getelementptr float, float* %6, i64 %476
  %scevgep237 = getelementptr float, float* %9, i64 %475
  %scevgep239 = getelementptr float, float* %9, i64 %476
  %bound0241 = icmp ult float* %scevgep233, %scevgep239
  %bound1242 = icmp ult float* %scevgep237, %scevgep235
  %found.conflict243 = and i1 %bound0241, %bound1242
  br i1 %found.conflict243, label %pregion_for_entry.entry.i.i.us.us.7.preheader, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck245
  %broadcast.splatinsert253 = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat254 = shufflevector <8 x i64> %broadcast.splatinsert253, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert255 = insertelement <8 x i32> undef, i32 %sub.i.i, i32 0
  %broadcast.splat256 = shufflevector <8 x i32> %broadcast.splatinsert255, <8 x i32> undef, <8 x i32> zeroinitializer
  %477 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %478 = or <8 x i32> %477, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %479 = icmp sgt <8 x i32> %478, zeroinitializer
  %480 = icmp sgt <8 x i32> %broadcast.splat256, %478
  %481 = and <8 x i1> %480, %479
  %482 = extractelement <8 x i32> %478, i32 0
  %483 = add nsw i32 %mul.i.i.7, %482
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds float, float* %9, i64 %484
  %486 = bitcast float* %485 to <8 x i32>*
  %wide.masked.load257 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %486, i32 4, <8 x i1> %481, <8 x i32> undef), !tbaa !12, !alias.scope !152
  %487 = getelementptr inbounds float, float* %6, i64 %484
  %488 = bitcast float* %487 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257, <8 x i32>* %488, i32 4, <8 x i1> %481), !tbaa !12, !alias.scope !155, !noalias !152, !llvm.access.group !21
  %489 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %490 = or <8 x i32> %489, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %491 = icmp sgt <8 x i32> %490, zeroinitializer
  %492 = icmp sgt <8 x i32> %broadcast.splat256, %490
  %493 = and <8 x i1> %492, %491
  %494 = extractelement <8 x i32> %490, i32 0
  %495 = add nsw i32 %mul.i.i.7, %494
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds float, float* %9, i64 %496
  %498 = bitcast float* %497 to <8 x i32>*
  %wide.masked.load257.1 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %498, i32 4, <8 x i1> %493, <8 x i32> undef), !tbaa !12, !alias.scope !152
  %499 = getelementptr inbounds float, float* %6, i64 %496
  %500 = bitcast float* %499 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257.1, <8 x i32>* %500, i32 4, <8 x i1> %493), !tbaa !12, !alias.scope !155, !noalias !152, !llvm.access.group !21
  %501 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %502 = or <8 x i32> %501, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %503 = icmp sgt <8 x i32> %502, zeroinitializer
  %504 = icmp sgt <8 x i32> %broadcast.splat256, %502
  %505 = and <8 x i1> %504, %503
  %506 = extractelement <8 x i32> %502, i32 0
  %507 = add nsw i32 %mul.i.i.7, %506
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds float, float* %9, i64 %508
  %510 = bitcast float* %509 to <8 x i32>*
  %wide.masked.load257.2 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %510, i32 4, <8 x i1> %505, <8 x i32> undef), !tbaa !12, !alias.scope !152
  %511 = getelementptr inbounds float, float* %6, i64 %508
  %512 = bitcast float* %511 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257.2, <8 x i32>* %512, i32 4, <8 x i1> %505), !tbaa !12, !alias.scope !155, !noalias !152, !llvm.access.group !21
  %513 = trunc <8 x i64> %broadcast.splat254 to <8 x i32>
  %514 = or <8 x i32> %513, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %515 = icmp sgt <8 x i32> %514, zeroinitializer
  %516 = icmp sgt <8 x i32> %broadcast.splat256, %514
  %517 = and <8 x i1> %516, %515
  %518 = extractelement <8 x i32> %514, i32 0
  %519 = add nsw i32 %mul.i.i.7, %518
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds float, float* %9, i64 %520
  %522 = bitcast float* %521 to <8 x i32>*
  %wide.masked.load257.3 = call <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>* %522, i32 4, <8 x i1> %517, <8 x i32> undef), !tbaa !12, !alias.scope !152
  %523 = getelementptr inbounds float, float* %6, i64 %520
  %524 = bitcast float* %523 to <8 x i32>*
  call void @llvm.masked.store.v8i32.p0v8i32(<8 x i32> %wide.masked.load257.3, <8 x i32>* %524, i32 4, <8 x i1> %517), !tbaa !12, !alias.scope !155, !noalias !152, !llvm.access.group !21
  br label %pregion_for_end.i.i.7

pregion_for_entry.entry.i.i.us.us.7:              ; preds = %if.end.i.i.us.us.7.3, %pregion_for_entry.entry.i.i.us.us.7.preheader
  %_local_id_x.i.0.us.us.7 = phi i64 [ 0, %pregion_for_entry.entry.i.i.us.us.7.preheader ], [ %540, %if.end.i.i.us.us.7.3 ]
  %add1.i.i.i.us.us.7 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, %mul.i.i.i
  %conv2.i.i.us.us.7 = trunc i64 %add1.i.i.i.us.us.7 to i32
  %cmp7.i.i.us.us.7 = icmp sgt i32 %conv2.i.i.us.us.7, 0
  %cmp11.i.i.us.us.7 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.7
  %or.cond28.i.i.us.us.7 = and i1 %cmp11.i.i.us.us.7, %cmp7.i.i.us.us.7
  br i1 %or.cond28.i.i.us.us.7, label %if.then.i.i.us.us.7, label %if.end.i.i.us.us.7

if.then.i.i.us.us.7:                              ; preds = %pregion_for_entry.entry.i.i.us.us.7
  %add.i.i.us.us.7 = add nsw i32 %mul.i.i.7, %conv2.i.i.us.us.7
  %idxprom.i.i.us.us.7 = sext i32 %add.i.i.us.us.7 to i64
  %arrayidx.i.i.us.us.7 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.7
  %525 = bitcast float* %arrayidx.i.i.us.us.7 to i32*
  %526 = load i32, i32* %525, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.7 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.7
  %527 = bitcast float* %arrayidx16.i.i.us.us.7 to i32*
  store i32 %526, i32* %527, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.7

if.end.i.i.us.us.7:                               ; preds = %if.then.i.i.us.us.7, %pregion_for_entry.entry.i.i.us.us.7
  %528 = or i64 %_local_id_x.i.0.us.us.7, 1
  %add1.i.i.i.us.us.7.1 = add nuw nsw i64 %528, %mul.i.i.i
  %conv2.i.i.us.us.7.1 = trunc i64 %add1.i.i.i.us.us.7.1 to i32
  %cmp7.i.i.us.us.7.1 = icmp sgt i32 %conv2.i.i.us.us.7.1, 0
  %cmp11.i.i.us.us.7.1 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.7.1
  %or.cond28.i.i.us.us.7.1 = and i1 %cmp11.i.i.us.us.7.1, %cmp7.i.i.us.us.7.1
  br i1 %or.cond28.i.i.us.us.7.1, label %if.then.i.i.us.us.7.1, label %if.end.i.i.us.us.7.1

pregion_for_end.i.i.7.loopexit:                   ; preds = %if.end.i.i.us.us.7.3
  br label %pregion_for_end.i.i.7

pregion_for_end.i.i.7:                            ; preds = %pregion_for_end.i.i.7.loopexit, %vector.ph246, %pregion_for_end.i.i.6
  ret void

if.then.i.i.us.us.7.1:                            ; preds = %if.end.i.i.us.us.7
  %add.i.i.us.us.7.1 = add nsw i32 %mul.i.i.7, %conv2.i.i.us.us.7.1
  %idxprom.i.i.us.us.7.1 = sext i32 %add.i.i.us.us.7.1 to i64
  %arrayidx.i.i.us.us.7.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.7.1
  %529 = bitcast float* %arrayidx.i.i.us.us.7.1 to i32*
  %530 = load i32, i32* %529, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.7.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.7.1
  %531 = bitcast float* %arrayidx16.i.i.us.us.7.1 to i32*
  store i32 %530, i32* %531, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.7.1

if.end.i.i.us.us.7.1:                             ; preds = %if.then.i.i.us.us.7.1, %if.end.i.i.us.us.7
  %532 = or i64 %_local_id_x.i.0.us.us.7, 2
  %add1.i.i.i.us.us.7.2 = add nuw nsw i64 %532, %mul.i.i.i
  %conv2.i.i.us.us.7.2 = trunc i64 %add1.i.i.i.us.us.7.2 to i32
  %cmp7.i.i.us.us.7.2 = icmp sgt i32 %conv2.i.i.us.us.7.2, 0
  %cmp11.i.i.us.us.7.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.7.2
  %or.cond28.i.i.us.us.7.2 = and i1 %cmp11.i.i.us.us.7.2, %cmp7.i.i.us.us.7.2
  br i1 %or.cond28.i.i.us.us.7.2, label %if.then.i.i.us.us.7.2, label %if.end.i.i.us.us.7.2

if.then.i.i.us.us.7.2:                            ; preds = %if.end.i.i.us.us.7.1
  %add.i.i.us.us.7.2 = add nsw i32 %mul.i.i.7, %conv2.i.i.us.us.7.2
  %idxprom.i.i.us.us.7.2 = sext i32 %add.i.i.us.us.7.2 to i64
  %arrayidx.i.i.us.us.7.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.7.2
  %533 = bitcast float* %arrayidx.i.i.us.us.7.2 to i32*
  %534 = load i32, i32* %533, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.7.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.7.2
  %535 = bitcast float* %arrayidx16.i.i.us.us.7.2 to i32*
  store i32 %534, i32* %535, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.7.2

if.end.i.i.us.us.7.2:                             ; preds = %if.then.i.i.us.us.7.2, %if.end.i.i.us.us.7.1
  %536 = or i64 %_local_id_x.i.0.us.us.7, 3
  %add1.i.i.i.us.us.7.3 = add nuw nsw i64 %536, %mul.i.i.i
  %conv2.i.i.us.us.7.3 = trunc i64 %add1.i.i.i.us.us.7.3 to i32
  %cmp7.i.i.us.us.7.3 = icmp sgt i32 %conv2.i.i.us.us.7.3, 0
  %cmp11.i.i.us.us.7.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.7.3
  %or.cond28.i.i.us.us.7.3 = and i1 %cmp11.i.i.us.us.7.3, %cmp7.i.i.us.us.7.3
  br i1 %or.cond28.i.i.us.us.7.3, label %if.then.i.i.us.us.7.3, label %if.end.i.i.us.us.7.3

if.then.i.i.us.us.7.3:                            ; preds = %if.end.i.i.us.us.7.2
  %add.i.i.us.us.7.3 = add nsw i32 %mul.i.i.7, %conv2.i.i.us.us.7.3
  %idxprom.i.i.us.us.7.3 = sext i32 %add.i.i.us.us.7.3 to i64
  %arrayidx.i.i.us.us.7.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.7.3
  %537 = bitcast float* %arrayidx.i.i.us.us.7.3 to i32*
  %538 = load i32, i32* %537, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.7.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.7.3
  %539 = bitcast float* %arrayidx16.i.i.us.us.7.3 to i32*
  store i32 %538, i32* %539, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.7.3

if.end.i.i.us.us.7.3:                             ; preds = %if.then.i.i.us.us.7.3, %if.end.i.i.us.us.7.2
  %540 = add nuw nsw i64 %_local_id_x.i.0.us.us.7, 4
  %exitcond.7.not.3 = icmp eq i64 %540, 32
  br i1 %exitcond.7.not.3, label %pregion_for_end.i.i.7.loopexit, label %pregion_for_entry.entry.i.i.us.us.7, !llvm.loop !157

if.then.i.i.us.us.6.1:                            ; preds = %if.end.i.i.us.us.6
  %add.i.i.us.us.6.1 = add nsw i32 %mul.i.i.6, %conv2.i.i.us.us.6.1
  %idxprom.i.i.us.us.6.1 = sext i32 %add.i.i.us.us.6.1 to i64
  %arrayidx.i.i.us.us.6.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.6.1
  %541 = bitcast float* %arrayidx.i.i.us.us.6.1 to i32*
  %542 = load i32, i32* %541, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.6.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.6.1
  %543 = bitcast float* %arrayidx16.i.i.us.us.6.1 to i32*
  store i32 %542, i32* %543, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.6.1

if.end.i.i.us.us.6.1:                             ; preds = %if.then.i.i.us.us.6.1, %if.end.i.i.us.us.6
  %544 = or i64 %_local_id_x.i.0.us.us.6, 2
  %add1.i.i.i.us.us.6.2 = add nuw nsw i64 %544, %mul.i.i.i
  %conv2.i.i.us.us.6.2 = trunc i64 %add1.i.i.i.us.us.6.2 to i32
  %cmp7.i.i.us.us.6.2 = icmp sgt i32 %conv2.i.i.us.us.6.2, 0
  %cmp11.i.i.us.us.6.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.6.2
  %or.cond28.i.i.us.us.6.2 = and i1 %cmp11.i.i.us.us.6.2, %cmp7.i.i.us.us.6.2
  br i1 %or.cond28.i.i.us.us.6.2, label %if.then.i.i.us.us.6.2, label %if.end.i.i.us.us.6.2

if.then.i.i.us.us.6.2:                            ; preds = %if.end.i.i.us.us.6.1
  %add.i.i.us.us.6.2 = add nsw i32 %mul.i.i.6, %conv2.i.i.us.us.6.2
  %idxprom.i.i.us.us.6.2 = sext i32 %add.i.i.us.us.6.2 to i64
  %arrayidx.i.i.us.us.6.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.6.2
  %545 = bitcast float* %arrayidx.i.i.us.us.6.2 to i32*
  %546 = load i32, i32* %545, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.6.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.6.2
  %547 = bitcast float* %arrayidx16.i.i.us.us.6.2 to i32*
  store i32 %546, i32* %547, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.6.2

if.end.i.i.us.us.6.2:                             ; preds = %if.then.i.i.us.us.6.2, %if.end.i.i.us.us.6.1
  %548 = or i64 %_local_id_x.i.0.us.us.6, 3
  %add1.i.i.i.us.us.6.3 = add nuw nsw i64 %548, %mul.i.i.i
  %conv2.i.i.us.us.6.3 = trunc i64 %add1.i.i.i.us.us.6.3 to i32
  %cmp7.i.i.us.us.6.3 = icmp sgt i32 %conv2.i.i.us.us.6.3, 0
  %cmp11.i.i.us.us.6.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.6.3
  %or.cond28.i.i.us.us.6.3 = and i1 %cmp11.i.i.us.us.6.3, %cmp7.i.i.us.us.6.3
  br i1 %or.cond28.i.i.us.us.6.3, label %if.then.i.i.us.us.6.3, label %if.end.i.i.us.us.6.3

if.then.i.i.us.us.6.3:                            ; preds = %if.end.i.i.us.us.6.2
  %add.i.i.us.us.6.3 = add nsw i32 %mul.i.i.6, %conv2.i.i.us.us.6.3
  %idxprom.i.i.us.us.6.3 = sext i32 %add.i.i.us.us.6.3 to i64
  %arrayidx.i.i.us.us.6.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.6.3
  %549 = bitcast float* %arrayidx.i.i.us.us.6.3 to i32*
  %550 = load i32, i32* %549, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.6.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.6.3
  %551 = bitcast float* %arrayidx16.i.i.us.us.6.3 to i32*
  store i32 %550, i32* %551, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.6.3

if.end.i.i.us.us.6.3:                             ; preds = %if.then.i.i.us.us.6.3, %if.end.i.i.us.us.6.2
  %552 = add nuw nsw i64 %_local_id_x.i.0.us.us.6, 4
  %exitcond.6.not.3 = icmp eq i64 %552, 32
  br i1 %exitcond.6.not.3, label %pregion_for_end.i.i.6.loopexit, label %pregion_for_entry.entry.i.i.us.us.6, !llvm.loop !158

if.then.i.i.us.us.5.1:                            ; preds = %if.end.i.i.us.us.5
  %add.i.i.us.us.5.1 = add nsw i32 %mul.i.i.5, %conv2.i.i.us.us.5.1
  %idxprom.i.i.us.us.5.1 = sext i32 %add.i.i.us.us.5.1 to i64
  %arrayidx.i.i.us.us.5.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.5.1
  %553 = bitcast float* %arrayidx.i.i.us.us.5.1 to i32*
  %554 = load i32, i32* %553, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.5.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.5.1
  %555 = bitcast float* %arrayidx16.i.i.us.us.5.1 to i32*
  store i32 %554, i32* %555, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.5.1

if.end.i.i.us.us.5.1:                             ; preds = %if.then.i.i.us.us.5.1, %if.end.i.i.us.us.5
  %556 = or i64 %_local_id_x.i.0.us.us.5, 2
  %add1.i.i.i.us.us.5.2 = add nuw nsw i64 %556, %mul.i.i.i
  %conv2.i.i.us.us.5.2 = trunc i64 %add1.i.i.i.us.us.5.2 to i32
  %cmp7.i.i.us.us.5.2 = icmp sgt i32 %conv2.i.i.us.us.5.2, 0
  %cmp11.i.i.us.us.5.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.5.2
  %or.cond28.i.i.us.us.5.2 = and i1 %cmp11.i.i.us.us.5.2, %cmp7.i.i.us.us.5.2
  br i1 %or.cond28.i.i.us.us.5.2, label %if.then.i.i.us.us.5.2, label %if.end.i.i.us.us.5.2

if.then.i.i.us.us.5.2:                            ; preds = %if.end.i.i.us.us.5.1
  %add.i.i.us.us.5.2 = add nsw i32 %mul.i.i.5, %conv2.i.i.us.us.5.2
  %idxprom.i.i.us.us.5.2 = sext i32 %add.i.i.us.us.5.2 to i64
  %arrayidx.i.i.us.us.5.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.5.2
  %557 = bitcast float* %arrayidx.i.i.us.us.5.2 to i32*
  %558 = load i32, i32* %557, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.5.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.5.2
  %559 = bitcast float* %arrayidx16.i.i.us.us.5.2 to i32*
  store i32 %558, i32* %559, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.5.2

if.end.i.i.us.us.5.2:                             ; preds = %if.then.i.i.us.us.5.2, %if.end.i.i.us.us.5.1
  %560 = or i64 %_local_id_x.i.0.us.us.5, 3
  %add1.i.i.i.us.us.5.3 = add nuw nsw i64 %560, %mul.i.i.i
  %conv2.i.i.us.us.5.3 = trunc i64 %add1.i.i.i.us.us.5.3 to i32
  %cmp7.i.i.us.us.5.3 = icmp sgt i32 %conv2.i.i.us.us.5.3, 0
  %cmp11.i.i.us.us.5.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.5.3
  %or.cond28.i.i.us.us.5.3 = and i1 %cmp11.i.i.us.us.5.3, %cmp7.i.i.us.us.5.3
  br i1 %or.cond28.i.i.us.us.5.3, label %if.then.i.i.us.us.5.3, label %if.end.i.i.us.us.5.3

if.then.i.i.us.us.5.3:                            ; preds = %if.end.i.i.us.us.5.2
  %add.i.i.us.us.5.3 = add nsw i32 %mul.i.i.5, %conv2.i.i.us.us.5.3
  %idxprom.i.i.us.us.5.3 = sext i32 %add.i.i.us.us.5.3 to i64
  %arrayidx.i.i.us.us.5.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.5.3
  %561 = bitcast float* %arrayidx.i.i.us.us.5.3 to i32*
  %562 = load i32, i32* %561, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.5.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.5.3
  %563 = bitcast float* %arrayidx16.i.i.us.us.5.3 to i32*
  store i32 %562, i32* %563, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.5.3

if.end.i.i.us.us.5.3:                             ; preds = %if.then.i.i.us.us.5.3, %if.end.i.i.us.us.5.2
  %564 = add nuw nsw i64 %_local_id_x.i.0.us.us.5, 4
  %exitcond.5.not.3 = icmp eq i64 %564, 32
  br i1 %exitcond.5.not.3, label %pregion_for_end.i.i.5.loopexit, label %pregion_for_entry.entry.i.i.us.us.5, !llvm.loop !159

if.then.i.i.us.us.4.1:                            ; preds = %if.end.i.i.us.us.4
  %add.i.i.us.us.4.1 = add nsw i32 %mul.i.i.4, %conv2.i.i.us.us.4.1
  %idxprom.i.i.us.us.4.1 = sext i32 %add.i.i.us.us.4.1 to i64
  %arrayidx.i.i.us.us.4.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.4.1
  %565 = bitcast float* %arrayidx.i.i.us.us.4.1 to i32*
  %566 = load i32, i32* %565, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.4.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.4.1
  %567 = bitcast float* %arrayidx16.i.i.us.us.4.1 to i32*
  store i32 %566, i32* %567, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.4.1

if.end.i.i.us.us.4.1:                             ; preds = %if.then.i.i.us.us.4.1, %if.end.i.i.us.us.4
  %568 = or i64 %_local_id_x.i.0.us.us.4, 2
  %add1.i.i.i.us.us.4.2 = add nuw nsw i64 %568, %mul.i.i.i
  %conv2.i.i.us.us.4.2 = trunc i64 %add1.i.i.i.us.us.4.2 to i32
  %cmp7.i.i.us.us.4.2 = icmp sgt i32 %conv2.i.i.us.us.4.2, 0
  %cmp11.i.i.us.us.4.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.4.2
  %or.cond28.i.i.us.us.4.2 = and i1 %cmp11.i.i.us.us.4.2, %cmp7.i.i.us.us.4.2
  br i1 %or.cond28.i.i.us.us.4.2, label %if.then.i.i.us.us.4.2, label %if.end.i.i.us.us.4.2

if.then.i.i.us.us.4.2:                            ; preds = %if.end.i.i.us.us.4.1
  %add.i.i.us.us.4.2 = add nsw i32 %mul.i.i.4, %conv2.i.i.us.us.4.2
  %idxprom.i.i.us.us.4.2 = sext i32 %add.i.i.us.us.4.2 to i64
  %arrayidx.i.i.us.us.4.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.4.2
  %569 = bitcast float* %arrayidx.i.i.us.us.4.2 to i32*
  %570 = load i32, i32* %569, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.4.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.4.2
  %571 = bitcast float* %arrayidx16.i.i.us.us.4.2 to i32*
  store i32 %570, i32* %571, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.4.2

if.end.i.i.us.us.4.2:                             ; preds = %if.then.i.i.us.us.4.2, %if.end.i.i.us.us.4.1
  %572 = or i64 %_local_id_x.i.0.us.us.4, 3
  %add1.i.i.i.us.us.4.3 = add nuw nsw i64 %572, %mul.i.i.i
  %conv2.i.i.us.us.4.3 = trunc i64 %add1.i.i.i.us.us.4.3 to i32
  %cmp7.i.i.us.us.4.3 = icmp sgt i32 %conv2.i.i.us.us.4.3, 0
  %cmp11.i.i.us.us.4.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.4.3
  %or.cond28.i.i.us.us.4.3 = and i1 %cmp11.i.i.us.us.4.3, %cmp7.i.i.us.us.4.3
  br i1 %or.cond28.i.i.us.us.4.3, label %if.then.i.i.us.us.4.3, label %if.end.i.i.us.us.4.3

if.then.i.i.us.us.4.3:                            ; preds = %if.end.i.i.us.us.4.2
  %add.i.i.us.us.4.3 = add nsw i32 %mul.i.i.4, %conv2.i.i.us.us.4.3
  %idxprom.i.i.us.us.4.3 = sext i32 %add.i.i.us.us.4.3 to i64
  %arrayidx.i.i.us.us.4.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.4.3
  %573 = bitcast float* %arrayidx.i.i.us.us.4.3 to i32*
  %574 = load i32, i32* %573, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.4.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.4.3
  %575 = bitcast float* %arrayidx16.i.i.us.us.4.3 to i32*
  store i32 %574, i32* %575, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.4.3

if.end.i.i.us.us.4.3:                             ; preds = %if.then.i.i.us.us.4.3, %if.end.i.i.us.us.4.2
  %576 = add nuw nsw i64 %_local_id_x.i.0.us.us.4, 4
  %exitcond.4.not.3 = icmp eq i64 %576, 32
  br i1 %exitcond.4.not.3, label %pregion_for_end.i.i.4.loopexit, label %pregion_for_entry.entry.i.i.us.us.4, !llvm.loop !160

if.then.i.i.us.us.3.1:                            ; preds = %if.end.i.i.us.us.3
  %add.i.i.us.us.3.1 = add nsw i32 %mul.i.i.3, %conv2.i.i.us.us.3.1
  %idxprom.i.i.us.us.3.1 = sext i32 %add.i.i.us.us.3.1 to i64
  %arrayidx.i.i.us.us.3.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.3.1
  %577 = bitcast float* %arrayidx.i.i.us.us.3.1 to i32*
  %578 = load i32, i32* %577, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.3.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.3.1
  %579 = bitcast float* %arrayidx16.i.i.us.us.3.1 to i32*
  store i32 %578, i32* %579, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.3.1

if.end.i.i.us.us.3.1:                             ; preds = %if.then.i.i.us.us.3.1, %if.end.i.i.us.us.3
  %580 = or i64 %_local_id_x.i.0.us.us.3, 2
  %add1.i.i.i.us.us.3.2 = add nuw nsw i64 %580, %mul.i.i.i
  %conv2.i.i.us.us.3.2 = trunc i64 %add1.i.i.i.us.us.3.2 to i32
  %cmp7.i.i.us.us.3.2 = icmp sgt i32 %conv2.i.i.us.us.3.2, 0
  %cmp11.i.i.us.us.3.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.3.2
  %or.cond28.i.i.us.us.3.2 = and i1 %cmp11.i.i.us.us.3.2, %cmp7.i.i.us.us.3.2
  br i1 %or.cond28.i.i.us.us.3.2, label %if.then.i.i.us.us.3.2, label %if.end.i.i.us.us.3.2

if.then.i.i.us.us.3.2:                            ; preds = %if.end.i.i.us.us.3.1
  %add.i.i.us.us.3.2 = add nsw i32 %mul.i.i.3, %conv2.i.i.us.us.3.2
  %idxprom.i.i.us.us.3.2 = sext i32 %add.i.i.us.us.3.2 to i64
  %arrayidx.i.i.us.us.3.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.3.2
  %581 = bitcast float* %arrayidx.i.i.us.us.3.2 to i32*
  %582 = load i32, i32* %581, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.3.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.3.2
  %583 = bitcast float* %arrayidx16.i.i.us.us.3.2 to i32*
  store i32 %582, i32* %583, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.3.2

if.end.i.i.us.us.3.2:                             ; preds = %if.then.i.i.us.us.3.2, %if.end.i.i.us.us.3.1
  %584 = or i64 %_local_id_x.i.0.us.us.3, 3
  %add1.i.i.i.us.us.3.3 = add nuw nsw i64 %584, %mul.i.i.i
  %conv2.i.i.us.us.3.3 = trunc i64 %add1.i.i.i.us.us.3.3 to i32
  %cmp7.i.i.us.us.3.3 = icmp sgt i32 %conv2.i.i.us.us.3.3, 0
  %cmp11.i.i.us.us.3.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.3.3
  %or.cond28.i.i.us.us.3.3 = and i1 %cmp11.i.i.us.us.3.3, %cmp7.i.i.us.us.3.3
  br i1 %or.cond28.i.i.us.us.3.3, label %if.then.i.i.us.us.3.3, label %if.end.i.i.us.us.3.3

if.then.i.i.us.us.3.3:                            ; preds = %if.end.i.i.us.us.3.2
  %add.i.i.us.us.3.3 = add nsw i32 %mul.i.i.3, %conv2.i.i.us.us.3.3
  %idxprom.i.i.us.us.3.3 = sext i32 %add.i.i.us.us.3.3 to i64
  %arrayidx.i.i.us.us.3.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.3.3
  %585 = bitcast float* %arrayidx.i.i.us.us.3.3 to i32*
  %586 = load i32, i32* %585, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.3.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.3.3
  %587 = bitcast float* %arrayidx16.i.i.us.us.3.3 to i32*
  store i32 %586, i32* %587, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.3.3

if.end.i.i.us.us.3.3:                             ; preds = %if.then.i.i.us.us.3.3, %if.end.i.i.us.us.3.2
  %588 = add nuw nsw i64 %_local_id_x.i.0.us.us.3, 4
  %exitcond.3.not.3 = icmp eq i64 %588, 32
  br i1 %exitcond.3.not.3, label %pregion_for_end.i.i.3.loopexit, label %pregion_for_entry.entry.i.i.us.us.3, !llvm.loop !161

if.then.i.i.us.us.2.1:                            ; preds = %if.end.i.i.us.us.2
  %add.i.i.us.us.2.1 = add nsw i32 %mul.i.i.2, %conv2.i.i.us.us.2.1
  %idxprom.i.i.us.us.2.1 = sext i32 %add.i.i.us.us.2.1 to i64
  %arrayidx.i.i.us.us.2.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.2.1
  %589 = bitcast float* %arrayidx.i.i.us.us.2.1 to i32*
  %590 = load i32, i32* %589, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.2.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.2.1
  %591 = bitcast float* %arrayidx16.i.i.us.us.2.1 to i32*
  store i32 %590, i32* %591, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.2.1

if.end.i.i.us.us.2.1:                             ; preds = %if.then.i.i.us.us.2.1, %if.end.i.i.us.us.2
  %592 = or i64 %_local_id_x.i.0.us.us.2, 2
  %add1.i.i.i.us.us.2.2 = add nuw nsw i64 %592, %mul.i.i.i
  %conv2.i.i.us.us.2.2 = trunc i64 %add1.i.i.i.us.us.2.2 to i32
  %cmp7.i.i.us.us.2.2 = icmp sgt i32 %conv2.i.i.us.us.2.2, 0
  %cmp11.i.i.us.us.2.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.2.2
  %or.cond28.i.i.us.us.2.2 = and i1 %cmp11.i.i.us.us.2.2, %cmp7.i.i.us.us.2.2
  br i1 %or.cond28.i.i.us.us.2.2, label %if.then.i.i.us.us.2.2, label %if.end.i.i.us.us.2.2

if.then.i.i.us.us.2.2:                            ; preds = %if.end.i.i.us.us.2.1
  %add.i.i.us.us.2.2 = add nsw i32 %mul.i.i.2, %conv2.i.i.us.us.2.2
  %idxprom.i.i.us.us.2.2 = sext i32 %add.i.i.us.us.2.2 to i64
  %arrayidx.i.i.us.us.2.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.2.2
  %593 = bitcast float* %arrayidx.i.i.us.us.2.2 to i32*
  %594 = load i32, i32* %593, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.2.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.2.2
  %595 = bitcast float* %arrayidx16.i.i.us.us.2.2 to i32*
  store i32 %594, i32* %595, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.2.2

if.end.i.i.us.us.2.2:                             ; preds = %if.then.i.i.us.us.2.2, %if.end.i.i.us.us.2.1
  %596 = or i64 %_local_id_x.i.0.us.us.2, 3
  %add1.i.i.i.us.us.2.3 = add nuw nsw i64 %596, %mul.i.i.i
  %conv2.i.i.us.us.2.3 = trunc i64 %add1.i.i.i.us.us.2.3 to i32
  %cmp7.i.i.us.us.2.3 = icmp sgt i32 %conv2.i.i.us.us.2.3, 0
  %cmp11.i.i.us.us.2.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.2.3
  %or.cond28.i.i.us.us.2.3 = and i1 %cmp11.i.i.us.us.2.3, %cmp7.i.i.us.us.2.3
  br i1 %or.cond28.i.i.us.us.2.3, label %if.then.i.i.us.us.2.3, label %if.end.i.i.us.us.2.3

if.then.i.i.us.us.2.3:                            ; preds = %if.end.i.i.us.us.2.2
  %add.i.i.us.us.2.3 = add nsw i32 %mul.i.i.2, %conv2.i.i.us.us.2.3
  %idxprom.i.i.us.us.2.3 = sext i32 %add.i.i.us.us.2.3 to i64
  %arrayidx.i.i.us.us.2.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.2.3
  %597 = bitcast float* %arrayidx.i.i.us.us.2.3 to i32*
  %598 = load i32, i32* %597, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.2.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.2.3
  %599 = bitcast float* %arrayidx16.i.i.us.us.2.3 to i32*
  store i32 %598, i32* %599, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.2.3

if.end.i.i.us.us.2.3:                             ; preds = %if.then.i.i.us.us.2.3, %if.end.i.i.us.us.2.2
  %600 = add nuw nsw i64 %_local_id_x.i.0.us.us.2, 4
  %exitcond.2.not.3 = icmp eq i64 %600, 32
  br i1 %exitcond.2.not.3, label %pregion_for_end.i.i.2.loopexit, label %pregion_for_entry.entry.i.i.us.us.2, !llvm.loop !162

if.then.i.i.us.us.1.1:                            ; preds = %if.end.i.i.us.us.1
  %add.i.i.us.us.1.1 = add nsw i32 %mul.i.i.1, %conv2.i.i.us.us.1.1
  %idxprom.i.i.us.us.1.1 = sext i32 %add.i.i.us.us.1.1 to i64
  %arrayidx.i.i.us.us.1.1 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.1.1
  %601 = bitcast float* %arrayidx.i.i.us.us.1.1 to i32*
  %602 = load i32, i32* %601, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.1.1 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.1.1
  %603 = bitcast float* %arrayidx16.i.i.us.us.1.1 to i32*
  store i32 %602, i32* %603, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.1.1

if.end.i.i.us.us.1.1:                             ; preds = %if.then.i.i.us.us.1.1, %if.end.i.i.us.us.1
  %604 = or i64 %_local_id_x.i.0.us.us.1, 2
  %add1.i.i.i.us.us.1.2 = add nuw nsw i64 %604, %mul.i.i.i
  %conv2.i.i.us.us.1.2 = trunc i64 %add1.i.i.i.us.us.1.2 to i32
  %cmp7.i.i.us.us.1.2 = icmp sgt i32 %conv2.i.i.us.us.1.2, 0
  %cmp11.i.i.us.us.1.2 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.1.2
  %or.cond28.i.i.us.us.1.2 = and i1 %cmp11.i.i.us.us.1.2, %cmp7.i.i.us.us.1.2
  br i1 %or.cond28.i.i.us.us.1.2, label %if.then.i.i.us.us.1.2, label %if.end.i.i.us.us.1.2

if.then.i.i.us.us.1.2:                            ; preds = %if.end.i.i.us.us.1.1
  %add.i.i.us.us.1.2 = add nsw i32 %mul.i.i.1, %conv2.i.i.us.us.1.2
  %idxprom.i.i.us.us.1.2 = sext i32 %add.i.i.us.us.1.2 to i64
  %arrayidx.i.i.us.us.1.2 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.1.2
  %605 = bitcast float* %arrayidx.i.i.us.us.1.2 to i32*
  %606 = load i32, i32* %605, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.1.2 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.1.2
  %607 = bitcast float* %arrayidx16.i.i.us.us.1.2 to i32*
  store i32 %606, i32* %607, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.1.2

if.end.i.i.us.us.1.2:                             ; preds = %if.then.i.i.us.us.1.2, %if.end.i.i.us.us.1.1
  %608 = or i64 %_local_id_x.i.0.us.us.1, 3
  %add1.i.i.i.us.us.1.3 = add nuw nsw i64 %608, %mul.i.i.i
  %conv2.i.i.us.us.1.3 = trunc i64 %add1.i.i.i.us.us.1.3 to i32
  %cmp7.i.i.us.us.1.3 = icmp sgt i32 %conv2.i.i.us.us.1.3, 0
  %cmp11.i.i.us.us.1.3 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.1.3
  %or.cond28.i.i.us.us.1.3 = and i1 %cmp11.i.i.us.us.1.3, %cmp7.i.i.us.us.1.3
  br i1 %or.cond28.i.i.us.us.1.3, label %if.then.i.i.us.us.1.3, label %if.end.i.i.us.us.1.3

if.then.i.i.us.us.1.3:                            ; preds = %if.end.i.i.us.us.1.2
  %add.i.i.us.us.1.3 = add nsw i32 %mul.i.i.1, %conv2.i.i.us.us.1.3
  %idxprom.i.i.us.us.1.3 = sext i32 %add.i.i.us.us.1.3 to i64
  %arrayidx.i.i.us.us.1.3 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.1.3
  %609 = bitcast float* %arrayidx.i.i.us.us.1.3 to i32*
  %610 = load i32, i32* %609, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.1.3 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.1.3
  %611 = bitcast float* %arrayidx16.i.i.us.us.1.3 to i32*
  store i32 %610, i32* %611, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.1.3

if.end.i.i.us.us.1.3:                             ; preds = %if.then.i.i.us.us.1.3, %if.end.i.i.us.us.1.2
  %612 = add nuw nsw i64 %_local_id_x.i.0.us.us.1, 4
  %exitcond.1.not.3 = icmp eq i64 %612, 32
  br i1 %exitcond.1.not.3, label %pregion_for_end.i.i.1.loopexit, label %pregion_for_entry.entry.i.i.us.us.1, !llvm.loop !163

if.then.i.i.us.us.1277:                           ; preds = %if.end.i.i.us.us
  %add.i.i.us.us.1273 = add nsw i32 %mul.i.i, %conv2.i.i.us.us.1268
  %idxprom.i.i.us.us.1274 = sext i32 %add.i.i.us.us.1273 to i64
  %arrayidx.i.i.us.us.1275 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.1274
  %613 = bitcast float* %arrayidx.i.i.us.us.1275 to i32*
  %614 = load i32, i32* %613, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.1276 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.1274
  %615 = bitcast float* %arrayidx16.i.i.us.us.1276 to i32*
  store i32 %614, i32* %615, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.1278

if.end.i.i.us.us.1278:                            ; preds = %if.then.i.i.us.us.1277, %if.end.i.i.us.us
  %616 = or i64 %_local_id_x.i.0.us.us, 2
  %add1.i.i.i.us.us.2280 = add nuw nsw i64 %616, %mul.i.i.i
  %conv2.i.i.us.us.2281 = trunc i64 %add1.i.i.i.us.us.2280 to i32
  %cmp7.i.i.us.us.2282 = icmp sgt i32 %conv2.i.i.us.us.2281, 0
  %cmp11.i.i.us.us.2283 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.2281
  %or.cond28.i.i.us.us.2284 = and i1 %cmp11.i.i.us.us.2283, %cmp7.i.i.us.us.2282
  br i1 %or.cond28.i.i.us.us.2284, label %if.then.i.i.us.us.2290, label %if.end.i.i.us.us.2291

if.then.i.i.us.us.2290:                           ; preds = %if.end.i.i.us.us.1278
  %add.i.i.us.us.2286 = add nsw i32 %mul.i.i, %conv2.i.i.us.us.2281
  %idxprom.i.i.us.us.2287 = sext i32 %add.i.i.us.us.2286 to i64
  %arrayidx.i.i.us.us.2288 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.2287
  %617 = bitcast float* %arrayidx.i.i.us.us.2288 to i32*
  %618 = load i32, i32* %617, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.2289 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.2287
  %619 = bitcast float* %arrayidx16.i.i.us.us.2289 to i32*
  store i32 %618, i32* %619, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.2291

if.end.i.i.us.us.2291:                            ; preds = %if.then.i.i.us.us.2290, %if.end.i.i.us.us.1278
  %620 = or i64 %_local_id_x.i.0.us.us, 3
  %add1.i.i.i.us.us.3293 = add nuw nsw i64 %620, %mul.i.i.i
  %conv2.i.i.us.us.3294 = trunc i64 %add1.i.i.i.us.us.3293 to i32
  %cmp7.i.i.us.us.3295 = icmp sgt i32 %conv2.i.i.us.us.3294, 0
  %cmp11.i.i.us.us.3296 = icmp sgt i32 %sub.i.i, %conv2.i.i.us.us.3294
  %or.cond28.i.i.us.us.3297 = and i1 %cmp11.i.i.us.us.3296, %cmp7.i.i.us.us.3295
  br i1 %or.cond28.i.i.us.us.3297, label %if.then.i.i.us.us.3303, label %if.end.i.i.us.us.3304

if.then.i.i.us.us.3303:                           ; preds = %if.end.i.i.us.us.2291
  %add.i.i.us.us.3299 = add nsw i32 %mul.i.i, %conv2.i.i.us.us.3294
  %idxprom.i.i.us.us.3300 = sext i32 %add.i.i.us.us.3299 to i64
  %arrayidx.i.i.us.us.3301 = getelementptr inbounds float, float* %9, i64 %idxprom.i.i.us.us.3300
  %621 = bitcast float* %arrayidx.i.i.us.us.3301 to i32*
  %622 = load i32, i32* %621, align 4, !tbaa !12
  %arrayidx16.i.i.us.us.3302 = getelementptr inbounds float, float* %6, i64 %idxprom.i.i.us.us.3300
  %623 = bitcast float* %arrayidx16.i.i.us.us.3302 to i32*
  store i32 %622, i32* %623, align 4, !tbaa !12, !llvm.access.group !21
  br label %if.end.i.i.us.us.3304

if.end.i.i.us.us.3304:                            ; preds = %if.then.i.i.us.us.3303, %if.end.i.i.us.us.2291
  %624 = add nuw nsw i64 %_local_id_x.i.0.us.us, 4
  %exitcond.not.3 = icmp eq i64 %624, 32
  br i1 %exitcond.not.3, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us.us, !llvm.loop !164
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x i32> @llvm.masked.load.v8i32.p0v8i32(<8 x i32>*, i32 immarg, <8 x i1>, <8 x i32>) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8i32.p0v8i32(<8 x i32>, <8 x i32>*, i32 immarg, <8 x i1>) #3

attributes #0 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind }
attributes #2 = { argmemonly nounwind readonly willreturn }
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
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22, !23}
!22 = distinct !{}
!23 = distinct !{}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53}
!53 = distinct !{!53, !51}
!54 = !{!55}
!55 = distinct !{!55, !56}
!56 = distinct !{!56, !"LVerDomain"}
!57 = !{!58}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.parallel_accesses", !22}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = distinct !{!62, !60, !61}
!63 = distinct !{!63, !60, !61}
!64 = distinct !{!64, !60, !61}
!65 = distinct !{!65, !60, !61}
!66 = distinct !{!66, !60, !61}
!67 = distinct !{!67, !60, !61}
!68 = distinct !{!68, !60, !61}
!69 = !{!70}
!70 = distinct !{!70, !71}
!71 = distinct !{!71, !"LVerDomain"}
!72 = !{!73}
!73 = distinct !{!73, !71}
!74 = !{!75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = !{!78}
!78 = distinct !{!78, !76}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = !{!85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!88}
!88 = distinct !{!88, !86}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = !{!93}
!93 = distinct !{!93, !91}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = !{!100}
!100 = distinct !{!100, !101}
!101 = distinct !{!101, !"LVerDomain"}
!102 = !{!103}
!103 = distinct !{!103, !101}
!104 = !{!105}
!105 = distinct !{!105, !106}
!106 = distinct !{!106, !"LVerDomain"}
!107 = !{!108}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !60, !61}
!110 = distinct !{!110, !60, !61}
!111 = distinct !{!111, !60, !61}
!112 = distinct !{!112, !60, !61}
!113 = distinct !{!113, !60, !61}
!114 = distinct !{!114, !60, !61}
!115 = distinct !{!115, !60, !61}
!116 = distinct !{!116, !60, !61}
!117 = !{!118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, !"LVerDomain"}
!120 = !{!121}
!121 = distinct !{!121, !119}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = !{!128}
!128 = distinct !{!128, !129}
!129 = distinct !{!129, !"LVerDomain"}
!130 = !{!131}
!131 = distinct !{!131, !129}
!132 = !{!133}
!133 = distinct !{!133, !134}
!134 = distinct !{!134, !"LVerDomain"}
!135 = !{!136}
!136 = distinct !{!136, !134}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!141}
!141 = distinct !{!141, !139}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = !{!148}
!148 = distinct !{!148, !149}
!149 = distinct !{!149, !"LVerDomain"}
!150 = !{!151}
!151 = distinct !{!151, !149}
!152 = !{!153}
!153 = distinct !{!153, !154}
!154 = distinct !{!154, !"LVerDomain"}
!155 = !{!156}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !60, !61}
!158 = distinct !{!158, !60, !61}
!159 = distinct !{!159, !60, !61}
!160 = distinct !{!160, !60, !61}
!161 = distinct !{!161, !60, !61}
!162 = distinct !{!162, !60, !61}
!163 = distinct !{!163, !60, !61}
!164 = distinct !{!164, !60, !61}
