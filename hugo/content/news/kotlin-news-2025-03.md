---
title: Kotlin 技术月报 | 2025 年 3 月
date: 2025-03-31
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### Kotlin roadmap 更新
[https://kotlinlang.org/docs/roadmap.html#key-priorities](https://kotlinlang.org/docs/roadmap.html#key-priorities)

Kotlin 的路线图已更新, 这份路线图的目标是让开发者了解全局情况。以下是 Kotlin 的关键关注领域列表，也是 Kotlin 团队致力于实现的最重要方向：

- 语言演进：实现更高效的数据处理、增强抽象能力，在保证代码清晰的同时提升性能。
- Kotlin 多平台：发布 Kotlin 直接导出到 Swift 的功能、简化构建设置，以及简化多平台库的创建过程。
- 第三方生态系统作者的体验：简化 Kotlin 库、工具和框架的开发与发布流程。

### Kotlin 2.1.20 已发布
[Kotlin 2.1.20 Released](https://blog.jetbrains.com/kotlin/2025/03/kotlin-2-1-20-released-2/)

Kotlin 2.1.20 已发布，此版本包含了一些新特性和改进，如：

- K2 编译器：更新为新的默认 kapt 编译器插件。
- Kotlin 多平台：引入新的 DSL，用于在多平台项目中替代 Gradle 的 Application 插件。
- Kotlin/Native：进行内联优化，以此提升运行时性能。
- Kotlin/Wasm：开发构建中，自定义格式化程序现在默认启用。
- Gradle 支持：在多平台和 JVM 项目中，支持添加自定义发布变体。
- 标准库：引入常见的原子类型，改进了 UUID 支持，并新增时间跟踪功能。
- Compose 编译器：现在默认在所有平台上都包含源信息。

### 近期使用 Kotlin 开发服务端的经验分享
[Shout-Out to Kotlin for Server-Side Content Creators! ](https://blog.jetbrains.com/kotlin/2025/03/shout-out-to-kotlin-for-server-side-content-creators/)

Kotlin 是由 JetBrains 开发的一种简洁的多平台语言。文章呼吁使用 Kotlin 进行服务器端开发的开发者分享经验，展示了用 Kotlin 进行服务器端开发的各种资源，包括文章和视频教程等示例。同时，Kotlin 团队会挑选优秀内容进行推广，如在博客、社交媒体等平台分享，并给出了一些热门的内容创作主题建议。

- 社区近期精选: 有从 Java 代码转换为 Kotlin 的实用例子文章、Ktor 服务器基础和与 MongoDB 结合的视频教程、基于 Kotlin 的项目框架等多种资源供开发者学习参考。
- 团队推广优秀内容：Kotlin 团队会挑选优秀的服务器端开发相关内容在博客、社交媒体等平台进行推广，给予创作者更多的曝光机会。
- 提供内容创作主题建议：给出了在后端开发中使用 Kotlin 的最佳实践、将现有 Java Spring 后端迁移到 Kotlin 等热门主题建议，为创作者提供创作方向。

## 精选博客
### [腾讯 TDF 即将开源 Kuikly 跨端框架，Kotlin 支持全平台](https://juejin.cn/post/7477601578829627392)
Kuikly 是基于 Kotlin KMM(Kotlin Multiplatform Mobile) 技术实现的客户端友好跨端方案，可以使用 Kotlin 原生开发语言创建 Android 、iOS、、H5、小程序和 PC 应用，属于 TDF （Tencent Device-oriented Framework）的全新跨平台方案。

Kuikly 是采用类 Compose 和 SwiftUI 的声明式+响应式的开发模式，框架输出的产物有：Android 产物为 AAR/Dex, iOS 产物为 .framework/JS。运行时会映射到系统原生控件渲染，跟系统原生控件体验完全一致，最重要的是，Android 平台实现了基于dex 动态下发支持，iOS平台基于 JS 动态下发，也就是完全支持热更新。

据官方介绍，Kuikly 会在 2025 年 4 月开源，敬请期待。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/march/p5.webp)

### [Kotlin/Native 给鸿蒙使用](https://juejin.cn/post/7480538156530925578)
在跨平台开发的浪潮中，Kotlin/Native 的应用拓展备受关注。本文聚焦于 Kotlin/Native 如何集成鸿蒙平台原生能力，为开发者解锁更多可能，让我们一起看看具体实现方法。

- 集成背景与工具：KMP 聚焦于 Android 和 iOS，利用 Kotlin 与 C 语言的互操作性及 cinterop 工具，可集成鸿蒙原生能力。以 curl 库为例，通过定义.def 文件和配置 Gradle，可- 生成 Kotlin 绑定。
- Kotlin 与 C 互操作性：涵盖基础类型、指针数组、枚举等类型映射规则，介绍手动及自动内存分配释放方式，为调用 C 库提供基础。
- 集成鸿蒙 hilog：定义 hilog.def 文件，配置 Gradle 构建任务，封装 hilog 函数，生成依赖于 libhilog_ndk.z.so 的.so 文件。
- 集成鸿蒙 napi：类似地，定义 napi.def 文件和配置 Gradle。用 Kotlin 实现 napi_init.cpp 中的功能，构建生成依赖于 libace_napi.z.so 的.so 文件。
- 鸿蒙接入与效果：将生成的.so 文件和头文件放入指定目录，修改配置文件后，在鸿蒙项目中可调用 Kotlin/Native 封装的功能，实现了在鸿蒙平台的成功运行。

### [如何给 Kotlin 新增一个 target?](https://android-performance-optimization.github.io/foundation/kotlin-compiler-learn/kotlin-jack-backend/)
本文主要介绍了 Jack 语言与 Jack 字节码，以及如何给 Kotlin 新增一个 target，将 Kotlin 编译成 Jack 字节码。通过这个例子，我们可以看到得益于 Kotlin 良好的分层架构，给 Kotlin 新增一个 target 并不是一件困难的事情，只需要实现 backend-jack 模块，然后串起编译的整体逻辑即可。

![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/march/p4.png)

## 社区活动
### [国内 Kotlin 与 KMP 用例调研｜用你的经验，改写 KMP 技术的未来！](https://mp.weixin.qq.com/s/mI_38Qg8MxxVMlz3ie5Yfw)
![](https://raw.gitmirror.com/RicardoJiang/resource/refs/heads/main/2025/march/p6.webp)