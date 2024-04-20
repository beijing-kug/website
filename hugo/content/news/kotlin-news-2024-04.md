---
title: Kotlin 技术月报 | 2024 年 4 月
date: 2024-04-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### IntelliJ IDEA 已支持开启 K2 模式
[K2 Kotlin Mode (Alpha) in IntelliJ IDEA](https://blog.jetbrains.com/idea/2024/03/k2-kotlin-mode-alpha-in-intellij-idea/)

从2024.1版本开始，IntelliJ IDEA 提供了一个可选的 K2 模式，开启 K2 模式后将获得以下收益：

- Kotlin 新特性支持：新模式将支持仅在 K2 Kotlin 编译器中提供的未来语言特性。
- 代码分析的稳定性：得益于架构的重构，IDE 功能的质量和可靠性应该会得到提升，代码分析也将更加稳定。
- 更优的 IDE 性能：Kotlin 代码高亮和 Kotlin 代码补全的速度已显著提高。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/april/p1.png)

### [全行代码补全：新版 JetBrains IDE 自带的 AI 神器](https://mp.weixin.qq.com/s/YMkbIecxIWjyXzNp5IBcsw)
AI 编程仍然是一个众说纷纭的话题，但越来越多的开发者开始将 AI 融入他们的日常工作流中。

JetBrains IDE v2024.1 版本中推出了一项新功能：全行代码补全。这个功能利用AI技术，在本地运行，不需要互联网连接，也不会发送任何数据到互联网上。它支持多种编程语言，包括Java、Kotlin、Python等，并且已经集成到多个JetBrains IDE中，如IntelliJ IDEA、PyCharm等。

全行代码补全功能已包含在 JetBrains IDE 的有效订阅中，无需额外费用，只需确保您使用的是 v2024.1 或更高版本即可。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/april/p4.webp)

### Kotlin 2.0.0-RC1 版本已发布
[What's new in Kotlin 2.0.0-RC1](https://kotlinlang.org/docs/whatsnew-eap.html)

Kotlin 2.0.0-RC1 版本已经发布！RC 表示该版本是预发布版本，意味着该版本已经接近稳定版，但可能还存在一些小问题需要修复。

这个版本主要集中在稳定新的 Kotlin K2 编译器，自 1.9.20 版本后，其所有目标都已达到 Beta 状态，并将在 Kotlin 2.0 版本中最终稳定。此外，Kotlin/Wasm 和 Kotlin/JS 中也有新的特性，同时优化了 Gradle 构建工具。

### 适合所有水平的学习者的 Kotlin 学习指南
[A Comprehensive Kotlin Learning Guide for All Levels](https://blog.jetbrains.com/education/2024/04/04/kotlin-learning-guide/)

任何领域的新手通常都会遇到一个基本问题：他们不知道自己不知道什么。本文旨在帮助自学的 Kotlin 学习者更好地了解学习路线，让他们可以从第一个 main 函数到轻松处理协程。

这个指南适用于任何对 Kotlin 语言感兴趣的人，无论你有多少经验，无论你是刚开始学习第一门语言的新手，还是希望找到编程工作的人，或者是在特定领域希望加深知识的经验丰富的开发者，本文都希望对你有所帮助。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/april/p9.png)

## 精选博客
### [使用KMP & Compose开发鸿蒙应用](https://mp.weixin.qq.com/s/QQ2tiAlInT5YRjracJ0OWg)
HarmonyOS NEXT 不再支持 AOSP，仅支持鸿蒙内核和鸿蒙系统的应用，各大 App 也纷纷投入到了原生鸿蒙应用的开发中。开发者需要考虑的平台已经从原来的双端演变为三端。这无疑将增加研发的复杂性和成本，由此可以预见的是未来对于跨端代码复用的诉求将越发强烈。

本文详细探讨了在鸿蒙系统上接入 KMP 以及使用 Compose 的可能性，并在此基础上产出了两个库：HarmonyDom 和 compose-ez-ui，以实现在鸿蒙系统上使用 Compose。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/april/p3.webp)

### Pexels: 一个支持所有平台的图片查看器
[https://github.com/linroid/Pexels](https://github.com/linroid/Pexels)

使用用 Compose Multiplatform 开发的图片查看器，支持 Desktop(Linux, Windows, macOS)，Web，iOS，Android 等所有平台，支持分页，下拉刷新，自适应界面，图片缩放，切换动画，数据缓存等特性。本项目很好的展示了 Compose Multiplatform 目前所具备的各种能力，感兴趣的同学可以看下。

## 精选视频

## 社区活动
### QCon 分享：Kotlin/WebAssembly 的探索之路
Kotlin 作为多平台开发的热门语言，除了拥有良好的生态、成熟的开发工具外，也不断探索更多运行平台的可能。Kotlin/Wasm 项目将 Kotlin 语言与 WebAssembly 技术相结合，让开发者能够开发安全、高效、可移植的 WebAssembly 应用。随着 WebAssembly 的未来发展，Kotlin/Wasm 还能将程序运行在浏览器之外，在更多应用场景下落地。

本演讲将介绍 Kotlin/Wasm 项目的最新进展，包括如何在现有项目内加入 Kotlin/Wasm 支持、开发工具链及并实际演示以 Kotlin/Wasm 运行 Compose UI 代码，展示 Kotlin 多平台开发的魅力。

分享 PPT 在线链接可见：[Kotlin+WebAssembly+的探索之路-范圣佑](https://static001.geekbang.org/con/143/pdf/1791864063/file/Kotlin+WebAssembly+%E7%9A%84%E6%8E%A2%E7%B4%A2%E4%B9%8B%E8%B7%AF-%E8%8C%83%E5%9C%A3%E4%BD%91.pdf)