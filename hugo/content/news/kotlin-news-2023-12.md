---
title: Kotlin 技术月报 | 2023 年 12 月
date: 2023-12-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin/Wasm 已进入 Alpha 阶段
[Kotlin for WebAssembly Goes Alpha](https://blog.jetbrains.com/kotlin/2023/12/kotlin-for-webassembly-goes-alpha/)

Kotlin/Wasm 是新推出的 Kotlin Multiplatform 目标平台，现已达到 Alpha 状态！具体包括以下更新：

- JetBrains 已将 Kotlin/Wasm 提升到 Alpha 版本，让您可以亲自上手尝试。 您的反馈将影响使用 Kotlin 构建 Web 应用程序的未来！
- 作为 Alpha 版本，Kotlin/Wasm 已经可以在预生产场景中使用，但许多方面仍待完善。 我们需要社区的帮助来确定 Kotlin/Wasm 的相关决策并确定其优先级。
- Compose for Web（目前处于实验阶段）由 Kotlin/Wasm 提供支持。 两种技术互相配合，让您完全使用 Kotlin 为 Web 应用程序创建声明式用户界面。

WebAssembly 从一开始就被设计为语言的编译目标，因此虽然 Kotlin/Wasm 仍处于 Alpha 阶段，但其在几乎所有宏基准测试中都已经优于 Kotlin/JS：

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/december/p12.png)

### Jetbrains 2023 开发者生态报告发布
[2023 开发者生态系统现状](https://www.jetbrains.com/zh-cn/lp/devecosystem-2023/?map=2&map=2)

Jetbrains 2023 开发者生态报告发布，从报告中可以看到很多值得关注和有趣的地方，比如在 2023 年，Scala、Go 和 Kotlin 开发者位列薪酬最高的三大类别。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/december/p13.png)

很长一段时间以来，Kotlin 大多被视为“Android 语言”，但其在服务器上的应用也显著增多，用于移动开发的 KMP 也一直在稳步增长。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/december/p14.png)

### KSP2 发布预览版本
[KSP2 Preview: Kotlin K2 and Standalone Source Generator](https://android-developers.googleblog.com/2023/12/ksp2-preview-kotlin-k2-standalone.html)

KSP2 已发布预览版本，具体包括如下更新：

- Kotlin 新版编译器 k2 的支持
- 独立的源代码生成器：比当前的 Kotlin 编译器插件提供了更多的灵活性和功能

### Kandy: Kotlin 绘图库了解一下
[Kandy: the new Kotlin plotting library by JetBrains](https://blog.jetbrains.com/kotlin/2023/12/kandy-the-new-kotlin-plotting-library-by-jetbrains/)

Kandy 是由 JetBrains 开发的一个新的 Kotlin 绘图库。它提供了一种新的、强大的DSL，用于创建各种类型的图表。使用 Kandy 结合 Kotlin Notebook，我们可以很方便的生成各种图表。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/december/p15.jpg)

## 精选博客
### [使用 KCP 打造更安全的 Gson 与更快的 Moshi](https://juejin.cn/post/7313242107681882138)
众所周知，使用 Gson、Jackson 等框架反序列化 JSON 到 Kotlin 类时存在空安全问题和构造器默认值失效的问题，同时常用的 Gson, Moshi 等框架往往在功能上比较强大，全面，而在性能上却没有很明显的优势。本文主要介绍如何使用 Kudos 编译器插件实现更安全的 Gson 与更快的 Moshi。

Kudos 是 Kotlin utilities for deserializing objects 的缩写。它可以解决使用 Gson、Jackson 等框架反序列化 JSON 到 Kotlin 类时所存在的空安全问题和构造器默认值失效的问题，同时可以简化高性能的反序列化框架 JsonReader 的使用方式。

Kudos 已经在 Github 上开源，开源地址可见：[https://github.com/kanyun-inc/Kudos](https://github.com/kanyun-inc/Kudos)

### [函数式编程的魔法武器：Kotlin高阶函数和Lambda表达式](https://juejin.cn/post/7209192211975192632)
本文主要探讨了 Kotlin 中高阶函数和 Lambda 表达式的语法和使用，以及它们在函数式编程中的重要性和应用场景。同时学习了一些常用的函数式编程操作，如 map、filter、reduce 等，了解了函数式编程的特性。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/december/p16.webp)

### 关于 kotlinx.serialization 你应该知道的一切
[kotlinx.serialization in Kotlin- All You Need To Know](https://codersee.com/kotlinx-serialization-in-kotlin-all-you-need-to-know/)

kotlinx.serialization 是一个跨平台的序列化框架，当我们在 Kotlin 项目尤其是 KMP 项目中序列化与反序列化时，kotlinx.serialization 是一个很好的选择。本文详细介绍了 kotlinx.serialization 的使用，具体包括以下内容：

- kotlinx.serialization 的初始化
- kotlinx.serialization 的基本使用
- kotlinx.serialization 常用注解使用 
- 自定义序列化与反序列化的使用

## 精选视频
### Kotlin 多平台如何支持鸿蒙?
[Kotlin 多平台，但是鸿蒙](https://www.bilibili.com/video/BV16Q4y1g7Yp/)

自从 HarmonyOS NEXT 宣布不再支持 Android 已来，很多 Kotlin 开发者都很关注 Kotlin 跨平台能否支持鸿蒙？本视频介绍了如何通过 Kotlin/JS 来适配鸿蒙以实现共享 Kotlin 代码的目的，示例代码可见：[https://github.com/kotlin-for-ohos/kotlin-ohos-sample](https://github.com/kotlin-for-ohos/kotlin-ohos-sample)

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/december/p17.png)

## 社区活动
### 2023 Kotlin 中文开发者大会
Kotlin 中文开发者大会是由 JetBrains 团队与中文 Kotlin User Group 合作举办的免费线上直播活动，活动将会由 Kotlin 团队与大家分享最新 Kotlin 新闻，并邀请社区的技术大佬分享最新前沿技术、实用的开发经验。

今年 Kotlin 中文大会已于 12 月 16 日（六）及 12 月 17 日（日）两天进行线上直播，本次邀请到 16 位来自各公司的 Kotlin 技术专家，带来 Kotlin Multiplatform 的第一手案例实践、Kotlin 编译器核心讲解、使用 KSP 辅助开发、Kotlin 在后端的应用等话题。

如有需要查看直播回放及讲师 PPT 也可见：[https://blog.jetbrains.com/kotlin/2023/12/2023-kotlin-chinese-conference/](https://blog.jetbrains.com/kotlin/2023/12/2023-kotlin-chinese-conference/)

### 社区说 Kotlin 分享
[社区说｜引领高效编程风向 Kotlin 前沿技术开发深度剖析](https://mp.weixin.qq.com/s/J6AgZU0vldI4y_6XuZrexg)

随着全球化进程不断推进，多线远程合作编程已是业内大势所趋。作为一种跨平台、静态类型的编程语言，Kotlin 在近几年来受到了开发者们的青睐，并依托技术研发取得了令人瞩目的创新性突破。12 月 21 日的夜晚，三位技术大咖一同聚焦 Kotlin 的前沿发展，为我们带来了如下分享：

- [社区说｜KMP 正式步入生产](https://www.bilibili.com/video/BV1ig4y1k7U8/)
- [社区说｜Jetpack 库打造 MVI 模式应用](https://www.bilibili.com/video/BV1W64y1H7oU/)
- [社区说｜协程的基本原理与使用](https://www.bilibili.com/video/BV1za4y1B72P/)