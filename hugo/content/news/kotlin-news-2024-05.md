---
title: Kotlin 技术月报 | 2024 年 5 月
date: 2024-05-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 2.0 已发布
[What's new in Kotlin 2.0.0](https://kotlinlang.org/docs/whatsnew20.html)

Kotlin 2.0 已正式发布，具体包括以下内容：

- K2 编译器正式发布稳定版，带来更快的编译速度与更好的类型推断
- Compose 编译器插件代码已合并到 Kotlin 仓库中
- 默认使用 invokedynamic 来生成 lambda 表达式，相比匿名内部类方式减少了包体积
- kotlinx-metadata-jvm 库现已稳定，该库可用于读取与修改 metadata
- 支持使用 Instruments 工具监控 Kotlin/Native GC 性能
- Kotlin/Wasm 支持按名字导出符号
- Kotlin/Wasm 支持通过 @JsExport 导出无符号基础类型
- enumEntries<T> 方法已稳定，推荐使用其代替 enumValues<T> 方法

### Compose Multiplatform 1.6.10 版本已发布
[Compose Multiplatform 1.6.10 – iOS Beta, Web Alpha, Lifecycle, Navigation, and More](https://blog.jetbrains.com/kotlin/2024/05/compose-multiplatform-1-6-10-ios-beta/)

Compose Multiplatform 版本已发布，具体包括以下内容：

- Compose Multiplatform for iOS 进入 beta 状态
- Compose Multiplatform for Web 进入 alpha 状态
- 多平台资源 API 现已稳定，并且带来了一些期待已久的改进
- Jetpack Compose Navigation 库支持 Compose Multiplatform
- Lifecycle 与 ViewModel 库支持 Compose Multiplatform
- 新的 Compose 编译器插件，代码合并到 Kotlin 仓库中
- 支持 Kotlin 2.0

### Jetpack Compose 编译器插件代码迁移到 Kotlin 仓库中
随着 Kotlin 2.0 的即将发布，Jetpack Compose 编译器插件的代码也将迁移到 Kotlin 仓库中。

这意味着每次 Kotlin 发布新版本时，都会有一个相应的 Compose 编译器插件同时发布。您在升级 Compose 应用中的 Kotlin 版本之前，将不再需要等待相应的 Compose 编译器插件发布。

Compose 编译器插件的版本将 Kotlin 版本相匹配。因此，编译器插件版本将跳至 2.0.0。

### Google 宣布支持 KMP
[Android Support for Kotlin Multiplatform to Share Business Logic Across Mobile, Web, Server, and Desktop Platforms](https://android-developers.googleblog.com/2024/05/android-support-for-kotlin-multiplatform-to-share-business-logic-across-mobile-web-server-desktop.html)

谷歌宣布 Android 支持 Kotlin Multiplatform (KMP)，使开发者可以在移动端、网页、服务器和桌面平台之间共享业务逻辑。

Android 团队计划继续与 JetBrains、Google 工程团队和社区在各种项目上合作，包括：

- 扩展和稳定 Jetpack 库对 Kotlin Multiplatform 的支持
- 在 Jetpack 库中支持 Wasm 平台目标
- Kotlin/Native 构建性能优化
- Kotlin/Native 调试体验优化
- 在在Android Studio 中扩展对 Kotlin Multiplatform 的支持

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/may/p6.png)

### Room 支持 Kotlin 跨平台
Room 库已支持 Kotlin 跨平台，更多详细信息可见：[https://developer.android.com/kotlin/multiplatform/room](https://developer.android.com/kotlin/multiplatform/room)

## 精选博客
### [探讨跨平台技术与跨平台UI框架及Kotlin Multiplatform在bilibili的实践](https://mp.weixin.qq.com/s/b8_s1iboJMEdEvyMd59u-g)
本文深入探讨了当今移动开发领域中几种关键的跨平台编程语言（包括 Kotlin、JavaScript、Dart、C++ 和 Swift）在 iOS、Android 和 HarmonyOS 这三个平台上的表现。文章采用了实际业务中常用的 protobuf 文件作为测试基准，着重评估了这些语言在序列化和反序列化操作上的性能表现。研究结果显示，Kotlin 在 iOS 平台上的表现与原生 Swift 相媲美。

此外，文章还探讨了跨平台语言与跨平台 UI 框架之间的联系，以及这些语言如何实现高效的双向互操作性。文章进一步阐述了 Bilibili 为何选择 Kotlin 作为其跨平台开发的基石。文中指出，跨平台开发能够显著提升研发效率、降低成本、确保多平台应用的一致性，并减少对特定平台的依赖。Bilibili 之所以青睐 Kotlin，是因为它不仅具备强大的双向互操作能力、现代化的语法特性，而且在性能上表现不俗，加之拥有活跃且不断发展的社区生态。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/may/p5.webp)

### [2024 Google I/O 宣布正式支持 Kotlin Multiplatform ，那 KMP 是什么？它的未来在哪里？](https://juejin.cn/post/7372030889422848051)
本文总结了 2024 年 Google I/O 大会对 Kotlin Multiplatform（KMP）的支持。

KMP 是 JetBrains 开发的跨平台开发工具，能让开发者用 Kotlin 编写可在多个平台运行的代码。文章讨论了 KMP 的应用场景，与 Compose Multiplatform 的区别，以及 Google 和JetBrains 对 Jetpack 库的 KMP 支持。

同时文章中指出：最适合你业务的的才是最重要的。KMP 将 Kotlin 编译为特定于平台的二进制文件（如 Android、iOS、JVM、WASM），所以你可以用最小的开销调用特定于平台的 API，并利用 Compose MultiPlatform 实现 UI。与其他跨平台框架一样，KMP也有其特定的适用场景，开发者应根据各自业务需求来选择最合适的开发框架。

## 精选视频
### KotlinConf 开幕演讲
[KotlinConf'24 - Keynote](https://www.youtube.com/watch?v=Ar73Axsz2YA&t=1028s)

KotlinConf 开幕演讲，官宣了很多重量级信息，包括以下内容：

- Kotlin 2.0 版本发布，并且 K2 编译器正式稳定
- Compose Multiplatform for iOS 现已进入 beta 版本
- Compose Multiplatform for Web 现已进入 alpha 版本
- 介绍了 4 个将在 Kotlin 新版本推出的语言特性

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/may/p7.png)

### Kotlin 2.0 之后将推出哪些新的语言特性
[Kotlin Language Features in 2.0 and Beyond - Michail Zarečenskij](https://www.youtube.com/watch?v=tAGJ5zJXJ7w&t=2171s)

此前由于 K2 编译器一直在开发中，Kotlin 在很长的一段时间内没有再推出什么大的语言特性。随着 Kotlin 2.0 的发布，K2 编译器也正式稳定了，本视频介绍了在 Kotlin 2.0 以及之后将推出的一些新的语言特性:

- guards: pattern matching without binding
- Context-sensitive resolution
- Extensible data arguments
- Union types for erros
- Explict backing fields

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/may/p8.png)

## 社区活动
### [KotlinConf 2024 活动正式举办](https://mp.weixin.qq.com/s/ByNnGd0Lm_gnNb9xilE5LA)
KotlinConf 2024 在丹麦首都哥本哈根盛大落幕。这一年度盛事，作为 Kotlin 社区最重要的集会，吸引了全球数千名 Kotlin 开发者齐聚一堂。这个被誉为开发者们的“快乐家园”在三天的时间里充满了技术分享与热情交流，参与者们共同见证了 Kotlin 语言的繁荣与发展。

JetBrains Kotlin 团队成员在主题演讲中，围绕 Kotlin Multiplatform（KMP）、Compose Multiplatform、语言特性、语言生态、Kotlin 和 AI 的结合等主题，分享了最新进展与洞见。来自 Meta、Google、Amazon 等行业巨头的嘉宾们，也带来了他们在实际生产环境中积累的宝贵经验。