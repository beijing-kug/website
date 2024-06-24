---
title: Kotlin 技术月报 | 2024 年 6 月
date: 2024-06-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

## 最新动态
### KotlinConf 分享回放已全部发布
[All KotlinConf Recordings Are Now Available. Enjoy!](https://blog.jetbrains.com/kotlin/2024/06/kotlinconf24-recordings/)

现在，您可以在 KotlinConf 官方网站上找到 KotlinConf’24 的所有回放：[https://kotlinconf.com/talks/](https://kotlinconf.com/talks/)

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/june/p21.jpg)

### Kotlin 2.0.20-Beta1 版本已发布
Kotlin 2.0.20-Beta1 版本已发布，更新内容也主要是一些 bug 修复：[https://github.com/JetBrains/kotlin/releases](https://github.com/JetBrains/kotlin/releases)

你可能会好奇，为什么 2.0.10 还没有发布就发布了 Kotlin 2.0.20-Beta1? 还会有 2.0.10 吗?

自 Kotlin 2.0.0 起，Jetbrains 发布以下类型的版本：

- 语言版本（2.x.0），带来语言的重大变化并包括工具更新。每6个月发布一次。
- 工具版本（2.x.20），在语言版本之间发布，包括工具更新、性能改进和错误修复。在相应的语言版本发布后3个月发布。
- 错误修复版本（2.x.yz），包括针对工具版本的错误修复。这些版本没有确切的发布时间表。

对于每个语言和工具版本，Jetbrains 还会发布几个预览（EAP）版本，供您在正式发布之前尝试新功能。因此不必担心，Kotlin 2.0.10 版本将随后发布。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/june/p20.jpg)

## 精选博客
### [采用 Kotlin Multiplatform 做跨平台](https://juejin.cn/post/7375586227984711689)
KMP 作为跨平台框架，到底有没有技术生命力，是否要选择它来作为自己未来的发展方向？本文借鉴左耳朵耗子在“如何选择技术”中提出的观点来考虑：

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/june/p22.png)

### [Kotlin Symbol Processing使用与原理剖析](https://juejin.cn/post/7378079761817862181)
Kotlin Symbol Processing (KSP) 是一个可用于开发轻量级编译器插件的API，与Kotlin Annotation Processing Tool（KAPT）相似，但是却可以更高效地处理注解，并提供更好的性能，使用 KSP 的注释处理器的运行速度最多可达两倍，而且可以支持多平台。

本文详细介绍了 KSP 的使用与从 Kapt 迁移过来的步骤，具体包括如下内容：

- 为什么选择KSP
- KSP能得到什么
- KAPT迁移到KSP
- KSP 的使用
- KSP 增量编译
- KSP 对 Java 的支持

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/june/p23.jpg)

### [让 Kotlin Inline 可以构造 NewInstance](https://juejin.cn/post/7382931501610647592)
Kotlin 的 Inline 是一个很重要的能力，它能够极大的简化我们的开发，我们能够使用 Inline 做很多事情，同时 reified 也是一个重要的能力，它能够让类型“实”化，提供更加安全的 as, ::class 等在常规的 Java 泛型中不安全的能力。但 reified 缺失了一个重要的能力：构造一个新对象。

而在这种能力的缺失下，通常来说我们会使用 ::class.java 拿到对应 Java Class 之后反射 newInstance 来创建对象，我们都知道反射是低效的。

本文介绍了如何使用 Kotlin 编译器插件实现让 Kotlin Inline 可以构造 NewInstance，更多详细信息可见：[https://github.com/zsqw123/kotlin-newInstance](https://github.com/zsqw123/kotlin-newInstance)

```kotlin
inline fun <reified T : ViewModel> viewModel(): ReadOnlyProperty<Activity, T> {
    val factory = { newInstance<T>() }
    return ReadOnlyProperty { _, _ -> factory() }
}

class MyActivity : Activity() {
    val fooViewModel: FooViewModel by viewModel()
}
```

### 联合类型可能为类型系统带来的问题
[The problem of union types for type systems](https://kt.academy/article/union-types-into)

Kotlin 将引入一种有限形式的联合类型: Union types for errors。很多人会好奇，为什么 Kotlin 不引入完整的联合类型支持呢？

联合类型（如 Int | String）可以提高代码的表达能力，但也增加了类型系统的复杂性，尤其是在处理泛型时。事实上，在存在联合类型时，类型推导是 NP-hard 的。更多详细信息可见：[Revamping and Extending Kotlin's Type System | Ross Tate](https://www.youtube.com/watch?v=3uNpmhHwkuQ&t=182s)

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/june/p24.webp)

### [工程化视角的 Kotlin Multiplatform核心解读及优化](https://mp.weixin.qq.com/s/nRmwpSGlFgvROs1lRVuAIw)
本文以工程化视角介绍了哔哩哔哩技术团队在使用 Kotlin Multiplatform 技术时的实践与优化方案。

文章首先介绍了Kotlin作为编程语言的特点，包括默认可见性为public、编译器的功能，以及插件系统在扩展语言能力方面的作用。

同时文章总结了 KMP 在工程化中的应用和挑战，并提出了B站针对KMP的优化实践，包括构建系统从Gradle替换为Bazel，以及针对Kotlin-Core的能力复原和生态融合。文章指出，虽然这一过程带来了额外的学习和维护成本，但整体上提高了工程的可靠性和效率。

## 精选视频
### Kotlin 2.0 都有哪些新特性？
[Kotlin 2.0 : K2 编译器的更新](https://www.bilibili.com/video/BV19S411w7uc/)

本视频细致的讲解了 Kotlin 2.0 都做了哪些更新，带来了哪些新特性。具体包括以下内容：

- Kotlin K2 编译器有哪些更新？
- Kotlin 跨平台有哪些更新？
- Gradle 相关有哪些更新?
- Kotlin 标准库有哪些更新？

### 如何让 Compose 运行到智能台灯开关上？
[Compose UI for... a light switch | Jake Wharton](https://www.youtube.com/watch?v=D0P5Lb-2uCY&t=269s)

Compose UI 可以运行在安卓、iOS、桌面和网页上，但在这次分享中，Jake Wharton 讲述了如何在基于嵌入式 Linux 的智能灯开关上运行 Compose UI。

本次分享详细介绍了发现设备后门的过程，如何在设备上运行自定义软件，如何在嵌入式 Linux 上运行 Kotlin 和 Compose UI，最后为开关开发我们自己的 App。

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/june/p26.png)

## 社区活动
### KotlinConf Global 相关活动
随着 KotlinConf 活动圆满落幕，全国各地，包括北京、上海、深圳等城市的 KotlinConf Global 分会场活动也接踵而至。以下是一些活动的链接。

- [活动回顾 | 2024 KotlinConf Global 北京分享会](https://mp.weixin.qq.com/s/4gl1fg0Gt0HopPPN1PT16w)
- [深圳线下活动｜KotlinConf’24 Global](https://mp.weixin.qq.com/s/sa0iHGbSTyJMExgT05p1pA)
- [上海线下活动｜KotlinConf Global Shanghai 2024](https://mp.weixin.qq.com/s/rRupsWHvxUqR_8Yx6M-XFg)

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2024/may/kotlinconf-global.webp)