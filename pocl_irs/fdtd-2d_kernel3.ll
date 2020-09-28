; ModuleID = './CE/HMLMAPAJJBLPBKGGCCBDEJJLIPIDBFCCIIFBD/fdtd_kernel3/32-8-1-goffs0-smallgrid/parallel.bc'
source_filename = "parallel_bc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: alwaysinline nofree norecurse nounwind
define void @_pocl_kernel_fdtd_kernel3(float* nocapture readonly %0, float* nocapture readonly %1, float* nocapture %2, i32 %3, i32 %4, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %5, i64 %6, i64 %7, i64 %8) local_unnamed_addr #1 !kernel_arg_addr_space !5 !kernel_arg_access_qual !6 !kernel_arg_type !7 !kernel_arg_base_type !8 !kernel_arg_type_qual !9 !kernel_arg_name !10 !pocl_generated !11 {
  %mul.i.i = shl i64 %6, 5
  %mul3.i.i = shl i64 %7, 3
  %sub.i = add nsw i32 %3, -1
  %sub4.i = add nsw i32 %4, -1
  %10 = trunc i64 %7 to i32
  %11 = mul i32 %10, %4
  %12 = shl i32 %11, 3
  %13 = trunc i64 %6 to i32
  %14 = shl i32 %13, 5
  %15 = add i32 %12, %14
  %16 = zext i32 %4 to i64
  %17 = or i32 %15, 1
  %18 = shl i32 %10, 3
  %19 = or i32 %18, 1
  %20 = mul i32 %19, %4
  %21 = add i32 %20, %14
  %22 = trunc i64 %7 to i32
  %23 = mul i32 %22, %4
  %24 = shl i32 %23, 3
  %25 = trunc i64 %6 to i32
  %26 = shl i32 %25, 5
  %27 = add i32 %24, %26
  %28 = zext i32 %4 to i64
  %scevgep10 = getelementptr float, float* %2, i64 32
  %scevgep15 = getelementptr float, float* %0, i64 32
  %29 = or i32 %27, 1
  %30 = zext i32 %29 to i64
  %scevgep20 = getelementptr float, float* %0, i64 32
  %scevgep25 = getelementptr float, float* %1, i64 32
  %31 = shl i32 %22, 3
  %32 = or i32 %31, 1
  %33 = mul i32 %32, %4
  %34 = add i32 %33, %26
  %scevgep30 = getelementptr float, float* %1, i64 32
  %bound0 = icmp ugt float* %scevgep15, %2
  %bound1 = icmp ugt float* %scevgep10, %0
  %found.conflict = and i1 %bound0, %bound1
  %bound036 = icmp ugt float* %scevgep25, %2
  %bound137 = icmp ugt float* %scevgep10, %1
  %found.conflict38 = and i1 %bound036, %bound137
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <8 x i32> undef, i32 %sub4.i, i32 0
  %broadcast.splat45 = shufflevector <8 x i32> %broadcast.splatinsert44, <8 x i32> undef, <8 x i32> zeroinitializer
  %35 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %36 = or <8 x i32> %35, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %37 = icmp sgt <8 x i32> %broadcast.splat45, %36
  %38 = extractelement <8 x i32> %36, i32 0
  %39 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %40 = or <8 x i32> %39, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %41 = icmp sgt <8 x i32> %broadcast.splat45, %40
  %42 = extractelement <8 x i32> %40, i32 0
  %43 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %44 = or <8 x i32> %43, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %45 = icmp sgt <8 x i32> %broadcast.splat45, %44
  %46 = extractelement <8 x i32> %44, i32 0
  %47 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %48 = or <8 x i32> %47, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %49 = icmp sgt <8 x i32> %broadcast.splat45, %48
  %50 = extractelement <8 x i32> %48, i32 0
  br label %pregion_for_entry.pregion_for_init.i

pregion_for_entry.pregion_for_init.i:             ; preds = %pregion_for_end.i, %9
  %_local_id_y.0 = phi i64 [ 0, %9 ], [ %175, %pregion_for_end.i ]
  %51 = mul i64 %_local_id_y.0, %28
  %52 = trunc i64 %51 to i32
  %53 = add i32 %27, %52
  %54 = sext i32 %53 to i64
  %scevgep = getelementptr float, float* %2, i64 %54
  %scevgep11 = getelementptr float, float* %scevgep10, i64 %54
  %55 = add i64 %51, %30
  %sext = shl i64 %55, 32
  %56 = ashr exact i64 %sext, 32
  %scevgep18 = getelementptr float, float* %0, i64 %56
  %scevgep21 = getelementptr float, float* %scevgep20, i64 %56
  %57 = trunc i64 %51 to i32
  %58 = add i32 %34, %57
  %59 = sext i32 %58 to i64
  %scevgep28 = getelementptr float, float* %1, i64 %59
  %scevgep31 = getelementptr float, float* %scevgep30, i64 %59
  %60 = mul i64 %_local_id_y.0, %16
  %add6.i.i = add nuw nsw i64 %_local_id_y.0, %mul3.i.i
  %conv2.i = trunc i64 %add6.i.i to i32
  %cmp.i = icmp sgt i32 %sub.i, %conv2.i
  %mul.i = mul nsw i32 %conv2.i, %4
  %add18.i = add nsw i32 %conv2.i, 1
  %mul19.i = mul nsw i32 %add18.i, %4
  br i1 %cmp.i, label %vector.scevcheck, label %pregion_for_end.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i
  %61 = trunc i64 %60 to i32
  %62 = add i32 %21, %61
  %63 = trunc i64 %60 to i32
  %64 = add i32 %17, %63
  %65 = trunc i64 %60 to i32
  %66 = add i32 %15, %65
  %67 = icmp sgt i32 %66, 2147483616
  %68 = icmp sgt i32 %64, 2147483616
  %69 = or i1 %67, %68
  %70 = icmp sgt i32 %62, 2147483616
  %71 = or i1 %69, %70
  br i1 %71, label %pregion_for_entry.entry.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.us.preheader:           ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound033 = icmp ult float* %scevgep, %scevgep21
  %bound134 = icmp ult float* %scevgep18, %scevgep11
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  %bound040 = icmp ult float* %scevgep, %scevgep31
  %bound141 = icmp ult float* %scevgep28, %scevgep11
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx39, %found.conflict42
  br i1 %conflict.rdx43, label %pregion_for_entry.entry.i.us.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %72 = add i32 %mul.i, %38
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %2, i64 %73
  %75 = bitcast float* %74 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %75, i32 4, <8 x i1> %37, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %76 = fpext <8 x float> %wide.masked.load to <8 x double>
  %77 = add i32 %72, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %0, i64 %78
  %80 = bitcast float* %79 to <8 x float>*
  %wide.masked.load46 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %80, i32 4, <8 x i1> %37, <8 x float> undef), !tbaa !12, !alias.scope !24
  %81 = getelementptr inbounds float, float* %0, i64 %73
  %82 = bitcast float* %81 to <8 x float>*
  %wide.masked.load47 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %82, i32 4, <8 x i1> %37, <8 x float> undef), !tbaa !12, !alias.scope !25
  %83 = fsub <8 x float> %wide.masked.load46, %wide.masked.load47
  %84 = add nsw i32 %mul19.i, %38
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %1, i64 %85
  %87 = bitcast float* %86 to <8 x float>*
  %wide.masked.load48 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %87, i32 4, <8 x i1> %37, <8 x float> undef), !tbaa !12, !alias.scope !26
  %88 = fadd <8 x float> %83, %wide.masked.load48
  %89 = getelementptr inbounds float, float* %1, i64 %73
  %90 = bitcast float* %89 to <8 x float>*
  %wide.masked.load49 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %90, i32 4, <8 x i1> %37, <8 x float> undef), !tbaa !12, !alias.scope !27
  %91 = fsub <8 x float> %88, %wide.masked.load49
  %92 = fpext <8 x float> %91 to <8 x double>
  %93 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %92, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %76)
  %94 = fptrunc <8 x double> %93 to <8 x float>
  %95 = bitcast float* %74 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %94, <8 x float>* %95, i32 4, <8 x i1> %37), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !28
  %96 = add i32 %mul.i, %42
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %2, i64 %97
  %99 = bitcast float* %98 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %99, i32 4, <8 x i1> %41, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %100 = fpext <8 x float> %wide.masked.load.1 to <8 x double>
  %101 = add i32 %96, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %0, i64 %102
  %104 = bitcast float* %103 to <8 x float>*
  %wide.masked.load46.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %104, i32 4, <8 x i1> %41, <8 x float> undef), !tbaa !12, !alias.scope !24
  %105 = getelementptr inbounds float, float* %0, i64 %97
  %106 = bitcast float* %105 to <8 x float>*
  %wide.masked.load47.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %106, i32 4, <8 x i1> %41, <8 x float> undef), !tbaa !12, !alias.scope !25
  %107 = fsub <8 x float> %wide.masked.load46.1, %wide.masked.load47.1
  %108 = add nsw i32 %mul19.i, %42
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %1, i64 %109
  %111 = bitcast float* %110 to <8 x float>*
  %wide.masked.load48.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %111, i32 4, <8 x i1> %41, <8 x float> undef), !tbaa !12, !alias.scope !26
  %112 = fadd <8 x float> %107, %wide.masked.load48.1
  %113 = getelementptr inbounds float, float* %1, i64 %97
  %114 = bitcast float* %113 to <8 x float>*
  %wide.masked.load49.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %114, i32 4, <8 x i1> %41, <8 x float> undef), !tbaa !12, !alias.scope !27
  %115 = fsub <8 x float> %112, %wide.masked.load49.1
  %116 = fpext <8 x float> %115 to <8 x double>
  %117 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %116, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %100)
  %118 = fptrunc <8 x double> %117 to <8 x float>
  %119 = bitcast float* %98 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %118, <8 x float>* %119, i32 4, <8 x i1> %41), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !28
  %120 = add i32 %mul.i, %46
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %2, i64 %121
  %123 = bitcast float* %122 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %123, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %124 = fpext <8 x float> %wide.masked.load.2 to <8 x double>
  %125 = add i32 %120, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %0, i64 %126
  %128 = bitcast float* %127 to <8 x float>*
  %wide.masked.load46.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %128, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !24
  %129 = getelementptr inbounds float, float* %0, i64 %121
  %130 = bitcast float* %129 to <8 x float>*
  %wide.masked.load47.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %130, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !25
  %131 = fsub <8 x float> %wide.masked.load46.2, %wide.masked.load47.2
  %132 = add nsw i32 %mul19.i, %46
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %1, i64 %133
  %135 = bitcast float* %134 to <8 x float>*
  %wide.masked.load48.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %135, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !26
  %136 = fadd <8 x float> %131, %wide.masked.load48.2
  %137 = getelementptr inbounds float, float* %1, i64 %121
  %138 = bitcast float* %137 to <8 x float>*
  %wide.masked.load49.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %138, i32 4, <8 x i1> %45, <8 x float> undef), !tbaa !12, !alias.scope !27
  %139 = fsub <8 x float> %136, %wide.masked.load49.2
  %140 = fpext <8 x float> %139 to <8 x double>
  %141 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %140, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %124)
  %142 = fptrunc <8 x double> %141 to <8 x float>
  %143 = bitcast float* %122 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %142, <8 x float>* %143, i32 4, <8 x i1> %45), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !28
  %144 = add i32 %mul.i, %50
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %2, i64 %145
  %147 = bitcast float* %146 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %147, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !16, !noalias !19
  %148 = fpext <8 x float> %wide.masked.load.3 to <8 x double>
  %149 = add i32 %144, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %0, i64 %150
  %152 = bitcast float* %151 to <8 x float>*
  %wide.masked.load46.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %152, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !24
  %153 = getelementptr inbounds float, float* %0, i64 %145
  %154 = bitcast float* %153 to <8 x float>*
  %wide.masked.load47.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %154, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !25
  %155 = fsub <8 x float> %wide.masked.load46.3, %wide.masked.load47.3
  %156 = add nsw i32 %mul19.i, %50
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %1, i64 %157
  %159 = bitcast float* %158 to <8 x float>*
  %wide.masked.load48.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %159, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !26
  %160 = fadd <8 x float> %155, %wide.masked.load48.3
  %161 = getelementptr inbounds float, float* %1, i64 %145
  %162 = bitcast float* %161 to <8 x float>*
  %wide.masked.load49.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %162, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !27
  %163 = fsub <8 x float> %160, %wide.masked.load49.3
  %164 = fpext <8 x float> %163 to <8 x double>
  %165 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %164, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %148)
  %166 = fptrunc <8 x double> %165 to <8 x float>
  %167 = bitcast float* %146 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %166, <8 x float>* %167, i32 4, <8 x i1> %49), !tbaa !12, !alias.scope !16, !noalias !19, !llvm.access.group !28
  br label %pregion_for_end.i

pregion_for_entry.entry.i.us:                     ; preds = %if.end.r_exit.i.us, %pregion_for_entry.entry.i.us.preheader
  %_local_id_x.0.us = phi i64 [ %174, %if.end.r_exit.i.us ], [ 0, %pregion_for_entry.entry.i.us.preheader ]
  %add1.i.i.us = add nuw nsw i64 %_local_id_x.0.us, %mul.i.i
  %conv.i.us = trunc i64 %add1.i.i.us to i32
  %cmp5.i.us = icmp sgt i32 %sub4.i, %conv.i.us
  br i1 %cmp5.i.us, label %if.then.i.us, label %if.end.r_exit.i.us

if.then.i.us:                                     ; preds = %pregion_for_entry.entry.i.us
  %add.i.us = add i32 %mul.i, %conv.i.us
  %idxprom.i.us = sext i32 %add.i.us to i64
  %arrayidx.i.us = getelementptr inbounds float, float* %2, i64 %idxprom.i.us
  %168 = load float, float* %arrayidx.i.us, align 4, !tbaa !12
  %conv7.i.us = fpext float %168 to double
  %add10.i.us = add i32 %add.i.us, 1
  %idxprom11.i.us = sext i32 %add10.i.us to i64
  %arrayidx12.i.us = getelementptr inbounds float, float* %0, i64 %idxprom11.i.us
  %169 = load float, float* %arrayidx12.i.us, align 4, !tbaa !12
  %arrayidx16.i.us = getelementptr inbounds float, float* %0, i64 %idxprom.i.us
  %170 = load float, float* %arrayidx16.i.us, align 4, !tbaa !12
  %sub17.i.us = fsub float %169, %170
  %add20.i.us = add nsw i32 %mul19.i, %conv.i.us
  %idxprom21.i.us = sext i32 %add20.i.us to i64
  %arrayidx22.i.us = getelementptr inbounds float, float* %1, i64 %idxprom21.i.us
  %171 = load float, float* %arrayidx22.i.us, align 4, !tbaa !12
  %add23.i.us = fadd float %sub17.i.us, %171
  %arrayidx27.i.us = getelementptr inbounds float, float* %1, i64 %idxprom.i.us
  %172 = load float, float* %arrayidx27.i.us, align 4, !tbaa !12
  %sub28.i.us = fsub float %add23.i.us, %172
  %conv29.i.us = fpext float %sub28.i.us to double
  %173 = tail call double @llvm.fmuladd.f64(double %conv29.i.us, double 0xBFE6666666666666, double %conv7.i.us) #5
  %conv31.i.us = fptrunc double %173 to float
  store float %conv31.i.us, float* %arrayidx.i.us, align 4, !tbaa !12, !llvm.access.group !28
  br label %if.end.r_exit.i.us

if.end.r_exit.i.us:                               ; preds = %if.then.i.us, %pregion_for_entry.entry.i.us
  %174 = add nuw nsw i64 %_local_id_x.0.us, 1
  %exitcond.not = icmp eq i64 %174, 32
  br i1 %exitcond.not, label %pregion_for_end.i.loopexit, label %pregion_for_entry.entry.i.us, !llvm.loop !31

pregion_for_end.i.loopexit:                       ; preds = %if.end.r_exit.i.us
  br label %pregion_for_end.i

pregion_for_end.i:                                ; preds = %pregion_for_end.i.loopexit, %vector.body, %pregion_for_entry.pregion_for_init.i
  %175 = add nuw nsw i64 %_local_id_y.0, 1
  %exitcond2.not = icmp eq i64 %175, 8
  br i1 %exitcond2.not, label %fdtd_kernel3.exit, label %pregion_for_entry.pregion_for_init.i, !llvm.loop !34

fdtd_kernel3.exit:                                ; preds = %pregion_for_end.i
  ret void
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_fdtd_kernel3_workgroup(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
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
  %18 = bitcast i8** %17 to i32**
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr i8*, i8** %0, i64 4
  %22 = bitcast i8** %21 to i32**
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %sub.i.i = add nsw i32 %20, -1
  %sub4.i.i = add nsw i32 %24, -1
  %25 = trunc i64 %3 to i32
  %26 = mul i32 %24, %25
  %27 = shl i32 %26, 3
  %28 = trunc i64 %2 to i32
  %29 = shl i32 %28, 5
  %30 = add i32 %27, %29
  %31 = zext i32 %24 to i64
  %32 = or i32 %30, 1
  %33 = shl i32 %25, 3
  %34 = or i32 %33, 1
  %35 = mul i32 %24, %34
  %36 = add i32 %35, %29
  %37 = trunc i64 %3 to i32
  %38 = mul i32 %24, %37
  %39 = shl i32 %38, 3
  %40 = trunc i64 %2 to i32
  %41 = shl i32 %40, 5
  %42 = add i32 %39, %41
  %43 = zext i32 %24 to i64
  %scevgep10 = getelementptr float, float* %16, i64 32
  %scevgep15 = getelementptr float, float* %8, i64 32
  %44 = or i32 %42, 1
  %45 = zext i32 %44 to i64
  %scevgep20 = getelementptr float, float* %8, i64 32
  %scevgep25 = getelementptr float, float* %12, i64 32
  %46 = shl i32 %37, 3
  %47 = or i32 %46, 1
  %48 = mul i32 %24, %47
  %49 = add i32 %48, %41
  %scevgep30 = getelementptr float, float* %12, i64 32
  %bound0 = icmp ult float* %16, %scevgep15
  %bound1 = icmp ult float* %8, %scevgep10
  %found.conflict = and i1 %bound0, %bound1
  %bound036 = icmp ult float* %16, %scevgep25
  %bound137 = icmp ult float* %12, %scevgep10
  %found.conflict38 = and i1 %bound036, %bound137
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <8 x i32> undef, i32 %sub4.i.i, i32 0
  %broadcast.splat45 = shufflevector <8 x i32> %broadcast.splatinsert44, <8 x i32> undef, <8 x i32> zeroinitializer
  %50 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %51 = or <8 x i32> %50, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %52 = icmp sgt <8 x i32> %broadcast.splat45, %51
  %53 = extractelement <8 x i32> %51, i32 0
  %54 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %55 = or <8 x i32> %54, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %56 = icmp sgt <8 x i32> %broadcast.splat45, %55
  %57 = extractelement <8 x i32> %55, i32 0
  %58 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %59 = or <8 x i32> %58, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %60 = icmp sgt <8 x i32> %broadcast.splat45, %59
  %61 = extractelement <8 x i32> %59, i32 0
  %62 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %63 = or <8 x i32> %62, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %64 = icmp sgt <8 x i32> %broadcast.splat45, %63
  %65 = extractelement <8 x i32> %63, i32 0
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %190, %pregion_for_end.i.i ]
  %66 = mul i64 %_local_id_y.i.0, %43
  %67 = trunc i64 %66 to i32
  %68 = add i32 %42, %67
  %69 = sext i32 %68 to i64
  %scevgep = getelementptr float, float* %16, i64 %69
  %scevgep11 = getelementptr float, float* %scevgep10, i64 %69
  %70 = add i64 %66, %45
  %sext = shl i64 %70, 32
  %71 = ashr exact i64 %sext, 32
  %scevgep18 = getelementptr float, float* %8, i64 %71
  %scevgep21 = getelementptr float, float* %scevgep20, i64 %71
  %72 = trunc i64 %66 to i32
  %73 = add i32 %49, %72
  %74 = sext i32 %73 to i64
  %scevgep28 = getelementptr float, float* %12, i64 %74
  %scevgep31 = getelementptr float, float* %scevgep30, i64 %74
  %75 = mul i64 %_local_id_y.i.0, %31
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %sub.i.i, %conv2.i.i
  %mul.i.i = mul nsw i32 %24, %conv2.i.i
  %add18.i.i = add nsw i32 %conv2.i.i, 1
  %mul19.i.i = mul nsw i32 %add18.i.i, %24
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %76 = trunc i64 %75 to i32
  %77 = add i32 %36, %76
  %78 = trunc i64 %75 to i32
  %79 = add i32 %32, %78
  %80 = trunc i64 %75 to i32
  %81 = add i32 %30, %80
  %82 = icmp sgt i32 %81, 2147483616
  %83 = icmp sgt i32 %79, 2147483616
  %84 = or i1 %82, %83
  %85 = icmp sgt i32 %77, 2147483616
  %86 = or i1 %84, %85
  br i1 %86, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound033 = icmp ult float* %scevgep, %scevgep21
  %bound134 = icmp ult float* %scevgep18, %scevgep11
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  %bound040 = icmp ult float* %scevgep, %scevgep31
  %bound141 = icmp ult float* %scevgep28, %scevgep11
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx39, %found.conflict42
  br i1 %conflict.rdx43, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %87 = add i32 %mul.i.i, %53
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %16, i64 %88
  %90 = bitcast float* %89 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %90, i32 4, <8 x i1> %52, <8 x float> undef), !tbaa !12, !alias.scope !36, !noalias !39
  %91 = fpext <8 x float> %wide.masked.load to <8 x double>
  %92 = add i32 %87, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %8, i64 %93
  %95 = bitcast float* %94 to <8 x float>*
  %wide.masked.load46 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %95, i32 4, <8 x i1> %52, <8 x float> undef), !tbaa !12, !alias.scope !44
  %96 = getelementptr inbounds float, float* %8, i64 %88
  %97 = bitcast float* %96 to <8 x float>*
  %wide.masked.load47 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %97, i32 4, <8 x i1> %52, <8 x float> undef), !tbaa !12, !alias.scope !45
  %98 = fsub <8 x float> %wide.masked.load46, %wide.masked.load47
  %99 = add nsw i32 %mul19.i.i, %53
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %12, i64 %100
  %102 = bitcast float* %101 to <8 x float>*
  %wide.masked.load48 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %102, i32 4, <8 x i1> %52, <8 x float> undef), !tbaa !12, !alias.scope !46
  %103 = fadd <8 x float> %98, %wide.masked.load48
  %104 = getelementptr inbounds float, float* %12, i64 %88
  %105 = bitcast float* %104 to <8 x float>*
  %wide.masked.load49 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %105, i32 4, <8 x i1> %52, <8 x float> undef), !tbaa !12, !alias.scope !47
  %106 = fsub <8 x float> %103, %wide.masked.load49
  %107 = fpext <8 x float> %106 to <8 x double>
  %108 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %107, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %91)
  %109 = fptrunc <8 x double> %108 to <8 x float>
  %110 = bitcast float* %89 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %109, <8 x float>* %110, i32 4, <8 x i1> %52), !tbaa !12, !alias.scope !36, !noalias !39, !llvm.access.group !28
  %111 = add i32 %mul.i.i, %57
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %16, i64 %112
  %114 = bitcast float* %113 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %114, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !36, !noalias !39
  %115 = fpext <8 x float> %wide.masked.load.1 to <8 x double>
  %116 = add i32 %111, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %8, i64 %117
  %119 = bitcast float* %118 to <8 x float>*
  %wide.masked.load46.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %119, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !44
  %120 = getelementptr inbounds float, float* %8, i64 %112
  %121 = bitcast float* %120 to <8 x float>*
  %wide.masked.load47.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %121, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !45
  %122 = fsub <8 x float> %wide.masked.load46.1, %wide.masked.load47.1
  %123 = add nsw i32 %mul19.i.i, %57
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %12, i64 %124
  %126 = bitcast float* %125 to <8 x float>*
  %wide.masked.load48.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %126, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !46
  %127 = fadd <8 x float> %122, %wide.masked.load48.1
  %128 = getelementptr inbounds float, float* %12, i64 %112
  %129 = bitcast float* %128 to <8 x float>*
  %wide.masked.load49.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %129, i32 4, <8 x i1> %56, <8 x float> undef), !tbaa !12, !alias.scope !47
  %130 = fsub <8 x float> %127, %wide.masked.load49.1
  %131 = fpext <8 x float> %130 to <8 x double>
  %132 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %131, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %115)
  %133 = fptrunc <8 x double> %132 to <8 x float>
  %134 = bitcast float* %113 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %133, <8 x float>* %134, i32 4, <8 x i1> %56), !tbaa !12, !alias.scope !36, !noalias !39, !llvm.access.group !28
  %135 = add i32 %mul.i.i, %61
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %16, i64 %136
  %138 = bitcast float* %137 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %138, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12, !alias.scope !36, !noalias !39
  %139 = fpext <8 x float> %wide.masked.load.2 to <8 x double>
  %140 = add i32 %135, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %8, i64 %141
  %143 = bitcast float* %142 to <8 x float>*
  %wide.masked.load46.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %143, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12, !alias.scope !44
  %144 = getelementptr inbounds float, float* %8, i64 %136
  %145 = bitcast float* %144 to <8 x float>*
  %wide.masked.load47.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %145, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12, !alias.scope !45
  %146 = fsub <8 x float> %wide.masked.load46.2, %wide.masked.load47.2
  %147 = add nsw i32 %mul19.i.i, %61
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %12, i64 %148
  %150 = bitcast float* %149 to <8 x float>*
  %wide.masked.load48.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %150, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12, !alias.scope !46
  %151 = fadd <8 x float> %146, %wide.masked.load48.2
  %152 = getelementptr inbounds float, float* %12, i64 %136
  %153 = bitcast float* %152 to <8 x float>*
  %wide.masked.load49.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %153, i32 4, <8 x i1> %60, <8 x float> undef), !tbaa !12, !alias.scope !47
  %154 = fsub <8 x float> %151, %wide.masked.load49.2
  %155 = fpext <8 x float> %154 to <8 x double>
  %156 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %155, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %139)
  %157 = fptrunc <8 x double> %156 to <8 x float>
  %158 = bitcast float* %137 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %157, <8 x float>* %158, i32 4, <8 x i1> %60), !tbaa !12, !alias.scope !36, !noalias !39, !llvm.access.group !28
  %159 = add i32 %mul.i.i, %65
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %16, i64 %160
  %162 = bitcast float* %161 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %162, i32 4, <8 x i1> %64, <8 x float> undef), !tbaa !12, !alias.scope !36, !noalias !39
  %163 = fpext <8 x float> %wide.masked.load.3 to <8 x double>
  %164 = add i32 %159, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %8, i64 %165
  %167 = bitcast float* %166 to <8 x float>*
  %wide.masked.load46.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %167, i32 4, <8 x i1> %64, <8 x float> undef), !tbaa !12, !alias.scope !44
  %168 = getelementptr inbounds float, float* %8, i64 %160
  %169 = bitcast float* %168 to <8 x float>*
  %wide.masked.load47.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %169, i32 4, <8 x i1> %64, <8 x float> undef), !tbaa !12, !alias.scope !45
  %170 = fsub <8 x float> %wide.masked.load46.3, %wide.masked.load47.3
  %171 = add nsw i32 %mul19.i.i, %65
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %12, i64 %172
  %174 = bitcast float* %173 to <8 x float>*
  %wide.masked.load48.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %174, i32 4, <8 x i1> %64, <8 x float> undef), !tbaa !12, !alias.scope !46
  %175 = fadd <8 x float> %170, %wide.masked.load48.3
  %176 = getelementptr inbounds float, float* %12, i64 %160
  %177 = bitcast float* %176 to <8 x float>*
  %wide.masked.load49.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %177, i32 4, <8 x i1> %64, <8 x float> undef), !tbaa !12, !alias.scope !47
  %178 = fsub <8 x float> %175, %wide.masked.load49.3
  %179 = fpext <8 x float> %178 to <8 x double>
  %180 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %179, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %163)
  %181 = fptrunc <8 x double> %180 to <8 x float>
  %182 = bitcast float* %161 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %181, <8 x float>* %182, i32 4, <8 x i1> %64), !tbaa !12, !alias.scope !36, !noalias !39, !llvm.access.group !28
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %189, %if.end.r_exit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp5.i.i.us = icmp sgt i32 %sub4.i.i, %conv.i.i.us
  br i1 %cmp5.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add i32 %mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %16, i64 %idxprom.i.i.us
  %183 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %conv7.i.i.us = fpext float %183 to double
  %add10.i.i.us = add i32 %add.i.i.us, 1
  %idxprom11.i.i.us = sext i32 %add10.i.i.us to i64
  %arrayidx12.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom11.i.i.us
  %184 = load float, float* %arrayidx12.i.i.us, align 4, !tbaa !12
  %arrayidx16.i.i.us = getelementptr inbounds float, float* %8, i64 %idxprom.i.i.us
  %185 = load float, float* %arrayidx16.i.i.us, align 4, !tbaa !12
  %sub17.i.i.us = fsub float %184, %185
  %add20.i.i.us = add nsw i32 %mul19.i.i, %conv.i.i.us
  %idxprom21.i.i.us = sext i32 %add20.i.i.us to i64
  %arrayidx22.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom21.i.i.us
  %186 = load float, float* %arrayidx22.i.i.us, align 4, !tbaa !12
  %add23.i.i.us = fadd float %sub17.i.i.us, %186
  %arrayidx27.i.i.us = getelementptr inbounds float, float* %12, i64 %idxprom.i.i.us
  %187 = load float, float* %arrayidx27.i.i.us, align 4, !tbaa !12
  %sub28.i.i.us = fsub float %add23.i.i.us, %187
  %conv29.i.i.us = fpext float %sub28.i.i.us to double
  %188 = tail call double @llvm.fmuladd.f64(double %conv29.i.i.us, double 0xBFE6666666666666, double %conv7.i.i.us) #5
  %conv31.i.i.us = fptrunc double %188 to float
  store float %conv31.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !28
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %189 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %189, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !48

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.body, %pregion_for_entry.pregion_for_init.i.i
  %190 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond2.not = icmp eq i64 %190, 8
  br i1 %exitcond2.not, label %_pocl_kernel_fdtd_kernel3.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !34

_pocl_kernel_fdtd_kernel3.exit:                   ; preds = %pregion_for_end.i.i
  ret void
}

; Function Attrs: nofree nounwind
define void @_pocl_kernel_fdtd_kernel3_workgroup_fast(i8** nocapture readonly %0, { [3 x i64], [3 x i64], [3 x i64], i8*, i32*, i32, i32 }* nocapture readnone %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
  %6 = bitcast i8** %0 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr i8*, i8** %0, i64 1
  %9 = bitcast i8** %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr i8*, i8** %0, i64 2
  %12 = bitcast i8** %11 to float**
  %13 = load float*, float** %12, align 8
  %14 = getelementptr i8*, i8** %0, i64 3
  %15 = bitcast i8** %14 to i32**
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr i8*, i8** %0, i64 4
  %19 = bitcast i8** %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %mul.i.i.i = shl i64 %2, 5
  %mul3.i.i.i = shl i64 %3, 3
  %sub.i.i = add nsw i32 %17, -1
  %sub4.i.i = add nsw i32 %21, -1
  %22 = trunc i64 %3 to i32
  %23 = mul i32 %21, %22
  %24 = shl i32 %23, 3
  %25 = trunc i64 %2 to i32
  %26 = shl i32 %25, 5
  %27 = add i32 %24, %26
  %28 = zext i32 %21 to i64
  %29 = or i32 %27, 1
  %30 = shl i32 %22, 3
  %31 = or i32 %30, 1
  %32 = mul i32 %21, %31
  %33 = add i32 %32, %26
  %34 = trunc i64 %3 to i32
  %35 = mul i32 %21, %34
  %36 = shl i32 %35, 3
  %37 = trunc i64 %2 to i32
  %38 = shl i32 %37, 5
  %39 = add i32 %36, %38
  %40 = zext i32 %21 to i64
  %scevgep10 = getelementptr float, float* %13, i64 32
  %scevgep15 = getelementptr float, float* %7, i64 32
  %41 = or i32 %39, 1
  %42 = zext i32 %41 to i64
  %scevgep20 = getelementptr float, float* %7, i64 32
  %scevgep25 = getelementptr float, float* %10, i64 32
  %43 = shl i32 %34, 3
  %44 = or i32 %43, 1
  %45 = mul i32 %21, %44
  %46 = add i32 %45, %38
  %scevgep30 = getelementptr float, float* %10, i64 32
  %bound0 = icmp ult float* %13, %scevgep15
  %bound1 = icmp ult float* %7, %scevgep10
  %found.conflict = and i1 %bound0, %bound1
  %bound036 = icmp ult float* %13, %scevgep25
  %bound137 = icmp ult float* %10, %scevgep10
  %found.conflict38 = and i1 %bound036, %bound137
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %mul.i.i.i, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <8 x i32> undef, i32 %sub4.i.i, i32 0
  %broadcast.splat45 = shufflevector <8 x i32> %broadcast.splatinsert44, <8 x i32> undef, <8 x i32> zeroinitializer
  %47 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %48 = or <8 x i32> %47, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %49 = icmp sgt <8 x i32> %broadcast.splat45, %48
  %50 = extractelement <8 x i32> %48, i32 0
  %51 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %52 = or <8 x i32> %51, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %53 = icmp sgt <8 x i32> %broadcast.splat45, %52
  %54 = extractelement <8 x i32> %52, i32 0
  %55 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %56 = or <8 x i32> %55, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %57 = icmp sgt <8 x i32> %broadcast.splat45, %56
  %58 = extractelement <8 x i32> %56, i32 0
  %59 = trunc <8 x i64> %broadcast.splat to <8 x i32>
  %60 = or <8 x i32> %59, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %61 = icmp sgt <8 x i32> %broadcast.splat45, %60
  %62 = extractelement <8 x i32> %60, i32 0
  br label %pregion_for_entry.pregion_for_init.i.i

pregion_for_entry.pregion_for_init.i.i:           ; preds = %pregion_for_end.i.i, %5
  %_local_id_y.i.0 = phi i64 [ 0, %5 ], [ %187, %pregion_for_end.i.i ]
  %63 = mul i64 %_local_id_y.i.0, %40
  %64 = trunc i64 %63 to i32
  %65 = add i32 %39, %64
  %66 = sext i32 %65 to i64
  %scevgep = getelementptr float, float* %13, i64 %66
  %scevgep11 = getelementptr float, float* %scevgep10, i64 %66
  %67 = add i64 %63, %42
  %sext = shl i64 %67, 32
  %68 = ashr exact i64 %sext, 32
  %scevgep18 = getelementptr float, float* %7, i64 %68
  %scevgep21 = getelementptr float, float* %scevgep20, i64 %68
  %69 = trunc i64 %63 to i32
  %70 = add i32 %46, %69
  %71 = sext i32 %70 to i64
  %scevgep28 = getelementptr float, float* %10, i64 %71
  %scevgep31 = getelementptr float, float* %scevgep30, i64 %71
  %72 = mul i64 %_local_id_y.i.0, %28
  %add6.i.i.i = add nuw nsw i64 %_local_id_y.i.0, %mul3.i.i.i
  %conv2.i.i = trunc i64 %add6.i.i.i to i32
  %cmp.i.i = icmp sgt i32 %sub.i.i, %conv2.i.i
  %mul.i.i = mul nsw i32 %21, %conv2.i.i
  %add18.i.i = add nsw i32 %conv2.i.i, 1
  %mul19.i.i = mul nsw i32 %add18.i.i, %21
  br i1 %cmp.i.i, label %vector.scevcheck, label %pregion_for_end.i.i

vector.scevcheck:                                 ; preds = %pregion_for_entry.pregion_for_init.i.i
  %73 = trunc i64 %72 to i32
  %74 = add i32 %33, %73
  %75 = trunc i64 %72 to i32
  %76 = add i32 %29, %75
  %77 = trunc i64 %72 to i32
  %78 = add i32 %27, %77
  %79 = icmp sgt i32 %78, 2147483616
  %80 = icmp sgt i32 %76, 2147483616
  %81 = or i1 %79, %80
  %82 = icmp sgt i32 %74, 2147483616
  %83 = or i1 %81, %82
  br i1 %83, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.memcheck

pregion_for_entry.entry.i.i.us.preheader:         ; preds = %vector.memcheck, %vector.scevcheck
  br label %pregion_for_entry.entry.i.i.us

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound033 = icmp ult float* %scevgep, %scevgep21
  %bound134 = icmp ult float* %scevgep18, %scevgep11
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  %conflict.rdx39 = or i1 %conflict.rdx, %found.conflict38
  %bound040 = icmp ult float* %scevgep, %scevgep31
  %bound141 = icmp ult float* %scevgep28, %scevgep11
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx39, %found.conflict42
  br i1 %conflict.rdx43, label %pregion_for_entry.entry.i.i.us.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %84 = add i32 %mul.i.i, %50
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %13, i64 %85
  %87 = bitcast float* %86 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %87, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !49, !noalias !52
  %88 = fpext <8 x float> %wide.masked.load to <8 x double>
  %89 = add i32 %84, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %7, i64 %90
  %92 = bitcast float* %91 to <8 x float>*
  %wide.masked.load46 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %92, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !57
  %93 = getelementptr inbounds float, float* %7, i64 %85
  %94 = bitcast float* %93 to <8 x float>*
  %wide.masked.load47 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %94, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !58
  %95 = fsub <8 x float> %wide.masked.load46, %wide.masked.load47
  %96 = add nsw i32 %mul19.i.i, %50
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %10, i64 %97
  %99 = bitcast float* %98 to <8 x float>*
  %wide.masked.load48 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %99, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !59
  %100 = fadd <8 x float> %95, %wide.masked.load48
  %101 = getelementptr inbounds float, float* %10, i64 %85
  %102 = bitcast float* %101 to <8 x float>*
  %wide.masked.load49 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %102, i32 4, <8 x i1> %49, <8 x float> undef), !tbaa !12, !alias.scope !60
  %103 = fsub <8 x float> %100, %wide.masked.load49
  %104 = fpext <8 x float> %103 to <8 x double>
  %105 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %104, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %88)
  %106 = fptrunc <8 x double> %105 to <8 x float>
  %107 = bitcast float* %86 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %106, <8 x float>* %107, i32 4, <8 x i1> %49), !tbaa !12, !alias.scope !49, !noalias !52, !llvm.access.group !28
  %108 = add i32 %mul.i.i, %54
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %13, i64 %109
  %111 = bitcast float* %110 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %111, i32 4, <8 x i1> %53, <8 x float> undef), !tbaa !12, !alias.scope !49, !noalias !52
  %112 = fpext <8 x float> %wide.masked.load.1 to <8 x double>
  %113 = add i32 %108, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %7, i64 %114
  %116 = bitcast float* %115 to <8 x float>*
  %wide.masked.load46.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %116, i32 4, <8 x i1> %53, <8 x float> undef), !tbaa !12, !alias.scope !57
  %117 = getelementptr inbounds float, float* %7, i64 %109
  %118 = bitcast float* %117 to <8 x float>*
  %wide.masked.load47.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %118, i32 4, <8 x i1> %53, <8 x float> undef), !tbaa !12, !alias.scope !58
  %119 = fsub <8 x float> %wide.masked.load46.1, %wide.masked.load47.1
  %120 = add nsw i32 %mul19.i.i, %54
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %10, i64 %121
  %123 = bitcast float* %122 to <8 x float>*
  %wide.masked.load48.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %123, i32 4, <8 x i1> %53, <8 x float> undef), !tbaa !12, !alias.scope !59
  %124 = fadd <8 x float> %119, %wide.masked.load48.1
  %125 = getelementptr inbounds float, float* %10, i64 %109
  %126 = bitcast float* %125 to <8 x float>*
  %wide.masked.load49.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %126, i32 4, <8 x i1> %53, <8 x float> undef), !tbaa !12, !alias.scope !60
  %127 = fsub <8 x float> %124, %wide.masked.load49.1
  %128 = fpext <8 x float> %127 to <8 x double>
  %129 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %128, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %112)
  %130 = fptrunc <8 x double> %129 to <8 x float>
  %131 = bitcast float* %110 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %130, <8 x float>* %131, i32 4, <8 x i1> %53), !tbaa !12, !alias.scope !49, !noalias !52, !llvm.access.group !28
  %132 = add i32 %mul.i.i, %58
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %13, i64 %133
  %135 = bitcast float* %134 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %135, i32 4, <8 x i1> %57, <8 x float> undef), !tbaa !12, !alias.scope !49, !noalias !52
  %136 = fpext <8 x float> %wide.masked.load.2 to <8 x double>
  %137 = add i32 %132, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %7, i64 %138
  %140 = bitcast float* %139 to <8 x float>*
  %wide.masked.load46.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %140, i32 4, <8 x i1> %57, <8 x float> undef), !tbaa !12, !alias.scope !57
  %141 = getelementptr inbounds float, float* %7, i64 %133
  %142 = bitcast float* %141 to <8 x float>*
  %wide.masked.load47.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %142, i32 4, <8 x i1> %57, <8 x float> undef), !tbaa !12, !alias.scope !58
  %143 = fsub <8 x float> %wide.masked.load46.2, %wide.masked.load47.2
  %144 = add nsw i32 %mul19.i.i, %58
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %10, i64 %145
  %147 = bitcast float* %146 to <8 x float>*
  %wide.masked.load48.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %147, i32 4, <8 x i1> %57, <8 x float> undef), !tbaa !12, !alias.scope !59
  %148 = fadd <8 x float> %143, %wide.masked.load48.2
  %149 = getelementptr inbounds float, float* %10, i64 %133
  %150 = bitcast float* %149 to <8 x float>*
  %wide.masked.load49.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %150, i32 4, <8 x i1> %57, <8 x float> undef), !tbaa !12, !alias.scope !60
  %151 = fsub <8 x float> %148, %wide.masked.load49.2
  %152 = fpext <8 x float> %151 to <8 x double>
  %153 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %152, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %136)
  %154 = fptrunc <8 x double> %153 to <8 x float>
  %155 = bitcast float* %134 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %154, <8 x float>* %155, i32 4, <8 x i1> %57), !tbaa !12, !alias.scope !49, !noalias !52, !llvm.access.group !28
  %156 = add i32 %mul.i.i, %62
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %13, i64 %157
  %159 = bitcast float* %158 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %159, i32 4, <8 x i1> %61, <8 x float> undef), !tbaa !12, !alias.scope !49, !noalias !52
  %160 = fpext <8 x float> %wide.masked.load.3 to <8 x double>
  %161 = add i32 %156, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %7, i64 %162
  %164 = bitcast float* %163 to <8 x float>*
  %wide.masked.load46.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %164, i32 4, <8 x i1> %61, <8 x float> undef), !tbaa !12, !alias.scope !57
  %165 = getelementptr inbounds float, float* %7, i64 %157
  %166 = bitcast float* %165 to <8 x float>*
  %wide.masked.load47.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %166, i32 4, <8 x i1> %61, <8 x float> undef), !tbaa !12, !alias.scope !58
  %167 = fsub <8 x float> %wide.masked.load46.3, %wide.masked.load47.3
  %168 = add nsw i32 %mul19.i.i, %62
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %10, i64 %169
  %171 = bitcast float* %170 to <8 x float>*
  %wide.masked.load48.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %171, i32 4, <8 x i1> %61, <8 x float> undef), !tbaa !12, !alias.scope !59
  %172 = fadd <8 x float> %167, %wide.masked.load48.3
  %173 = getelementptr inbounds float, float* %10, i64 %157
  %174 = bitcast float* %173 to <8 x float>*
  %wide.masked.load49.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* %174, i32 4, <8 x i1> %61, <8 x float> undef), !tbaa !12, !alias.scope !60
  %175 = fsub <8 x float> %172, %wide.masked.load49.3
  %176 = fpext <8 x float> %175 to <8 x double>
  %177 = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %176, <8 x double> <double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666, double 0xBFE6666666666666>, <8 x double> %160)
  %178 = fptrunc <8 x double> %177 to <8 x float>
  %179 = bitcast float* %158 to <8 x float>*
  call void @llvm.masked.store.v8f32.p0v8f32(<8 x float> %178, <8 x float>* %179, i32 4, <8 x i1> %61), !tbaa !12, !alias.scope !49, !noalias !52, !llvm.access.group !28
  br label %pregion_for_end.i.i

pregion_for_entry.entry.i.i.us:                   ; preds = %if.end.r_exit.i.i.us, %pregion_for_entry.entry.i.i.us.preheader
  %_local_id_x.i.0.us = phi i64 [ %186, %if.end.r_exit.i.i.us ], [ 0, %pregion_for_entry.entry.i.i.us.preheader ]
  %add1.i.i.i.us = add nuw nsw i64 %_local_id_x.i.0.us, %mul.i.i.i
  %conv.i.i.us = trunc i64 %add1.i.i.i.us to i32
  %cmp5.i.i.us = icmp sgt i32 %sub4.i.i, %conv.i.i.us
  br i1 %cmp5.i.i.us, label %if.then.i.i.us, label %if.end.r_exit.i.i.us

if.then.i.i.us:                                   ; preds = %pregion_for_entry.entry.i.i.us
  %add.i.i.us = add i32 %mul.i.i, %conv.i.i.us
  %idxprom.i.i.us = sext i32 %add.i.i.us to i64
  %arrayidx.i.i.us = getelementptr inbounds float, float* %13, i64 %idxprom.i.i.us
  %180 = load float, float* %arrayidx.i.i.us, align 4, !tbaa !12
  %conv7.i.i.us = fpext float %180 to double
  %add10.i.i.us = add i32 %add.i.i.us, 1
  %idxprom11.i.i.us = sext i32 %add10.i.i.us to i64
  %arrayidx12.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom11.i.i.us
  %181 = load float, float* %arrayidx12.i.i.us, align 4, !tbaa !12
  %arrayidx16.i.i.us = getelementptr inbounds float, float* %7, i64 %idxprom.i.i.us
  %182 = load float, float* %arrayidx16.i.i.us, align 4, !tbaa !12
  %sub17.i.i.us = fsub float %181, %182
  %add20.i.i.us = add nsw i32 %mul19.i.i, %conv.i.i.us
  %idxprom21.i.i.us = sext i32 %add20.i.i.us to i64
  %arrayidx22.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom21.i.i.us
  %183 = load float, float* %arrayidx22.i.i.us, align 4, !tbaa !12
  %add23.i.i.us = fadd float %sub17.i.i.us, %183
  %arrayidx27.i.i.us = getelementptr inbounds float, float* %10, i64 %idxprom.i.i.us
  %184 = load float, float* %arrayidx27.i.i.us, align 4, !tbaa !12
  %sub28.i.i.us = fsub float %add23.i.i.us, %184
  %conv29.i.i.us = fpext float %sub28.i.i.us to double
  %185 = tail call double @llvm.fmuladd.f64(double %conv29.i.i.us, double 0xBFE6666666666666, double %conv7.i.i.us) #5
  %conv31.i.i.us = fptrunc double %185 to float
  store float %conv31.i.i.us, float* %arrayidx.i.i.us, align 4, !tbaa !12, !llvm.access.group !28
  br label %if.end.r_exit.i.i.us

if.end.r_exit.i.i.us:                             ; preds = %if.then.i.i.us, %pregion_for_entry.entry.i.i.us
  %186 = add nuw nsw i64 %_local_id_x.i.0.us, 1
  %exitcond.not = icmp eq i64 %186, 32
  br i1 %exitcond.not, label %pregion_for_end.i.i.loopexit, label %pregion_for_entry.entry.i.i.us, !llvm.loop !61

pregion_for_end.i.i.loopexit:                     ; preds = %if.end.r_exit.i.i.us
  br label %pregion_for_end.i.i

pregion_for_end.i.i:                              ; preds = %pregion_for_end.i.i.loopexit, %vector.body, %pregion_for_entry.pregion_for_init.i.i
  %187 = add nuw nsw i64 %_local_id_y.i.0, 1
  %exitcond2.not = icmp eq i64 %187, 8
  br i1 %exitcond2.not, label %_pocl_kernel_fdtd_kernel3.exit, label %pregion_for_entry.pregion_for_init.i.i, !llvm.loop !34

_pocl_kernel_fdtd_kernel3.exit:                   ; preds = %pregion_for_end.i.i
  ret void
}

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.masked.store.v8f32.p0v8f32(<8 x float>, <8 x float>*, i32 immarg, <8 x i1>) #4

attributes #0 = { nounwind readnone speculatable willreturn }
attributes #1 = { alwaysinline nofree norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="skylake" "target-features"="+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sgx,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { argmemonly nounwind readonly willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!opencl.ocl.version = !{!3}
!llvm.ident = !{!4}
!opencl.spir.version = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, i32 2}
!4 = !{!"clang version 11.0.0 (git@github.com:llvm/llvm-project.git 91e89f9a5115b0f83b8f026e1ad0e6d1f885fa9b)"}
!5 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!6 = !{!"none", !"none", !"none", !"none", !"none"}
!7 = !{!"DATA_TYPE*", !"DATA_TYPE*", !"DATA_TYPE*", !"int", !"int"}
!8 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!9 = !{!"", !"", !"", !"", !""}
!10 = !{!"ex", !"ey", !"hz", !"nx", !"ny"}
!11 = !{i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20, !21, !22, !23}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = !{!21}
!25 = !{!20}
!26 = !{!23}
!27 = !{!22}
!28 = !{!29, !30}
!29 = distinct !{}
!30 = distinct !{}
!31 = distinct !{!31, !32, !33}
!32 = !{!"llvm.loop.parallel_accesses", !29}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.parallel_accesses", !30}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40, !41, !42, !43}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !38}
!44 = !{!41}
!45 = !{!40}
!46 = !{!43}
!47 = !{!42}
!48 = distinct !{!48, !32, !33}
!49 = !{!50}
!50 = distinct !{!50, !51}
!51 = distinct !{!51, !"LVerDomain"}
!52 = !{!53, !54, !55, !56}
!53 = distinct !{!53, !51}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !51}
!56 = distinct !{!56, !51}
!57 = !{!54}
!58 = !{!53}
!59 = !{!56}
!60 = !{!55}
!61 = distinct !{!61, !32, !33}
