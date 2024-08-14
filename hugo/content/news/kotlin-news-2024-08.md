---
title: Kotlin 技术月报 | 2024 年 8 月
date: 2024-08-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 2.0.10 已正式发布
Kotlin 2.0.10 现已正式发布。2.0.10 版本是 2.0 系列的第一个错误修复版本，此版本的主要目标是修复 2.0.0 版本中发现的错误。有关更多详细信息，请点击下面的链接查看 GitHub 上的发行说明。

[https://github.com/JetBrains/kotlin/releases/tag/v2.0.10](https://github.com/JetBrains/kotlin/releases/tag/v2.0.10)

### Kotlin 2.0.20 已发布
[https://blog.jetbrains.com/kotlin/2024/08/kotlin-2-0-20-released/](https://blog.jetbrains.com/kotlin/2024/08/kotlin-2-0-20-released/)

Kotlin 2.0.20 版本也已经发布了，此版本的亮点主要包括：

- Kotlin 语言方面：数据类的`copy`函数将具有与构造函数相同的可见性
- Kotlin 语言方面：`Context receiver`被废弃，引入`context parameters`作为替代方案
- Kotlin/Native：垃圾收集器支持并发标记，提升 Kotlin/Native 运行时性能
- Gradle 改进：添加对 Gradle 8.6 到 8.8 版本的支持

### Ktor 相关的更新
[https://blog.jetbrains.com/kotlin/2024/08/kotlin-roundup-ktor-in-focus/](https://blog.jetbrains.com/kotlin/2024/08/kotlin-roundup-ktor-in-focus/)

本月 Kotlin 团队也带来了关于 Ktor 的更新，Ktor 是一个用于构建异步服务器和客户端的框架。本文介绍了 Ktor 的一些新特性，包括：

- Ktor 3.0.0 Beta-2的发布：支持Kotlin 2.0，新的 kotlinx.io 库，改进的 HTTP 错误处理和 Ktor客户端支持 Kotlin/Wasm
- Ktor 生成器的更新：更新后的生成器提供了简便的项目配置和一键预览功能
- Ktor 教程的更新：提供了更精确的指导和示例，以提供更加简洁和用户友好的体验

### Fleet 1.39 版本发布
Fleet 1.39 版本已发布，带来了一些新特性和改进，具体包括以下内容：

- 无需打开文件夹的智能模式： 现在可以在不打开文件夹的情况下打开文件并使用智能模式。
- 文件比较功能（版本1.39）： 新版提供了文件比较功能。
- 结构工具窗口： 新的结构工具窗口提供了查看和导航大文件结构的专用界面，比使用结构弹出窗口更方便。
- 自动语言检测： Fleet 1.39提供了对未命名文件的自动语言检测功能。只需将代码添加到临时文件中，Fleet就会检测出您正在编写的代码语言。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/august/p15.gif)

## 精选博客
### [基于Kotlin Multiplatform的鸿蒙跨平台开发实践](https://mp.weixin.qq.com/s/UajaKomk8XQTwn3BWLo6gw)
本文介绍了哔哩哔哩使用 Kotlin Multiplatform（KMP）进行鸿蒙跨平台应用开发的实践，具体内容包括：

- 技术选型背景介绍：文章首先概述了鸿蒙系统 Harmony Next 版本的特点
- 技术选型过程：详细介绍了 KMP 的原理、与鸿蒙系统的兼容性以及选择 KMP 的原因
- KMP 在鸿蒙 App 中的应用：介绍了 Kotlin 与 JS 交互，Kotlin 协程，如何在 Kotlin 代码中使用鸿蒙 API，以及如何在鸿蒙 App 使用 Kotlin 代码

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/august/p13.webp)

### Skip : 一个将 Swift 代码转译为 Kotlin 的框架
[用 Swift 写 Android App ？来了解下 Skip 原生级跨平台框架
](https://mp.weixin.qq.com/s/6QXidCv7ESJ4NP_G_pWuEQ)

熟悉 Kotlin 的小伙伴都知道，通过 Kotlin/Native 将 Kotlin 代码运行到 iOS 平台已经是一个非常成熟的方案。但是，如果你有大量的 Swift 代码，想要跨平台运行到 Android 平台，又该如何处理呢？

本文就介绍了一个名为 Skip 的框架，它可以将 Swift/SwiftUI 转译为 Kotlin/Compose 代码，从而实现 Swift 代码在 Android 平台的运行。Skip 框架底层采用原生平台框架，核心是 Swift to Kotlin 转译器，转译后的代码可读可调试，甚至支持跨平台组件嵌入和从 Xcode 构建错误消息跳转到 Kotlin 文件。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/august/p14.webp)

### [如何扩展Result，让你的代码更简洁](https://juejin.cn/post/7379509948903014451)
本文主要介绍了在 Kotlin 开发中如何扩展 Result 来处理不同的结果关系，以使代码更简洁，这种处理异常分支的方式叫做轨道编程（Railway Programming）。

本文首先指出了 Kotlin 原生 Result 在处理多个 Result 关系时的不足，分别讲解了一对一依赖、一对多依赖、多对一依赖、选择关系以及 Result 集合等多种关系场景下的处理方法和相应扩展方法的实现。

```kotlin
// before
uploadFile().onSuccess {  
    updateProfile(it).onSuccess {  
        updateProfileUI()
    }.onFailure {  
        showErrorPage()
    }  
}.onFailure {  
    showErrorPage()
}

// after
uploadFile()  
    .andThen { updateProfile(it) }  
    .onSuccess { updateProfileUI() }  
    .onFailure { showErrorPage() }
```

### [为超越JVM而生？深入理解Kotlin Native的梦想与可能](https://mp.weixin.qq.com/s/oo7YTnW4oL1xq17cNPGhnw)
Kotlin Native 是 Kotlin 多平台生态的关键一环，也是 Kotlin 开发者突破自身发展瓶颈的重要方向。

本文依据 Kotlin Native 的源码，结合作者在运用 Kotlin Native 开发多平台应用的实战经验，详细为大家解读 Kotlin Native 在编译时和运行时的实现细节和实践技巧。本文由腾讯 PCG 代码委员会出品，可能是你在全网能看到的关于 Kotlin Native 分析最全面的干货文章。

## 精选视频
### 从语言设计的角度看 Context parameters
[Context parameters from the language design perspective | Anastasiia Nekrasova](https://www.youtube.com/watch?v=ZvnXLB4Gdig)

Context parameters 是 Kotlin 最受期待的特性之一。去年，Kotlin 团队发布了一个初步版本，并收到了大量反馈。从那时起，Kotlin 团队一直在努力完善其设计。本视频概述了Context parameters 当前设计状态，具体包括以下内容：

- 添加 Context parameters 背后的动机；
- Context parameters 如何融入现有语法；
- Context parameters 在实际应用中的例子。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/august/p11.png)

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/august/p12.png)

## 社区活动
### KotlinConf 2025 门票现已开售！
[https://blog.jetbrains.com/kotlin/2024/07/kotlinconf-2025-tickets-on-sale/](https://blog.jetbrains.com/kotlin/2024/07/kotlinconf-2025-tickets-on-sale/)

KotlinConf 2025 的倒计时已正式开始，我们很高兴宣布，这场盛会的门票现已开始发售，活动将于 2025 年 5 月 21 日到 23 日在丹麦哥本哈根举行！

这是由 JetBrains 组织的全球最大的 Kotlin 活动。 从今天开始，您可以预订 KotlinConf 2025 的门票，名额有限，售完即止。