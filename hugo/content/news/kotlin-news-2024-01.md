---
title: Kotlin 技术月报 | 2024 年 1 月
date: 2024-01-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### 学习使用 IDE 重构 Kotlin 代码
[Learn IDE Code Refactoring in Kotlin for Enhanced Code Quality](https://blog.jetbrains.com/education/2024/01/17/learn-ide-code-refactoring/)

JetBrains Academy 插件中推出了一门新课程：《学习使用 IDE 重构 Kotlin 代码》。该课程将帮助您学习如何使用 IDE 重构 Kotlin 代码，以提高代码质量。

您将在课程中了解如下主题：
- 命名约定和代码风格样式规则
- 完全重构 VS 逐步重构
- 用于移动、提取和内联代码的自动化重构技巧
- 使用设计模式重构代码

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/january/p4.gif)

### IntelliJ IDEA 的 K2 Kotlin 模式现已推出 Alpha 版！
[IntelliJ IDEA’s K2 Kotlin Mode Now in Alpha!](https://blog.jetbrains.com/idea/2024/01/intellij-idea-2024-1/#intellij-idea%E2%80%99s-k2-kotlin-mode-now-in-alpha)

随着 K2 编译器的逐渐稳定，IDEA 也推出了 K2 模式。开启 K2 模式后，IntelliJ IDEA 将使用嵌入的 K2 Kotlin 编译器来分析 Kotlin 代码。在开启 K2 模式后， Kotlin 代码的代码高亮和代码补全的性能得到了显著的提高。

当然在目前阶段，K2 模式还处于 Alpha 阶段，还有很多功能需要完善，目前 K2 模式还不支持 Android、Kotlin多 平台项目和 build.gradle.kts 文件分析。同时依赖于编译器插件的 IDEA 插件也需要进行更新适配，才能支持 K2 模式。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/january/p5.png)

### Coil 3.0.0 Alpha 版本发布
[https://github.com/coil-kt/coil/blob/main/CHANGELOG.md](https://github.com/coil-kt/coil/blob/main/CHANGELOG.md)

Coil 是一个轻量级的 Kotlin 图片加载库，它旨在使图像加载变得简单快速。Coil 3.0.0 Alpha 版本已发布，具体包括如下更新：

- Compose 多平台支持，Coil 现在是一个 Kotlin 多平台库，支持 Android、JVM、iOS、macOS 和 Javascript。
- Coil 的 Maven 坐标已更新为 io.coil-kt.coil3，其导入也已更新为 coil3。这使得 Coil 3 可以与 Coil 2 并行运行，而不会出现二进制兼容性问题。

### Jetpack Compose 1.6 版本发布
[What’s new in the Jetpack Compose January ’24 release](https://android-developers.googleblog.com/2024/01/whats-new-in-jetpack-compose-january-24-release.html)

Jetpack Compose 1.6 版本已发布，具体包括如下更新：

- 性能优化：在 Jetpack Compose 1.5 的基础上，Compose 1.6 继续带来了 20% 的滚动性能提升与 12% 的启动耗时
- 配置外部类稳定性：Compose compiler 1.5.5 支持通过配置文件配置外部类稳定性
- 优化生成代码性能：编译器插件生成的代码也得到了优化，因为每个 composable 函数都会利用编译器插件生成代码，因此这些优化将会带来整体的性能提升
- 支持实验性的强跳过模式：启用强跳过模式后，composable 函数可以强制跳过重组，而无需深入了解 Compose 内部原理。
- 文本方面的改进：Compose 1.6 为文本方面的功能带来了一些改进，包括`includeFontPadding`默认值的更改与非线性字体缩放的支持
- 拖拽的支持：Compose Foundation 添加了对平台级拖拽的支持，允许在多窗口模式下在应用程序之间拖动内容。

## 精选博客
### [【长文】记一次个人 Android 项目全量迁移至 KMP 跨平台的过程](https://juejin.cn/post/7324384083428835367)
本文介绍了作者将个人项目全量迁移至 KMP 跨平台的过程，非常详细的一个迁移攻略，Context，数据库，资源读取，JavaScript 执行，导航，ViewModel，数据持久化等方面都有涉及，如果你也想尝试将项目迁移至 KMP 跨平台，可以参考一下。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/january/p6.png)

### [开源 | 从 SQLlin 的更新看 Kotlin Multiplatform 技术更迭](https://mp.weixin.qq.com/s/XcXTQyge066EzKKooLPBFg)
SQLlin 是一款基于 Kotlin DSL 及 KSP 技术的，支持众多平台的 Kotllin Multipllatform SQLite 数据库框架。

本文介绍了 SQLlin 在过去一年内的更新，并探求这些更新背后所涉及到的 Kotlin Multiplatform 技术栈的更迭与进化。，具体包括如下内容：

- 重写 native 驱动层
- JVM Target 支持
- sqllin-dsl 并发安全
- Android 低版本向下兼容
- CI/CD 优化
- 社区推广

### [Compose 代码有多简洁？Compose/Flutter/SwiftUI/React 声明式语法对比](https://mp.weixin.qq.com/s/npPy7pBaUUQXV67YUAhCAA)
Compose 与 React、Flutter、SwiftUI 同属声明式 UI 框架，有着相同的设计理念和相似的实现原理，但是 Compose 的 API 设计要更加简洁。本文就以上几个框架在语法上做一个对比，感受一下 Compose 超高的代码效率。

| Flutter                                                                       | Compose                                                                       | SwiftUI                                                                       |
|-------------------------------------------------------------------------------|-------------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| ![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/january/p7.png) | ![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/january/p8.png) | ![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/january/p9.png) |

### 如何解决 Kotlin/JS 类型导出支持问题
[https://github.com/deezer/KustomExport](https://github.com/deezer/KustomExport)

目前 Kotlin/JS 在使用 @JsExport 导出类型时还存在一定问题，比如 Long 类型，List 类型都会被导出为 any，影响开发体验。`KustomExport`是一个 KSP 插件，通过为类型添加自定义的`KustomExport`注解就可以实现更佳的导出效果。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/january/p10.png)
## 精选视频
### [2023 Kotlin 中文开发者大会完整内容回放 + PPT 下载 | 资源整理](https://mp.weixin.qq.com/s/8Y_GLO8TY-sDGQFRa1jw5Q)
Kotlin 中文开发者大会是由 JetBrains 团队与中文 Kotlin User Group 合作举办的免费线上直播活动，活动将会由 Kotlin 团队与大家分享最新 Kotlin 新闻，并邀请社区的技术大佬分享最新前沿技术、实用的开发经验。

2023 Kotlin 中文开发者大会两天完整视频回放和 PPT 现已公开！

您可以随时观看并与可能感兴趣的任何人分享，并在视频页面的评论区向我们提供反馈。

### 在 Meta 写 Kotlin 编译器插件是怎样一种体验?
[Podcast |《Kotlin 炉边漫谈》第 15 期：和在 Meta 写 Kotlin 编译器插件的小姐姐，来一场坦白局！
](https://www.bilibili.com/video/BV1YN4y1s7g5/)

大家熟悉的 Kotlin 开发大多都是拿来写 Server-Side、双平台 Mobile，你有想过有开发者是拿 Kotlin 写构建工具吗？本期节目特别邀请到人在 Meta 伦敦办公室的惠勤，请她跟我们聊聊在 Meta 的工作经验，是什么机会让她从 iOS 开发者变成 Kotlin 开发者，还从零变成编译器专家的故事。

## 社区活动
### [最新！国内 Kotlin User Group 信息整理（2024.1）](https://mp.weixin.qq.com/s/GNlbZ6xpCGB1EGML_W4kOg)
无论你是在学习 Kotlin 的起步阶段，还是已经基本掌握 Kotlin 语法技能，追求更进一步的交流探索。一个紧密围绕 Kotlin 的用户社区，能为你的 Kotlin 之旅插上翱翔的翅膀。欢迎加入属于 Kotlin 开发者的社区——Kotlin User Group （KUG）。

简而言之，KUG 是让 Kotlin 开发者和爱好者们聚在一起的技术社区。通过基于群聊的日常交流或不定期在线上/线下举办的技术讲座和沙龙，促进大家的知识分享和技能提升。你将可以在这个专注 Kotlin 的社区里学习最新的 Kotlin 开发技术，了解基于 Kotlin 的最佳实践，还有机会认识业界大咖，或是收获新的职业发展机会。

截至目前，国内已有 21 个 KUG 成立，欢迎各个城市的 Kotlin 开发者加入社区。如果你所在的城市还没有 KUG，也欢迎你成立 KUG，我们将为你提供一系列的支持。

### [KotlinConf Global 2024：集结全球 Kotlin 爱好者！](https://mp.weixin.qq.com/s/uax5hxiFcd_ELT8PMnP3UQ)
KotlinConf 是一年一度的 Kotlin 盛会，而 KotlinConf Global 则是 KotlinConf 在全球各个城市的拓展活动。

今年的 KotlinConf Global 活动也将于 5 月回归。无论您身在世界何处，都可以与我们一起参与 Kotlin 线下活动。

届时，全国各地的 Kotlin 用户组都将举办线下活动，与您一起观看 KotlinConf Global 的直播或者分享，您还可以在活动中与其他 Kotlin 爱好者交流，分享您的经验和见解。