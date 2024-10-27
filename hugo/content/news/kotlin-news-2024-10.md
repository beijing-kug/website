---
title: Kotlin 技术月报 | 2024 年 10 月
date: 2024-10-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 2.1.0-Beta2 版本已发布
[https://kotlinlang.org/docs/whatsnew-eap.html](https://kotlinlang.org/docs/whatsnew-eap.html)

Kotlin 2.1.0-Beta2 版本已发布，该版本带来了一些重要的改进和新功能，具体包括以下内容：

- 新语言特性的预览
- 改进了泛型类型函数的重载解析
- SubclassOptInRequired 注解的引入
- 改进的 K2 kapt 实现
- Kotlin/Native LLVM 版本升级至 16.0.0
- Gradle 相关改进
- Compose 编译器插件相关的更新

### Compose Multiplatform 1.7.0 版本已发布
[Compose Multiplatform 1.7.0 Released](https://blog.jetbrains.com/kotlin/2024/10/compose-multiplatform-1-7-0-released/)

Compose Multiplatform 1.7.0 版本已发布，该版本带来了一些重要的改进和新功能，具体包括以下内容：

- Material3 `adaptive`和 `WindowSizeClass`现在可用于通用代码中。 
- Compose Multiplatform 现在支持为`navigation graph`提供编译时安全性。 
- Compose Multiplatform 1.7.0 与 Kotlin 2.0.20 搭配使用，在 iOS 上的性能表现显著优于之前版本的组合，运行更快、更流畅。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/october/p5.webp)

### 2025 Kotlin Multiplatform 发展路线图
[Kotlin Multiplatform Development Roadmap for 2025](https://blog.jetbrains.com/kotlin/2024/10/kotlin-multiplatform-development-roadmap-for-2025/)

文章介绍了 Kotlin Multiplatform 在 2025 年的发展路线图，具体包括以下方面：

- Compose Multiplatform：致力于使 Compose Multiplatform 成为能创建美观且高性能应用的框架，确保在所有支持平台上保持一致外观。重点是将 iOS 目标推进到稳定版本，iOS 渲染性能、核心组件功能完整性、与原生视图的互操作性、框架整体稳定性、文档等。
- Tooling：致力于为 Kotlin Multiplatform 提供出色的开发体验，减少开发者在不同 IDE 之间切换的需求，实现无缝集成的工作流程，计划发布独立的 KMP IDE。
- Kotlin-to-Swift export：快速推进 Kotlin 到 Swift 的直接导出，2025 年目标是发布第一个公开版本，提供与现有 Objective-C 导出相当的用户体验并克服其限制，以实现更广泛的 Swift 语言支持和更无缝的 API 导出。
- Library ecosystem：计划改进 klib 格式、实现与 JVM 相同的代码内联行为、提供确保多平台库公共 API 兼容的工具，还将改进发布过程，包括提供创建和发布 KMP 库的模板和指南等。
- Amper：将专注于使 Amper 完全适用于 Android 和 iOS 多平台移动应用开发，包括运行和测试应用、签署和发布应用，以及探索服务器端开发场景。
- Gradle 和其他构建工具：在 Gradle 增强方面，将支持在项目级别声明 Kotlin Multiplatform 依赖项、改进 Kotlin/Native 工具链与 Gradle 的集成、实现多平台库的下一代分发格式等。

### Ktor 3.0 已发布
[Ktor 3.0 Is Now Available With New Features and Improved Performance](https://blog.jetbrains.com/kotlin/2024/10/ktor-3-0/)

Ktor 3.0 已发布，带来诸多新特性与性能提升，具体包括以下内容：

- 迁移到 kotlinx - io：基于 Okio，旨在标准化 IO 功能并提升性能，影响低级别 IO API，旧 API 将被弃用但在 4.0 版本前仍受支持。
- 性能改进：减少字节复制，提升字节转换和解析效率，IO 基准测试显示多项性能大幅提升。
- 支持服务器发送事件（SSE）：服务器和客户端均支持，服务器可推送事件到客户端，提供单向通信通道，使用时需添加依赖并安装插件，注意暂不支持数据压缩。
- 从 ZIP 存档提供静态资源：通过staticZip函数实现，可指定访问路径、ZIP 文件内基础路径、ZIP 文件路径、默认文件及自定义响应。
- 支持 CSRF 保护：通过新插件实现，适用于使用会话 cookie 和表单的项目，启用后需配置验证请求来源等方法，请求需带特定头部才能通过。
- Ktor 客户端支持 Wasm：Ktor 客户端支持 WebAssembly 作为构建目标，虽 Kotlin/Wasm 仍处于早期阶段，但意义重大，使用需添加相应依赖。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/october/p6.webp)

## 精选博客
### Kotlin 多平台开发者路线图
[https://github.com/skydoves/kmp-developer-roadmap](https://github.com/skydoves/kmp-developer-roadmap)

Kotlin 多平台开发者路线图为开发者提供了全面的学习路径，帮助开发者了解 KMP 生态，路线图涵盖了各种主题的相关库和技术栈。在浏览这个路线图时，您可以沿着中心轴线进行，这条轴线清晰地展示了不同概念之间的结构化学习进程。

每个节点都代表了 Kotlin 多平台的要点，包括平台理念、软件开发工具包（SDK）、常用库以及实用解决方案。如果您想深入了解特定术语和基本概念，不妨查阅 Kotlin 多平台入门资料，或者浏览 GitHub 上的相关仓库，以获取更多实例和资源。

需要注意的是，你不必从这个路线图中掌握每一项内容。只需关注那些与你和你的需求最相关的部分即可。这份资料并不是为了成为 Kotlin 多平台开发者的全面指南或教材；它是一个可以根据你的个人情况灵活学习的资源。把它看作是一系列的建议，而不是每个主题都必须遵循的学习路线。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/october/p4.png)

### [一个 Kotlin 开发，对于纯函数的思考](https://juejin.cn/post/7321049383571046409)
本文从 Kotlin 开发者的角度，对纯函数进行了一系列的思考，具体包括以下内容：

- 纯函数的定义：相同输入永远得到相同输出，无副作用。数学上要求每个值域内输入都有唯一输出。
- 副作用：影响外部状态或依赖外部状态的行为，如更改外部文件、数据库读写等。
- 纯函数的好处：可缓存性、高度并行、高度可测性、依赖清晰。
- 纯函数中实现循环：通过消除可变变量实现完全的“纯”。
- 函数一等公民：函数发挥重要作用，纯函数中可以不用对象，用函数式替代面向对象的代码。
- 柯里化：将多参数函数通过多次传入，实现“预设一部分参数”的能力

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/october/p7.webp)

## 精选视频
### Compose 编译器插件是如何工作的？
[How Compose Compiler Plugin Works](https://www.youtube.com/playlist?list=PLY-K9deHTAW6tfEelsK1izNBuagWZ7kHl)

Jetpack Compose 是 Android 平台上的一种现代化的声明式 UI 工具包。它允许开发者使用 Kotlin 编程语言以一种更简洁、更高效的方式构建用户界面。

Jetpack Compose 的简洁和高效性很大程度上得益于其内部的编译器插件。这个视频系列将带领你深入了解 Compose 编译器插件的工作原理。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/october/p8.png)
## 社区活动
### 开发者如何参与 Kotlin 的演进？
[The Evolution of the Kotlin Language and How You Can Contribute](https://blog.jetbrains.com/kotlin/2024/10/the-evolution-of-the-kotlin-language-and-how-emyou-em-can-contribute/)

Kotlin 的发展深受其活跃社区的显著影响。从最初的想法到最终的特性，它是由反馈、讨论和实际用例所塑造的。这个过程被称为 KEEP：the Kotlin Evolution and Enhancement Process。

文章详细描述了 KEEP 流程的各个阶段，包括探索与设计、公开审查、规划与实施、预览版和稳定发布。读者可以通过不同的方式参与到这些阶段中，如分享用例、提供反馈、测试特性等，从而共同塑造Kotlin的未来。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/october/p3.webp)