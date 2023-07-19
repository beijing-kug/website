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

### Compose 组件官方指南
https://github.com/androidx/androidx/blob/androidx-main/compose/docs/compose-component-api-guidelines.md

## 精选视频
### 为什么 Kotlin 排名比 Swift 落后？
[它居然说 Java 不行了？！！](https://www.bilibili.com/video/BV1Vg4y1P7dr/)

本视频分析了为什么 Kotlin 的使用明显比 Swift 更加广泛，但是在[ TIOBE ](https://www.tiobe.com/tiobe-index/)等编程语言排名中，Swift 的排名却远高于 Kotlin。其原因在于 TIOBE 是通过搜索结果数来统计语言排名的，Swift 这个词汇具有多重含义，包括人名、国际结算系统等，而 Kotlin 则起源于圣彼得堡附近的一座默默无闻的小岛：Kotlin Island。

相比之下，通过分析 Github 上的代码仓库来统计语言活跃度的[ GitHut 排名](https://madnight.github.io/githut/)或许更加准确

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/july/p3.png)

### Sentry 如何使用 Kotlin Multiplatform 开发 SDK
[Creating Kotlin Multiplatform SDK at Sentry-monitoring](https://www.youtube.com/watch?v=XY4h3pfwaE0)

## 社区活动
### 深圳、武汉、贵州 KUG 联合线上分享会
[社区活动 | 7 月 23 日，深圳、武汉、贵州 KUG 联合线上分享会等你参加！](https://mp.weixin.qq.com/s/e0syECdcgj8uT47N438-PA)

深圳、武汉、贵州 KUG 组织的联合线上分享会，主要包括以下内容

- 《JWT 与 Ktor 的故事》分享
- 《Compose-Fluent-UI》分享
- 《Compose 状态管理与 Compose 快照》分享