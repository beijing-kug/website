---
title: Kotlin 技术月报 | 2023 年 11 月
date: 2023-11-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 1.9.20 版本发布
[What's new in Kotlin 1.9.20](https://blog.jetbrains.com/kotlin/2023/11/kotlin-1-9-20-released/)

Kotlin 1.9.20 版本已发布，具体包括以下内容：

- K2 对所有目标平台的支持达到 beta 状态
- Kotlin Multiplatform 达到稳定状态
- 全新的 Kotlin 多平台项目模板，减少配置中的重复代码
- Kotlin 多平台插件添加了对 Gradle 配置缓存的完全支持
- Kotlin/Native 默认使用新版内存分配器
- Kotlin/Native 垃圾回收性能持续提升
- 添加了全新的 wasm-wasi 目标，并将原有的 wasm 目标重命名为 wasm-js
- 标准库添加了对 WASI API 的支持

此外，本月 Kotlin 还发布了 1.9.21 小版本，主要是修复了一些 issue, 同时还解决了 kapt 与 java21 的兼容问题

### Kotlin Multiplatform 已稳定并准备好投入生产使用
[Kotlin Multiplatform Is Stable and Production-Ready](https://blog.jetbrains.com/kotlin/2023/11/kotlin-multiplatform-stable/)

经过多年的迭代，由 JetBrains 打造的开源技术 Kotlin 多平台（Kotlin Multiplatform）已经达到稳定状态并准备好投入生产使用。

Kotlin Multiplatform 技术的核心由许多部分组成，例如编译器支持、语言功能、库 API、IDE、构建工具等。 这些部分覆盖了最热门的代码共享用例，并且在 Kotlin 1.9.20 中得到稳定。 “稳定”意味着 Jetbrains 在改进这些部分时将遵循严格的兼容性规则，从而使开发者能够信心满满地将其用于生产环境代码。

后续 Jetbrains 将持续优化 Kotlin 多平台(特别是 iOS 平台)的开发体验，Compose Multiplatform for iOS 也预计将在 2024 年发布 beta 版本，随着 KMP 生态的持续发展，现在正是加入的好时机。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/november/p17.png)

### Compose Multiplatform 1.5.10 版本发布：最佳的入门时机
[Compose Multiplatform 1.5.10 – The Perfect Time To Get Started](https://blog.jetbrains.com/kotlin/2023/11/compose-multiplatform-1-5-10-release/)

Compose Multiplatform 是由 JetBrains 构建的声明式 UI 框架，允许开发者跨平台共享应用程序 UI。 它让您能够在 Android、iOS、桌面和 Web 端重用最高 100% 的代码库。

现在是开始使用 Compose Multiplatform 的最佳时机, Compose Multiplatform 1.5.10 版本发布，具体包括以下更新：

- 新的入门教程与引导将使 Compose Multiplatform 入门更加简单
- 所有 Compose Material 3 组件现在都可以在通用代码中使用
- iOS 端增强的 TextFields
- 更快的编译器速度
- 对 K2 编译器的基本支持
- iOS 端渲染性能的优化
- 新的 Kotlin Multiplatform 开发门户提供了教程、常见问题解答、全新示例和其他实用文档

### KMP 2024 路线图发布
[Kotlin Multiplatform Development Roadmap for 2024](https://blog.jetbrains.com/kotlin/2023/11/kotlin-multiplatform-development-roadmap-for-2024/)

KMP 2024 路线图发布，具体包括以下内容：

1. Compose for iOS 预计将发布 beta 版本
2. 推出一站式 KMP 开发 IDE: Fleet ，提升开发者体验
3. 重点优化 iOS 端开发体验，优化 Kotlin 与 Swift 互调用体验
4. 推进 KMP 库生态发展，通过一系列优化与工具确保 KMP 库的向后兼容性
5. 降低上手成本，允许不通过 mac 构建与发布 KMP 库，同时提供创建与发布 KMP 库的模板

### Kotlin 在 Github 2023 语言排行榜中进入 Top 12
[Octoverse: The state of open source and rise of AI in 2023](https://github.blog/2023-11-08-the-state-of-open-source-and-ai/#the-most-popular-programming-languages)

Github 发布了 2023 年的 Octoverse 报告，报告显示 kotlin 的份额增长势头强劲，已经稳步攀升至编程语言排行榜的 Top 12 之列。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/november/p18.webp)

## 精选博客
### [Kotlin 跨平台 ｜我觉得可以试试](https://juejin.cn/post/7305013302417424422)
跨端一直在业内都是一个讨论度非常高的话题，无论是flutter，rn或者rust，各自都有自己的优劣势。本文分析比较了各跨端方案的优缺点，同时介绍了 KMP 方案比较合适的切入点: 计算逻辑比较复杂的 sdk。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/november/p19.jpg)

### [用Kotlin Duration来优化时间单位换算](https://juejin.cn/post/7298899182165262371)
时间单位换算在 JVM 中我们可以使用直接数学运算实现, Java 提供的 TimeUnit 以及 kotlin 的 Duration API。

kotlin.time.Duration 是 Kotlin 标准库中的一个类，用于表示时间度量，它可以用于计算时间差等场景。该类提供了一些方便的方法来创建、比较和操作时间间隔，本文主要介绍了 Kotlin Duratioin API 的各种用法与示例

```kotlin
    //不使用Duration
    @Test
    fun time_millis() {
        val currentTimeMillis = System.currentTimeMillis()
        //1天24小时 每小时60分钟 1分钟60秒 每秒1000毫秒
        val millisOfOneDay: Long = 24 * 3600 * 1000
        println("format:${currentTimeMillis + 3 * millisOfOneDay}")
    }
    //Java TimeUnit
    @Test
    fun time_millis_java() {
        val currentTimeMillis = System.currentTimeMillis()
        val threeDaysOfMillis = TimeUnit.DAYS.toMillis(3)
        println("format:${currentTimeMillis + threeDaysOfMillis}")
    }
    //使用Duration
    @Test
    fun time_millis_duration() {
        val currentTimeMillis = System.currentTimeMillis()
        val feature = currentTimeMillis.milliseconds + 3.days
        println("format:${feature.inWholeMilliseconds}")
    }

```

### Kotlin inline 的实现原理
[Kotlin under the hood: How inline functions work](https://proandroiddev.com/kotlin-under-the-hood-how-inline-functions-work-e37be021b068)

关于 Kotlin 内联函数的一个常见误解是，Kotlin 内联函数通过减少栈桢的方式实现了性能优化，但当你添加如下代码时

```kotlin
private inline fun warningInlineFun(a: Int, b: Int): Int {
        return a + b
}
```

编译器将会警告：Expected performance impact from inlining is insignificant. Inlining works best for functions with parameters of functional types

事实上，内联最适合具有函数类型参数的函数，将函数类型参数反编译后对应 Java 的匿名内部类，在 Java 中创建匿名类是一项开销很大的操作，而这恰恰是内联函数的优点。内联函数允许您消除创建匿名类，以便将函数类型参数传递给函数参数。

## 精选视频
### [这可能是 JetBrains Fleet 的杀手锏](https://www.bilibili.com/video/BV1kQ4y1b7RW/)
Fleet 是由 JetBrains 打造的下一代 IDE，由于其轻量级特性，从一发布就面临着与 VSCode 的比较，那么 Fleet 相比 VSCode 到底有什么优势呢？

对于 Kotlin 开发者来说，Fleet 提供了对 Kotlin Multiplatform 一站式开发的支持，在多平台项目中使用原生代码时，无需切换到不同的编辑器或牺牲实用性，同时也支持了 Swift 与 Kotlin 之间的跨语言导航，极大的优化了 KMP 程序的开发体验。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/november/p20.gif)

### 北京 DevFest 分享回放
一年一度的北京 Google DevFest (谷歌开发者节) 活动已于 11 月 19 日举办，下面是活动中 Kotlin 相关一些主题分享：

- [Android 应用，怎么开发你来定！](https://www.bilibili.com/video/BV11Q4y147NA/)
- [使用 Kotlin 元编程技术提升开发效率](https://www.bilibili.com/video/BV1Xe411f76D/)
- [Jetpack Compose 现在能做什么](https://www.bilibili.com/video/BV1yu4y1w7uP/)
- [从 Android 到 Kotlin 跨平台](https://www.bilibili.com/video/BV19G411U7uT/)

## 社区活动
### 合肥 Kotlin 用户组正式成立
合肥 Kotlin 用户组正式成立，在这里可以和其它成员一起学习、讨论技术问题，还会不定期举行研讨会，进行与 Kotlin 相关的主题分享与讨论。

欢迎所有对 Kotlin 感兴趣的开发者加入，想要加入的小伙伴，欢迎添加组织者微信 [WestonHan] 备注 KUG，邀请入群。

详情可见合肥 Kotlin 用户组网站：[https://hefei-kug.github.io/](https://hefei-kug.github.io/)

### Kotlin 中文开发者大会如期重返
[Kotlin 中文开发者大会如期重返，不可错过的 Kotlin 年终总结！](https://mp.weixin.qq.com/s/FxahmSiFCmp1gpaRh1zPzA)

在 2023 年的尾声，Kotlin 开发者期待已久的大事即将发生！一年一度 Kotlin 中文开发者大会，将在 12 月 16 至 17 日和大家线上见面。

今年大会将于 12 月 16 日（六）及 12 月 17 日（日）两天进行线上直播，本次邀请到 16 位来自各公司的 Kotlin 技术专家，带来 Kotlin Multiplatform 的第一手案例实践、Kotlin 编译器核心讲解、使用 KSP 辅助开发、Kotlin 在后端的应用等话题。首次设立 Live Coding 环节带大家一起使用 Compose 写个小游戏。另外还有来自 Kotlin 教育项目及 KUG 技术社区的小伙伴，跟大家分享 Kotlin 团队在教育方面的投入、KUG 社区同学参与 Kotlin 多平台竞赛的心得以及 KUG 社区运营等话题。如此丰富的主题，机会难得，不容错过！
