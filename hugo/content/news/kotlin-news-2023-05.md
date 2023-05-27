---
title: Kotlin 技术月报 | 2023 年 5 月
date: 2023-05-30
tags: [技术月报]
---

最近举办的 KotlinConf 与 Google I/O 上都有不少 Kotlin 技术的分享，同时最近一个月各地的 Kotlin 组织也举办了不少活动

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定尝试使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客文章，社区活动等

## 最新动态
### KotlinConf 2023 回放来了
KotlinConf 2023 的所有回放已出，所有回放列表可见：[https://kotlinconf.com/talks/](https://kotlinconf.com/talks/)

本次大会除了开场与闭幕讨论，共有 69 场分享，可以说是一场盛宴了，我整理统计了一下各个分享的主题

| 主题               | 分享数 |
| ---------------- | --- |
| Kotlin 跨平台       | 21  |
| Compose 相关分享     | 10  |
| Kotlin 在服务端的应用   | 9   |
| Kotlin 协程相关分享    | 8   |
| Kotlin 编译器与编译器插件 | 8   |
| Kotlin 与测试       | 4   |
| Kotlin 语言特性相关分享  | 4   |
| Kotlin 与函数式编程    | 3   |
| Kotlin 用于数据科学    | 2   |
| Kotlin 与游戏    | 2   |
| Kotlin 与 Gradle    | 1   |
| Kotlin 与 AI   | 1   |

从各个主题的分享数量也可以看出 Kotlin 在各个方向的火热程度

- Kotlin 跨平台相关分享是最多的，可以看出这也是 Kotlin 团队下一步要重点发展的方向
- 越来越多的人开始使用 Compose ，据统计，在 top 1000 的 Android 应用中，有 21% 的应用使用了 Jetpack Compose
- 虽然据统计大约 66% 的 Kotlin 开发者是 Android 开发者，但服务端开发者使用 Kotlin 的比例也在逐渐上升，这应该也是 Kotlin 团队想要发力的方向
- 这次大会 Kotlin 编译器与编译器插件相关的分享也比较多，应该是因为 K2 编译器的逐渐成熟，即将发布 beta 版本
- 国外很多团队重视代码测试，而不仅仅是需求开发，因此 Kotlin 在测试方面的分享也较多

### Google I/O : Android 版 Kotlin 的新动态
[What's new in Kotlin for Android](https://io.google/2023/program/a3250bf1-dab1-4752-82bb-4412afb94d66/intl/zh/)：在本次 Google I/O 大会上，介绍了今年将为 Android 开发者发布的 Kotlin 更新，主要包括

- 即将推出的 K2 编译器
- KTS 成为 Gradle 构建默认设置
- Kotlin 符号处理 (Kotlin Symbol Processing) 的改进
- Kotlin 跨平台的一些新动态

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/may/p9.jpg)

这其中我最关注的是 K2 编译器的新动态，K2 编译器最显著的改进是编译速度的大幅提升，同时稳定的编译器插件 API 也可以降低 Kotlin 编译器插件的开发成本

在 Kotlin 1.8.20 中，已经可以通过设置`languageVersion = "2.0"`来开启 K2 了，而 K2 编译器也将在 Kotlin 1.9.x 中 Beta，并最终在 Kotlin 2.0 版本中稳定

### Kotlin 1.9.0-Beta 发布
[What's new in Kotlin 1.9.0-Beta](https://kotlinlang.org/docs/whatsnew-eap.html)：Kotlin 1.9.0 Beta 版本终于发布，主要包括以下内容

- 持续完善 Kotlin K2 编译器，添加了对 Kotlin/Native 后端的支持
- 1.7.20 版本引入的`..<`操作符成为稳定 API
- 提供了一个新的扩展函数`createParentDirectories`，可用于创建带有必要父目录的新文件，如果目录已存在，则不操作，否则创建目录
- Kotlin 跨平台 Gradle 插件支持配置缓存
- Google 的 Android 团队将提供自己的 Gradle 插件来支持 Kotlin Multiplatform 中的 Android Target
- Kotlin/Native 在访问`object`单例的`const val`字段时将不再初始化`object`

### Kotlin 协程 1.7.0 发布 
[https://github.com/Kotlin/kotlinx.coroutines/releases](https://github.com/Kotlin/kotlinx.coroutines/releases)：在我看来，主要变动在于

- 不再支持老版本的 Kotlin/Native 内存模型
- Kotlin/Native 版协程终于添加了 Dispatchers.IO 支持

## 精选博客
### [Kotlin 成为 Gradle 默认语言！如何快速上手？KOGE 小册来帮忙！](https://mp.weixin.qq.com/s/SyfqAp2xeKo6kDmtrId4mw)
在使用 groovy 开发构建脚本时，大家肯定碰到过代码自动补全，类型检查等痛点问题，而使用 Kotlin DSL 开发脚本可以完美解决这些问题

在本次 KotlinConf 上已经宣布，Kotlin DSL 现在成为新 Gradle 构建的默认设置。如果你想学习 Gradle，而苦于对 groovy 的语法并不熟悉，那么 KOGE 是你的好帮手

> KOGE 是 Kotlin-oriented Gradle Essentials 的缩写，顾名思义是面向 Kotlin 的 Gradle 基础手册。我们按照合理的先后顺序，列出新手最困惑的概念，再从一些互联网上已有的问题、源码、示例项目中去学习。它不是 “Awesome Gradle” 的项目收藏夹，而是一份大纲，一本简练的自学手册。 手册选择了 Kotlin 作为介绍 DSL 脚本和插件开发的语言，链接和用例以 Android 构建场景为主。

### Kotlin 跨平台系列文章
Kotlin 跨平台系列文章，分享了 Kotlin 跨平台在各端的使用实践，包括以下内容：

- [KMM跨平台开发入门，看这一篇就够了~](https://mp.weixin.qq.com/s/fs94pOpnsiVKb2SwlrdKHQ)
- [Compose跨平台第一弹：体验Compose for Desktop](https://mp.weixin.qq.com/s/PtpHRCjywOt_-NxW1Bh0VA)
- [Compose跨平台第二弹：体验Compose for Web](https://mp.weixin.qq.com/s/MZPuplat8vsWwU4vjBDi-Q)
- [一文先行体验使用Compose开发iOS～](https://mp.weixin.qq.com/s/UMm1uI1cmqplqJ2qBebpAQ)
- [Kotlin跨平台第四弹：了解Kotlin/Wasm](https://mp.weixin.qq.com/s/ozG-Ma8jrrxZK9F_hzX9Ag)
- [我开源了一个Compose跨平台项目模版](https://mp.weixin.qq.com/s/XeXAIPUzYJb7HZoCLGoz8Q)

### [落地包体积监控，用Kotlin写一个APK差异分析CLI](https://mp.weixin.qq.com/s/LtQYz-eL6pZsYhABC5DxVQ)
CLI 即 command-line interface (命令行界面)，我们在开发中常常会写一些 CLI 工具，本文即是一个使用 Kotlin 实现 APK 差异分析 CLI 的很好示例

当然有人会问，开发 CLI 我为什么不使用 python 呢？使用 Kotlin 开发 CLI 的最大优势在于，如果你比较熟悉 Kotlin 的话，可以更快的实现功能，也可以写出更好的代码，而不是使用一个你可能不那么熟悉的语言。

因此使用 Kotlin 开发 CLI 是在你已经掌握 Kotlin 之后提供的一个选项，大家可根据自己的情况选用

### Kotlin Unit 与 Nothing 详解
- [Unit 为啥还能当函数参数？面向实用的 Kotlin Unit 详解](https://mp.weixin.qq.com/s/pUc-EPrHLPYsR9XYdGXAuw)
- [这玩意真的有用吗？对，是的！Kotlin 的 Nothing 详解](https://mp.weixin.qq.com/s/jqruT0clKrQsRXS5GQSzaA)

Kotlin 的 Unit 与 Nothing 类型，其实我们每天都在使用。我们知道，Unit 表示没有返回值，Nothing 则是所有类型的子类型，但是它们的本质是什么，又为什么这么设计呢？上面两篇文章就解答了这些问题，讲解的很细致，通俗易懂

## 精选视频
### Compose iOS 发布 alpha 版本
[Compose Multiplatform on iOS by: Sebastian Aigner and Nikita Lipsky](https://www.youtube.com/watch?v=FWVi4aV36d8&t=279s)：KotlinConf 大会上关于 Compose iOS 的分享，非常精彩，主要包括以下内容：

- Compose Multiplatform for iOS Demo 现场演示，效果看起来已经很不错了
- 基于 Jetpack Compose 构建，与 Jetpack Compose 的 API 相同，因此可以快速将 Jetpack Compose 项目扩展成 Compose 跨平台项目
- 基于 Kotlin 跨平台构建，因此可以使用相同的机制访问平台特异的 API
- 允许与原生用户界面的双向互操作：可以在 Compose UI 中嵌入复杂的原生视图，例如MKMapView，或者在 SwiftUI 中嵌入 Compose 代码
- 介绍了 Compose Multiplatform for iOS 的架构与原理，以及其目前在功能与性能上待完善的部分

### Kotlin 炉边漫谈第 8 期
[《Kotlin 炉边漫谈》第 8 期：阿里和美团的 Kotlin Multiplatform 应用案例 | 播客](https://mp.weixin.qq.com/s/G9k-S6YbiGKlsAw1_NGJ3A)

由来自阿里巴巴的曹立成和美团的刘银龙两位嘉宾，跟大家一起分享 Kotlin Multiplatform 的落地实践经验

横向对比了 Flutter,  Kotlin Multiplatform, React Native, 以及国内大厂自研跨平台框架等的优缺点及应用场景，同时分享了在做技术选型时的经验分享，非常精彩，不容错过

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/may/p8.png)

### K2 编译器编译速度实测
[Kotlin 新编译器 K2 到底有多快？](https://mp.weixin.qq.com/s/QHbwIEkZuxxJ_ELTxU4X6Q)：K2 编译器一直号称可以大幅提升编译速度，那么到底提升了多少？现在我们是否可以开始使用 K2 了呢？

本视频实测了 K2 的编译提速效果，发现 K2 编译器并没有吹牛，测试结果如下图所示：

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/may/p10.jpg)

## 社区活动
### KotlinConf Global
KotlinConf Global 是 KotlinConf 在全球各个城市的拓展延伸活动，促进各地 Kotlin 开发人员之间的联系，最近全国各个城市也举办了相关活动

- [上海线下活动｜2023 KotlinConf Global Shanghai Meetup 期待与您见面](https://juejin.cn/post/7194755687531380773)
- [活动回顾 | 2023 KotlinConf Global 北京分享会](https://beijing-kug.github.io/events/kotlinconf-callback/)
- [深圳 KotlinConf Global 2023](https://szkug.github.io/website-hugo/events/event_20230131/)
- [西安线下活动｜2023 KotlinConf Global Xi’an Meetup 期待与您见面](https://kotlinxa.com/2023-kotlinconf-global-xian-meetup)

### 新成立的 Kotlin User Group
最近全国各个城市也新创建了一些 KUG，欢迎各个城市的 Kotlin 爱好者加入

- [贵州 Kotlin 用户组](https://juejin.cn/user/2946346893987704/posts)
- [郑州 Kotlin 用户组](https://zhengzhou-kug.github.io/)