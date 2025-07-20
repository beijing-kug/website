---
title: Kotlin 技术月报 | 2025 年 7 月
date: 2025-07-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

微信内限制外链点击，大家可以点击左下角阅读原文，支持外链查看。
## 最新动态
### Kotlin 近期动态总结
[Kodee’s Kotlin Roundup: A Carefully Curated June Edition](https://blog.jetbrains.com/kotlin/2025/07/kodees-kotlin-roundup-june-edition/)

又到了一期《Kodee 的 Kotlin 综述》时间！本文总结了 Kotlin 近期的动态，具体包括以下内容：

- Kotlin 2.2.0 发布：带来新的稳定语言特性、工具更新、跨平台性能提升以及大量重要修复。可通过官方博客文章深入了解。
- KotlinConf 2025 相关：会议演讲和照片已上线，错过现场的开发者可在线重温。会议期间探讨了利用 Kotlin 可空性模型泛化为受限联合类型，实现更智能的错误处理。此外，会议闭幕小组讨论未能涵盖所有问题，后续博客文章针对 Kotlin 多平台热门问题给出解答。
- Kotlin 在不同领域的进展：在 AI 开发领域，推出新文档页面展示 Kotlin 在实际 AI 场景的应用，并可通过 Kotlin - AI - Examples 仓库了解基于 Kotlin 的 AI 框架 Koog；服务器端开发方面，Ktor 3.2.0 新增依赖注入和 HTMX 模块、支持 Gradle 版本目录、自动配置反序列化等功能；Kotlin 多平台结合 Compose Multiplatform 实现热重载，能加快 UI 代码迭代。
- 学习资源与其他动态：LinkedIn Learning 推出新的 Kotlin 多平台课程，帮助开发者掌握相关技术。Gradle 9.0.0 RC1 发布，更新到 Kotlin 2.1。KotlinConf 2025 上开展了猜测 Kotlin 开发者薪资的游戏。同时，介绍了一系列 Kotlin 相关的 YouTube 精彩视频，涵盖 Kotlin Notebook 升级、Kotlin 在麦当劳的应用、自制 NES 模拟器等内容。

### [OkHttp 5.0 版本发布](https://square.github.io/okhttp/changelogs/changelog/)
OkHttp 5.0.0 于 2025 年 7 月 2 日发布，是自 2023 年以来的首个稳定版本，更新内容主要包括以下几个方面：

- 分离 JVM 和 Android 工件，支持平台特定优化
- MockWebServer 更新：新坐标 / 包名，移除 JUnit 4 依赖，新增 JUnit 5 支持（旧版本仍可使用）
- 支持 Happy Eyeballs（RFC 8305），并发尝试 IPv4/IPv6 连接
- 优化 Kotlin API（可省略构建器），支持 GraalVM
- 依赖升级：Okio 3.15.0、Kotlin 2.2.0
- 修复：与 Sentry SDK 兼容问题、mockwebserver 查询数据保留问题

### Koog 0.3.0 发布
[Building Better Agents: What’s New in Koog 0.3.0](https://blog.jetbrains.com/ai/2025/07/building-better-agents-what-s-new-in-koog-0-3-0/)

Koog 0.3.0 于 2025 年 7 月 16 日发布，聚焦提升 AI Agent 的耐用性、效率及兼容性，核心更新如下：

- 状态持久化：支持从本地磁盘、S3 或数据库保存 / 恢复代理状态，含检查点功能可回滚，保障容错性。
- 存储与检索优化：支持持久向量存储，可构建 RAG 管道，模块化适配多种格式与后端。
- 可观测与合规：集成 OpenTelemetry 实现追踪与监控，内置输出审核功能，适配监管环境。
- 并行执行：采用 MapReduce 风格 API，支持节点并行运行，加速多步骤流程。
- 生态适配：增强 Spring 集成，提供自动配置的 LLM 客户端；支持 ReAct 推理、图像输入、WASM 部署及 Amazon Bedrock。

### 使用 Fuzzing 对 Kotlin 编译器进行模糊测试
[Breaking to Build: Fuzzing the Kotlin Compiler](https://blog.jetbrains.com/research/2025/07/fuzzing-the-kotlin-compiler/)

kotlinx.fuzz，这是一款用于发现 Kotlin 程序中错误的强大工具。由于 Kotlin 编译器本身就是一个 Kotlin 程序，我们也可以使用模糊测试来对其进行测试。本文主要介绍了 JetBrains 是如何利用 Fuzzing 对 Kotlin 编译器进行模糊测试的，具体包括以下内容：    

- 解释模糊测试是什么，以及它与传统编译器测试技术相比如何。
- 展示 JetBrains是如何与代尔夫特理工大学合作，将其应用于Kotlin编译器的。
- 分享 JetBrains 发现并修复的实际错误，包括在新的 K2 编译器中发现的错误。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/july/p1.webp)

## 精选博客
### 构建你的第一个 Kotlin 多平台应用（2025 指南）
[Building Your First Kotlin Multiplatform App: From Setup to iOS App Store with Compose Multiplatform (2025 Guide)](https://blog.kotlin-academy.com/building-your-first-kotlin-multiplatform-app-from-setup-to-ios-app-store-with-compose-e4d3f4c6767c)

本文是关于用 Kotlin Multiplatform（KMP）构建跨平台应用 Kyklos 的指南

- **背景与优势**：基于Kotlin 2.2.0版本，借助稳定的Compose Multiplatform for iOS，可实现95%的代码共享，覆盖数据库、业务逻辑和UI，高效构建原生Android和iOS应用。
- **开发基础**：需搭建包含Android Studio、Xcode、JDK、Kotlin等的开发环境，通过官方向导或Android Studio创建KMP项目，并配置Kotlin、Compose Multiplatform、SQLDelight等核心依赖。
- **架构与实现**：采用Clean Architecture分层架构，划分表示层、领域层和数据层；通过 SQLDelight 完成跨平台数据库设置，按架构实现各层业务逻辑；使用Compose Multiplatform构建UI，包括主题、可复用组件和屏幕级组件。
- **注意事项与操作**：需关注 iOS 开发中的兼容性问题，如字符串格式化和 UUID 生成方式；介绍了项目构建、运行及 iOS 模拟器相关操作。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/july/p3.jpeg)

### [Koin 到底是什么？服务定位器还是依赖注入？](https://mp.weixin.qq.com/s/W5VHoOtN65POH1K81AcWKA)
在 Kotlin 与 Android 开发社区中，关于 Koin 究竟属于服务定位器（Service Locator，简称 SL），还是依赖注入（Dependency Injection，简称 DI） 的问题，始终存在争议。简短明确的回答是：Koin 是为 Kotlin 设计的现代、轻量级的依赖注入框架，但同时也支持服务定位器模式。

- 服务定位器（SL）是一种设计模式，通过提供一个中心化的注册表或“定位器”，让类可以根据需要从中获取服务或对象，而非直接注入依赖。 虽然这种模式可以简化依赖的获取，但容易导致代码紧密耦合并且缺乏编译时检查，导致测试变得困难，并可能带来运行时错误。
- 依赖注入（DI）则是在对象创建时将依赖项注入对象，并将管理对象依赖的责任交给外部容器。 从而提升代码的解耦性、可维护性和可测试性，更易于编写单元测试和进行后期维护。

```kotlin
// 纯依赖注入：依赖通过构造函数明确声明
class UserRepository(
    privateval apiService: ApiService,
    privateval database: UserDao
) {
    fun getUsers() = database.getAllUsers()
}

// Koin 模块定义
val appModule = module {
    single<ApiService> { ApiServiceImpl() }
    single<UserDao> { get<AppDatabase>().userDao() }
    single<UserRepository> { UserRepository(get(), get()) }  // DI：显式注入依赖
    // 或者使用更简洁的 singleOf
    singleOf(::UserRepository)
}

class MainActivity : AppCompatActivity() {
    // 服务定位器：主动从容器中获取依赖
    private val viewModel: MainViewModel by inject()
    private lateinit var repository: UserRepository
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // 依赖在首次访问时才被解析
        repository = get() // 通过 get() 立即获取实例
    }
}
```
### [Kotlin 协程：Channel 与 Flow 该如何选？](https://mp.weixin.qq.com/s/TxtySriTqOZ9G5nJTyMGjQ)
在 Kotlin 协程的异步编程世界里，Channel 和 Flow 是处理数据流的重要工具，它们有着不同的设计理念与适用场景，本文对比二者功能与应用场景，详细讲解 Channel 的使用步骤及注意事项。

- **核心定位**：Channel和Flow是Kotlin协程处理数据流的关键工具，设计理念与适用场景不同。
- **特性与选型**：
  - Channel：用于协程间点对点通信，适用于生产者-消费者模式，强调即时性，“一对一”数据传递、串行异步任务及事件驱动场景优先用。
  - Flow：将异步数据抽象为流，支持冷热流和多订阅者广播，操作符丰富，数据流处理、多订阅者共享数据和懒加载场景优先用。
- **Channel使用**：需创建、发送与接收数据，有Rendezvous、Buffered、Conflated、Unlimited四种类型，各有特性与适用场景。
- **实战与高级用法**：在安卓Snackbar事件传递、多协程任务拆分等场景有应用；支持扇入/扇出、双向通信等高级用法。
- **异常处理**：需通过try-catch、SupervisorJob、出错及时关闭Channel等方式处理异常，确保通信稳定。

### [Kotlin/Native 编译流程浅析](https://android-performance-optimization.github.io/foundation/kotlin-compiler-learn/kotlin-native-compiler/)
本文基于 Kotlin 2.2 版本，介绍了 Kotlin/Native 编译的主要流程

- 入口阶段
    - 从 K2Native.main() 开始，经过 doExecute() 和 KonanDriver.run()
    - 在 splitOntoTwoStages() 中决定采用两阶段编译
- 第一阶段：KLib 生成
    - FIR 生成：源代码 → 前端中间表示
    - IR 转换：FIR → 中间表示
    - IR 降级：预序列化处理
    - 序列化：生成包含 ir/, linkdata/, manifest 等的 KLib 文件
- 第二阶段：二进制生成
    - 前端分析：反序列化 KLib 获取模块描述符
    - IR 反序列化：从 KLib 重建 IR 模块
    - IR 降级：更抽象、高级的语言特性分解成更基础的元素
    - 代码生成：IR → LLVM IR 转换
    - BC 生成：LLVM IR 序列化为 Bitcode
    - 编译链接：BC → .o → 最终可执行文件

## 精选视频
### [Kotlin 2.2.0 新特性系列视频](https://www.bilibili.com/video/BV1Ay34ztEaT)
Kotlin 2.2.0 版本已于近期正式发布，本系列视频将带您全面了解这一版本的各项新特性。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/july/p2.png)
## 社区活动
### [近期深圳、北京 Kotlin 用户组 Meetup 内容回放 ｜社区分享](https://mp.weixin.qq.com/s/5rdQohjQx09UOMZRhAOH_Q)
- 深圳 Kotlin 用户组线下 Meetup 在 7 月 4 日下午圆满举行。本次活动由 4 场来自社区的技术实践分享组成，四位讲师分别从不同角度分享了各自 Kotlin 技术的落地经验，有官方文档本地化项目 Open AIDoc 的开发流程解析、Flutter + KMP 跨平台开发实践、Koin 依赖注入的优化方案，还有将 Kotlin 代码编译为 C# 语言的实验性探索。四场分享带给大家不同的视野，为我们共同呈现了一场覆盖技术纵深与创新边界的知识盛宴。
- 在更早之前的上个月，北京 Kotlin 用户组在美团北京总部也举办了一场线下 Meetup。二十余位社区开发者来到现场，也有数十名小伙伴线上实时同步参与。借着一年一度  KotlinConf 刚刚落幕的契机，大家共同盘点了 Kotlin 语言和生态范围内众多令人兴奋的更新与变化。更有来自 JetBrains 欧洲团队的技术专家贡献了协程技巧的专题分享，通过面对面的交流问答，加深大家对 Kotlin 的理解，更高效地使用 Kotlin。