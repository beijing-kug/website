---
title: Kotlin 技术月报 | 2024 年 12 月
date: 2024-12-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### [推出 klibs.io：探索 Kotlin Multiplatform 库的新方式](https://mp.weixin.qq.com/s/T3qtxrwuMPpL5cQKmKJXtw)
Kotlin Multiplatform¹ 正在迅速发展，生态系统不断扩大，仅在 2024 年，库的数量就增加了 35%。虽然可用库数远超往日，但找到适合您的用例和目标平台的库仍是一项挑战。

为此，JetBrains 推出了 klibs.io，这项新服务旨在提高查找 Kotlin Multiplatform 库的速度和简便性。

Klibs.io 是一项简单的 Web 服务，利用这项服务，您可以找到支持所选平台（JVM、Android JVM、Wasm、JS、Kotlin/Native）并且适用于特定目的的 Kotlin Multiplatform 库。网站会对 GitHub 和 Maven Central 中的数据编制索引，并使用 AI 生成的元数据增强搜索结果。它旨在通过提供与 KMP 相关的信息来降低评估库的难度。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/december/p9.webp)

### Jetbrains 《2024 开发者生态系统现状报告》发布
[https://www.jetbrains.com/zh-cn/lp/devecosystem-2024/](https://www.jetbrains.com/zh-cn/lp/devecosystem-2024/)

每年，Jetbrains 都会发布《开发者生态系统现状报告》，展现开发者的世界。这一次进行了精简，在一个网页上列出重点，汇集研究中最引人注目的洞察。如果您想深入了解，可以下载完整的原始数据。

基于全球 23,262 名开发者的回复，本报告将清晰透彻地展现庞大而多样的开发者群体。Jetbrains 的目标是分享开发者最关心的问题，从开发者所依赖的编程语言、工具和技术，到影响行业发展的关键问题。

今年，Jetbrains 将继续探索开发者在各个领域对 AI 的看法。剧透：对 AI 的恐惧似乎正在减少！Jetbrains 还将深入研究职业和就业趋势、领域多样性，甚至对业界最近大规模裁员的一些洞察。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/december/p10.jpg)

### Arrow 2.0 发布
[Arrow 2.0 release](https://arrow-kt.io/community/blog/2024/12/05/arrow-2-0/)

Arrow 是一个用于 Kotlin 类型化函数式编程的库,其目的是为 Kotlin 开发者提供一套丰富的工具和功能，以增强在 Kotlin 编程语言中进行函数式编程的能力和体验。

Arrow 2.0 版本目前已发布。这个版本是使用新的 K2 编译器构建的，这使其能够支持更广泛的平台，包括 WebAssembly。从现在开始，Arrow 将为 Kotlin 支持的每个平台提供构件。除了稳定化和一般错误修复之外，这个版本的主题是改进 Arrow 库提供的领域特定语言（DSL），其目标是使开发人员能够编写更简洁易读的代码。

### Koin 计划发布 IDE 插件
Koin 是一个轻量级的依赖注入（Dependency Injection，DI）框架。对于一个依赖注入框架来说，编译时的检查是非常重要的。为了提高开发者的开发效率，Koin 团队更进一步，计划于 2025 年 Q1 发布一个 IDE 插件，用于检查 Koin 模块的正确性。

与传统的在编译过程中发生的编译安全不同，IDE 插件会在你编写代码时实时分析 Koin 配置。

Koin IDE 插件将执行静态代码分析，在诸如循环引用或缺少声明等问题变成运行时错误之前尽早识别它们。这种积极主动的方法将通过从源头上防止配置问题，而不是等到在编译或构建时出现问题，从而简化你的工作流程。

通过立即集成到你的开发工作流程中，IDE 插件不仅仅是在检查代码而是从源头上防止配置错误。与其他依赖注入框架相比，这种方法可以减少等待编译的时间，提高开发效率。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/december/p11.webp)

## 精选博客
### [Kotlin Multiplatform 的春天， klibs.io 发布，还有官方支持鸿蒙的想法](https://juejin.cn/post/7449965819360411685)
Kotlin Multiplatform 这些年发展迅速，其中最明显的就是 KMP 生态在不断扩大，仅在 2024 年一年里，库的数量就增加了 35%。为了帮助开发者更好地找到适合自己的库，JetBrains 推出了 klibs.io，这项新服务旨在提高查找 Kotlin Multiplatform 库的速度和简便性。

同时近期 Kotlin 编译组的 lead 表示，他们也在研究如何在 KMP 中支持 Harmony0S。而官方的计划是，可以通过重新使用 Kotlin/JS 编译器，直接生成 ArkTS (而不是JS)，从他的角度看，现在都通过 Kotlin/Native 的实现并不合适，因为在 Kotlin/Native 实现中，会有两个运行时和两个独立的垃圾回收器。

而在 Kotlin 官方的角度，这样做可以重新使用 Kotlin/JS 生态系统中已经拥有的 TypeScript 互操作性，另一个好处是将重新使用 HarmonyOS 工具链的所有其他部分，包括运行时，因此调用 HarmonyOS 的 APl 不会有任何性能损失。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/december/p12.webp)

### [一文看懂 Jetapck Compose 布局流程](https://juejin.cn/post/7446007995417395234)
Compose 绘制生命周期为三个阶段：

- Composition/组合：Composable 源码经过运行后生成 LayoutNode 的节点树，这棵树被称为 Composition。
- Layout/布局：对节点树深度遍历测量子节点的尺寸，并将其在父容器内摆放到合适的位置。
- Drawing/绘制：基于布局后拿到的尺寸和位置信息，绘制上屏。

我们与 Android 经典视图系统的生命周期（Measure，Layout，Drawing）做一个对比：组合是 Compose 的特有阶段，是其能够通过函数调用实现声明式 UI 的核心，具体可见作者的其他文章，而绘制阶段与传统视图大同小异，都是通过 Android Cavas API ，底层调用 skia 实现，本文也不做讨论。

本文讨论的重点是布局阶段。Compose 的布局把 Measure 也了囊括进来，相对于 Android View 有相似性，但也有其独有的特点和优势。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/december/p14.webp)

### [从零实现一个 KMP 插桩框架: EzHook](https://juejin.cn/post/7445861251420487706)
Kotlin Multiplatform近年来逐渐崭露头角，已成为备受关注的跨平台开发方案。它支持代码在 Android、iOS、Web、Destop 等多个平台之间复用，能够大幅提升开发效率与需求的多端一致性。并且随着鸿蒙 Next 的发布，越来越多公司开始着手适配 KMP 以满足未来移动端跨平台开发的需求，由此可见 KMP的发展潜力不可小觑。

然而，在将 KMP 应用到实际项目中时发现缺少一个关键能力——「代码插桩」。这一能力对于修改第三方库、面向切片编程（AOP）以及构建业务框架等场景至关重要。在 Android 平台上，我们可以基于 Transform 实现自定义的字节码转换，并且社区也提供了丰富的 AOP 框架（如 Lancet）。

但目前还没有一款基于 KMP 的类 Transform 能力与对应的 AOP 框架，本文探索了 KMP 平台上类 Transform 能力，并基于该能力开发一款适用于 KMP 的 AOP 框架——EzHook。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/december/p15.webp)

### [Kotlin/JVM 编译流程浅析](https://juejin.cn/post/7451227088571351059)
编译器一般分为前端和后端两部分，前端负责词法分析、语法分析、语义分析、中间代码生成等工作，后端负责中间代码优化、目标代码生成等工作。Kotlin 的编译器其实也是由这些部分组成的，本文基于 Kotlin 2.1 版本源码，按这几个部分介绍了 Kotlin 的编译流程。同时讲解了 Kotlin 编译器的调试方法，对比了 K1 和 K2 版本在各阶段的差异，分析了 K2 比 K1 快的原因。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/december/p16.webp)

## 社区活动
### [活动 ｜12 月 14 - 15 日，2024 Kotlin 中文开发者大会 —— 随处可见的 KMP](https://mp.weixin.qq.com/s/puECD70Nc17S0nE1s0m-1A)
Kotlin 中文开发者大会是由 JetBrains 团队与中文 Kotlin User Group 合作举办的免费线上直播活动，自 2021 年举办以来，大会成为 Kotlin 中文开发者发表、学习、交流的最佳平台。延续这个传统，今年于 12 月 14 日（六）及 12 月 15 日（日）两天进行线上直播。

本次大会以「随处可见的 KMP」为主题，汇聚多位技术专家，分享他们在不同场景使用 Kotlin 的宝贵经验。内容涵盖多平台开发策略、鸿蒙新平台的适配、面向 AI 时代的解决方案、SDK 及 ORM 的开发、以及后端应用等。此外，KUG 技术社区的小伙伴们还将带来 KotlinConf’24 丹麦哥本哈根现场的精彩见闻，让未能亲临现场的听众也能感受到大会的热烈氛围。如此丰富多元的主题，机会难得，不容错过！

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2024/december/p17.png)