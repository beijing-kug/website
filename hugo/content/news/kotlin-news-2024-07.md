---
title: Kotlin 技术月报 | 2024 年 7 月
date: 2024-07-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 2.0.10-RC 版本已发布
[https://github.com/JetBrains/kotlin/releases/tag/v2.0.10-RC](https://github.com/JetBrains/kotlin/releases/tag/v2.0.10-RC)

Kotlin 2.0.10-RC 版本已发布，2.0.10 版本是 2.0 系列的第一个错误修复版本，此版本的主要目标是修复 2.0.0 版本中发现的错误，而 RC 版本的发布也预示着 2.0.10 版本即将正式发布，想要升级到 Kotlin 2.0 但有所顾虑的开发者可以尝试这个版本。

### Xcode-Kotlin 2.0 发布
[Xcode-Kotlin 2.0 Release](https://touchlab.co/xcode-kotlin-2-0)

Xcode-Kotlin 是 touchlab 开发的一个插件，允许开发者直接在 Xcode 中调试在 iOS 应用程序中运行的 Kotlin 代码。这为使用 Kotlin 共享代码的 iOS 开发人员提供了更流畅的开发和集成体验，对于并非每个人都直接编辑共享代码的大型团队来说，体验也更加便捷。

Xcode-Kotlin 2.0 已发布，具体包括以下更新：

- 显著提高了调试性能（快达 5 倍）。 
- 扩展了每个帧变量的信息。 
- 可以在 Swift、Kotlin 和 Objective-C 代码中使用。 
- 内置支持 List 和 Map，并且更多的支持正在开发中（例如 StateFlow，Set）。

## 精选博客
### [腾讯视频 KMP 跨 Android、iOS、鸿蒙实践](https://www.secon.com.cn/HarmonyOSNEXT)
腾讯视频已将超 45% 的基础组件使用 KMP 技术改造为跨端开发。在 KMP 逻辑跨端的能力上，致力于使用 Compose UI 实现多端 UI 的统一。目前，已经实现线上 ComposeUI 跨 iOS 和 Android，线下实验版本实现跨鸿蒙。本分享详细介绍了相关技术细节和腾讯视频使用 KMP 的未来规划。

- KMP 在腾讯视频的应用
- KMP 深入介绍
- Kotlin/Native 适配鸿蒙及性能优化
- Compose UI 适配鸿蒙
- iOS 计划和 Compose 鸿蒙开源规划

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/july/p20.jpg)

### [Kotlin 协程的本质——记一次内部分享整理](https://juejin.cn/post/7373502637729513506)
本文是关于 Kotlin 协程本质的一次内部分享整理，适合 Kotlin 协程新手阅读，具体包括以下内容：

- 协程定义：没有标准化定义，是可挂起和恢复的程序或函数，不是 Kotlin 独有的。
- 异步逻辑难点：线程切换影响逻辑把控，并发编程存在可见性等问题。
- 异步实现方式对比：回调存在取消处理困难和回调地狱问题，RxJava 强大但也有问题。
- Kotlin 协程优势：能实现异步逻辑同步化和并发逻辑简单化。
- 协程本质：通过挂起（suspend）函数、Continuation、CPS 等实现，了解其挂起和恢复的机制。
- 相关概念：如 CoroutineScope 用于启动协程，Coroutine 表达运行上下文信息。
- 团队接入：需要有“专家”理解底层原理，建立代码规范，改造已有 API，不能期望解决一切问题。
- 资源推荐：提供了入门和进阶的相关学习资源。

### 通过 KCP 实现 val 声明变量的常量优化
[通过KCP实现无为转变](https://juejin.cn/post/7385199889053007910)

常量优化是一种优化技术，可以在编译时将变量的值替换为常量，从而提高程序的运行效率。在 Kotlin 中，编译器会对 const 声明的常量进行优化，但是对于 val 声明的变量，虽然是不可变的，但编译器却不会进行常量优化。本文介绍了如何通过 Kotlin 编译器插件 KCP 实现 val 声明变量的常量优化。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/july/p21.png)

## 精选视频
### [Kotlin 炉边漫谈 Podcast #17 腾讯 QQ 自研采用原生渲染的 KMP 框架](https://www.bilibili.com/video/BV1Bi421e76P/)
本期 Kotlin 炉边漫谈节目邀请到了腾讯 QQ 团队，负责开发跨端框架和业务落地的负责人，跟大家分享他们团队是如何借鉴 RN 思路，并通过 KMP 技术，打造出基于原生控件、安装包极小的跨端框架。也会分享开发框架时曾面临的挑战、框架作者与业务开发的差别、如何在公司内部做技术推广等落地经验。

相比与其它跨端方案，QQ KMP 跨端框架在安装包大小、性能、原生开发体验等方面有着较为明显的优势，值得开发者关注学习。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/july/p23.webp)

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/july/p22.webp)

## 社区活动
### KotlinConf Global 2024 上海分享会回放
KotlinConf Global 2024 上海分享会回放已发布，本次分享会主要内容包括：

- [KMP 搭建动态化工具链](https://www.bilibili.com/video/BV1hxbNeaE3X/)
- [使用 context receivers 和 suspend 开发现代软件](https://www.bilibili.com/video/BV1hxbNeaEJY/)
- [KMP + React Native 跨端业务逻辑共享实战](https://www.bilibili.com/video/BV1SbbNe8EYX/)
