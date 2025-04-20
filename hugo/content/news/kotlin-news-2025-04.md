---
title: Kotlin 技术月报 | 2025 年 4 月
date: 2025-04-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### 通过 kotlinx.fuzz 引入模糊测试
[Bringing Fuzz Testing to Kotlin with kotlinx.fuzz](https://blog.jetbrains.com/research/2025/04/kotlinxfuzz-kotlin-fuzzing/)

识别用于测试的边缘情况可能是一项具有挑战性的任务，常常会导致隐藏的错误和漏洞未被发现。模糊测试（fuzzing）通过自动生成带有随机或无效输入的测试来应对这一挑战，使开发人员能够发现意外的异常和故障场景。由于其在检测关键软件缺陷方面的有效性，模糊测试在各种编程语言中得到了广泛应用。

JetBrains 团队最近发布了一个新的 Kotlin 库 kotlinx.fuzz，旨在帮助开发者更轻松地进行模糊测试。该库提供了一些实用的工具和功能，使得模糊测试的实现变得更加简单和高效。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/april/p3.webp)

### Context Parameters 相关更新
[Update on Context Parameters](https://blog.jetbrains.com/kotlin/2025/04/update-on-context-parameters/)

Context Parameters 是 Kotlin 即将引入的重要特性，具有丰富应用场景，如强化扩展方法和为 DSL 开发提供更好工具。它将在 Kotlin 2.2.0 版本以 Beta 形式发布，从 2025.1 版本起，IntelliJ IDEA 将为其提供专门支持。

Context Parameters 取代了 Kotlin 中的另一项实验性特性，即 context receivers。尽管 context receivers 始终需要开关开启，但自 1.6.20 版本起就已成为 Kotlin 的一部分，并且在大量代码中被使用。这篇博客文章介绍了 Kotlin 在这两项特性之间过渡的计划。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/april/p4.webp)

### K2 模式现状与 FAQ
[K2 Mode in IntelliJ IDEA 2025.1: Current State and FAQ](https://blog.jetbrains.com/idea/2025/04/k2-mode-in-intellij-idea-2025-1-current-state-and-faq/)

从 IntelliJ IDEA 2025.1 版本开始，K2 模式（Kotlin 支持的一种新实现方式）将默认启用, 本文介绍了 K2 模式当前状态、常见问题解答等内容，对开发者了解和使用 K2 模式具有重要指导意义，具体包括如下内容：

- K2 模式概述与必要性：K2 模式是 IntelliJ IDEA 中 Kotlin 支持现代化的成果。长期以来，IDE 依赖旧 Kotlin 编译器内部机制，随语言发展，提升性能和保持稳定性难度增大。K2 模式引入更快、可扩展的分析引擎及 Kotlin 分析 API，为 Kotlin 支持奠定新基础，利于支持未来语言特性、提高代码分析稳定性和速度。
- K2 模式特有功能：部分 Kotlin 新语言特性仅在 K2 模式可用，如 when 语句中的保护条件、非局部中断和继续、多美元字符串插值、上下文参数（Beta）等，后续新语言特性也将仅在 K2 模式支持。同时，一些 IDE 特性在 K2 模式下性能和可靠性更佳，部分新 IDE 特性也仅计划用于 K2 模式。
- 性能影响：K2 模式旨在提升索引速度、代码分析及 IDE 整体稳定性，已让不少用户感受到 Kotlin 支持更快速流畅，但因项目规模和结构不同，特定场景仍可能出现性能问题，如自动补全在某些情况下速度未达预期，团队将在未来几个月重点优化。
- 尚未支持的功能：尽管 K2 模式带来诸多改进，但部分功能和集成仍缺失或不完善，如部分较少使用（不到 1% 用户使用）的检查、快速修复或意图功能可能缺失；智能补全功能；偶尔出现的代码分析和高亮显示问题；处理某些特定项目时补全速度降低，团队计划在后续版本解决。
- 插件兼容性：未使用 Kotlin 插件 API 的 IDE 插件与 K2 模式兼容，几乎所有需支持 K2 模式的流行插件已实现支持。若有使用 Kotlin 插件 API 但在 K2 模式下无法工作的非公开插件，可查看详细迁移指南。
K1 模式支持情况：仍可使用 K1 模式，但新 Kotlin 语言特性和最新 IDE 特性仅在 K2 模式支持，且后续代码分析优化也将针对 K2 模式，因此鼓励开发者使用 K2 模式进行开发。
- K2 模式未来规划：2025.1 版本将 K2 模式设为默认是重要里程碑，但优化工作仍将继续，团队致力于完善新架构、解决现存局限，确保开发者获得稳定可靠的体验，鼓励开发者通过各种渠道反馈，帮助改进 K2 模式使用体验。

### IntelliJ IDEA 中的 Junie 和 AI 助手
[Smarter Kotlin Development With JetBrains AI: Junie and AI Assistant in IntelliJ IDEA](https://blog.jetbrains.com/kotlin/2025/04/smarter-kotlin-development-with-jetbrains-ai-junie-and-ai-assistant-in-your-ide/)

本文介绍 JetBrains 为 Kotlin 开发者提供的两款 AI 工具: Junie 与 AI Assistant

- Junie 的功能与定制性：Junie 是针对 Kotlin 开发的强大编码工具，可承担一系列复杂任务。无论是从头开启新项目，依据描述实现整个模块，还是进行端到端的功能开发，它都能胜任。例如，开发者只需用平实语言描述需求，Junie 就能生成代码并持续优化。
- AI 助手的特性与应用场景：AI 助手是日常开发的得力伙伴，在开发流程各环节融入上下文感知智能。它由 JetBrains 的 Mellum 大语言模型提供支持，尤其针对 Kotlin 开发进行优化。在 Kotlin 开发场景中，当开发者需将 Java 代码转换为 Kotlin、修改 Gradle 构建文件，或补充缺失的函数与类时，AI 助手能发挥显著作用，提供贴合实际需求的智能帮助。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/april/p9.png)

### [KMP 跨平台框架 Kuikly 发布](https://kuikly.tds.qq.com/%E7%AE%80%E4%BB%8B/arch.html)
Kuikly 是基于 Kotlin MultiPlatform(KMP) 构建的跨端开发框架。它利用了 KMP 逻辑跨平台的能力, 并抽象出通用的跨平台 UI 渲染接口，复用平台的 UI 组件，从而达到 UI 跨平台，具有轻量、高性能、可动态化等优点；同时，KuiklyBase 基建同样支持逻辑跨端。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/april/p10.png)

### KotlinConf 2025 即将到来
[KotlinConf 2025: Last Tickets, Epic Talks, an Evening to Remember, and More](https://blog.jetbrains.com/kotlin/2025/04/kotlinconf-2025-last-tickets-and-highlights/)

KotlinConf’25，本年度最重要的 Kotlin 盛会，即将拉开帷幕！这一次，规模更大、更具魄力，还将带来更多深刻见解。聆听 Spring 框架创始人罗德・约翰逊（Rod Johnson）的分享，深入了解多邻国（Duolingo）团队的案例研究，探索 Kotlin 多平台技术如何助力麦当劳应用程序的导航功能。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/april/p6.gif)

## 精选博客
### K2 模式背后的故事与原理解析
[The Story Behind K2 Mode and How It Works](https://blog.jetbrains.com/idea/2025/04/the-story-behind-k2-mode-and-how-it-works/)

在 Kotlin 的开发生态中，K2 模式是一个备受关注的重要特性。它的出现对 Kotlin 在 IntelliJ IDEA 中的使用体验和开发效率影响深远。本文介绍了 K2 模式背后的故事与工作原理：

- 早期支持与发展历程：早在 Kotlin 定名前，JetBrains 就开始着手开发其编译器，并计划在 IntelliJ IDEA 中提供支持。通过构建语义分析器，基于 IntelliJ IDEA 通用代码分析框架开发插件，让 IDE 能快速适配新特性，但也导致 IDE 对编译器内部依赖逐渐加深。
- 编译器与 IDE 分析差异：编译器采用线性流程分析模块源文件并输出结果，每次处理一个模块；而 IDE 是按需分析，如自动补全时只解析相关参数，可同时处理项目所有文件，且需快速响应并缓存结果。
- 旧编译器的局限性：旧编译器用懒加载块和单一共享锁提升 IDE 分析效率，初期效果良好。但随着项目和功能增加，性能下降，隐式惰性求值还让调试、优化变得困难，测试覆盖也面临挑战。
- K2 编译器的革新：K2 编译器摒弃隐式惰性求值，将代码分析划分为多个阶段，每个阶段处理特定部分，简化架构，契合 IDE 按需分析。其解析逻辑支持并发，可并行分析多声明，提升 IDE 性能并带来新功能。
- Kotlin 分析 API 的诞生：K2 编译器的应用使现有功能迁移困难，旧编译器 API 也存在问题。因此团队开发 Kotlin 分析 API，它封装复杂逻辑，提供清晰抽象和文档，简化语义信息获取，还对核心 API 提供向后兼容，并指导插件开发者迁移。
- K2 模式的未来规划：K2 模式将在 IntelliJ IDEA 2025.1 版本成为默认模式。开发团队鼓励用户通过 YouTrack、Slack 或邮件反馈问题，以便进一步优化 Kotlin 的 IDE 使用体验。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/april/p5.png)

### [国内 KMP 实践案例收集](https://github.com/xiaobailong24/kmp-case-studies-cn)
都 2025 年了，还在犹豫要不要使用 Kotlin Multiplatform(KMP) 进行跨平台开发？

国内 KMP 实践案例收集，是官方 Case Studies 的补充。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/april/p8.png)

### [Kotlin 协程切勿滥用 Dispatchers.IO](https://mp.weixin.qq.com/s/eNO6tsN7E9Ank4EORMbmGA)
文章聚焦 Kotlin 协程调度器中 Dispatchers.IO 的使用问题。开发中常见将非 UI 任务用 withContext (Dispatchers.IO) 放至后台，但未区分任务类型。

Dispatchers.IO 用于 IO 任务，其默认线程数较多，是弹性线程池，专为阻塞调用优化。若处理 CPU 密集型任务，会因过多线程致 CPU 频繁上下文切换，增加开销，降低性能，它更适合 I/O 密集型任务。

而 Dispatchers.Default 使用固定大小线程池，线程数与 CPU 核心数匹配，专为 CPU 密集型任务设计，更能发挥 CPU 性能。此外，使用三方库处理网络请求、数据库操作等任务时，它们已自行管理 IO 任务调用，再用 Dispatchers.IO 包裹可能多余。

综上，Dispatchers.IO 处理 CPU 任务需谨慎，多数后台任务应使用 Dispatchers.Default。

## 精选视频
### [Kotlin 2.1.20 更新了什么](https://www.bilibili.com/video/BV1bgdEY5Etd/)
本视频细致的讲解了 Kotlin 2.1.20 都做了哪些更新，带来了哪些新特性。具体包括以下内容：

- K2编译器更新：对新的 kapt 插件和 Lombok 插件的更新
- Kotlin多平台：用于替代 Gradle Application 插件的新 DSL
- Kotlin/Native：新的内联优化
- Kotlin/Wasm：默认的自定义格式化程序、对 DWARF 的支持，以及向 Provider API的迁移
- Gradle支持：兼容 Gradle 的隔离项目（Isolated Projects）以及自定义发布变体
- 标准库：通用原子类型、改进后的 UUID 支持，以及新的时间跟踪功能
- Compose编译器：放宽了对 @Composable 函数的限制以及其他更新

## 社区活动
### [自动化 AI 工作流 - 为社区本地化热门文档](https://mp.weixin.qq.com/s/MxtipTvRPz_0MvRALX7-wg)
近期，有开发者与社区伙伴共同打造了一个名为 Open AIDoc 的站点。这是一个由 Gemini 驱动的公益项目，其目标是追踪流行的开源库文档，并将它们翻译成简体中文、繁体中文、日语、韩语等多种语言。目前 Open AIDoc上线了 0.1.0 版本。

Open AIDoc 已实现对 Kotlin 和 Koin 最新文档的同步翻译。按照既定计划，后续还准备将翻译范围扩展到 SqlDelight、Ktor 等更多大家熟悉的库。并且在未来，该项目还会持续拓展不同领域的文档翻译同步服务，不断丰富其内容。 

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/april/p7.webp)