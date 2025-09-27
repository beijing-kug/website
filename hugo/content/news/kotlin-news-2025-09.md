---
title: Kotlin 技术月报 | 2025 年 9 月
date: 2025-09-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

微信内限制外链点击，大家可以点击左下角阅读原文，支持外链查看。
## 最新动态
### Kotlin 2.2.20 正式发布
[Kotlin 2.2.20 Released](https://blog.jetbrains.com/kotlin/2025/09/kotlin-2-2-20-released/)

Kotlin 2.2.20 版本正式发布，主要更新内容包括：

1. **Web开发关键更新**：Kotlin/Wasm 进入Beta阶段，优化JavaScript互操作异常处理、npm依赖管理，新增内置浏览器调试支持，以及js与wasmJs目标的共享源集。
2. **多平台能力提升**：Swift导出默认开启，Kotlin库跨平台编译稳定，新增公共依赖声明方式。
3. **语言优化**：语言层面改进lambda传递给suspend函数类型重载时的解析；Kotlin/Native支持二进制堆栈金丝雀、减小发布包体积；Kotlin/JS将Long值编译为JavaScript的BigInt。

### Compose Multiplatform for Web 进入 Beta 阶段
[Compose Multiplatform 1.9.0 Released: Compose Multiplatform for Web Goes Beta](https://blog.jetbrains.com/kotlin/2025/09/compose-multiplatform-1-9-0-compose-for-web-beta/)

 Compose Multiplatform 1.9.0 版本发布，主要包括以下内容：

1. **核心版本里程碑**：2025年9月发布 1.9.0 版本，基于 Wasm 的 Compose Multiplatform for web 进入 Beta 阶段，脱离实验性质，支持早期开发者实际使用，成果依赖 Alpha 版用户反馈、演示项目及开源贡献。
2. **Web 开发核心优势**：开发者可复用 Android 端 Compose 技能与 UI 代码，无需学新工具；自带 Material 3 组件、自适应布局、浏览器导航集成、深色模式支持，且提供 Web 核心 API、HTML 互操作性、类型安全导航等能力，兼容多浏览器。
3. **开发工具支持**：可通过 IntelliJ IDEA（支持 macOS/Windows/Linux）或 Android Studio（Windows/Linux 支持后续添加）+ Kotlin Multiplatform 插件开发，插件支持创建 Web 项目、IDE 内运行调试、浏览器/IDE 双端调试。
4. **实际应用案例**：含 Kotlin Playground、KotlinConf app 等典型案例，另有 Rijksmuseum 藏品交互展示、Jetsnack 电商Demo、Material 3 组件画廊、Storytale UI 组件预览工具等参考项目。
5. **上手与反馈渠道**：通过 Kotlin Playground 零配置试用，或 IDE 按指南搭建；官方鼓励在 Kotlin Slack 的 #compose-web/#compose 频道反馈，助力框架优化。
6. **多平台额外优化**：iOS 端支持配置帧率、自定义文本输入；桌面端新增窗口预配置功能；全平台增强设计预览，简化变体测试，支持阴影深度自定义。

### Kotlin AI 技术栈介绍
[The Kotlin AI Stack: Build AI Agents With Koog, Code Smarter With Junie, and More](https://blog.jetbrains.com/kotlin/2025/09/the-kotlin-ai-stack-build-ai-agents-with-koog-code-smarter-with-junie-and-more/)

本文聚焦Kotlin在AI领域的双重价值——赋能开发者构建AI驱动应用，同时通过AI工具提升开发体验。

- **Kotlin开发AI应用的四层路径**：
    - 基础层：用OpenAI/Anthropic的Java SDK（底层为Kotlin）调用AI模型，适合简单功能开发；
    - 进阶层：借助Spring AI/LangChain4j等高阶库，轻松切换模型、集成AI交互，减少基建工作；
    - 标准化层：通过MCP及官方Kotlin SDK，实现AI工具跨代理/团队/应用共享；
    - 高阶层：用JetBrains开源的Koog框架（支持多平台）构建可观察、可测试的智能代理，另有Arc、Embabel等社区框架可选。
- **Kotlin的AI辅助开发工具**：
    - Junie：集成于JetBrains IDE，处理结构化任务（如构建功能、规划架构），GitHub提供EAP版本；
    - Mellum：JetBrains开源的代码LLM，为Junie提供支持，含Kotlin专属优化版本。
- **Kotlin适配AI的核心优势**：具备现代语言特性、无缝Java互操作性、多平台支持，拥有Koog等原生AI生态，且IDE集成AI开发工具。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/september/p8.webp)
## 精选博客
### [KMP on iOS 深度工程化：模块化、并发编译与 98% 增量构建加速](https://mp.weixin.qq.com/s/wOnyjYcka99eFJz8BWlu4Q)
本文介绍了哔哩哔哩技术团队如何在 iOS 平台上把 Kotlin/Native 的研发体验提升到一等公民（追平及超越 Apple 官方提供的基于 ObjC & Swift 的研发范式）。

- 在构建系统与编译速度上 ：实现了 Parallel Compilation ，将每个 Kotlin 模块独立编译为 .a 文件，在一些日常的底层修改的场景下最终产物编译耗时锐减 98% 。这不仅充分释放了 Bazel 的高并发优势，更让“改一行代码、秒级看到结果”的内环反馈成为现实，又由于引入了可靠的remote cache机制兑现了 Never clean build 的预期。
- 在编码与跨语言交互上 ：告别了 KMP 默认的“大一统”框架模式。通过为每个 Kotlin 模块生成独立的 Clang module ，并以 @ObjCExport 注解精确控制导出，实现了真正的模块化。这为 Xcode 提供了与原生 Swift/ObjC 无异的模块化 read 体验，也为 IDEA 带来了清晰、可控的跨语言 write 体验。
- 在调试与工程化上 ：通过修复 source-map 路径和实现可靠的 implementation_deps ，保证了跨语言调试的稳定性和构建的确定性，解决了社区方案中的常见痛点。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/september/p9.webp)

### [腾讯开源框架 Kuikly 再升级！率先适配 “液态玻璃”，原生体验更极致](https://mp.weixin.qq.com/s/tfLJ-Zaaw52v8hRjlpMszQ)
- **Kuikly框架概述**：Kuikly基于Kotlin Multiplatform技术，为腾讯广泛应用的跨端开发框架，服务众多业务，拥有庞大用户量。在iOS 26推出“液态玻璃”设计后，积极进行适配，以提升业务体验。
- **“液态玻璃”带来的挑战**：“液态玻璃”作为苹果UI设计的重要演进，其独特的光学和结构特性依赖底层硬件能力，改变了UI实现方式，使现有跨端框架面临适配难题，尤其是如何处理与宿主系统关系这一根本性问题。
- **不同架构路线适配差异**：自绘渲染框架如CMP、Flutter，虽能保证跨平台视觉一致，但适配“液态玻璃”需模拟原生效果，成本高且效果差；原生渲染框架如Kuikly、Hippy、ReactNative，可直接调用原生API，适配成本低、保真度高且能随系统创新同步演进。
- **Kuikly的适配实践**：Kuikly适配“液态玻璃”时，以用户体验为优先，平衡一致性与平台特色。通过简洁高效的API设计，为现有组件添加属性扩展适配。对不同组件类型采用不同策略，同时保障旧系统和其他平台兼容性，为开发者提供便捷低成本适配方案。 

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/september/p10.webp)

### [Kotlin Multiplatform 原理深入分析](https://mp.weixin.qq.com/s/qAL92PwaUwikdJRtUeEH5Q)
本文全面深入地介绍了Kotlin Multiplatform（KMP）。KMP作为Kotlin语言的重要特性，允许通过“一码多端”将Kotlin代码运行在不同平台，以节省成本。其核心是将Kotlin源码直接编译成目标平台代码，而非采用虚拟机方式。

- **KMP特性与优劣**：KMP以“一码多端”为特色，通过直接编译Kotlin源码到目标平台代码运行。优势在于跨语言调用性能折损小，执行性能接近原生；限制是因早期库设计未考虑跨平台，导致Android代码直接跨平台编译需大量改造。
- **Kotlin Native编译流程**：编译入口常见为Gradle Task或命令行，产物多样。从Klib编译到生成二进制库，过程涉及添加入口点、合并优化依赖库、llvm翻译等多步骤，每个步骤都有其特定功能与作用，如Lowering module && dependencies阶段对Ir进行前置优化。
- **IR转换细节**：Kotlin的各类元素在IR转换中都有对应翻译方式，基础类型对应C基本数据类型，类、对象、函数、属性、运算符等都有特定的llvm或C形式转换，以保证代码在目标平台高效执行。
- **Kotlin Native运行时与内存管理**：运行时打包Kotlin Runtime实现内存自动回收，内存管理使用多种分配器，目前聚焦优化custom分配器。与Android相比，在内存分配、对象引用、数组处理及接口存储等方面存在不同处理方式。
- **内存回收（GC）机制**：GC有多种类型，目前项目倾向使用性能较好的cms，但在内存碎片整理、内存占用、触发时机等方面存在可优化之处，反映出KMP在内存管理方面不断完善的过程。 

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/september/p11.webp)

### [ovCompose + AI 开发跨三端的 Now in Kotlin App](https://mp.weixin.qq.com/s/747OrOi1Ve8glE5ri41xhw)
Now in Kotlin 是一个基于 ovCompose 技术构建的跨平台项目。本项目旨在帮助开发者了解 Kotlin 最新技术动态，同时演示如何利用 ovCompose 在 Android、iOS 和 鸿蒙三个平台上实现代码共享与高效开发。

目前 Now in Kotlin 主要包括两个功能：

- Kotlin 炉边漫谈播客：内容来源于[https://podcast.kotlin.tips](https://podcast.kotlin.tips)，是一个以 Kotlin 为主题的中文播客节目。
- Kotlin 技术月报：内容来源于[https://beijing-kug.github.io/news/](https://beijing-kug.github.io/news/)，每月更新 Kotlin 相关的技术动态。

项目地址可见：[https://github.com/RicardoJiang/now-in-kotlin](https://github.com/RicardoJiang/now-in-kotlin)

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/september/p12.webp)