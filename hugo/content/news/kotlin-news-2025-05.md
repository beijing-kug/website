---
title: Kotlin 技术月报 | 2025 年 5 月
date: 2025-05-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Compose Multiplatform 1.8.0 发布
[Compose Multiplatform 1.8.0 发布：Compose Multiplatform for iOS 已经稳定并且可以投入生产环境](https://blog.jetbrains.com/zh-hans/kotlin/2025/05/compose-multiplatform-1-8-0-compose-multiplatform-for-ios/)

Compose Multiplatform 1.8.0 现已发布，将 Compose for iOS 带入稳定阶段。 更新后，Kotlin Multiplatform 成为移动开发的完整解决方案，支持跨业务逻辑和 UI 的灵活代码共享，而不会影响应用质量或减少对平台特定功能的控制。

良好的用户体验不仅仅取决于 UI 行为，也与性能有关。在 Compose Multiplatform 1.8.0 中：

- 启动时间与原生应用相当，因此您的第一帧到达的速度同样快。
- 即使在高刷新率设备上，滚动性能也与 SwiftUI 相当。
- 与具有相同 UI 逻辑和资源的完全原生 SwiftUI 应用相比，Compose Multiplatform 仅将 iOS 应用的大小增加了约 9 MB。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/may/p1.png)

### Kotlin/Web 的现状与未来
[Present and Future of Kotlin for Web](https://blog.jetbrains.com/kotlin/2025/05/present-and-future-kotlin-for-web/)

Kotlin 团队始终致力于为 Kotlin 开发者提供强大且无缝的支持，助力其在 Kotlin 多平台进行 Web 开发。为实现这一目标，Kotlin 团队正在几个关键领域开展工作：

- 提升针对 Web 目标的 IDE 支持。
- 将 Kotlin/Wasm 和 Compose Multiplatform for web 提升至 Beta 阶段。
- 为旧版浏览器中的 Compose 多平台提供兼容模式。
- 消除 Kotlin/JS 中互操作性的大部分限制。
- 在 Kotlin/JS 中瞄准最新的 JavaScript 标准。

### Kotlin 近期动态
[Kodee’s Kotlin Roundup: Compose Multiplatform for iOS is Stable (Plus AI, Web, and More!)](https://blog.jetbrains.com/kotlin/2025/05/kodees-kotlin-roundup-compose-multiplatform-for-ios-is-stable/)

本文全面介绍了 Kotlin 生态系统的最新动态。

1. **Kotlin版本动态**：Kotlin 2.1.21 - RC2修复错误、提升性能；2.2.0 - Beta2 在编译器、JVM、Gradle等方面有改进。
2. **KotlinConf 2025**：即将举行，无法现场参与的开发者可通过直播观看主会场内容。
3. **JetBrains AI助力开发**：Junie 和 AI Assistant 融入IDE，可协助处理 Kotlin 任务、编写代码、生成测试等。
4. **Kotlin多平台进展**：Compose Multiplatform for iOS 1.8.0 版本稳定，KMP 成为完整移动开发解决方案，klibs.io 平台上相关库数量翻倍。
5. **服务器端开发**：Ktor 3.1.3 发布，修复错误、提升性能；Kotlin Notebook 集成到IntelliJ IDEA 2025.1。
6. **Web开发进展**：在 IDE 对 Web 目标的支持、Kotlin/Wasm 和 Compose Multiplatform for web 迈向 Beta 等方面取得进展。 

### KMP IDEA 插件发布 Beta 版本
[Kotlin Multiplatform Tooling: Now in IntelliJ IDEA and Android Studio](https://blog.jetbrains.com/kotlin/2025/05/kotlin-multiplatform-tooling-now-in-intellij-idea-and-android-studio/)

JetBrains 推出适用于 IntelliJ IDEA 和 Android Studio 的 Kotlin Multiplatform（KMP）插件 Beta 版。此插件简化了 KMP 开发流程，从项目设置到跨平台开发以及 Compose UI 预览等各环节都更便捷。

KMP 插件可通过 JetBrains Marketplace 获取，目前仅支持 macOS，需开启 K2 模式。未来将扩大操作系统支持，提升对 Swift 的高级 IDE 支持，简化 KMP 模块创建，并改进桌面和 Web 平台工具支持。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/may/p2.png)

### Retrofit 3.0.0 版本发布
[https://github.com/square/retrofit/releases/tag/3.0.0](https://github.com/square/retrofit/releases/tag/3.0.0)

Retrofit 3.0.0 依赖的 OkHttp 版本升级至 OkHttp 4.12（从 3.14 升级）。

此版本的 OkHttp 采用 Kotlin 编写，因此 Retrofit 现在有了 Kotlin 的传递依赖项。不过，这也是受官方支持的 OkHttp 版本，而此前的版本已近四年未获支持。

注：Retrofit 的 3.x 版本与 2.x 版本保持二进制前向兼容性。这意味着针对 2.x 版本编译的库仍可在 3.x 版本中使用。 

### 认识 Koog：助力 Kotlin 开发者构建 AI 智能体
[Meet Koog: Empowering Kotlin Developers to Build AI Agents](https://blog.jetbrains.com/ai/2025/05/meet-koog-empowering-kotlin-developers-to-build-ai-agents/)

Koog 是 JetBrains 为 Kotlin 开发者打造的创新开源框架，致力于推动 Kotlin 在 AI 领域的应用与发展。

1. **Koog的发布**：在2025年 KotlinConf 上，JetBrains 推出开源框架 Koog，助力 Kotlin 开发者在 JVM 生态中构建 AI 代理。
2. **开发原因**：AI 代理发展迅速，但此前缺乏 Kotlin 原生的全面代理框架，JetBrains 基于自身经验开发 Koog，满足实际业务需求。
3. **关键特性**
    - 纯 Kotlin 实现，无外部服务依赖。
    - 模块化系统，可扩展代理能力。
    - 支持工具集成，访问外部资源。
    - 提供常见用例解决方案。
    - 工作流可定制。
    - 具备追踪和监控功能。
4. **开源情况**：Koog 开源至 GitHub，提供快速入门指南，鼓励开发者尝试。 

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/may/p6.png)

### 强化 Kotlin 助力后端开发：与 Spring 的战略合作伙伴关系
[Strengthening Kotlin for Backend Development: A Strategic Partnership With Spring](https://blog.jetbrains.com/kotlin/2025/05/strategic-partnership-with-spring/)

本文介绍了 JetBrains 与 Spring 团队结成战略合作伙伴关系，此次合作旨在强化 Kotlin 在后端开发中的地位，为开发者带来更好的开发体验，推动 Kotlin 在 Spring 生态系统中的应用。

1. **合作背景与目的**：JetBrains 认为 Kotlin 是现代后端开发的优质选择，为推动其在专业服务器端开发的应用，与 Spring 团队深化合作，提升 Kotlin 开发者在 Spring 框架中的开发体验。
2. **合作关键领域**
    - 提升 Kotlin 和 Spring 应用的完全空安全，增强类型安全性。
    - 提供官方 Kotlin 版的 Spring 核心学习资源。
    - 开发新的 kotlinx.reflect 库，加快依赖反射场景的运行速度。
    - 发展配置 DSLs，为基于 lambda 和 DSL 的 Bean 定义提供更好支持。
3. **Kotlin 在 Spring 中的优势**：Kotlin 简化后端操作，使代码简洁易维护，促进模块化设计，且与 Spring 结合紧密，如 Spring 对 Kotlin 的协程、扩展等提供支持，两者互操作性强。
4. **应用趋势**：Kotlin 在 Spring 生态系统中应用增长迅速，众多企业借此实现高效开发与维护，已有 27% 的 Spring 开发者使用 Kotlin。 

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/may/p7.webp)
## 精选博客
### [腾讯开源跨平台开发框架 Kuikly，能显著提升多端开发效率](https://mp.weixin.qq.com/s/3M6A3uDGvv3Zyi8JMPg9tA)
在跨端框架中，跨端能力、性能表现和动态化能力，作为开发框架的三个重要维度，一直比较难达到理想的平衡效果。

动态语言跨端方案，如类 RN 框架、Web 容器类方案，能做动态化但性能较低。基于 AOT 编译的自绘跨端方案，如 Flutter、JetBrains Compose（以下简称JB Compose），能达到接近原生的性能但又不能动态化。此外类RN框架需要跨语言调用，技术复杂，语言之间也需要多重转换，也影响着性能。Flutter / JB Compose 基于自绘，包体积增量较大，同时自绘引擎初始化也影响其加载性能。

本文深入解析了 Kuikly 的技术原理，以及其在真实业务场景中的特性优势：

- 多端支持：一码五端，涵盖多个主流平台，部分已开源，后续有开源计划。
- 性能卓越：获原生级性能体验，首屏耗时、内存增量与原生相近，启动和内存表现优于其他框架。
- 开发高效：Kotlin 语言驱动，用原生工具链。自研 DSL 提升 UI 开发效率，支持 Compose DSL 且将开源。
- 动态灵活：支持页面级动态化，按需切换，稳定性高，Android 动态化性能损耗小。
- 轻量稳定：设计精巧，无复杂依赖，稳定性、可控性和维护性高。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/may/p3.webp)

### [支付宝客户端 Kotlin/Native 包体积优化实践](https://mp.weixin.qq.com/s/vcuo2YJsrn3kQcTNuoLuGQ)
本文介绍了支付宝客户端在 Kotlin/Native 包体积优化方面的实践经验，主要包括以下几个方面：

1. **优化背景与目标**：支付宝客户端采用三端一码及Kotlin Multiplatform跨端开发模式，引入Kotlin和Compose框架后安装包体积增加。目标是降低支付宝客户端和新接入相关框架应用的安装包大小，提升用户下载体验。
2. **优化方案1：编译参数优化**：Kotlin 2.1较2.0编译产物体积增加，可能与LLVM工具链有关。通过向官方提交Issue，在“壳工程”添加LLVM优化参数和优化pass，如开启`-Os`模式、启用`globaldce`和`lto`等，可减小几兆（10%）包体积，使Kotlin 2.1包大小接近Kotlin 2.0同期水平。
3. **查看产物方法**：iOS可利用LinkMap分析包大小，iOS和鸿蒙都能借助IDA Pro逆向查看带符号产物，辅助分析符号和函数情况。
4. **Kotlin 2.1官方方案**：Kotlin 2.1新增`objCExportEntryPointsPath`配置项，可精细控制代码导出。DCE通过构建调用图移除不可达代码，限制导出函数可使未使用代码被识别为死代码移除，减小二进制文件大小。
5. **优化方案2：精细化导出配置**：增强`-Xbinary=objcExportEntryPointsPath`配置能力，支持导出class；引入`@ObjCExport`和`@CExport`注解，依此判断符号是否导出。最终实现iOS Framework二进制产物体积、支付宝iOS的IPA包体积、鸿蒙平台KMP动态库体积均显著减少。 

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/may/p4.webp)

### Gradle 推出最佳实践
[Gradle Best Practices - A Path to Build Happiness](https://blog.gradle.org/gradle-best-practices#whats-in-the-initial-release)

Gradle的灵活性非常强大，但它经常导致混乱和不一致——尤其是对于成长中的团队。这就是为什么 Gradle、Google 和 JetBrains 联合起来定义最佳实践，这些最佳实践有助于开发人员充满信心地进行构建、避免陷阱，并使他们的项目具有前瞻性。

1. **背景**：Gradle 灵活性高但易导致困惑和不一致，开发者常缺乏明确指导。2024 年相关公司峰会后，成立工作组制定最佳实践指南。
2. **重要性**：多样配置方式影响构建的稳定性和可维护性，指南为 Gradle 构建提供清晰指引，避免不良实践。
3. **原则**：降低复杂性、奠定坚实基础、与 Gradle 未来发展一致，以“做这个，不做那个”框架呈现。
4. **初始发布**：推出十二条最佳实践，如用`plugins`块应用插件，为用户提供价值，后续将持续完善。
5. **后续计划**：持续增加和优化最佳实践，吸引社区参与，提供 IDE 内支持。鼓励开发者应用并反馈。 

### [2025 跨平台技术如何选：KMP 与 Flutter 的核心差异](https://mp.weixin.qq.com/s/tfd4I0YNCI_jVPZ7P0uKAg)
本文从技术实现、性能、生态、开发体验等不同维度，探讨 KMP 与 Flutter 的本质差异，以及它们如何重塑现代应用开发。

- 设计思想差异：KMP 核心是 “编译时” 哲学，将 Kotlin 代码直接编译成各平台原生格式，如 Android 的 JVM 字节码、iOS 的机器码等，通过 expect/actual 机制实现逻辑层共享，UI 层原生。而 Flutter 是 “渲染引擎” 策略，利用 Skia 引擎在画布上自绘 UI，Dart 代码在 Dart VM 运行，通过 Platform Channel 与原生交互，带来统一视觉体验但存在应用体积膨胀等问题。
- 技术内核对比：KMP 是 “翻译官” 模式，原生编译代码，零中间层，UI 层交原生技术，可渐进式改造，适合已有原生应用团队。例如麦当劳 App 用 KMP 共享订单逻辑。Flutter 是 “画家” 策略，自绘 UI 引擎，运行时依赖 Dart VM，全栈式框架，适合从零开始的 MVP 开发，但深度定制成本高。
- 性能路径分析：启动速度与内存占用上，KMP 编译为原生代码，启动时间与原生接近，内存管理复用平台机制；Flutter 引擎初始化致启动延迟，Dart VM 额外占内存。渲染性能与动画表现方面，KMP 的 UI 渲染由原生组件负责，60FPS 稳定性高；Flutter 在简单动画表现好，复杂交互动画可能帧率波动。平台特性响应上，KMP 能直接集成平台 API 更新，Flutter 依赖官方插件更新。
- 生态整合特点：KMP 融入原生生态，复用工具链，能调用现有 Java/Kotlin 和 Swift/Obj-C 生态库，可渐进式扩展。如 Netflix 用 KMP 共享推荐算法模块。Flutter 自建生态，依赖社区插件对接原生功能，设计系统绑定，跨端扩展局限于移动端和 Web。

## 精选视频
### KotlinConf 2025 开幕演讲
[KotlinConf'25 - Keynote](https://www.youtube.com/watch?v=F5NaqGF9oT4&t=108s)

KotlinConf 2025 主题演讲，回顾 Kotlin 发展历程与现状，具体包括以下内容：

- **Kotlin 2.2 及语言进化**：Kotlin 2.2 即将推出，带来 Context parameters 等新特性。K2 编译器在 IntelliJ IDEA 2025.1 成为默认，大幅缩短编译时间，未来还将有 Rich errors 等新特性，且将设计稳定编译器插件 API。
- **Kotlin构建工具Amper**：Amper 作为实验性 Kotlin 和 JVM 构建工具，朝着 Alpha 阶段发展，对开发者友好，有清晰配置路径、IDE 支持和错误报告，支持各类 Kotlin 应用开发。
- **Kotlin基金会与资助计划**：Kotlin 基金会今年壮大，Block 和 Meta 分别以银牌和金牌会员加入。资助计划曾表彰 2024 年多个开源项目获奖者，今年该计划重启，鼓励开发者申请。
 - **Koog框架与AI助力**：开源框架 Koog 用于在 Kotlin 中构建 AI 代理，含预定义工作流程和模式。同时，AI 辅助 Kotlin 开发者，JetBrains AI 集成到 IDE，同时 Junie on GitHub 将开放 EAP。
 - **Kotlin多平台更新**：IntelliJ IDEA 和 Android Studio 推出全新 KMP 插件，Kotlin 2.2.20 将发布 Swift Export 首个实验版本。Compose Multiplatform for iOS 达到稳定状态，具备多项功能且支持热重载。Kotlin/Wasm 和 Compose for web 不断改进，预计今年晚些时候达到 Beta 阶段。
 - **服务器端Kotlin**：近一半 Kotlin 开发者用于后端，JetBrains 与 Spring 团队合作，涵盖提升空安全、提供官方 Kotlin 学习材料、加速 Kotlin 反射等领域。Ktor 3 核心改进，I/O 性能提升，Exposed 库全面重写，提供更好 IDE 支持。
 - **官方Kotlin LSP开发**：官方开发 Kotlin 语言服务器协议及 VS Code 新扩展，早期已支持代码补全、导航等基础功能，计划今年晚些时候发布 Alpha 版本。 

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/may/p5.png)
