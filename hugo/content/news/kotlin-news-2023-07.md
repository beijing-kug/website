---
title: Kotlin 技术月报 | 2023 年 7 月
date: 2023-07-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定尝试使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 1.9.0 版本发布
[Kotlin 1.9.0 现已发布 | 官方博客](https://mp.weixin.qq.com/s/3CwZpsTG9dNkx0e1akMU5w)：Kotlin 1.9.0 版本已发布，其中最大的变化应该是 K2 编译器终于支持了 KAPT 编译器插件，主要包括以下内容：

- 持续完善 Kotlin K2 编译器，包括对 KAPT 的支持，Gradle 构建报告更好的支持等
- 一些语言特性：在枚举类中推荐使用`entries`属性代替`values()`方法进行遍历，data object 现已稳定，Value Class 支持次级构造函数
- 1.7.20 版本引入的`..<`操作符成为稳定 API
- 提供了一个用于根据名称获取正则表达式`capture group`的新 API 
- 提供了一个新的扩展函数`createParentDirectories`，可用于创建带有必要父目录的新文件，如果目录已存在，则不操作，否则创建目录
- Kotlin 跨平台 Gradle 插件支持配置缓存
- Google 的 Android 团队将提供自己的 Gradle 插件来支持 Kotlin Multiplatform 中的 Android Target
- Kotlin/Native 在访问 object 单例的 const val 字段时将不再初始化 object
- Kotlin/Native在链接过程中遇到无符号问题时，默认处理方式已更改为警告而非报错，这样更接近于Kotlin/JVM的处理方式，即在运行时报错
- Kotlin/Wasm 在包体积方面做了巨大的优化，以一个 HelloWorld 项目为例，1.9.0 版本相较于 1.8.20 版本，其体积缩小了10倍。

也可以查看视频版本的介绍：[Kotlin 1.9 更新了什么？](https://www.bilibili.com/video/BV1DP411k7xs/)

### Kotlin Notebook IDEA 插件已发布
[Introducing Kotlin Notebook](https://blog.jetbrains.com/kotlin/2023/07/introducing-kotlin-notebook/)

Kotlin 版本的 Jupyter Notebook，与代码编辑器不同的是，`Notebook`是一种交互式工具，可以让你在一个文档中整合代码、可视化和文本。在`Notebook`中，你可以编写和运行代码片段，查看结果，并在一个地方记录你的思考过程。`Notebook`在快速原型设计、分析和数据科学等领域都有着广泛的应用，

Kotlin Notebook 插件为 IntelliJ IDEA 带来了交互式开发体验，现已推出首个实验版本。本文介绍了该插件所支持的功能及其使用示例。

### Redwood 发布 beta 版本
[Redwood 发布 beta 版本](https://github.com/cashapp/redwood/releases)

Redwood 是 Cash 公司开源的 Compose 跨平台框架，类似 Compose 版 RN，通过组件映射的方式实现跨平台，同时也支持通过与 Zipline 结合实现动态更新

Redwood 目前已发布了 0.50 版本，这个版本标志着Redwood进入 beta 阶段，相较于之前提供了更多的稳定性保证。

从现在开始，直至 1.0 版本（不包括 1.0 版本）发布之前，Redwood 都将在协议和服务上与旧版本保持兼容。由于 Redwood 提供了动态更新功能，这也意味着在使用 Redwood 0.5 版本的 Treehouse host 中，可以无缝支持使用 Redwood 0.6 及以后版本编译和部署的 Treehouse client 代码。

## 精选博客
### [设计图转Compose代码，Relay帮你轻松搞定](https://mp.weixin.qq.com/s/0Rp3a4W3oXZkFYqazHsXpQ)
简单来说，Relay 可以与 Figma 集成，直接把设计稿生成 Compose 代码。

设计人员使用 Relay for Figma 插件为界面组件添加注解并进行打包，包括布局、样式、动态内容和交互行为的相关信息，以便于开发者使用。

开发者使用 Relay for Android Studio 插件导入界面软件包，并生成 Jetpack Compose 代码。

Android 开发人员很大一部分的时间花费在了实现 UI 细节上，如果能实现全自动甚至是半自动的`desgin to code`，都将极大地提升开发效率。总的来说，这项技术具有巨大的应用价值。

### [Kotlin 新特性预览之 data object 数据单例](https://mp.weixin.qq.com/s/-8ZgoLzkYdRD320MQ47cXg)
1.8.20版本中引入的 data object 数据单例在1.9.0版本中已经变得稳定。本文主要介绍了以下内容：

1. data object 与 object 的区别
2. data object 与 sealed class 更适配
3. data object 与 data class 的区别

### [Gson与Kotlin"摩擦"的那件小事](https://juejin.cn/post/7249352715364483109)
使用 Gson 进行序列化时，如果序列化类没有无参构造函数，会导致属性的默认初始值丢失等问题。本文介绍了 Gson 反序列化非静态内部类时的坑，同时介绍了一种代替复杂的`TypeToken`写法的新方式

```kotlin
@OptIn(ExperimentalStdlibApi::class)
fun main(args: Array<String>) {
    val content = "[{"content": 10, "location": "aa"}, {"content": 10, "location": "bb"}]"
    val obj = Gson().fromJson<List<OutClass>>(content, typeOf<List<OutClass>>().javaType)
    println(obj)
}
```

总的来说，Gson 与 Kotlin 的适配并不是很好，因此如果使用 Kotlin 的话，还是更推荐迁移到 Moshi 或者 kotlin-serialization。

### [Compose 为什么可以跨平台？](https://mp.weixin.qq.com/s/V682vYRzXr0p7gyfeHTmHg)
本文是 2022 Kotlin 中文开发者大会相关分享的文字版，深入介绍了 Compose 支持跨平台的底层原理

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/july/p20.png)

我们知道，Compose 框架具有良好的分层结构，其中 Compose Compiler 层与 Compose Runtime 层负责驱动一棵节点树的更新，这部分与平台无关，节点树也可以是任意类型的节点树甚至是一棵渲染无关的树。

而不同平台的渲染机制不同，所以 Compose UI 与平台相关，因此 Compose 要实现跨平台要解决的唯一问题就是 Compose UI 层的跨平台

Compose 跨平台技术发展十分迅速，截止目前已经出现了两种实现 Compose UI 层跨平台的方案，令人充满期待

- [compose-multiplatform](https://github.com/JetBrains/compose-multiplatform)：Jetbrains 目前正在开发的 Compose 跨平台框架，类似于 flutter，通过封装 skia 引擎，解决 Compose UI 层的跨平台问题
- [redwood](https://github.com/cashapp/redwood)：Cash 公司开源的类 React Native 方案，通过组件映射的方式实现 UI 层的跨平台，同时也支持动态化更新组件

### Compose 组件的 API 官方指南
[API Guidelines for @Composable components in Jetpack Compose](https://github.com/androidx/androidx/blob/androidx-main/compose/docs/compose-component-api-guidelines.md)

最近官方更新了 Compose 组件 API 指南，这些指南介绍了使用 Jetpack Compose 开发 UI 组件的最佳实践，遵循这些指南可以给我们带来以下收益

- 长期可扩展：遵循最佳实践的组件 API 可以降低变更成本，减少变更对使用者的影响
- 与其他组件保持一致：不同的组件都遵循相同的指南，使用者可以使用现有的知识和模式来处理由不同作者创建的新组件，降低接入新组件的成本
- 减少错误：封装良好的组件会鼓励使用者写出符合最佳实践的代码，并在可能的情况下禁止错误的用法。

### [匿名内部类/Lambda Java和Kotlin谁会导致内存泄漏?](https://juejin.cn/post/7256738063072854072)
本文从字节码的角度分析了为什么 Java 匿名内部类会导致内存泄漏，同时分析比较了 Java 的 Lambda 表达式，Kotlin 匿名内部类，Lambda 表达式和高阶函数，以评估它们是否会引发类似的内存泄漏问题

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/july/p21.webp)

### [Jetpack Compose也能搞插件化了](https://mp.weixin.qq.com/s/kBvSptkgvnWoQ9_S0_pQGg)
在传统的 View 体系中，插件化框架的其实很大一部分工作就是处理未注册 Activity 的问题。在进入 Jetpack Compose 的世界以后，Activity 的角色被淡化了，由于一个 Composable 组件就可以承担一个屏幕级的显示，因此我们的应用中不再需要那么多的 Activity 类，只要你喜欢，你甚至可以打造一个单 Activity 的纯 Compose 应用。

因此 Compose 实际上降低了插件化的成本，本文主要探索了几种可以在 Jetpack Compose 中实施插件化/动态加载的可行性方案

- Activity 占坑方式访问插件中的 Composable 组件(传递不同参数，展示不同的 Composable)
- 直接加载插件中的 Composable 组件(返回 Compose 组件)
- 套娃模式加载 Composable 组件(返回 ComposeView)

## 精选视频
### 为什么 Kotlin 排名比 Swift 落后？
[它居然说 Java 不行了？！！](https://www.bilibili.com/video/BV1Vg4y1P7dr/)

本视频分析了为什么 Kotlin 的使用明显比 Swift 更加广泛，但是在[ TIOBE ](https://www.tiobe.com/tiobe-index/)等编程语言排名中，Swift 的排名却远高于 Kotlin。其原因在于 TIOBE 是通过搜索结果数来统计语言排名的，Swift 这个词汇具有多重含义，包括人名、国际结算系统等，而 Kotlin 则起源于圣彼得堡附近的一座默默无闻的小岛：Kotlin Island。

相比之下，通过分析 Github 上的代码仓库来统计语言活跃度的[ GitHut 排名](https://madnight.github.io/githut/)或许更加准确

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/july/p3.png)

### Kotlin 跨平台从入门到实战
[Kotlin Multiplatform from "hello world" to the real world](https://www.droidcon.com/2023/07/20/kotlin-multiplatform-from-hello-world-to-the-real-world/)

Kotlin 跨平台目前已经进入 beta 阶段。到现在，您肯定已经听说过 Kotlin 多平台技术，并可能尝试在 demo 中体验过它。但当您真正尝试将 Kotlin 跨平台技术应用于实际项目时，您可能会遇到一些微妙且复杂的问题，比如 Kotlin 与 Swift 的互操作性、模块化、管理具有相互依赖关系的多个代码库，以及优化构建时间和二进制文件大小等。本视频的分享者来自 touchlab，介绍了他们在这些方面的一些实践经验。

## 社区活动
### 深圳、武汉、贵州 KUG 联合线上分享会
[社区活动 | 7 月 23 日，深圳、武汉、贵州 KUG 联合线上分享会等你参加！](https://mp.weixin.qq.com/s/e0syECdcgj8uT47N438-PA)

深圳、武汉、贵州 KUG 组织的联合线上分享会，主要包括以下内容

- [《JWT 与 Ktor 的故事》分享](https://www.bilibili.com/video/BV1aX4y1n75r?p=3)
- [《Compose-Fluent-UI》分享](https://www.bilibili.com/video/BV1aX4y1n75r?p=2)
- [《Compose 状态管理与 Compose 快照》分享](https://www.bilibili.com/video/BV1aX4y1n75r?p=4)

### 加入 Kotlin 用户组
KUG 是让 Kotlin 开发者和爱好者们聚在一起的技术社区。通过基于群聊的日常交流或不定期在线上/线下举办的技术讲座和沙龙，促进大家的知识分享和技能提升。

截至目前，国内已有 16 个 KUG 成立，各个 KUG 的信息和加入方式可见链接：[找到组织！国内 Kotlin User Group 信息整理（23年7月）](https://mp.weixin.qq.com/s/rZEuSU2Nj3S9XGzpkFr-Jw)

