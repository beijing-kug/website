---
title: Kotlin 技术月报 | 2023 年 6 月
date: 2023-06-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定尝试使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 1.9.0-RC 版本发布
[What's new in Kotlin 1.9.0-RC](https://kotlinlang.org/docs/whatsnew-eap.html)：Kotlin 1.9.0-RC 版本已发布，主要包括以下内容

- 持续完善 Kotlin K2 编译器，添加了对 Kotlin/Native 后端的支持
- 在枚举类中推荐使用`entries`属性代替`values()`方法进行遍历
- 1.7.20 版本引入的`..<`操作符成为稳定 API
- 提供了一个用于根据名称获取正则表达式`capture group`的新 API 
- 提供了一个新的扩展函数`createParentDirectories`，可用于创建带有必要父目录的新文件，如果目录已存在，则不操作，否则创建目录
- Kotlin 跨平台 Gradle 插件支持配置缓存
- Google 的 Android 团队将提供自己的 Gradle 插件来支持 Kotlin Multiplatform 中的 Android Target
- Kotlin/Native 在访问 object 单例的 const val 字段时将不再初始化 object

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

同时我们知道 K2 编译器前端比起 k1 编译器前端在性能上有了很大的提升，本文也介绍了 K1 编译器前端的主要性能问题在于非常糟糕的代码局部性和内存局部性。所有的`descriptors`都是惰性的，因此编译器总是在不同部分的代码之间跳转，从而破坏了 JIT 优化的数量。此外，解析的所有信息都存储在一个大的 Map（`BindingContext`）中，因此 CPU 不能充分缓存对象。

### [从Kotlin中return@forEach了个寂寞](https://juejin.cn/post/7243819009866235964)
本文探讨了 Kotlin forEach 中一个容易出错的细节，在 Kotlin 语言中，`return@forEach` 的作用类似于 continue 而不是 break。文章解释了其背后的原理，并提供了一个相应的解决方案。

```kotlin
(1..7).forEach {
    if (it == 3) {
        return@forEach // 相当于 continue 而不是 break
    }
    Log.d("xys", "Num: $it")
}
```

### 如何使用 Kotlin 技术栈构建一个播客网站
《Kotlin 炉边漫谈》是一个讨论 Kotlin 相关资讯的中文播客，播客网站现已上线：[Kotlin 炉边漫谈官方网站](https://podcast.kotlin.tips/)

该网站使用 Kotlin 技术栈构建，包括前端展示，后端云函数接口，数据爬虫获取与播放数据图表分析等功能。目前前端部分仍然是由 js 框架构建，后续在 Kotlin/WASM 成熟后或许可以弥补这一缺憾。同时后续也将推出 Kotlin 跨平台移动端 app，敬请期待。

这个例子是 Kotlin 端到端解决方案的一个很好的示范，详情可见：[how I make a podcast website using serverless technology in 2023](https://www.slideshare.net/shengyou/how-i-make-a-podcast-website-using-serverless-technology-in-2023)

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/june/p4.jpg)

### Kotlin 动态化框架 Zipline
[Dynamic Kotlin with Zipline](https://code.cash.app/zipline)

Zipline 是 Cash 公司开源的一款 Kotlin 动态化框架，借助这个框架，我们可以使用 Kotlin 编写功能和业务逻辑，并将它们动态推送给用户，免去了对应用发版的依赖。

Zipline 基于 Kotlin 跨平台构建，目前 1.0 版本是通过 Kotlin/Js 后端将 Kotlin 代码编译成 Js 代码，Js 代码发送到端上后通过 QuickJs 引擎执行。需要注意的是，编译成 Js 代码仅是 Zipline 内部的一个实现细节，因此在后续的迭代中可以方便地替换，在 Zipline 2.0 中将会切换到 WebAssembly。

Zipline 不仅可以动态更新业务逻辑，通过与 Compose 跨平台框架 Redwood 结合，也可以实现动态更新 UI，详情可见 Jake Wharton 大神在 KotlinConf 上的分享： [Playing in the Treehouse with Redwood and Zipline](https://kotlinconf.com/talks/466843/)

Redwood + Zipline = Treehouse = "支持动态化的 Compose 跨平台方案"。这套方案解决了 Kotlin UI 跨平台及动态化两个关键问题，具有很大的想象空间和应用潜力。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/july/p2.png)

## 精选视频
### Compose 跨平台快速上手
[Build Your First Compose Multiplatform App (KMM)](https://www.youtube.com/watch?v=ZxBUd2TbVGk)

Philipp Lackner 是一位在 YouTube 上非常活跃的讲师，主要分享 Kotlin 与 Android 相关的教程。在此视频中，他详细介绍了如何逐步创建一个 Compose 跨平台项目，实现在 Android 和 iOS 平台上共享 UI。

### Kotlin 编译成 WebAssembly
[Kotlin goes WebAssembly!](https://www.youtube.com/watch?v=oIbX7nrSTPQ)

Kotlin 1.8.20 引入了新的编译后端：WebAssembly，Kotlin 代码通过编译成 WebAssembly ，可以运行在浏览器，Node.js 等环境中。本视频主要介绍了 Wasm 是什么，Kotlin Wasm 的现状与示例，以及其在未来的展望

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/june/p1.png)

### Compose 渲染机制介绍
[Compose 渲染机制的秘密](https://www.bilibili.com/video/BV1YN411k7Cp/)

这是由上海 Kotlin 用户组组织者带来的一场精彩分享。在本视频中，您将了解到 Jetpack Compose 是如何在屏幕上绘制的，同时还会介绍 Skia 引擎与 OpenGL ES、Vulkan 等图形 API 之间的关系以及 Compose-Multiplatform 在各个平台上的渲染方式。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/july/p1.png)