---
title: Kotlin 技术月报 | 2024 年 3 月
date: 2024-03-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### [Compose Multiplatform 1.6 版本发布](https://blog.jetbrains.com/kotlin/2024/02/compose-multiplatform-1-6-0-release/)
Compose Multiplatform 1.6 版本已发布，具体包括如下内容：

- 更新了通用资源管理 API: 可以使用生成的 Res 对象在 Compose Multiplatform 代码中访问资源
- 引入了通用 UI 测试 API: UI 测试可以帮助您确保应用程序的行为符合预期，Compose Multiplatform 1.6 为此引入了通用 UI 测试 API
- 添加了 iOS 辅助功能支持: Compose Multiplatform 现在为 iOS 提供支持，使残障人士可以与 Compose UI 以与原生 UI 相同的舒适度进行交互
- 带来了许多其他功能和改进: 包括对 Fleet 的 @Preview 注解的支持，iOS 与桌面端的一些优化等

### [Ktor 2024 路线图发布](https://blog.jetbrains.com/kotlin/2024/03/the-ktor-roadmap-for-2024/)
Ktor 是一个轻松构建联网应用（web 应用、 HTTP 服务、 移动应用以及浏览器应用）的框架。Ktor 2024 路线图已发布, Ktor 团队将继续保持框架轻量级、灵活和透明，提高功能质量和性能，扩展Ktor插件生态系统，具体包括如下内容：

- 新功能：
    - 引入OpenTelemetry插件，用于生成和收集遥测数据。
    - 集成gRPC，支持创建和消费基于gRPC的服务。
    - 在Ktor 3.0.0中迁移到Kotlinx-io库，以支持多平台。
    - 添加对管理事务的支持，简化数据库访问。
    - 简化依赖注入，支持集成像Koin这样的框架。
- 改进Ktor开发：
    - 改进文档，提供更全面、更易于理解的教程和指南。
    - 引入插件注册表，支持第三方Ktor插件。
    - 发布一个命令行工具，以便在终端或Shell中创建和修改Ktor项目。

### Kotlin 1.9.23 版本发布
Kotlin 1.9.23 已在 GitHub 中标记并更新。查看其中包含的所有内容：[https://github.com/JetBrains/kotlin/releases/tag/v1.9.23](https://github.com/JetBrains/kotlin/releases/tag/v1.9.23)

## 精选博客
### [Kotlin Multiplatform 初探](https://juejin.cn/post/7340307629892960296)
众所周知，Kotlin 是一门跨平台的语言，它可以在 JVM、Android、iOS、Web、Native 等多个平台上运行。Kotlin Multiplatform 是 Kotlin 的一个重要特性，它可以让我们在一个项目中编写一份代码，然后在多个平台上运行。本文将带你初探 Kotlin Multiplatform。具体包括如下内容：

- Kotlin Multiplatform 是什么？
- KMP的优势是什么
- 一个简单的demo
- KMP 实现原理
- KMP生态
- 业界案例

### Compose 2023 使用情况调查
[State of Compose 2023](https://www.composables.com/state-of-compose)

Compose 的推出已经有一段时间了，那么在 2023 年 Compose 的使用情况到底如何呢？本文一项针对 165 名参与者询问其 Compose API 知识和使用情况的调查结果，它涉及了Compose API的使用和认识，包括状态管理、副作用、动画效果的痛点，以及不同的库和框架。报告还探讨了Compose在导航、测试、图像加载和组件库方面的挑战。此外，调查还包括了开发者对Compose的满意度、缺失功能以及学习资源。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/march/p7.png)

### 如何测量与分析 Kotlin/JS 包体积
[Measuring and analyzing the KotlinJS bundle size](https://touchlab.co/measuring-kotlin-js-bundle)

Kotlin/JS 的原理是将 Kotlin 代码编译成 JavaScript，而要将 Kotlin/JS 用于生产环境，合适的包体积大小至关重要。较小的 JavaScript 包体积有助于提升网站的加载速度和性能。本文介绍了两种如何测量您的 Kotlin/JS 包体积大小并可视化库和类的影响。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/march/p8.png)

### Kotlin 的 -Xjdk-release 标签如何影响编译
[Kotlin's JDK release compatibility flag](https://jakewharton.com/kotlins-jdk-release-compatibility-flag/)

```kotlin
val widget = edit.widgets.removeFirst()
```

在将编译 SDK 版本设置为 Java 21，jvmTarget 版本设置为 1.8 的情况下，以上代码运行时发生了 NoSuchMethodError 异常的问题。

本文分析主要原因在于 Java21 中 List 接口新增了 removeFirst 方法，而成员函数优化级默认高于扩展函数，导致引用到了高版本 Jdk 的方法。

而 jvmTarget 没有生效的原因是因为 jvmTarget 只是控制编译器生成的字节码的版本，而不是用于指定系统核心类库的位置(需要通过 -bootclasspath 参数来指定)。

在 Kotlin 1.7 之后，我们可以通过`-Xjdk-release`参数来统一`-source`,`-target`,`-bootclasspath`的版本，从而避免类似的问题。

```kotlin
kotlin.targets.withType(KotlinJvmTarget::class.java) { target ->
  target.compilations.configureEach {
    it.kotlinOptions.freeCompilerArgs += listOf(
      "-Xjdk-release=$javaVersion",
    )
  }
}
```

## 精选视频
### [【榨干 Kotlin】把函数当类用，Compose 风骚的作用域机制](https://www.bilibili.com/video/BV16x4y1275f/)
Compose 是用 Kotlin 写的，它享受了 Kotlin 的便利，但也要承受 Kotlin 的限制。它用 Kotlin 的函数来实现了界面组件，就继承了「函数不具备作用域」的缺陷。

我们该如何限制某些公开的属性或者函数只能在特定的函数内部才能被使用呢？本视频介绍了 Compose 是如何通过高阶函数、隐式 receiver 和 DslMarker 注解等方式，解决函数作用域管理的问题的。

## 社区活动
### 上海 KUG 线下活动回放
上海 KUG 新年首场开发者线下活动交流会已于 3 月 1 日成功举办。本次活动邀请了多位 Kotlin 开发者，分享了他们在 Kotlin 开发中的心得体会。活动回放视频已上传至 B 站，欢迎大家观看：

- [Kotlin 复合构建工程结构](https://www.bilibili.com/video/BV1Yp421U7Uf/)
- [AGP 在包体积优化上的应用](https://www.bilibili.com/video/BV1ir421n7rS/)