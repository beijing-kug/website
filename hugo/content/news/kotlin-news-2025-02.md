---
title: Kotlin 技术月报 | 2025 年 2 月
date: 2025-02-28
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### OpenAI vs. DeepSeek: 哪个 AI 更懂 Kotlin？
[OpenAI vs. DeepSeek: Which AI Understands Kotlin Better?](https://blog.jetbrains.com/kotlin/2025/02/openai-vs-deepseek-which-ai-understands-kotlin-better/)

JetBrains Research 测试了包括 DeepSeek--R1 和多个 OpenAI 模型在内的人工智能模型对 Kotlin 的理解能力，使用了 KotlinHumanEval 和新的 Kotlin_QA 基准测试。用于对比评测哪个 AI 更懂 Kotlin。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/feburary/p1.png)

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/feburary/p2.png)

### Kotlin 2.1.10 已发布
2.1.10 已在 GitHub 上发布。在以下链接中查看此新版本附带的功能的完整列表：[https://github.com/JetBrains/kotlin/releases/tag/v2.1.10](https://github.com/JetBrains/kotlin/releases/tag/v2.1.10)

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/feburary/p4.png)

### [Kotlin Multiplatform 工具 – 改变方向](https://blog.jetbrains.com/zh-hans/kotlin/2025/02/kotlin-multiplatform-tooling-shifting-gears/)
JetBrains 曾计划基于 Fleet 平台打造 Kotlin Multiplatform 独立 IDE，以推动 KMP 应用发展。但客户期望在 IntelliJ Platform（如 IntelliJ IDEA、Android Studio ）获得 KMP 支持，加之应用开发方式变革，Google 也正式在 Android 上支持 KMP。

因此，JetBrains 改变策略，未来专注于在 IntelliJ Platform 增强 KMP 支持，3 个月内停止 Fleet 对 KMP 的支持，不再发布 KMP 独立 IDE。团队感谢试用用户的反馈，称将利用技术为开发者提供更好体验。

### Kotlin 近期动态
[Kodee’s Kotlin Roundup: Fresh Picks to Begin 2025](https://blog.jetbrains.com/kotlin/2025/02/kodees-kotlin-roundup-fresh-picks/)

本文主要介绍了 Kotlin 在 2025 年初的一系列新动态，具体包括如下内容：

- Kotlin 版本更新：Kotlin 2.1.0 于去年年底发布，带来众多新特性和改进；Kotlin 2.1.20-Beta2 也已推出，包含性能改进和 bug 修复。
- Kotlin Multiplatform 新服务：JetBrains 推出 klibs.io，方便发现 Kotlin Multiplatform 库，目前处于 Alpha 阶段。
- 采用 Kotlin Multiplatform 的理由：有指南展示采用 Kotlin Multiplatform 在新老项目中的好处，如精简开发、广泛平台支持和强大工具生态等。
- Kotlin Multiplatform 竞赛结果：公布了竞赛的三位获奖者，分别是 TinyComposer、PayFlo 和 arandomroom 的创作者。
- KotlinConf 2025：介绍了 KotlinConf 2025 的相关信息，包括社区交流、学习机会和工作坊等。
- Kotlin YouTube 频道：介绍了频道中由不同人主持的精彩视频内容，可订阅 Kotlin Blog 获取更多更新。

## 精选博客
### KMP iOS 编译速度慢，如何优化?
[https://touchlab.co/touchlab-build-only-what-you-need](https://touchlab.co/touchlab-build-only-what-you-need)

在开发 Kotlin/Native iOS 应用时，编译速度是一个常见的问题。除了 Kotlin 编译器本身构建性能问题之外，许多团队在 KMP 构建 iOS 项目时，因构建过多不必要架构，导致构建时间冗长。

- 问题产生原因：KMP 构建涉及不同平台工具链，熟悉 KMP 与多平台构建的开发者较少。构建 iOS 应用有 3 种主要架构，同时构建会大幅增加时间，而实际常只需构建一种。
- Gradle 构建优化：Gradle 构建默认执行所有架构和版本的构建任务，可通过指定特定任务，如linkDebugFrameworkIosSimulatorArm64 减少构建量。也能自定义 Gradle 任务，仅执行所需的 Android 或其他平台构建任务。查看 Gradle 构建日志（-i参数开启详细日志），能判断是否构建了多余架构。
- SPM 和 XCFrameworks 构建要点：KMP Gradle 插件构建 XCFrameworks 时，assembleXCFramework任务会构建所有架构。
- CI 构建优化：CI 构建时，应依据 Mac 架构选择 iosSimulatorArm64Test 或 iosX64Test 等特定测试任务，避免运行 build 任务。

### 深入理解 Kotlin 协程异常处理
[Why exception handling with Kotlin Coroutines is so hard and how to successfully master it!](https://www.lukaslechner.com/why-exception-handling-with-kotlin-coroutines-is-so-hard-and-how-to-successfully-master-it/)

异常处理可能是学习协程时最困难的部分之一。当我们使用 try-catch 或者 CoroutineExceptionHandler 捕获异常时，都可能会捕获不到导致线上问题。

本文描述了 Kotlin 协程异常捕获复杂性的原因，并为你提供一些关键点，这将有助于你对该主题有一个良好的理解。然后，你将能够在自己的应用程序中实现一个成功的异常处理基础架构。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/feburary/p5.webp)

### 应该使用 Kotlin Sequences 来提高性能吗？
[Should you use Kotlin Sequences for Performance?](https://chrisbanes.me/posts/use-sequence/)

本文探讨了在 Kotlin 中不同方式对集合进行建模及操作的性能表现。介绍了 Collections（包括 List、Set 和 Map 等）、Sequences 和 Flow 三种集合模型的特点，并通过基准测试比较了它们在执行链式操作时的性能。

```
fun getItemsList(): List<UiModel> {
return Db.getItems()
    .filter { it.isEnabled }
    .map { UiModel(it.id) }
    .filter { true }
    .map { UiModel(it.id) }
    .filter { true }
    .map { UiModel(it.id) }
    .filter { true }
    .map { UiModel(it.id) }
}
```

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/feburary/p6.png)

数据对比后可以发现，Sequences 在速度上相比 Collections 并没有什么优势，由于其懒加载特性，Sequences 在内存占用上应该会更优。因此当考虑性能时，应根据具体场景选择合适的集合模型。

## 精选视频
### Compose 热重载是如何实现的？
[How 'Hot Reload' is implemented for Compose](https://www.youtube.com/watch?v=I_FMnPaEBEA)

JetBrains 团队为了解决 Kotlin（尤其是 Compose）开发中频繁修改代码需重启应用的问题，开发了 Compose Hot Reload 工具，本视频主要介绍了 Compose 热重载的实现原理。

- 动态类重定义：基于 DCEVM（Dynamic Code Evolution VM），支持动态类重定义（允许新增方法、字段等结构性变更）
字节码分析 和 依赖追踪，实现了近乎无限制的代码热更新能力。其多进程架构和深度集成 Compose Runtime 的设计，使其在保留状态的同时，显著提升了开发效率。
- 运行时字节码分析引擎：通过解析 Compose 组件的作用域并生成唯一哈希标识，动态追踪代码依赖关系，仅在哈希变化时精准刷新受影响的 UI 部分，实现高效热重载。
- 状态保留：通过 Compose Runtime 的 remember 机制，在重载后保留状态。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/feburary/p3.png)