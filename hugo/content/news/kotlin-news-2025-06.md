---
title: Kotlin 技术月报 | 2025 年 6 月
date: 2025-06-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

微信内限制外链点击，大家可以点击左下角阅读原文，支持外链查看。
## 最新动态
###  Kotlin 2.2.0 版本发布
[Kotlin 2.2.0 Released](https://blog.jetbrains.com/kotlin/2025/06/kotlin-2-2-0-released/)

Kotlin 2.2.0 版本发布,主要包括以下内容：

- 语言增强：guard conditions, non-local break,multi-dollar interpolation 等特性转正。引入了 context parameters 的预览。
- 编译器改进：新增 -Xwarning-level 选项，用于统一管理编译器警告，使得可以针对特定警告进行细化调整。
- Kotlin/JVM 更新：接口函数默认生成 JVM default方法，通过-jvm-default控制兼容性。
- Kotlin/Native：LLVM 升级至 19，实验性支持对象级内存分配。
- Kotlin/Wasm：wasmJs 目标与 js 目标分离，便于独立配置。
- Kotlin/JS：@JsPlainObject的copy()移至伴生对象，支持@JsModule中声明类型别名。

### KMP 相关问题解答
[Get Answers to Your KMP Questions](https://blog.jetbrains.com/kotlin/2025/06/get-answers-to-your-kmp-questions/)

本文针对 KotlinConf 2025 闭幕小组讨论中因时间限制未解答的关于 Kotlin Multiplatform（KMP）的热门问题，给出了回应。

- IDE 对 iOS 代码的支持：IntelliJ IDEA 和 Android Studio 的 KMP 插件已支持 Swift 的导航等跨语言功能，团队还计划增添更多相关功能，开发者可通过特定博客文章了解详情。
- 提升原生编译速度：团队正关注原生构建性能，建议开发者先参照提高原生编译速度的推荐方法。若无效，希望开发者提交 bug 报告及项目细节，以助团队解决性能问题。
- KMP 未来一年的发展：致力于推动 KMP 成为完整成熟的解决方案，对 Compose Multiplatform 有宏大计划，正开发 Compose Multiplatform for web 的 Beta 版本，同时改进业务逻辑共享场景，还会提升 KMP 插件稳定性并增加生产力功能。
- Compose/KMP Web 支持的改进：Compose Multiplatform for web 的 Beta 版本正在开发，已提供更多与其他平台对等的 API，与浏览器厂商合作提升性能。后续计划添加与 HTML 元素的互操作、旧浏览器兼容模式、无障碍支持原型以及对关键 UI 组件的多项改进。

## 精选博客
### Kotlin when guards 设计分析
[Kotlin 2.2 — guards when with subject, more than a technical question.](https://proandroiddev.com/kotlin-2-2-guards-when-with-subject-more-than-a-technical-question-cdecec87348f)

本文深入探讨了 Kotlin 2.2 RC2 版本引入的 “when guards” 特性，从语言设计哲学角度分析其意义与影响。作者最初因该特性与 Swift 中 guard 实现方式不同而失望，进而对比 Swift、Haskell、Scala 等语言中类似特性。Swift 的 guard 用于早期退出，是控制流原语；Haskell 和 Scala 的 guard 以声明式方式实现条件逻辑。Kotlin “when guards” 介于两者之间，基于现有 when 表达式扩展，虽提升了 when 的表达能力，但语法规则存在限制，如不能用逗号混合多个 when 条件与 if guard 等。该特性并非取代现有模式，而是让特定常见结构更易读、易发现，符合 Kotlin 语言进化特点，其真正价值或许要在 Kotlin 2.4 发布 Rich Errors 后才更清晰。

```kotlin
fun feedAnimal(animal: Animal) {
    when (animal) {
        // Branch with only the primary condition. Calls `feedDog()` when `animal` is `Dog`
        is Animal.Dog -> animal.feedDog()
        // Branch with both primary and guard conditions. Calls `feedCat()` when `animal` is `Cat` and is not `mouseHunter`
        is Animal.Cat if !animal.mouseHunter -> animal.feedCat()
        // Prints "Unknown animal" if none of the above conditions match
        else -> println("Unknown animal")
    }
}
```

### [重磅！支持纯血鸿蒙！腾讯视频ovCompose跨平台框架发布](https://mp.weixin.qq.com/s/GTkzHTvWIdDmxtlRVpNgfw)
ovCompose（online-video-compose）是腾讯大前端领域 Oteam 中，腾讯视频团队基于 Compose Multiplatform 生态推出的跨平台开发框架，旨在弥补 JetBrains Compose Multiplatform 不支持鸿蒙平台的遗憾与解决 iOS 平台混排受限的问题，便于业务构建全跨端 App。同时腾讯视频深度参与 Oteam 并推出了 KuiklyBase，涵盖 Kotlin/Native 的鸿蒙适配、组件生态、鸿蒙编译、堆栈还原、工具链相关建设，助力业界 KMP 开发者提高鸿蒙适配效率。

本文阐述项目背景、特性优势（如鸿蒙高性能、多端一致性、内存优化等）、实现原理（涵盖各平台适配、性能优化等），说明开源情况，并展望未来优化方向，推动 Compose 跨端生态成熟。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/june/p2.webp)

### [腾讯Kuikly框架鸿蒙版正式开源 —— 揭秘卓越性能适配之旅](https://mp.weixin.qq.com/s/4cYzhxt0MCwQ3KUEJyQN_A)
Kuikly 是腾讯广泛使用的跨端开发框架，基于 Kotlin Multiplatform 技术构建，为开发者提供了技术栈更统一的跨端开发体验。

Kuikly是一个一码多端、追求极致性能、动态化、原生体验的开发框架，技术上以Kotlin Multiplatform为依托，解决了过去业界跨端框架普遍存在的性能、体验跟原生不一致以及开发生态问题；设计上最大程度将逻辑实现在Kotlin跨端侧，使Native侧的逻辑极致轻量。

本文阐述了 Kuikly 在鸿蒙平台的效果适配方案、总体适配方案，详细介绍渲染层适配、KuiklyBase 适配的具体工作，发布 Compose DSL Beta 版本，并对未来技术发展做出展望。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/june/p1.gif)

### [B站在KMP跨平台的业务实践之路](https://mp.weixin.qq.com/s/yRwkbQxFsRBNZW3Z-S1A8Q)
本文以一个实际业务视角，总结 B 站在使用 KMP 的 Share Logic 和 Share UI 两种模式在三端落地的经验与 infra 工程建设的互补。

值得一提的是，B 站 KMP 工程构建系统选用 Bazel，虽失去官方原生能力，但可基于原子能力自由组合调优，实现多语言混编、依赖注入与分模块导出等功能。

B站借助 Bazel 的 Aspect 机制，在编译时首先提取 Kotlin 模块的元信息，将其作为独立可直接依赖调用的 clang module，为 Swift 模块的编译提供参考，使 Swift 模块能够独立编译通过。随后，B站利用 kotlinc 的编译与导出能力，将相关产物整合为 framework 编译产物，并与 Swift 模块产物共同链接为 iOS 的包产物。  

通过分模块导出能力，B站的 KMP 工程在 iOS 项目中获得了与安卓平台相媲美的自由度。基于公开的技术分享信息，B站是国内乃至世界上首家独立实现 KMP 工程分模块导出的公司。Bazel 的自由组织能力使B站的基建能够领先于 JetBrains，自主扩展工具链能力。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/june/p3.webp)

## 社区活动
### [线下活动｜2025 北京 Kotlin Meetup](https://beijing-kug.github.io/events/kotlin-meetup-2025/)
2025 年 6 月 4 日，2025 北京 Kotlin Meetup 活动顺利举办，这次邀请到来自 JetBrains 欧洲技术专家来跟大家分享 Kotlin 的最新动态和未来发展方向，分享结束后还有 Kotlin 相关的技术交流和圆桌讨论。活动具体内容如下：

- 19:00-19:15 KotlinConf'25 Keynote 观影派对
- 19:15-19:30 KotlinConf'25 Keynote 重点精华回顾
- 19:30-20:30 Kotlin 圆桌讨论
- 20:30-20:45 中场休息
- 20:45-21:20 深入浅出 Kotlin 协程与隐藏彩蛋
- 21:20-21:30 Q&A

### [2025 深圳 Kotlin User Group 线下活动](https://mp.weixin.qq.com/s/U9vP2tPLvsOpfZvRHDwyfg)
今年 KotlinConf 2025 顺利举办，深圳 Kotlin User Group 组织了一场线下活动。活动诚挚欢迎大家报名成为观众，共同聆听分享、参与技术探讨。

- **活动基本信息**：活动于 2025 年 7 月 5 日 举行，地点在深圳市南山区海天一路17-3号软件产业基地4栋B座1楼。参会者若找不到场地，可添加组织者联系方式，微信群也会发地址指引。 
- **活动流程安排**：14:00 - 14:30 为入场及 KotlinConf Keynote 回顾时间；14:30 开始依次是四场技术分享，分别是《深入 Open AIDoc：技术架构与开发细节》，《使用 Flutter + KMP 构建跨平台应用》，《让 Koin 变成自动挡，一键启动！》，《来自社区的 KMP: 一个 Kotlin/CLR 实验》
- **报名相关事宜**：观众报名对活动筹备意义重大，如确定场地、奖品、零食饮料等。有意参加者需填写下方观众报名表，且尽量确保当天能参会再报名。