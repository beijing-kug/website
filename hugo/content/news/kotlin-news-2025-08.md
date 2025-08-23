---
title: Kotlin 技术月报 | 2025 年 8 月
date: 2025-08-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

微信内限制外链点击，大家可以点击左下角阅读原文，支持外链查看。
## 最新动态
### Kotlin 近期动态总结
[Kodee’s Kotlin Roundup: 2.2.20-Beta2, Kotlin LSP Update, Shipaton 2025, and a New Face on the Foundation Board](https://blog.jetbrains.com/kotlin/2025/08/kodee-kotlin-roundup-july-25-edition/)

又到了一期《Kodee 的 Kotlin 综述》时间！本文总结了 Kotlin 近期的动态，具体包括以下内容：

- **Kotlin 2.2.20-Beta2 发布**：带来智能升级，Kotlin Multiplatform 增强跨平台能力，默认支持 Swift 导出，新增 Web 开发目标；Kotlin/Native 在二进制管理和调试方面有改进。
- **Kotlin 编程语言排名**：在 2025 年 Stack Overflow 开发者调查中，位列最常用编程语言第 15 位，虽未进前十，但有较大发展空间。
- **Kotlin 语言服务器协议更新**：首个 KotlinConf 后的版本核心功能更完善，虽仍有工作要做，但整体进展良好。
- **Shipaton 2025 活动**：为期两个月，Kotlin 开发者可借助稳定的 Compose Multiplatform for iOS 参与，有机会赢得 Kotlin Multiplatform Reach Award 及 55,000 美元奖金池份额。
- **Kotlin 基金会新成员**：欢迎 Sergei Rybalkin 加入董事会，他是 Meta 高级软件工程师，此前在阿里巴巴推动 Kotlin 应用，在多个领域经验丰富。
- **IntelliJ IDEA 2025.2 新特性**：推出新的 Spring 调试器，支持 Spring Modulith，Kotlin 核心功能在 Ultimate 订阅到期后仍可使用，还有其他提升开发体验的改进。
- **Kotlin 2.2 新特性**：引入上下文敏感解析的实验性功能，可省略额外类型限定符，使代码更简洁。
- **KotlinX RPC 0.9.1 发布**：为长期稳定性和演进奠定基础，实现与 KotlinX Serialization 的解耦，API 和生命周期管理更简洁，默认启用严格模式。
- **Koog 相关更新**：
  - Koog 0.3.0 版本发布，作为 Kotlin 基于 idiomatic Kotlin 构建和运行 AI 代理的框架，带来更好的耐用性、更快的执行速度、更丰富的可观测性及与现实系统更顺畅的集成。
  - 介绍了 Koog 中 LLM 模式调试案例，讲述 JetBrains 团队解决 AI 代理突然忽略指令问题的过程。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/aguest/p1.webp)

### Kotlin 2.2.20-RC 发布
[What's new in Kotlin 2.2.20-RC](https://kotlinlang.org/docs/whatsnew-eap.html)

- Kotlin 2.2.20-RC 于近期发布，主要更新内容包括：
- Kotlin 多平台：默认支持 Swift 导出、为 js 和 wasmJs 目标提供共享 source set、Kotlin 库的稳定跨平台编译，以及一种声明公共依赖项的新方法。
- 语言方面：向带有挂起函数类型的重载传递 lambda 时，重载解析得到改进。
- Kotlin/Native：支持二进制文件中的栈金丝雀，以及减小 iOS 目标的二进制文件大小。
- Kotlin/Wasm：改进了 Kotlin/Wasm 与 JavaScript 互操作中的异常处理。
- Kotlin/JS：Long 值编译为 JavaScript 中的 BigInt。

### Kotlin 在后端的应用——KotlinConf 2025 的新动态
[Kotlin on the Backend – What’s New From KotlinConf 2025](https://blog.jetbrains.com/kotlin/2025/08/kotlin-on-the-backend-what-s-new-from-kotlinconf-2025/)

2025 年 KotlinConf 聚焦于 Kotlin 在后端的应用，展示了其在后端开发领域的蓬勃发展，本文总结了会议期间的一些最新动态：

- **与Spring的战略合作伙伴关系**：JetBrains 与 Spring 团队达成合作，roadmap 包括为 Kotlin 和 Spring 应用提供全面空安全保障、推出官方 Kotlin 中心的 Spring 教程和文档、借助kotlinx.reflect 提升反射性能、优化配置 DSL。两场会议深入探讨相关内容，Spring 创始人及核心贡献者分别分享了 Kotlin 与 Spring 结合的优势及 Spring Boot 4 对 Kotlin 支持的更新。
- **Ktor框架进展**：Ktor 成为适用于现代可扩展后端的强大框架，近期更新包括内置基于协程生命周期管理的依赖注入支持、新 HTMX 模块、对可挂起应用模块的支持、CIO 引擎的 Unix 域套接字及Gradle 版本目录等。团队正推进 API 文档工作（从OpenAPI支持开始），并推荐了三场相关必看演讲，涉及全栈简化、协程与并发、实时仪表板构建等内容。
- **Kotlin与AI工具**：JetBrains 推出三款AI工具，Koog 是基于 Kotlin 的 AI 代理构建运行框架，Mellum 是开源且针对代码生成等优化的内部 LLM，Junie 是集成于 IDE 的 AI 编码代理（已在GitHub 开放早期访问）。同时推荐了五场相关演讲，涵盖 AI 代理构建、无 LLM 的AI实现、AI 入门知识、大规模 LLM 应用构建及工具集成等主题。
- **Exposed 1.0里程碑**：Exposed 1.0（Beta版）经重构后，成为类型安全、表达性强的 Kotlin SQL 库，支持完整 R2DBC（实现非阻塞数据库操作）、新增 SQL 功能、改进入门材料及推出新 IDE 插件，相关演讲详细介绍了新特性及未来规划。
- **Kotlin Notebook应用**：Kotlin Moonshots 项目负责人展示了 Kotlin Notebook 的实际应用案例（寻找最长帆船航行路线），体现其使复杂逻辑直观可视化的优势。

### Gradle 9.0 发布
[What's new in Gradle 9.0.0](https://gradle.org/whats-new/gradle-9/)

Gradle 9.0.0 是一个新的主要版本，自 8.0 版本以来融入了许多特性，具体包括以下内容：

- **配置缓存**：成为首选执行模式，新项目默认启用，支持加密、依赖验证、字符串去重及并行加载存储，性能提升显著。
- **性能优化**：优化Kotlin脚本编译、依赖解析内存使用和IDE性能，加快构建与同步速度。
- **Kotlin与DSL**：默认使用Kotlin DSL，升级至Kotlin 2.2，带来新特性，同时因JSpecify注解可能影响插件。
- **Java支持**：最低需Java 17运行，支持到Java 24，可通过JAVA_HOME和GraalVM配置工具链。
- **守护进程改进**：支持指定JVM及供应商，保持编译器守护进程存活，提升编译速度，支持Alpine Linux文件监控。
- **Groovy升级**：嵌入Groovy 4.0，可能影响相关插件。
- **构建体验**：增强错误报告，支持测试试运行，改进构建初始化，提供问题API及HTML报告。
- **Wrapper改进**：支持符号名称、版本部分指定及URL验证。
- **文档与培训**：更新用户指南、推出DPE University培训平台及新网站。
- **延迟特性**：Provider API迁移和Isolated Projects延迟至后续版本。
- **升级提示**：存在潜在不兼容，需遵循指南测试后升级。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/aguest/p2.png)

### Kotlin 路线图更新
[https://kotlinlang.org/docs/roadmap.html](https://kotlinlang.org/docs/roadmap.html)

本文介绍了 Kotlin 路线图更新内容，介绍了 JetBrains 团队的核心工作方向、各子系统重点任务，以及 2025 年 2 月以来的更新变化。

1. 核心方向：聚焦语言进化（重语义改进）、多平台开发（强化跨平台支持）、工具中立性、生态系统简化（库/工具开发发布）。
2. 子系统重点：
   - 编译器：推进Kotlin/Wasm多线程原型、JSpecify支持等。
   - 多平台：支持Swift Export协程、Kotlin/JS编译优化等。
   - 工具：支持Kotlin LSP和VS Code、完善Gradle集成等。
   - 生态：实现KDoc机器可读格式、发布DataFrame 1.0等。
3. 2025年2月以来变化：
   - 完成项：Swift Export首发布、在不同平台上稳定 klib 的交叉编译等。
   - 新增项：Wasm多线程支持、JS现代编译等。
   - 移除项：部分Wasm目标调整等（部分与现有项目合并）。

## 精选博客
### [腾讯Kuikly框架进一步开源，新增支持Web，开启一码五端新体验！](https://mp.weixin.qq.com/s/Ylo97APs2LhorlB7hTNwUw)
Kuikly是腾讯广泛应用的跨端开发框架，基于Kotlin Multiplatform技术构建，为开发者提供了技术栈更统一的跨端开发体验，由腾讯大前端领域 Oteam（公司级）推出。

本次在Android、iOS、鸿蒙开源基础上，将新增开源Web版，支持H5和微信小程序，进一步扩展多端适配场景。

- **框架概况**：腾讯Kuikly是基于Kotlin Multiplatform的跨端开发框架，已应用于20+业务，日活超5亿。此次新增Web版开源，支持H5和微信小程序，接入多款腾讯业务。
- **对比优势**：H5产物仅463KB，远小于同类框架；在iOS、Android、PC浏览器加载速度最快，MacBook Pro Chrome浏览器FCP耗时87.76ms。还具备开发体验佳、调试方便、SEO友好、兼容性强、可复用H5生态等优势，且填补微信小程序官方支持空白。
- **技术方案**：跨端Core层处理核心逻辑，Render层负责平台渲染。Web版抽象Web容器运行时作为适配层，H5运行时借助浏览器标准DOM，微信小程序运行时借鉴业界思路优化渲染流程。
- **未来规划**：优化Web版性能，探索WASM提升效率，下半年开源Electron适配，扩大支持范围。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/aguest/p5.gif)

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/aguest/p4.webp)

### [Kotlin 全新特性：“上下文参数” 应用场景介绍](https://mp.weixin.qq.com/s/Y085CEopXyJTVIy6TmJ2bA)
Kotlin 1.6.20 引入了上下文接收器 (Context Receivers) 这一实验新特性，并随着 Kotlin 2.2.0 版本的发布，正式更名为上下文参数 (Context Parameters) 并进入预览阶段。本文将回顾这一特性的演进历程，展示其语法变化，并通过实例探讨它能为我们的代码带来哪些可能性。

- **特性演进**：Kotlin 1.6.20引入实验性上下文接收器，Kotlin 2.2.0更名为上下文参数并进入预览阶段，语法上要求参数命名，需显式引用，也可匿名声明。
- **应用场景**：
  - 支持多上下文参数组合，创建复杂作用域。
  - 与协程集成，提供安全并发模式。
  - 实现依赖注入，无需复杂框架。
  - 强制函数在特定作用域（如数据库事务）调用。
  - 助力DSL构建，提供清晰作用域。
  - 可通过桥接函数简化DSL语法。
  - 能在函数类型/Lambda中声明，调用方式灵活。
  - 类似类型类，为类型提供接口实现。

### [Kotlin 调用 C 语言是如何实现的?](https://android-performance-optimization.github.io/foundation/kotlin-compiler-learn/kotlin-c-interop/)
Kotlin/Native 通过 C-interop 机制实现与 C 语言的互操作性，允许 Kotlin 代码直接调用 C 函数和使用 C 数据结构。C-interop 通过解析 C 语言头文件自动生成相应的 Kotlin 绑定代码，为 Kotlin 与 C 库的交互提供了无缝的桥梁。本文介绍了 Kotlin 调用 C 语言具体是如何实现的。

1. 该过程首先通过一个 .def 配置文件来声明需要交互的 C 库头文件和链接信息，cinterop 工具会解析这些头文件，并执行以下关键操作。
2. 生成 Kotlin IR 存根：创建 C 函数和类型的 Kotlin 声明，并将其存储为 .klib 中的元数据。这使得 Kotlin 编译器能够识别这些外部符号。
3. 生成 C 桥接代码：创建 C “胶水”函数（wrapper），用于安全地调用原始 C 函数。这些桥接代码随后被编译成原生 LLVM 位码。
4. 最终，Kotlin 元数据和原生位码被一同打包进一个 .klib 文件。当编译器在用户代码中遇到对 C 函数的调用时（通过 @CCall 注解识别），它会链接到 .klib 中对应的桥接函数，从而完成整个调用链路。

## 精选播客
### [Kotlin 中文社区和底层编程所经历的 AI 变革](https://www.xiaoyuzhoufm.com/episode/6886d50d96cb2d710983bf94?s=eyJ1IjoiNjAxZjc1MzNlMGY1ZTcyM2JiNzY5M2NiIiwiZCI6Mn0%3D)

本期节目邀请到 Kotlin 专家霍丙乾老师，围绕 Kotlin 中文社区及 AI 视角下底层技术编码革新展开交流。主要内容包括：

- 引子：AB 发起的 Open AIDoc 项目及本地化痛点，涵盖 Kotlin/Koin/SqlDelight/Ktor 等多个 Kotlin 和 Android 热门库的中文文档翻译；
- Kotlin 在中国社区的发展简述，从社区维护的中文站和博客到后来官方接手的有趣故事；
- 霍老师因为 Kotlin 而改变的职业生涯；
- KMP 包括 Kotlin Native 的一些技术细节讨论；
- 底层编程技术例如 KN LLVM 的后端编译修改、Gradle 与 AGP 的构建期扩展、字节码编程等编码体验，是如何在 AI 时代经历了变革？
- AB 分享了一点点个人想法，有关如何入门 Agent 模式的 AI 编程，可以拿它来做什么等等。
