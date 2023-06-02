---
title: Kotlin 技术月报 | 2023 年 6 月
date: 2023-06-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定尝试使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频，社区活动等

## 最新动态


## 精选博客
### [Kotlin 中的函数式编程：探索 Monad 及其实际用例](https://medium.com/@summitkumar/functional-programming-in-kotlin-exploring-monads-and-their-real-world-use-cases-5a8b23be1268)

Kotlin 是一门从一开始就支持函数式编程的语言，而 Monad 是函数式编程中的一个重要概念，本文主要介绍了 Monad 是什么，在 Kotlin 函数式编程中如何使用它们，以及一些 Monad 的实际应用案例。

Monad 的概念看起来有些难以理解， 关于 Monad 到底是什么也可以参考灰蓝天际大佬翻译的：
[Kotlin 版图解 Functor、Applicative 与 Monad](https://hltj.me/kotlin/2017/08/25/kotlin-functor-applicative-monad-cn.html)

### 使用 ParallelGC 加快 Kotlin 编译速度，并减少内存占用
[JDK 17: Using ParallelGC for the Kotlin process in Android Builds](https://dev.to/cdsap/jdk-17-using-parellgc-for-the-kotlin-process-in-android-builds-24af)

我们知道 Kotlin 编译过程中守护进程会占据大量的内存，这其中不可避免的会发生 GC，因此不同的垃圾回收策略也会影响 Kotlin 编译速度

本文分别使用 G1 垃圾回收器与并行垃圾回收器编译 nowinandroid 项目，对比数据如下：

- Kotlin 编译任务耗时减少了22%
- Kotlin 进程的垃圾回收器耗时减少了60% 
- Kotlin进程内存使用量减少了51%

当然不同项目的测试结果可能不同，数据仅供参考。不过 Android 文档中的优化构建速度指南也推荐我们使用并发垃圾回收器，因此感兴趣的同学也可以尝试下，看看与本文的测试数据是否一致

## 精选视频
### Compose 跨平台快速上手
[Build Your First Compose Multiplatform App (KMM)](https://www.youtube.com/watch?v=ZxBUd2TbVGk)：Philipp Lackner 是一位在 YouTube 上非常活跃的讲师，主要分享 Kotlin 与 Android 相关的教程。在此视频中，他详细介绍了如何逐步创建一个 Compose 跨平台项目，实现在 Android 和 iOS 平台上共享 UI。

## 社区活动