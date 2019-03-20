; ModuleID = 'Test2.c'
source_filename = "Test2.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: noinline nounwind ssp uwtable
define void @test1(i32, i32, i32, i32, i32, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  %14 = add nsw i32 %13, 11
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* %8, align 4
  br label %18

; <label>:18:                                     ; preds = %37, %6
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

; <label>:22:                                     ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %37

; <label>:33:                                     ; preds = %22
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %11, align 4
  br label %37

; <label>:37:                                     ; preds = %33, %30
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  br label %18

; <label>:41:                                     ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @test2(i32, i32, i32, i32, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br label %13

; <label>:13:                                     ; preds = %26, %5
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 100
  br i1 %15, label %16, label %35

; <label>:16:                                     ; preds = %13
  store i32 210, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 20
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %16
  store i32 200, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 100
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  store i32 101, i32* %9, align 4
  br label %24

; <label>:23:                                     ; preds = %19
  store i32 12000, i32* %8, align 4
  br label %24

; <label>:24:                                     ; preds = %23, %22
  store i32 510, i32* %7, align 4
  br label %26

; <label>:25:                                     ; preds = %16
  store i32 231, i32* %7, align 4
  store i32 2544, i32* %8, align 4
  store i32 2200, i32* %9, align 4
  br label %26

; <label>:26:                                     ; preds = %25, %24
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %13

; <label>:35:                                     ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @test3(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %7, align 4
  br label %11

; <label>:11:                                     ; preds = %17, %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  br label %17

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %11, label %20

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @test4(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

; <label>:8:                                      ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 3
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %12
  store i32 0, i32* %5, align 4
  br label %22

; <label>:19:                                     ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %22

; <label>:22:                                     ; preds = %19, %18
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8

; <label>:25:                                     ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define void @test5(i32, i32, i32, i32, i32) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 2, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %10, align 4
  %15 = mul nsw i32 %14, 2
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %20

; <label>:17:                                     ; preds = %5
  %18 = load i32, i32* %11, align 4
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* %6, align 4
  store i32 5, i32* %8, align 4
  br label %23

; <label>:20:                                     ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* %6, align 4
  store i32 8, i32* %8, align 4
  br label %23

; <label>:23:                                     ; preds = %20, %17
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %11, align 4
  br label %25

; <label>:25:                                     ; preds = %29, %23
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %38

; <label>:29:                                     ; preds = %25
  store i32 2, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  br label %25

; <label>:38:                                     ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
