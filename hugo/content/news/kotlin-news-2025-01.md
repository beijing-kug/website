---
title: Kotlin 技术月报 | 2025 年 1 月
date: 2025-01-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin 2.1.20-Beta1 已发布
[What's new in Kotlin 2.1.20-Beta1](https://kotlinlang.org/docs/whatsnew-eap.html)

- IDE 支持：支持 2.1.20-Beta1 的 Kotlin 插件捆绑在最新的 IntelliJ IDEA 和 Android Studio 中，无需在 IDE 中更新插件，只需在构建脚本中更改 Kotlin 版本为 2.1.20-Beta1。
- Kotlin K2 编译器新特性：从 Kotlin 2.1.20-Beta1 开始，K2 实现的 kapt 编译器插件对所有项目默认启用。自 Kotlin 1.9.20 推出新的 kapt 插件实现以来，团队不断改进其内部实现，使其行为与 K1 kapt 相似并显著提高性能，遇到问题可暂时恢复到以前的插件实现并向问题跟踪器报告。
- Gradle 支持情况：Kotlin 2.1.20-Beta1 与最新稳定版 Gradle 8.11 兼容并支持其功能，Gradle 8.7 至 8.11 版本均受支持，但使用 Kotlin 多平台 Gradle 插件时在 JVM 目标中调用 withJava () 函数可能会出现弃用警告，团队计划尽快修复。

此外 Kotlin 2.1.10-RC2 也已于近期发布，详情信息可见：[https://github.com/JetBrains/kotlin/releases](https://github.com/JetBrains/kotlin/releases)

### [新版本 IDE 的启动速度变快了？原来是在背后做了这些！｜ 技术解析](https://mp.weixin.qq.com/s/GUcWyTW3De5oC0Txy4_gkg)
打开项目时也许是开发者需要等待的最常见场景。IntelliJ IDEA 需要加载和同步项目、执行索引编制以及完成许多其他小任务才能启用所有实用功能。

本文介绍了在新版本 IntelliJ IDEA 中为提高性能而采取的措施，包括通过技术改进优化 IDE 性能，分阶段同步索引编制等方式优化用户性能。通过以上优化，大约 30% 的用户认为 IntelliJ IDEA 2024.2 让他们能够更快开始编码。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/january/p11.webp)

## 精选博客
### [Kotlin Multiplatform 2024 年总结，Kotlin 崛起的一年](https://mp.weixin.qq.com/s/C6iXWvcOySPYVAE9QaFxYg)
2024 年是 KMP 崛起的一年，这篇文章回顾了 2024 年 Kotlin Multiplatform（KMP）的发展。

- 社区支持：2024 年 Google I/O 官宣支持 KMP 项目，由 JetBrains 主导开发，Google Workspace 投资支持。
- 库支持拓展：2024 年众多 Jetpack 库新增 Kotlin 多平台支持，涵盖网络、数据处理等领域。
- 版本更新：年初 Kotlin/Wasm 发布 Alpha 版，Compose Multiplatform 同步支持；Compose Multiplatform 1.6.10 及后续版本有 iOS、Web、编译器等更新；Kotlin 2.0 引入 K2 编译器，IntelliJ IDEA 2024.3 的 K2 模式进入稳定阶段。
- 工具革新：KMP 未来将用基于 JetBrains Fleet 定制的独立 IDE，klibs.io 平台发布，用于搜索 KMP 库。
- 鸿蒙适配：2024 年 Kotlin 中文开发者大会讨论 KMP 适配鸿蒙，官方研究相关方案，有 Kotlin/JS 和 Kotlin/Native 两种适配思路待确定。
- 未来展望：2025 年 JetBrains 将强化 KMP 生态，涉及升级 iOS 版本、支持 Kotlin 转 Swift 及发布独立 IDE 等。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/january/p4.webp)

### [初探 Kotlin Multiplatform Mobile 跨平台原理](https://juejin.cn/post/7214412608400212028)
文章围绕 Kotlin Multiplatform Mobile（KMM）跨平台原理展开，涵盖开发流程、编译产物、文件解析、平台关系等内容，具体如下：

- 开发流程：在 CommonMain 用expect定义不同平台有差异的接口，在各具体平台以actual实现，之后编译、打包、发布，宿主依类型依赖对应仓库。
- Common 层产物：包含kotlin-tooling-metadata.json、source.jar、.jar和.module等文件，.module关联 Common 层与具体平台产物信息。
- 具体平台产物：以 iOS 平台为例，.module文件描述产物属性、依赖和文件信息 ，其编译产物有metadata.jar和.klib。
- 关键文件解析：.klib存放ir等，.knm由.kt经特定流程生成，记录元数据，可用 IDEA 查看 。
- iOS 与 KMM 库关系：iOS 依赖.h和二进制文件，KMM 通过cinterop等工具实现与 OC 的互操作，将.klib处理成 iOS 可用的.framework。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/january/p5.webp)

### [绝大多数人想不到的 MMKV 封装思路](https://juejin.cn/post/7444856714337681459)
文章主要介绍了 MMKV 在 Kotlin 中的封装思路与实现，形成 MMKV-KTX 库，具体如下：

- 支持 StateFlow 类型：借鉴 LiveData 的封装方式，通过自定义委托类，重写 MutableStateFlow 读写及相关函数，结合 MMKV 缓存逻辑，实现对 StateFlow 的支持，使数据变化可通知 UI，还可使用 Flow 操作符。
- 支持 getAllKV ()：针对 MMKV 不支持 getAll () 获取键值对的问题，利用属性委托时的属性名和类型信息，通过反射实现 getAllKV ()。同时处理了懒加载属性误判问题，确保获取的数据准确。
- 支持 Map 用法：提出用操作 Map 方式读写 MMKV 数据，对比存 JSON 字符串和给 key 加后缀两种方案，选择后者。通过特定方式获取历史数据，处理增删查改及迭代器操作，重写 equals () 函数，实现 Map 用法。
- MMKV-KTX 库介绍：MMKV-KTX 库具备自动初始化、类型安全等特性，支持多种数据类型，可转换为 LiveData、StateFlow、Map，还支持 getAllKV ()。给出了添加依赖和使用示例。

```kotlin
fun IMMKVOwner.getAllKV(): Map<String, Any?> = buildMap {
  this@getAllKV::class.memberProperties
    .filterIsInstance<KProperty1<IMMKVOwner, *>>()
    .forEach { property ->
      property.isAccessible = true
      this[property.name] = property.get(this@getAllKV)
      property.isAccessible = false
    }
}
```

### Compose 编译器插件原理介绍
[Reverse-Engineering the Compose Compiler Plugin: Intercepting the Frontend](https://hinchman-amanda.medium.com/reverse-engineering-the-compose-compiler-plugin-intercepting-the-frontend-657162893b11)

本文主要介绍了 Jetpack Compose 编译器插件如何改变 Kotlin 编译器的规则，包括在不同编译阶段的作用以及如何拦截编译行为等内容。

- Jetpack Compose 编译器插件与 Kotlin 编译器的关系：Jetpack Compose 编译器插件会向 IDE 发送诊断信息以提供用户反馈，通过拦截 Kotlin 编译器的代码编译和运行时行为来实现其功能。
- Kotlin 编译器：着重探讨较新的 FIR 前端（k2 编译器），其通过重复编译优化数据格式。
- 插件架构：参考 2018 年 Kevin Most 演讲，介绍了编译器插件架构的构成部分。
- Compose 插件结构：已转移到 Kotlin 仓库，分析其文件结构及前后端职责。
- 插件拦截功能：可在 Kotlin 编译器前后端拦截编译，以特定代码为例说明不同阶段作用。
- IDE 错误提示：解析阶段后，FIR 将信息发送至 IDE 插件，提供如 “Composable main functions are not currently supported” 等实时错误提示。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/january/p6.webp)

## 社区活动
### Kotlin 中文开发者大会视频回放
Kotlin 中文开发者大会视频回放已发布，欢迎点击以下链接观看：

- [腾讯视频使用 KMP Compose 适配鸿蒙的实践](https://www.bilibili.com/video/BV1ntcJeJEBb/)
- [BiliBili 的鸿蒙之路：从 Kotlin/JS 到 Kotlin/Native 的进化之路](https://www.bilibili.com/video/BV1ntcJeJEsF/)
- [快手团队的 KMP 鸿蒙落地实践](https://www.bilibili.com/video/BV1ntcJeJEYd/)
- [NTCompose：一个基于 KMP 及 Compose 范式和原生渲染的多平台开发框架](https://www.bilibili.com/video/BV1JtcJeJEoQ/)