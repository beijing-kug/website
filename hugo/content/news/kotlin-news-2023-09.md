---
title: Kotlin 技术月报 | 2023 年 9 月
date: 2023-09-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 1.9.20-Beta 发布
[What's new in Kotlin 1.9.20-Beta](https://kotlinlang.org/docs/whatsnew-eap.html)

Kotlin 1.9.20-Beta 版本已发布，具体包括以下内容：

- 全新的 Kotlin 多平台项目模板，减少配置中的重复代码
- Kotlin 多平台插件添加了对 Gradle 配置缓存的完全支持
- Kotlin/Native 默认使用新版内存分配器
- Kotlin/Native 垃圾回收性能持续提升
- 添加了全新的 wasm-wasi 目标，并将原有的 wasm 目标重命名为 wasm-js
- 标准库添加了对 WASI API 的支持

### Dagger/Hilt 支持 KSP
[https://github.com/google/dagger/releases](https://github.com/google/dagger/releases)

Dagger 2.48 版本发布，提供了对 Dagger 和 Hilt KSP 处理器的支持。

为了使用 Dagger 的 KSP 处理器，主要需要完成以下工作：

- 按照基本设置，将 Dagger 的处理器从 kapt 迁移到 ksp。
- 将任何 Dagger SPI 插件迁移到新的 Dagger SPI 插件 API。
- 确保没有 Kapt 处理器生成需要与 Dagger 交互的类。

需要注意的是，Dagger 的 KSP 处理器仍处于 alpha 阶段，官方目前主要关注的是确保正确性而不是优化性能，在使用的过程中有任何问题都可及时向官方反馈

### TouchLab 开源 SKIE 项目
[SKIE is Open Source](https://touchlab.co/skie-is-open-source)

SKIE 是 TouchLab 开源的 Kotlin 多平台桥接 Swift API 的工具，通过该工具，可以生成 Swift 友好的 API.

SKIE 通过为 Kotlin 编译器创建的 Objective-C 头文件生成 Swift 包装器来提高 Kotlin 和 Swift 之间的互操作性。它重新创建了两种语言都支持的功能，这些功能在从 Kotlin 到 Objective-C 再到 Swift 的转换中丢失了，例如：

- 详尽的密封类和真正的 Swift 枚举。
- 默认参数
- 无缝的`suspend`函数与`flow`

### ktlint 发布 1.0.0 版本
[https://github.com/pinterest/ktlint/releases/tag/1.0.0](https://github.com/pinterest/ktlint/releases/tag/1.0.0)

ktlint 是被广泛使用的 Kotlin lint 库，终于发布了 1.0.0 版本，其中包含新功能和一些重大更改，详情可见以上链接。

### Jetpack Paging 支持 Kotlin 跨平台
[https://developer.android.com/jetpack/androidx/releases/paging#3.3.0-alpha02](https://developer.android.com/jetpack/androidx/releases/paging#3.3.0-alpha02)

Jetpack Paging 3.3.0-alpha02 版本添加了对 Kotlin 跨平台的支持，目前已支持 android, Jvm, iOS, macOS, linux 平台。这在很大程度上要归功于此前 CashApp 开源的[ multiplatform-paging ](https://github.com/cashapp/multiplatform-paging)项目的上游工作。

Paging 库也成为继 Annotations, Collections, DataStore 之后又一个支持 KMP 的 Jetpack 库。

### Kotlin 重返 TIOBE 指数前 20 位
[September Headline: Kotlin reenters the TIOBE index top 20](https://www.tiobe.com/tiobe-index/)

在 2023 年 9 月，Kotlin 再次挺进了 TIOBE 指数前 20 位，此前 Kotlin 在 2017 年 Google/IO 大会上被宣布为 Android 开发的一级语言时也曾达到过这一排名。经过 6 年的发展，Kotlin 建立起了一个稳定的社区，逐渐崛起并赢得了大批的忠实拥趸。

对于此次 Kotlin 再次杀进 Top 20，TIOBE 首席执行官 Paul Jansen 认为 Kotlin 这次的崛起可能会更有力，因为其用户群体经过这 6 年早已不是 2017 年的规模了。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/september/p13.jpg)

## 精选博客
### [Java切换到Kotlin，Crash率上升了？](https://juejin.cn/post/7274163003158511616)
众所周知，Kotlin 相比 Java 的一大优势便是空安全，因此从 Java 切换到 Kotlin 理论上稳定性将有所提升。

不过本文作者在将一个 Java 老项目使用 Kotlin 重构上线后却发现 Crash 率有所上升。而大部分 Crash 发生在 Java 调用 Kotlin 的函数里，本文分析了具体的 Crash 场景以及一些规避方式。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/september/p1.jpg)

### 架构级别的 Kotlin linter: Konsist，了解一下
[Refactoring Multi-Module Kotlin Project With Konsist](https://proandroiddev.com/refactoring-multi-module-kotlin-project-with-konsist-f0de0de59a3d)

或许你早就知道文件级别的 Kotlin linter，例如 Ktlint，Detekt，它们可以检测出文件中的代码风格，命名规范，代码复杂度，代码坏味道等问题。

而 Konsist 则是架构级别的 Kotlin linter，想象一下你有如下代码检查需求：

- 每个 ViewModel 的子类文件名必须以 ViewModel结尾
- `@Repository`注解的类必须存放在`..repository..`包名下
- `presentation`层的类(存放在`presentation`包名下)只能访问`domain`层的类(存放在`doomain`包名下)
- 每个`UseCase`类的构造函数参数都按字母顺序排列

总得来说，Konsist 解决的就是这类问题，通过这种方式可以提升架构中各个层级代码结构的规范性和统一性。

本文介绍了如何使用 Konsist 重构一个多模块 Kotlin 项目，如何让写在不同模块的同一层级的代码，遵循同一规范与风格。

### 使用 Kotlin 高级特性与技巧写出更好的代码
[Getting Better with Kotlin — Exploring Advanced Features and Effective Coding Strategies](https://proandroiddev.com/getting-better-with-kotlin-exploring-advanced-features-and-effective-coding-strategies-c145b388481e)

Kotlin 不仅提供了简洁的语法和与 Java 的无缝交互性，还拥有一系列高级功能，能够提升编码体验。本文介绍了 Kotlin 的一些高级特性与实用技巧。

- Inline Classes: 更加紧凑的抽象
- Type Aliases: 增强可读性
- Sealed Classes: Kotlin 版枚举
- 属性代理：更加优雅的管理属性读写
- 带有 Lambda 的 DSL: 构建用于特定于领域的语言
- 运算符重载: 添加个人风格

### 通过 Kotlin 协程轻松实现连续依次弹窗需求
[如何通过Kotlin协程, 简化"连续依次弹窗(Dialog队列)"的需求](https://juejin.cn/post/7275943125821571106)

有时我们会有连续依次弹窗的需求，即上一个弹窗关闭后再弹出下一个弹窗，这种需求如果使用回调来做很容易陷入回调地狱，利用 Kotlin 协程可以轻松实现类似的需求

```kotlin
lifecycleScope.launch {
    showDialog("签到活动", "签到领10000币") // 直到dialog被关闭, 才会继续运行下一行
    showDialog("新手任务", "做任务领20000币") // 直到dialog被关闭, 才会继续运行下一行
    showDialog("首充奖励", "首充6元送神装")
}

suspend fun showDialog(title: String, content: String) = suspendCancellableCoroutine { continuation ->
    MaterialAlertDialogBuilder(this)
        .setTitle(title)
        .setMessage(content)
        .setPositiveButton("我知道了") { dialog, which ->
            dialog.dismiss()
        }
        .setOnDismissListener {
            continuation.resume(Unit)
        }
        .show()
}
```

### [从服务端到客户端，一次 Ktor 的跨端实践](https://juejin.cn/post/7264503433965387839)
经常使用 Kotlin 写项目的人应该都对 Ktor 这个框架不陌生，它严格意义上不仅仅是个网络框架，而是一个可以创建异步，高性能和轻量级的 Web 服务的框架，简单的来说它既能写服务端也能写客户端。本文介绍了如何一步步使用 Ktor 来写服务端代码，并在客户端使用 Ktor 对它发起网络请求，具体包括以下内容

1. 服务端如何创建 Ktor 项目
2. 服务端 Ktor 项目结构介绍
3. 使用 Ktor 开发第一个接口
4. 客户端使用 Ktor 请求接口

总得来说，使用 ktor 可以同时进行服务端与客户端的开发，给个人 Kotlin 开发者提供了一种全栈的技术方案

## 精选视频
### 使用 Kotlin 练习算法技巧
[Practice Technical Interview Algorithms in Kotlin](https://www.youtube.com/watch?v=IBeOZXsxxXA)

在 IDEA 或者 Android Studio 上安装`Jetbrains Academy`插件后就可以打开`Algorithmic Challenges in Kotlin`课程，然后就可以体验在 IDEA 上使用 Kotlin 写算法题。

该课程可以帮助参与者为编码面试做好准备，并提供对算法技术的扎实理解。

- 📚 掌握 30 多种算法，包括暴力算法、贪心算法、分而治之和动态规划等内容。
- 🧑‍💻 直接在 JetBrains IDE 中练习，方便调试。解决一系列精心挑选的编码挑战，涵盖算法面试中最流行的主题。
- 💪 使用 Kotlin（一种现代多平台编程语言）实现您的解决方案。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/september/p8.jpg)

### Android 深入理解协程
[Android 深入理解协程 BaguTree周六茶话](https://www.bilibili.com/video/BV1gp4y1w7VD/)

Kotlin 协程在 Android 中的应用非常广泛，本视频主要从协程解决了什么问题，协程的关键角色剖析，结合源码解析协程常见问题等角度深入介绍了协程的使用与原理

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/september/p12.jpeg)