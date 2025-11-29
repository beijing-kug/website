---
title: Kotlin 技术月报 | 2025 年 11 月
date: 2025-11-30
tags: [技术月报]
---

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客，精选视频以及社区活动等方面的信息。

微信内限制外链点击，大家可以点击左下角阅读原文，支持外链查看。
## 最新动态
### Kotlin 最新动态
[Kodee’s Kotlin Roundup: Too Much News to Keep Quiet About](https://blog.jetbrains.com/kotlin/2025/11/kodees-kotlin-roundup-november-edition/)

- **Kotlin 2.3.0-RC版本发布**：Kotlin 2.3.0-RC已正式推出，对于广大开发者而言，这意味着可率先探索该版本带来的全新功能以及各项优化改进之处。开发者可以提前熟悉这些新特性，为后续稳定版本的发布做好充分准备，以便在正式版本推出时能更高效地应用于实际开发项目中。 
- **Kotlin多平台文档更新**：Kotlin多平台文档现已正式迁移至kotlinlang.org，新平台不仅增加了在语言和多平台文档间切换的功能，而且导航更加流畅，结构更为清晰。开发者能更轻松地找到所需内容，极大地提升了获取信息的效率，这对日常开发中频繁查阅文档的开发者来说是一个重大利好。 
- **Reddit上的AMA活动**：Kotlin团队将在Reddit上开展为期一周的AMA（Ask Me Anything）活动。开发者们若有关于Kotlin语言设计、工具使用，甚至对未来发展方向等方面的疑问，都可借此机会向Kotlin团队直接提问。这为开发者与Kotlin开发团队搭建了一个直接沟通交流的桥梁，有助于深入了解Kotlin相关知识。 
- **Kotlin多平台学习之旅**：从11月10日开始至12月8日结束，有一个为期四周的Kotlin多平台学习活动。活动内容丰富，涵盖精心挑选的学习资源、免费的Compose Multiplatform速成课程、KotlinConf的精彩演讲，最后还有聚焦职业发展的网络研讨会。这为想要提升Kotlin多平台技能的开发者提供了系统且全面的学习机会。 
- **安卓开发者直播活动**：12月3日将举办一场针对安卓开发者的直播，主题是如何利用Kotlin Multiplatform（KMP）提升职业技能。直播将从实际应用出发，展示如何突破移动开发的局限，成长为全栈Kotlin多平台专家，包括需要掌握的概念、招聘经理的关注点以及如何开启第一个出色的KMP项目等内容。 
## 精选博客
### Compose Stability Analyzer 插件发布
[https://plugins.jetbrains.com/plugin/28767-compose-stability-analyzer](https://plugins.jetbrains.com/plugin/28767-compose-stability-analyzer)

Compose Stability Analyzer 插件发布，支持在 IDE 中直接为 Jetpack Compose 函数提供实时稳定性分析, 功能特点：

- 悬停工具提示（Hover Tooltips）：查看详细的稳定性信息
- 侧边栏图标（Gutter Icons）：为可跳过的可组合项（skippable composables）提供可视化标识
- 行内提示（Inline Hints）：支持参数级别的稳定性注解
- 代码高亮（Code Highlighting）：对不稳定参数进行高亮显示

![](https://raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/november/p8.png)

### [AI Agent 编码助手实战：面向 KMP 原生跨端实现研发提效](https://mp.weixin.qq.com/s/F2Sger6KUNio6TNYIkEivw)
本文基于支付宝技术部在 QCon 的演讲整理，围绕如何通过 AI Agent 实现 KMP 原生跨端提效展开。

- **KMP原生跨端框架**：KMP原生跨端框架优势显著，可减少不同平台开发工作量。支付宝在此基础上做了诸多能力延展与优化，如跨端基座增强对接鸿蒙系统能力，MYKMP突破性支持鸿蒙并进行性能优化，MYCMP在iOS和鸿蒙提供两种渲染管线等，业务应用覆盖多个业务，PV量达亿级，已成为主要技术栈助力业务提效。
- **KMP跨端研发现状痛点**：当前KMP应用开发各阶段存在研发难题，如界面开发对Compose不熟悉、社区支持有限，逻辑开发对KMP及鸿蒙特定用法上手困难等。调研发现，现有热门编码工具，内部的仅适用于前端技术栈，外部的虽支持KMP技术栈但无法融合内部工程研发体系且缺乏支付宝终端中间件知识，亟需一款适配的AI Agent编码工具。
- **KMP编码助手之帮助上手Compose**：为助开发者上手Compose，提供设计稿生码和图生码。设计稿生码将设计稿经系列转换为Compose源码再由大模型优化，优点是还原精度高，缺点是不支持基于AntUI组件库还原且设计稿规范影响效果。图生码最初模型直出方案问题多，后采用后训练方案，经数据构造、模型训练、后处理增强，效果更佳，预计年底开放高阶AntUI组件识别。
- **KMP编码助手之帮助上手KMP**：为帮助开发者快速获取KMP知识，提供基于RAG检索的智能问答能力。实践中解决源数据复杂、切片效果不理想等问题，如用自建Markdown生成助手Agent处理源数据，以FAQ形式替换切片等。同时，通过Agent工作流等方式帮助开发者解决KMP模块构建失败、三端闪退排查及应用框架接入成本高等困难。 

![](https://raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/november/p10.webp)
![](https://raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/november/p11.webp)
![](https://raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/november/p12.webp)

### [KMP 与 RN、Flutter 在平台 API 调用上的对比](https://mp.weixin.qq.com/s/Drz5YRiW2BhIGMi-Kv25PA)
在 React Native 和 Flutter 中，存在一种普遍的开发模式：

1. 开发者需要某项原生功能。
2. 意识到桥接/通道的复杂性。
3. 心想：“一定有人已经为此写好了封装库。”
4. 开始在 npm 或 pub.dev 上搜索。
5. 要么找到一个库（从而引入依赖），要么放弃。
这种模式阻碍了创新，开发者因为跨平台交互的成本过高而避免使用原生 API，他们选择等待库的作者来完成繁重的工作。

每一个依赖都带来了额外的负担：

- 增大了包体积：为你的应用增加了代码量。
- 加重了维护负担：你必须依赖库的作者来及时更新。
- 引发版本冲突：当不同库需要不同版本时，可能导致“依赖地狱”。
- 带来了供应链风险：你将应用的安全性托付给了库的维护者。
- 增加了调试的复杂性：问题可能隐藏在第三方代码深处。

而在 KMP 中，模式截然不同：

1. 开发者需要某项原生功能。
2. 在共享代码中编写 expect fun。
3. 在特定平台的源码中实现 actual 函数。
4. 整个过程仅需几分钟，且零依赖。

这使得开发者能够直接利用平台的能力，无需等待，无需依赖，无需应对复杂性。

## 社区活动
### [重磅官宣！2025 Kotlin 中文开发者大会定档 12 月 6 - 7 日，两日议题前瞻！](https://mp.weixin.qq.com/s/u2jFGU4bkIMScCbUbLw3mg)
Kotlin 中文开发者大会是由 JetBrains 团队与中文 Kotlin User Group 合作举办的免费线上直播活动，自 2021 年起一路成长，如今已成为 Kotlin 中文社区中最具影响力、最受开发者期待的年度线上盛会。随着 K2 编译器正式发布、语言特性持续演进，Kotlin 在性能、稳定性与工具链体验上迈向新的里程碑。

今年大会将于 12 月 6 日（六）及 12 月 7 日（日）进行连续两天的线上直播，内容聚焦 Kotlin 语言最新特性、跨平台（KMP）在大型复杂业务中的落地经验、在互联网企业中的工程化实践、与新兴 AI 技术栈的结合方式，以及跨端性能优化与工具链成熟度等主题。同时，也邀请多位来自社区的贡献者分享社区项目成果，展示 Kotlin 在真实生态中的多样化应用与创新活力。随着 Kotlin 的发展愈发成熟，这场大会将是获取第一手前沿趋势、深入理解企业级实践、并掌握 Kotlin 全生态进展的绝佳机会。

![](https://raw.githubusercontent.com/RicardoJiang/resource/refs/heads/main/2025/november/p13.png)