---
title: Kotlin 技术月报 | 2023 年 6 月
date: 2023-06-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定尝试使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频，社区活动等

## 最新动态
### Kotlin 1.9.0-Beta 版本发布
Kotlin 1.9.0-Beta 版本已发布，主要包括以下内容

- 持续完善 Kotlin K2 编译器，添加了对 Kotlin/Native 后端的支持
- 1.7.20 版本引入的..<操作符成为稳定 API
- 提供了一个新的扩展函数createParentDirectories，可用于创建带有必要父目录的新文件，如果目录已存在，则不操作，否则创建目录
- Kotlin 跨平台 Gradle 插件支持配置缓存
- Google 的 Android 团队将提供自己的 Gradle 插件来支持 Kotlin Multiplatform 中的 Android Target
- Kotlin/Native 在访问object单例的const val字段时将不再初始化object

详情可见博客文章：[Kotlin1.9.0-Beta，它来了！！](https://juejin.cn/post/7241567583505072183)

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

### Kotlin 编译器介绍
[Crash Course on the Kotlin Compiler | K1 + K2 Frontends, Backends](https://medium.com/google-developer-experts/crash-course-on-the-kotlin-compiler-k1-k2-frontends-backends-fe2238790bd8)

本文介绍了 Kotlin 编译的总体流程，包括 K1 和 K2 两个编译器前端的异同特点，以及编译器前端产物是如何通过 JVM、JS、Native 和 WASM 四个编译器后端，来生成相应的目标产物的。

同时我们知道 K2 编译器前端比起 k1 编译器前端在性能上有了很大的提升，本文也介绍了 K1 编译器前端性能的主要问题在于非常糟糕的代码局部性和内存局部性。所有的`descriptors`都是惰性的，因此编译器总是在不同部分的代码之间跳转，从而破坏了 JIT 优化的数量。此外，解析的所有信息都存储在一个大的 Map（`BindingContext`）中，因此 CPU 不能充分缓存对象。

### 如何使用 Kotlin 技术栈构建一个播客网站
https://www.slideshare.net/shengyou/how-i-make-a-podcast-website-using-serverless-technology-in-2023

https://podcast.kotlin.tips/episodes/index.html

### Kotlin 动态化方案
https://code.cash.app/zipline

Kotlin 动态化方案

### 从Kotlin中return@forEach了个寂寞
https://juejin.cn/post/7243819009866235964

## 精选视频
### Compose 跨平台快速上手
[Build Your First Compose Multiplatform App (KMM)](https://www.youtube.com/watch?v=ZxBUd2TbVGk)：Philipp Lackner 是一位在 YouTube 上非常活跃的讲师，主要分享 Kotlin 与 Android 相关的教程。在此视频中，他详细介绍了如何逐步创建一个 Compose 跨平台项目，实现在 Android 和 iOS 平台上共享 UI。

### Kotlin 编译成 WebAssembly
[Kotlin goes WebAssembly!](https://www.youtube.com/watch?v=oIbX7nrSTPQ)：Kotlin 1.8.20 引入了新的编译后端：WebAssembly，Kotlin 代码通过编译成 WebAssembly ，可以运行在浏览器，Node.js 等环境中。本视频主要介绍了 Wasm 是什么，Kotlin Wasm 的现状与示例，以及其在未来的展望

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/june/p1.png)

### Compose 渲染机制的秘密
[Compose 渲染机制的秘密](https://www.bilibili.com/video/BV1YN411k7Cp/)

## 社区活动