---
title: Kotlin 技术月报 | 2024 年 9 月
date: 2024-09-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 2.1.0-Beta1 版本已发布
[https://kotlinlang.org/docs/whatsnew-eap.html](https://kotlinlang.org/docs/whatsnew-eap.html)

Kotlin 2.1.0-Beta1 版本已发布，此版本包含了一些新功能和改进，具体包括以下内容：

- 新语言特性的预览
- SubclassOptInRequired 注解的引入
- 改进的 K2 kapt 实现
- Kotlin/Native LLVM 版本升级至 16.0.0
- Gradle 相关改进
- Compose 编译器插件相关的更新

### 开发者的提效神器 —— JetBrains AI Assistant 即刻启动！
[开发者的提效神器 —— JetBrains AI Assistant 即刻启动！](https://mp.weixin.qq.com/s/zVYjcFvrb-AmwmN0fYU05A)

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/september/p4.webp)

### Compose 1.7.0 版本正式发布
[https://developer.android.google.cn/jetpack/androidx/releases/compose-ui](https://developer.android.google.cn/jetpack/androidx/releases/compose-ui#version_17_2)

Compose 1.7.0 版本已发布，此版本包含了一些新功能和改进，具体包括以下内容：

- 新增共享元素过渡、懒加载列表项动画、文本新特性、上下文流布局等特性。
- 性能的持续提升，首帧性能相比 1 月版本提升 17%，强跳过模式从实验状态转为生产就绪状态，Compose 编译器将从 Kotlin 2.0 起托管在 Kotlin 仓库中，便于升级 Kotlin 版本。
- 同时介绍了 Compose 对 Android 设备生态系统的支持，如 Navigation Compose 的类型安全导航和 CameraX Compose 的新功能

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/september/p5.png)

## 精选博客
### 在跨平台领域中，Kotlin 多平台对于你的下一个应用来说是正确的选择吗？
[In the Cross-Platform world, is Kotlin Multiplatform the right choice for your next application?](https://medium.com/israeli-tech-radar/in-the-cross-platform-world-is-kotlin-multiplatform-the-right-choice-for-your-next-application-96073b17a91c)

本文介绍了 Kotlin Multiplatform 在跨平台开发中的优势，包括轻松转换现有 Android 项目、无需学习新语言、灵活共享代码等。同时与 Flutter 和 React Native 进行比较，在性能、社区生态和学习曲线方面各有特点。结论认为 Kotlin Multiplatform 是跨平台开发的有力选择，虽面临竞争但前景广阔。

- 性能方面：与 Flutter 和 React Native 相比，Kotlin Multiplatform 可直接访问原生 API，性能更好，而 Flutter 和 React Native 因使用额外层或引擎可能存在性能和效率问题。
- 社区生态：Flutter 和 React Native 社区更大、更活跃，有众多插件和库；Kotlin Multiplatform 相对较新，但有 Google 和 JetBrains 支持，也有一些框架和库。
- 学习曲线：熟悉 Kotlin 的团队学 Kotlin Multiplatform 相对容易；熟悉 JavaScript 和 React 的团队适合 React Native；Flutter 的 Dart 语言对部分开发者有学习曲线。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/september/p3.webp)

### [使用 Kotlin Multiplatform 编写 iOS/Android 应用这一年，做一个小总结](https://juejin.cn/post/7409238250042884108)
本文是作者关于使用 Kotlin Multiplatform 编写 iOS/Android 应用一年的经验总结。在作者看来，Kotlin Multiplatform 解决了以下痛点：

- 双端逻辑一致，一套业务逻辑不需要重复写两次，也就不存在以往需要花费人力和时间来解决双端不一致的问题
- 可以使用原生 UI，虽然文章只提到了 SwiftUI 和 Jetpack Compose，但是还是可以使用 UIKit 和 Android View 来编写 UI 层，相比于其他跨平台方案还是会有一定的优势的。
- 与 Swift 的交互比较方便。相较于其他跨平台方案，能够简单直接的使用 Swift 与 Kotlin 进行交互这一点还是非常舒服的，类似的解决方案也有，比如 Rust+UniFFI，而无论 JavaScript 还是 Dart 都无法像这样直接交互。

## 精选视频
### Kotlin 纪录片：探寻 Kotlin 成功之外的故事
[Beyond The Success Of Kotlin / The Documentary by EngX](https://www.youtube.com/watch?v=E8CtE7qTb-Q)

大约 15 年前，JetBrains 的一个小工程团队开始了一项看似疯狂的努力 —— 创造他们自己的编程语言并取得成功。在 21 世纪 10 年代初，Java 是最流行的语言之一，被数百万工程师使用。然而，它已经好几年没有进行重大更新了，并且缺乏新特性。开发人员正在寻找一种新的解决方案。

许多工程师试图通过创建新的 JVM 语言来提供 Java 的替代方案。这是一个创造能够影响整个行业的工具的短暂机会之窗。Kotlin 的故事就是这样开始的。是什么促成了 Kotlin 的成功？它在行业中赢得一席之地又付出了什么代价呢？在这部纪录片中，你将从源头听到这个故事。

### Kotlin 路线图更新
[Kotlin 24H2的工作重心在哪里？](https://www.bilibili.com/video/BV1uss9eXEWD/)

本视频主要介绍了  Kotlin 的发展路线图（roadmap），包括关键优先级（语言进化、插件、多平台、第三方体验），按子系统划分的路线图（语言、编译器、多平台、工具、库生态系统），自 2023 年 12 月以来的变化（完成、新增、删除的项目）等内容。更多详细信息请查看视频。

## 社区活动
### Kotlin 多平台竞赛
[Kotlin Multiplatform Contest](https://kotlinconf.com/contest/)

你尝试过使用 Kotlin 多平台构建项目吗？Kotlin 多平台可以让你为 Android、iOS、桌面、网络和服务器创建应用程序 —— 所有这些都可以使用共享的 Kotlin 代码！

Kotlin 基金会为学生和应届毕业生推出了 Kotlin 多平台竞赛。通过使用 Kotlin 多平台构建一个跨平台项目，展示你的创造力和编码技能，并赢得一次前往 KotlinConf 2025 的机会，这是年度最大的 Kotlin 盛会。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/september/p9.png)