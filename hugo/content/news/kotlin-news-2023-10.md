---
title: Kotlin 技术月报 | 2023 年 10 月
date: 2023-10-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 1.9.20-RC2 版本发布
[What's new in Kotlin 1.9.20-RC2](https://kotlinlang.org/docs/whatsnew-eap.html)

Kotlin 1.9.20-RC2 版本已发布，具体包括以下内容：

- K2 版本 Kapt 编译器插件的实验性支持
- 全新的 Kotlin 多平台项目模板，减少配置中的重复代码
- Kotlin 多平台插件添加了对 Gradle 配置缓存的完全支持
- Kotlin/Native 默认使用新版内存分配器
- Kotlin/Native 垃圾回收性能持续提升
- 添加了全新的 wasm-wasi 目标，并将原有的 wasm 目标重命名为 wasm-js
- 标准库添加了对 WASI API 的支持

### Kudos 发布
[https://github.com/kanyun-inc/Kudos](https://github.com/kanyun-inc/Kudos)

Kudos 是 Kotlin utilities for deserializing objects 的缩写。它可以解决使用 Gson、Jackson 等框架反序列化 JSON 到 Kotlin 类时所存在的空安全问题和构造器默认值失效的问题。

在使用常见的 JSON 序列化框架解析 JSON 时，Kotlin 开发者通常会面临无参构造器和属性空安全的问题。我们通常的建议是使用 Moshi 或者 kotlinx.serialization。

不过，切换框架往往并不容易。kotlinx.serialization 不支持 Java，适合纯 Kotlin 项目使用；Moshi 虽然也同时支持 Java，但它在解析时与 Gson 这样的框架在细节上仍然有不少差异。

有没有什么办法为 Gson 这样的框架提供类型空安全和支持主构造器的参数默认值的能力呢？答案就是 Kudos。

### [Touchlab 开源项目更新](https://touchlab.co/touchlab-open-source-updates-sep-2023)
Touchlab 是一个致力于推广 KMP 的团队，在过去几周 TouchLab 的一系列开源项目推出了一些更新， 具体包括以下内容：

- SKIE: 一个用于优化 Kotlin 与 Swift 之间的互操作性的工具
- Kermit 2.0: Kotlin 跨平台日志库，已发布 2.0 版本
- CrashKiOS : 方便线上 iOS 应用程序查看 Kotlin 代码中的崩溃堆栈
- Stately 2.0: 帮助 Kotlin/Native 处理严格的内存模型，以及提供一些实现并发功能的库
- KMMBridge: 一个用于将 Kotlin 代码发布成 Xcode Framework 二进制文件的 Gradle 工具

## 精选博客
### [Kotlin版本升级到1.9.0，需要做这些事...](https://mp.weixin.qq.com/s/93rJop2StBlKVLbUMrp0Hg)
本文记录了通用项目工程 Kotlin 版本由 1.7 升级到 1.9 版本的适配要点，落实到具体的项目工程需要具体处理其中的细节问题，具体包括以下内容：

- KAE 插件正式废弃，迁移到 ViewBinding
- KAPT 默认启用 JVM IR，当前需要关闭

### [今日好奇：ChatGPT的Android端是用什么写的？](https://juejin.cn/post/7286632584149581885)
ChatGPT 自发布以来一直非常火爆，并已发布了 Android 版本，本文通过 LibChecker 等工具分析对比了 ChatGPT 与 文心一言 Android 版本的技术栈。

经过分析，ChatGPT Android 版本主要基于 Jetpack Compose 构建，而文心一言仍然基于传统的 Android View 构建。可以看出，Jetpack Compose 在国外已经相当流行了，而在国内仍然有相当的发展空间。

| ChatGPT                                                                       | 文心一言                                                                          |
|-------------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| ![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/october/p1.jpg) | ![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/october/p2.jpg) |

### [Kotlin的语法糖到底有多甜？](https://juejin.cn/post/7258970835044827192)
目前 Kotlin 开发者大多是 Android 开发者，而本文介绍了作者使用 Kotlin 进行后端开发的经验。他在过去一年中使用 Kotlin 进行开发，作者发现 Kotlin 在开发效率方面有显著优势，比较之下，后续不再想使用 Java 进行代码开发了。因此，他希望通过分享 Kotlin 的优点来吸引更多人使用这种语言。

本文主要介绍了 Kotlin 的一些语法糖，包括：

- Kotlin 基础常用特性
- Kotlin 常用内置函数
- Kotlin 扩展函数与扩展属性
- Kotlin的容器

### 使用 Fleet 开发 Kotlin
[Fleet 中的 Kotlin 支持：探索 JetBrains 的新 IDE | 官方博客](https://mp.weixin.qq.com/s/Y52l3OfXatASOrc8lY5Jfg)

JetBrains Fleet 是一款轻量型代码编辑器和 IDE，使用 IntelliJ 代码处理引擎。该产品目前处于公开预览版阶段，供公众试用。

Fleet 开箱即支持 Kotlin，Fleet 对 Kotlin 的支持也是最完善的，因为 Fleet 主要使用 Kotlin 开发而成，JetBrains 团队也使用 Fleet 开发 Fleet。

同时在 Fleet 中启动智能模式，也可以享受 Kotlin 的代码补全，实时模板，代码生成等功能。

### Kotlin 开发者常用的反序列化库性能对比
[常用 JSON 库性能对比](https://android-performance-optimization.github.io/practical/speed/json-serialization-speed/)

反序列化是 Android 开发中必备且非常高频的需求，因此一个高性能的反序列化框架就非常重要了，那么在使用 Kotlin 开发时，常用的 Gson, Moshi, Jackson, Kotlin Serialization, FastJson 等框架中，到底谁比较快?

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/october/DeserializationSpeedMultiTimes.png)

### 写给初学者的 Jetpack Compose 系列教程
写给初学者的 Jetpack Compose 系列教程，从基础概念开始，循序渐进的带你学习 Jetpack Compose，具体包括以下内容：

- [原创：写给初学者的Jetpack Compose教程，为什么要学习Compose？](https://mp.weixin.qq.com/s/n-_-LcMZokgmgYS7-wgk2g)
- [原创：写给初学者的Jetpack Compose教程，基础控件和布局](https://mp.weixin.qq.com/s/olocdhk8P9u9LXXddimphA)
- [原创：写给初学者的Jetpack Compose教程，Modifier](https://mp.weixin.qq.com/s/OdfmpzTLg4y0vNawqjUuiw)
- [原创：写给初学者的Jetpack Compose教程，使用State让界面动起来](https://mp.weixin.qq.com/s/WOPjNLCgopu3aKEmDKSPug)

## 精选视频
### 如何使用 Kotlin Timing API
[How to Use Kotlin's Timing API](https://www.youtube.com/watch?v=VRxp3DD-ULQ)

```kotlin
    fun main() {
        val startTime = System.nanoTime()
        someLongWork()
        val endTime = System.nanoTime()
        val duration = (endTime - startTime) / 1_000_000
        println("Duration: $duration ms")
    }
```

有时我们总要写一些类似上面的模板代码来计算某个函数的执行时间，但是这样的代码重复且冗长，Kotlin 的 Timing API 从 Kotlin 1.9 开始就稳定了，它提供了一些测量和指定时间的好方法。在本视频中，主要介绍了此 API 的主要功能，以便您可以像专业人士一样开始计算耗时与时间标记！

### Jetpack Compose 动画库的故事
[Kotlin 炉边漫谈 Podcast #13 让你的 UI 动起来！Jetpack Compose 动画库作者亲临现场](https://www.bilibili.com/video/BV1gu4y1W7vB/)

Jetpack Compose 是现代 Android 开发的必备技能，通过Jetpack Compose，用户可以轻松为UI添加动画效果，使得 UI 更吸引人。那么这么好用的动画库，到底是怎么开发出来的呢？

本次 Kotlin 炉边漫谈邀请到了谷歌官方安卓团队负责动画库的开发者 Doris，跟大家聊聊为 Android 平台开发全新 UI 动画库的背景、过程及挑战，同时结尾彩蛋还会跟大家分享硅谷工作经验谈，欢迎大家收看。

## 社区活动
### [Kotlin 线下技术交流·重庆站](https://mp.weixin.qq.com/s/lKyzS6kGBqrlSfbQgpNRmw)
10 月 25 日，KUG 社区在山城重庆举办线下技术交流活动，活动主要包括以下内容：

- JetBrains 技术布道师范圣佑带来关于 Kotlin 的最新技术动态以及实践经验。
- 来自板栗看板技术团队的资深工程师霍凯，与大家分享如何利用 Kotlin 作为后端开发语言来支撑百万级用户的实践经验和心得。
- 小组讨论与互动环节。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/october/p3.jpeg)