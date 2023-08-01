---
title: Kotlin 技术月报 | 2023 年 8 月
date: 2023-08-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 路线图更新
[Kotlin 路线图更新了！今年还有哪些亮点值得期待？](https://mp.weixin.qq.com/s/h_NPIPinXhIRlwkGyf-EXQ)

- 带有稳定版 K2 编译器的 Kotlin 2.0 即将面世！
- Kotlin Multiplatform 将在今年迈入稳定！
- Kotlin/Wasm 计划将提升至 alpha，并可适用于独立的 Wasm 虚拟机
- 新的基础库 kotlinx-io 正在开发中
- Android 调试体验改进，调试内联类与内联函数将更加容易

### Kotlin 跨平台的缩写正式更改为 KMP
[Update on the Name of Kotlin Multiplatform](https://blog.jetbrains.com/kotlin/2023/07/update-on-the-name-of-kotlin-multiplatform/)

为了解决过去两年里困扰许多 Kotlin 开发者的命名不一致和缩写混淆问题，Jetbrains 决定弃用“Kotlin多平台移动”（KMM）产品名称。从现在开始，当提及 Kotlin 用于跨不同平台共享代码的技术时，首选术语是“Kotlin多平台”（KMP），无论所讨论的目标平台组合是什么。

### KotlinConf 2024 门票现已开售
[KotlinConf 2024 门票现已开售！| 官方博客](https://mp.weixin.qq.com/s/OPpkzijyZ3efltANtiKMUA)

第五届 KotlinConf 将于 2024 年 5 月 22 日至 24 日在丹麦哥本哈根贝拉中心（Bella Center）举行，届时，Kotlin 社区成员将再度齐聚一堂！

KotlinConf’24 将举办为期一天的工作坊，随后是连续两天的内容和社交活动，包括会议、展览和其他趣味活动。 赶快预订门票，安排旅行，准备参加规模最大的 Kotlin 活动。

### Compose 1.5.0 发布
[What’s new in the Jetpack Compose August ’23 release](https://android-developers.googleblog.com/2023/08/whats-new-in-jetpack-compose-august-23-release.html)

在 Jetpack Compose 功能上基本完备之后，Compose 团队开接下来的主要目标是提升性能，Compose 1.5.0 在性能上带来了以下提升

- 新的 Modifier API 性能大幅提升，最高可减少 80% 的 composition 耗时
- 减少了部分 Compose API 的内存占用，同时修复了 ComposeView 的内存泄漏问题
- Text 组件迁移到了新的 Modifier API，平均减少了 22% 的首次 composition 耗时

### Kotlin 1.9.10 发布
[https://github.com/JetBrains/kotlin/releases](https://github.com/JetBrains/kotlin/releases)

Kotlin 1.9.10 版本已发布，此版本修复了 1.9.0 版本中出现的一些 bug，因此，那些希望升级至 Kotlin 1.9.0 版本的用户可以放心升级了。

## 精选博客
### [Kotlin 和 Swift 的前世一定是兄弟](https://juejin.cn/post/7248962809023316028)
Swift 这门编程语言主要用于 iOS 和 MacOS 的开发，很多人都说 Kotlin 与 Swift 两者非常相像

本文主要从声明变量和常量，导包，基本运算符，逻辑分支，循环语句，函数，高阶函数和闭包，创建对象，类继承等角度分析比较了 Kotlin 与 Swift 的异同

### 2023 年了，都有哪些公司使用了 KMP？
[Popular apps using Kotlin Multiplatform (KMP) in 2023 — and what you can learn from them](https://medium.com/@jacobras/popular-apps-using-kotlin-multiplatform-kmp-in-2023-and-what-you-can-learn-from-them-1f94d86489b7)

在比较跨平台技术时，看看知名 APP 使用了什么技术栈以及我们可以从他们的实践中学到什么是非常重要的。 

目前 KMP 已经发布了 beta 版本，本文介绍了 KMP在 Cash, Netflix, Vmare, McDonald’s, 百度，虾皮，快手等知名 App 中的应用情况，以及他们分享的相关实践案例 

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/august/p1.webp)

### 5 个提升 Kotlin 代码可读性与可维护性的小技巧
[5 Kotlin Tips for a Cleaner Codebase](https://medium.com/@domen.lanisnik/5-kotlin-tips-for-a-cleaner-codebase-3582f2e4e2af)

本文主要介绍了 5 个提升 Kotlin 代码可读性与可维护性的小技巧

- 优先考虑使用 internal，以将类的可见性限制为仅在当前模块内部。
- 将顶级函数的数量保持在最低限度，并注意其可见性，以避免滥用。
- 优先考虑可读性而不是少写几行代码
- 优先考虑创建专用数据类而不是使用 Pair 或 Triple
- 优先考虑使用详尽的 when 语句，因为使用 else 分支可能会导致错误

### K2 编译器速度测试
[A glimpse of K2 in nowinandroid](https://dev.to/cdsap/a-glimpse-of-k2-in-nowinandroid-1b1k)

K2 是 新的 Kotlin编译器前端，预计将在 Kotlin 2.0 发布正式版本。本文对比了在 nowinandroid 项目使用 K2 编译器前后的编译速度对比。

总得来说，k2 已经到来，并且未来可期，目前 KAPT/KSP 仍然会回退到旧的编译器前端，一旦它们兼容 K2，我们可以期望有更好的结果

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/august/p12.png)

### [Compose 1.5 发布，性能大幅提升？](https://mp.weixin.qq.com/s/sEj4YZVDHYPYX5z2SyEUzg)
不久前 Compose 1.5.0 稳定版发布，在组合的性能方面得到明显改善，这主要归功于对 Modifier API 的持续重构，本文介绍了这背后的原理以及如何将自定义 Modifier 迁移到新系统。

总得来说，为了解决老版本 Modifier 的性能问题, Compose 引入 Modifier.Node，带来了以下收益：

- 更少的分配：生成的 Element 的数量大大降低，避免了内存抖动和内存占用。
- 更轻量的树：状态存在 Node 上，不再依靠 remember {}  存储，Composition 的节点数也随之减少，树的遍历速度也更快了。
- 更快的重组：Modifier.Node 为重组提供可比较标的物， 非必要不重新生成 Node，重组性能得到提升。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/august/p13.png)

## 精选视频
### 关于 Kotlin 编译的一些常见误解
[绝大多数开发者都中招了](https://www.bilibili.com/video/BV178411m7i7/)

本视频主要介绍了一些 Kotlin 编译相关的常见误解：

- Kotlin 代码是用 Javac 编译的吗？
- Gradle Kotlin 版本与项目 Kotlin 版本的关系
- Kotlin 与 Java 代码混合时是怎么编译的？依赖关系问题怎么解决？
- 为什么 Kotlin 反编译后成了 Java 源码?
- Kotlin 新版的 K2 编译器是什么?

最后打个广告，霍老师的新书《深入实践 Kotlin 元编程》已上架

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/august/p3.png)

### 手把手带你开发一个 Compose 跨平台项目
[Build an iOS & Android app in 100% Kotlin with Compose Multiplatform](https://www.youtube.com/watch?v=5_W5YKPShZ4)

Compose Multiplatform 对 iOS 的支持意味着我们可以完全使用 Kotlin 来构建跨平台移动应用程序：包括业务逻辑与 UI 层。

Compose Multiplatform for iOS 目前处于 Alpha 阶段，因此此时正是探索该技术的好时机。如下图所示，本视频手把手地带你从头到尾使用 Kotlin 构建一个简单的鸟类图片查看 APP。 

在此过程中，您将了解如何通过 Compose 跨平台和 Kotlin 跨平台实现网络请求、序列化、业务逻辑及 UI 层等各方面功能的共享。最终，我们将构建一个精简的 APP，可以从 API 加载并展示各种鸟类图片，同时支持 Android 和 iOS 平台。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/august/p2.jpg)

### Kotlin 多平台的未来
[Keynote: kotlin and the multiplatform future](https://www.droidcon.com/2023/08/01/keynote-kotlin-and-the-multiplatform-future/)

虽然 Kotlin 最初是在 JVM 上开始的，并随后在 Android 社区得到了应用，但它已经发展成为一个支持多平台的语言。本视频介绍了 Kotlin 多平台的故事以及它的未来。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/august/p14.png)