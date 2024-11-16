---
title: Kotlin 技术月报 | 2024 年 11 月
date: 2024-11-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 2.1.0 发布
[https://blog.jetbrains.com/kotlin/2024/11/kotlin-2-1-0-released/](https://blog.jetbrains.com/kotlin/2024/11/kotlin-2-1-0-released/)

Kotlin 2.1.0 版本已发布！此版本引入了新的语言特性、工具更新、性能改进和重要修复。具体内容包括：

- 预览中的新语言特性：在 when 表达式中支持使用卫语句，以及非局部的 break 和 continue 支持，还有多美元符号字符串插值支持等。 
- K2 编译器更新：对编译器检查提供了更多灵活性，并改进了 kapt 实现。 
- Kotlin 多平台：编译器选项的稳定 Gradle DSL 及许多其他改进。 
- Kotlin/Native：改进了对 iosArm64 的支持以及其他更新。 
- Kotlin/Wasm：多个更新，包括对增量编译的支持。 
- Gradle 支持：改进了与更新版本的 Gradle 和 Android Gradle 插件的兼容性，并更新了 Kotlin Gradle 插件 API。

### Kotlin 近期动态
[Kotlin Roundup: Kodee’s Top Picks](https://blog.jetbrains.com/kotlin/2024/11/kotlin-roundup-kodee-s-top-picks/)

本文介绍了 Kotlin 的一些亮点和最新动态，包括：
- Kotlin 成为 GitHub 上增长最快的第五大语言。
- Ktor 3.0 发布，具有新功能和性能提升。
- Kotlin 2.1.0 发布，可预览新语言特性等。
- Kotlin 2.1 的直播活动。
- KotlinConf 2025 的相关信息，包括演讲者征集和购票。
- Kotlin Multiplatform 竞赛的相关情况。
- 一些大公司使用 Kotlin Multiplatform 的情况。
- Kotlin Multiplatform 2025 的发展路线图。
- Amper 2024 年 11 月的更新。
- Declarative Gradle EAP 2 发布。
- 鼓励参与 Advent of Code 2024 in Kotlin 活动。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/november/p8.webp)

### Kotlin K2 模式现已达到稳定状态
[Kotlin K2 Mode Becomes Stable](https://blog.jetbrains.com/idea/2024/11/k2-mode-becomes-stable/)

在 IntelliJ IDEA 2024.3 中，K2 模式已脱离测试阶段，现在处于稳定状态，可供普遍使用。

K2 模式显著提升 Kotlin 代码分析稳定性、降低内存消耗并提高 IDE 整体性能，支持 Kotlin 2.1 语言特性。K2 模式是对 IntelliJ IDEA 中 Kotlin 插件的重大改进，旨在解决前版本的性能和稳定性问题，减少 UI 冻结情况。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/november/p5.webp)
![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/november/p6.webp)

### [Kotlin Multiplatform 未来将采用基于 JetBrains Fleet 定制的独立 IDE](https://juejin.cn/post/7439380440958926911)
2025 Kotlin Multiplatform 发展路线图中指出，Kotlin 团队致力于为 Kotlin Multiplatform 提供出色的开发体验，减少开发者在不同 IDE 之间切换的需求，实现无缝集成的工作流程，计划发布独立的 KMP IDE。

KMP 独立 IDE 将基于 JetBrains Fleet 定制，提供更好的 Kotlin Multiplatform 开发体验，包括：

- 开发人员不再需要在不同的 IDE 之间切换调试
- 增强的语言支持，例如在 Kotlin 和 Swift 等语言的高亮和代码提示，错误提醒等
- 创建统一的工作流程，在统一 IDE 里提高工作效率
- 未来不排除增加云计算机构建 iOS，帮助没有本地 Apple 设备的开发人员
- 尝试更深入的 AI 工具集成

### Kotlin Scripting 2024 现状
[State of Kotlin Scripting 2024](https://blog.jetbrains.com/kotlin/2024/11/state-of-kotlin-scripting-2024/)

Kotlin Scripting 技术，具备在无需预先历经编译或打包成可执行文件的流程下，便能直接将 Kotlin 代码当作脚本予以执行的能力。

JetBrains 针对 Kotlin Scripting 的实际运用状况开展了深入的调研与剖析，所获结论显示，除了诸如 Gradle 构建脚本这类占据主导地位的应用场景之外，Kotlin Scripting 的普及程度远未达预期水平，其实际应用场景颇为有限。

尤其值得注意的是，Kotlin 并非传统意义上的解释型语言，这一特性致使它难以达成专用脚本语言所特有的典型用户体验。为了能够模拟出当下类似脚本的行为表现，Kotlin 不得不在后台悄然进行代码的编译操作。然而，由于 Kotlin 编译器在初始设计之时并未充分考量此类应用场景，致使该编译过程极为繁重且复杂。

基于上述种种情形，JetBrains 最终做出决策：尽管在未来仍会持续为 Kotlin 脚本的编写工作给予支持，涵盖对基本 “.kts” 文件的编译与执行，以及针对自定义脚本的相关操作等方面，但就当下而言，并不打算将 Kotlin 脚本推举为一种能够广泛适用于各类场景的通用脚本解决方案，例如，将其作为 Bash 或 Python 的等效替代品来进行推荐。 
## 精选博客
### [Kotlin 协程源码的地图：如何读源码才不会迷失？](https://juejin.cn/post/7435297930964320310)
Kotlin 协程是 Kotlin 的重要特性，为了彻底掌握 Kotlin 协程，我们不仅要知其然，更要知其所以然。这篇文章主要介绍了 Kotlin 协程源码的研究方法：

- 第一点：理解Kotlin协程的源码结构。Kotlin协程的源代码，其实分布在多个模块之中，各个模块之中，会包含特定的协程概念。相应的，它的各个概念，其实是有特定的层级结构的，我们只有弄清楚各个概念之间的关系，并且建立一个类似“地图”的知识结构，我们在研究源码的时候，才不会那么容易迷失。
- 第二点：明确研究源码的目标。正如我们前面提到的，我们不可能一次性看完协程所有的源代码，因此，我们在读源码的过程中，一定要有明确的目的。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/november/p3.webp)

### Kotlin 编译器速成课程
[https://github.com/ahinchman1/Kotlin-Compiler-Crash-Course](https://github.com/ahinchman1/Kotlin-Compiler-Crash-Course)

本文主要介绍了 Kotlin 编译器的相关内容，包括其各个阶段的功能、前端的两种实现（Fe10 和 FIR）、分析 API 以及编译器的中端和后端阶段。同时还提供了一些相关的资源链接。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/november/p9.png)

## 社区活动
### KotlinConf 征搞现已启动
[KotlinConf CfP is now open](https://sessionize.com/kotlinconf-2025/)

KotlinConf 是由 JetBrains 举办的官方会议。它致力于 Kotlin 编程语言，是社区聚集并讨论所有与 Kotlin 相关事物的地方。

2025 年的 KotlinConf 将于 5 月 21 日至 23 日在丹麦哥本哈根举行，21 日有一天的研讨会，会议本身在 22 日和 23 日举行。

提交一个演讲并分享你的经验，无论是关于找到使用 Kotlin 的创新方法、你面临的挑战、你创建的框架，还是任何你觉得可以在他人的 Kotlin 之旅中提供帮助的事情。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/november/p4.png)

### [【DevFest 日程一览】从 Android 到 Kotlin，你关心的都在这里](https://mp.weixin.qq.com/s/Y8WBld5fUIkaIqg8j61XhQ)
DevFest 是由 Google 支持由全球各地 GDG 社区主办的年度开发者盛会。北京 GDG 自 2012 年起连续 13 年举办 DevFest 。今年活动包括 Android/Kotlin 和 AI 开发主题以及 Workshop 动手活动。分享嘉宾来自国内众多 GDE (谷歌开发者专家) 、一线开发者和 Google 技术推广工程师。欢迎广大开发者报名参加！

Android 分会场有多个精彩演讲，涵盖 Kotlin Native、Android 15 特性、Gemini 在 Android 上的应用、Compose UI 工作原理、Compose 的魔法代码揭秘、Kotlin 全栈、Firebase Cloud Messaging 在移动端应用、androidx/media 实现视频内容和广告无缝播放等内容。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/november/p7.gif)