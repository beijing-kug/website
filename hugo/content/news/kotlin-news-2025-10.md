---
title: Kotlin 技术月报 | 2025 年 10 月
date: 2025-10-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

微信内限制外链点击，大家可以点击左下角阅读原文，支持外链查看。
## 最新动态
### Kotlin 2.3.0-Beta2 版本发布
[https://kotlinlang.org/docs/whatsnew-eap.html](https://kotlinlang.org/docs/whatsnew-eap.html)

Kotlin 2.3.0-Beta2 版本发布，主要更新内容包括：

- 语言方面：更稳定的默认功能、一个用于检查未使用返回值的新工具，以及对上下文敏感解析的更改。
- Kotlin/JVM：支持Java 25。
- Kotlin/Native：通过Swift导出改进了互操作性，并且默认启用了对泛型类型边界的类型检查。
- Kotlin/Wasm：默认启用全限定名和新的异常处理提案。
- Kotlin/JS：新的实验性挂起函数导出和LongArray表示。
- Gradle：与Gradle 9.0兼容，以及一个用于注册生成源的新API。
- 标准库：稳定的时间跟踪功能。

```kotlin
fun main() {
    val list = listOf("hello")
    val x = (list as List<Int>)[0]
    println(x) // Now throws a ClassCastException error
}
```

### [新内容一览｜Jetpack Compose 2025 年 8 月版](https://mp.weixin.qq.com/s/rRfwVMYW29Bc-zLJO8tUZw)
Jetpack Compose 2025 年 8 月稳定版发布，核心 Compose 模块达 1.9 版本，主要更新内容包括：

1. **新阴影修饰符**：新增`Modifier.dropShadow()`（内容后方绘阴影，需注意上层内容绘制顺序）和`Modifier.innerShadow()`（形状内部绘阴影，Image等元素需单独处理），区别于原光照模型的`shadow()`
2. **可见性修饰符**：基于`onLayoutRectChanged`推出`onVisibilityChanged`（控制视频播放/动画等可见性关联逻辑）和`onFirstVisible`（记录曝光日志等首次可见场景），支持设置触发条件（最小可见比例/持续时间）
3. **文本样式优化**：`BasicTextField`的`OutputTransformation`支持通过`TextFieldBuffer.addStyle()`添加颜色、字体粗细等样式，可格式化手机号/信用卡号等输入
4. **布局与滚动升级**：`LazyLayout`基本模块稳定；`LazyList/Grid`预提取优化，可通过`LazyLayoutCacheWindow`自定义预提取/保留项目数量；新增`Scrollable2D`支持2D滚动+快速滑动，改进与View的滚动互操作性
5. **崩溃分析与注解**：可选API`Composer.setDiagnosticStackTraceEnabled()`（建议debug环境用）提升崩溃定位效率；新`runtime-annotation`库含`@Stable`等注解，新增`@RememberInComposition`（需`remember`包装）和`@FrequentlyChangingValue`（避免频繁重组）及对应lint检查

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/october/p1.webp)

### [Koin Annotations 2.2: 迄今为止最易于迁移的版本](https://mp.weixin.qq.com/s/V8lrPWI3WKvegO1VGYZjhQ)
Koin Annotations 2.2 现已正式发布！本次更新聚焦于 迁移便利性、互操作性 与 开发安全性，为从 Dagger 或 Hilt 向 Koin 迁移的项目提供更平滑的过渡体验。同时保持简单易用的特性，让开发者专注于 应用逻辑而非工具配置。

Koin Annotations 2.2 的核心特性包括：

- JSR-330 兼容性：完整支持 @Inject、@Singleton、@Named 等 Jakarta 注解，和 Dagger、Hilt 等注入框架使用的标准一致
- Scope 原型（Scope Archetypes）：预定义的 Android 与多平台作用域，如 @ActivityScope 与 @ViewModelScope
- 智能配置：通过 @KoinApplication 与 @Configuration 实现模块自动发现与配置管理
- 内建性能追踪：使用 @Monitor 注解在依赖图中直接集成性能监控

## 精选博客
### [支付宝 MYKMP 原生跨平台解决方案](https://mp.weixin.qq.com/s/1-d3TVyTZMJtzTafyI0GAg)
MYKMP 是支付宝基于社区 Kotlin MultiPlatform 与 Compose MultiPlatform 研发的原生跨平台解决方案，三端（Android、iOS、HarmonyOS）一码地共享业务逻辑与 UI 代码，减少为不同平台编写和维护相同代码所花费的时间，同时保留了原生编程的灵活性和优势。

- **MYKMP研发背景与目标**：随着鸿蒙系统诞生，移动端从双端变为三端，高效迭代并保持业务一致性成为挑战。C++ 存在局限，而Kotlin具有开发者易上手等优势，因此支付宝决定自研MYKMP框架，为三端业务提供统一研发体系，在保证接近或超越原生体验的同时，显著降低整体研发成本 。
 - **基于社区的差异化改进**：针对CMP 和KMP ，MYKMP进行了多方面优化。在性能上，优化包大小、GC、运行时内存占用，提升启动与运行链路及滑动体验；在稳定性方面，解决闪退、ANR等问题；还处理了多指点击态、混合渲染、字体渲染差异、国产Rom兼容性等问题，并支持原生渲染管线与异步渲染。
 - **鸿蒙版本架构与实现**：新增nativeTarget->ohosMain对接目标，自底向上逐层适配鸿蒙系统。设计了三层接入结构及脚手架，降低接入成本。在渲染上屏方面，依托系统XComponent组件对接Skiko完成绘制，并通过监听vsync信号逐帧渲染。跨语言交互上，构建Kotlin与ArkTS互调通道，降低业务使用成本。
 - **MYKMP的应用与未来规划**：目前蚂蚁集团多个APP及支付宝诸多核心场景已上线MYKMP业务，研发成本相较三端独立研发至少降低一半, 且通过 MYKMP 方案解决了过去不同平台业务逻辑实现上的不对齐。

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/october/p2.webp)

![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/october/p5.webp)

### [ByteKMP Compose ArkUI 原生渲染解决方案](https://mp.weixin.qq.com/s/ZTwg9PiYlA_jL3i56LIB0g)
本文详细阐述了从基于Skia的渲染链路切换到ArkUI的Native Drawing渲染接口的技术演进过程。

- **渲染方案转变原因**：Compose官方基于Skia的渲染链路在实际使用中，创建底层渲染通道会增加与屏幕像素成正比的Graph内存，易触发OOM，且引入Skia带来较大包增量。例如在全屏页面中，Skia渲染会增加约55MB的Graph内存。
 - **整体架构设计**：Compose处于最外层，为上层提供UI组件及相关API，管理布局树与更新状态，并封装UI渲染实现。Harko作为OHRender的Kotlin封装库，利用cinterop机制将OHRender的C++ API封装为Kotlin API，同时实现RenderNode和帧回调绑定。OHRender作为图形渲染库，复用Skia头文件与接口设计，通过封装Native Drawing图形接口提供渲染能力。这种架构使得各部分分工明确，协同实现渲染功能。
 - **渲染流程解析**：渲染内容绑定通过编译时注册和运行时绑定完成，利用自定义注解和KSP生成注册代码，在ArkTS和Kotlin侧相互配合获取渲染内容。帧回调方面，RenderNode需在ArkTS层注册帧回调，通过接口注入方式实现帧请求与调用链延续。绘制过程则借助CInterop在C层和Kotlin层切换逻辑，最终将Canvas包装为ComposeCanvas完成渲染。
 - **性能表现**：切换到Native Drawing后，减少约3MB包增量，降低整体内存57.5MB，基本解决多KMP页面的OOM问题。然而，目前在ArkTS堆内存有24MB左右劣化，120FPS上限时依页面复杂程度有10%-15%的FPS劣化。官方计划在下次系统大版本升级补齐缺失的CAPI，有望解决这些性能问题。 

 ![](https://hub.gitmirror.com/raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/october/p4.webp)

 ### [掌握 Compose 性能优化三步法](https://juejin.cn/post/7557390243605364771)
 本文围绕 Android 开发中 Jetpack Compose 的性能优化展开。Compose 虽以简洁 API 和优雅设计受开发者喜爱，但存在性能隐患，如过度重组会拖累性能。文章从性能诊断、原理理解、实战优化、优化验证与团队协作等方面，系统阐述了如何优化 Compose 性能，并总结了 Compose 性能优化的三步法。

1. 测量：用Layout Inspector查看重组次数，用稳定性报告定位不稳定参数，明确问题所在。
2. 优化：优先使用稳定性配置文件，配合强重组和包装类，最小成本解决稳定性问题。
3. 验证：优化后再次用工具确认效果，确保无无意义重组，同时建立团队规范避免复发

### [Kotlin 与 ArkTS 交互性能与效率优化实践](https://mp.weixin.qq.com/s/27_wde0Nybovpb6hnRgghg)
本文围绕字节内部基于KMP构建的客户端跨平台方案ByteKMP展开，重点阐述在抖音鸿蒙版接入KMP时，如何建设Kotlin与ArkTS间的跨语言交互能力。

- **跨语言交互背景与目标**：ByteKMP旨在利用KMP技术实现Android、鸿蒙、iOS三端代码复用。抖音鸿蒙版已基于ArkTS开发部分业务，接入KMP后需实现Kotlin与ArkTS跨语言交互，为开发者提供便捷高效体验，助力ByteKMP业务落地，降低开发成本，提高多端一致性。
- **Kotlin调用ArkTS实现**：鸿蒙系统提供NAPI实现ArkTS与C/C++交互，Kotlin/Native能与C/C++互操作，因此可通过NAPI实现Kotlin/Native与ArkTS互操作。但直接调用NAPI繁琐，故对其封装，将ArkTS对象抽象为Kotlin对象，持有`napi_value`并提供友好操作接口，同时解决`napi_value`生命周期及内存泄漏问题，提升代码简洁性与可读性。
 - **Kotlin代码导出至ArkTS实现**：NAPI支持将native代码导出为TS声明供ArkTS使用。在Kotlin中，为简化导出流程，采用KSP + 注解方案生成桥接代码，解决KSP跨模块访问问题采用MetaInfo机制。
 - **接入使用、线程安全与支持类型**：接入使用时，通过不同注解（`@ArkTsExportProperty`等）导出顶层属性、方法、类、枚举、接口等，框架自动生成ArkTS侧代码声明。对于线程安全，因KN侧调用`@ArkTsExportInterface`方法涉及NAPI操作需在主线程执行，框架提供`@ArkTsThreadSafe`注解和`safeSuspend()`扩展方法实现自动线程切换。
 - **性能优化与未来规划**：Kotlin Native运行时系统及与NAPI交互带来内存管理开销，字符串转换场景尤甚。为优化性能，引入`@GCUnsafeCall`声明C++实现可信，减少包装代码开销，优化后长字符串转换耗时降低90%。未来规划实现ArkTS与KMP间字符串共享，避免拷贝，解决多线程限制问题，抹平平台差异。 