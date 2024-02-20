---
title: Kotlin 技术月报 | 2024 年 2 月
date: 2024-02-28
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 2.0.0-Beta4 版本发布
[What's new in Kotlin 2.0.0-Beta4](https://kotlinlang.org/docs/whatsnew-eap.html#kotlin-k2-compiler)

Kotlin 2.0.0-Beta4 版本已发布，具体包括以下内容：

- K2 编译器的稳定性持续提升，自 1.9.20 起，K2 编译器的所有 target 都达到了 Beta 状态。
- Gradle 构建工具方面的改进
- Kotlin/JS 支持类型安全的纯 JavaScript 对象
- Kotlin/JS 支持使用 npm 作为包管理器
- Kotlln/JS 支持导出 List, Map, Set 等集合类型

### [Amper 2024 年 2 月更新](https://blog.jetbrains.com/amper/2024/02/amper-update-february-2024/)
Amper 是 Jetbrains 开发的一个项目配置工具。它的目标是改善项目配置的用户体验和可工具性，即 IDE 内部的支持，同时提供流畅的开箱即用体验。 

Amper 0.2.0 版本已发布，并带来了一些新的特性：

- 支持 Gradle version catalogs
- 支持依赖补全
- 支持在 IDEA 中创建 Amper 项目
- 支持 Fleet, IntelliJ IDEA, 与 Android Studio 等 IDE

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/february/p7.png)

### Jetpack Lifecycle 支持 Koltin 跨平台
[Jetpack Lifecycle 支持 Koltin 跨平台](https://developer.android.com/jetpack/androidx/releases/lifecycle#version_28_2)

Lifecycle 库支持 Kotlin 跨平台，Lifecycle、LifecycleOwner、LifecycleObserver、Lifecycle.State、Lifecycle.Event 和 LifecycleRegistry 中的核心 Lifecycle API 现在包含在与 Kotlin Multiplatform 兼容的工件中

## 精选博客
### 使用 @JsExport 将 Kotlin 导出给 JS 的指南
[@JsExport guide for exposing Kotlin to JS](https://dev.to/touchlab/jsexport-guide-for-exposing-kotlin-to-js-20l9)

Kotlin/JS 支持通过 @JsExport 导出 Kotlin 供 JS 调用，但在实际使用中存在着诸多限制。本文介绍了如何使用 @JsExport 处理集合类型，Long 类型，接口，枚举，Sealed classes，挂起函数等内容的导出。

### [Kotlin 云端差分缓存技术](https://mp.weixin.qq.com/s/G46ksWXwhRL4QCSnenKqJg)
字节团队在项目切换到 Monorepo 方案后，由于二进制依赖被切换成了源码依赖，构建耗时出现了极大的劣化。

本文介绍了由于 Kotlin 编译在全源码 Monorepo 环境中的低效，团队开发了一种云端差分缓存技术。这项技术通过改造 Kotlin Gradle Plugin，实现了当 Kotlin Task 无法命中 Build Cache 时，能够利用云端模糊匹配缓存将全量编译转化为增量编译，从而显著减少编译时间。

比如只要修改了一个 .kt文件，就无法匹配到缓存。因此可以考虑实现一套模糊匹配的机制：

- 先根据一些必要参数匹配一组可能符合要求的缓存
- 然后从这一组缓存中寻找与当前场景最接近的缓存包来进行使用
- 将这个缓存包对应的源码与当前源码做 diff，然后将全量转增量，实现增量编译

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/february/p5.png)

### 感受 Kotlin 函数式编程
函数式编程是最近兴起的一种编程方式，很多语言都支持函数式编程，例如：JavaScript、Kotlin、C#等等。和面向对象编程不同，函数式编程有一种独属于数学的美感。纯函数式编程就像一个数学公式，传入特定的入参，即可获得确定的结果。这会给编程者一种让人心安的掌控感，这种掌控感能大大减少编码过程中的错误。

本系列文章以 Kotlin 为例，带大家一步一步探索函数式编程的魅力：

- [感受函数式编程之美](https://juejin.cn/post/7328388226967601152)
- [渐入佳境！函数式编程进阶实战](https://juejin.cn/post/7331070678693904410)
- [函数式编程与MVI的美妙结合](https://juejin.cn/post/7339024907718344767)

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/february/p6.gif)

## 精选视频
### [两个 this 一起用？Kotlin 的成员扩展函数和 implicit receiver](https://www.bilibili.com/video/BV1oJ4m1t7TE/)
本视频深入浅出地讲解了 Kotlin 中的隐式接收者（implicit receiver）概念。这是一个在 Kotlin 编程中极为常见的特性，尽管您可能未曾耳闻这一术语，但实际上您在编码时可能已经多次应用过。

Kotlin 众多高级特性，如协程中就大量使用了隐式接收者。因此，理解隐式接收者的本质、掌握其用法以及如何充分利用其在编程中的潜力，对于我们提升编程技能和开发效率有着极大的促进作用。

### 使用 Kotlin 协程的响应式Spring Boot：添加虚拟线程
[Reactive Spring Boot With Kotlin Coroutines: Adding Virtual Threads](https://www.youtube.com/watch?v=szl3eWA0VRw)

自从 Java 19 中引入以来，虚拟线程一直备受关注，本视频主要讲解了如何在 Spring Boot 中使用协程与虚拟线程，并回答了以下问题：

1. 在 Spring Boot 中使用协程与虚拟线程的优势
2. 什么是虚拟线程，它适用于什么场景？
3. 虚拟线程与协程是竞争关系吗，它们各自有什么优缺点？
4. 虚拟线程如何实现结构化并发？
5. 虚拟线程如何与协程结合使用？

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/february/p8.png)
![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/february/p9.png)

## 社区活动
### [新年第一场 Kotlin 线下活动，JetBrains 联合上海 KUG 请你来参加！](https://mp.weixin.qq.com/s/p36-mvfzyYfJkMeahVkTTA)
龙年伊始，邀你赴一场专属开发者的派对。Kotlin 社区伙伴贡献硬核技术分享，JetBrains 大咖漂洋过海和你面对面，为你新年加足“码”力！具体将为你带来以下分享

- 《Kotlin + 复合构建组织工程结构》
- 《AGP 在包体积优化上的应用》
- 《内部视角看 Kotlin 是如何发展的》
- 《基于 IntelliJ 的 IDE 的性能优化演变》
- 《Fleet 最新进展》
