---
title: Kotlin 技术月报 | 2023 年 5 月
date: 2023-05-30
tags: [技术月报]
---

最近举办的 KotlinConf 与 Google I/O 上都有不少 Kotlin 技术的分享，同时最近一个月各地的 Kotlin 组织也举办了不少活动

为了帮助社区的小伙伴们更好地了解 Kotlin 相关的最新动态，我们决定尝试使用月报的形式，整理展示最近一个月的 Kotlin 技术动态。

月报的主要内容包括：整理展示最近一个月的最新技术动态，精选博客文章，社区活动等

## 最新动态
### KotlinConf 2023 回放来了
KotlinConf 2023 的所有回放已出，所有回放列表可见：[https://kotlinconf.com/talks/](https://kotlinconf.com/talks/)

本次大会除了开场与闭幕讨论，共有 69 场分享，可以说是一场盛宴了，我整理统计了一下各个分享的主题

| 主题               | 分享数 |
| ---------------- | --- |
| Kotlin 跨平台       | 21  |
| Compose 相关分享     | 10  |
| Kotlin 在服务端的应用   | 9   |
| Kotlin 协程相关分享    | 8   |
| Kotlin 编译器与编译器插件 | 8   |
| Kotlin 与测试       | 4   |
| Kotlin 语言特性相关分享  | 4   |
| Kotlin 与函数式编程    | 3   |
| Kotlin 用于数据科学    | 2   |
| Kotlin 与游戏    | 2   |
| Kotlin 与 Gradle    | 1   |
| Kotlin 与 AI   | 1   |

从各个主题的分享数量也可以看出 Kotlin 在各个方向的火热程度

- Kotlin 跨平台相关分享是最多的，可以看出这也是 Kotlin 团队下一步要重点发展的方向
- 越来越多的人开始使用 Compose ，据统计，在 top 1000 的 Android 应用中，有 21% 的应用使用了 Jetpack Compose
- 虽然据统计大约 66% 的 Kotlin 开发者是 Android 开发者，但服务端开发者使用 Kotlin 的比例也在逐渐上升，这应该也是 Kotlin 团队想要发力的方向
- 这次大会 Kotlin 编译器与编译器插件相关的分享也比较多，应该是因为 K2 编译器的逐渐成熟，即将发布 beta 版本
- 国外很多团队重视代码测试，而不仅仅是需求开发，因此 Kotlin 在测试方面的分享也较多

### Google I/O : Android 版 Kotlin 的新动态
[What's new in Kotlin for Android](https://io.google/2023/program/a3250bf1-dab1-4752-82bb-4412afb94d66/intl/zh/)：在本次 Google I/O 大会上，介绍了今年将为 Android 开发者发布的 Kotlin 更新，主要包括

- 即将推出的 K2 编译器
- KTS 成为 Gradle 构建默认设置
- Kotlin 符号处理 (Kotlin Symbol Processing) 的改进
- Kotlin Multiplatform 的一些新动态

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/may/p9.jpg)

其中最受大家关注的可能就是 K2 编译器了，它可以极大的提升编译速度，优化开发体验

在 Kotlin 1.8.20 中，已经可以通过设置`languageVersion = "2.0"`来开启 K2 了，而 K2 编译器也将在 Kotlin 1.9.x 中 Beta，并最终在 Kotlin 2.0 版本中稳定

## 精选博客

## 社区活动
### KotlinConf Global
KotlinConf Global 是 KotlinConf 在全球各个城市的拓展延伸活动，促进各地 Kotlin 开发人员之间的联系，最近全国各个城市也举办了相关活动

- [上海线下活动｜2023 KotlinConf Global Shanghai Meetup 期待与您见面](https://juejin.cn/post/7194755687531380773)
- [活动回顾 | 2023 KotlinConf Global 北京分享会](https://beijing-kug.github.io/events/kotlinconf-callback/)
- [深圳 KotlinConf Global 2023](https://szkug.github.io/website-hugo/events/event_20230131/)
- [西安线下活动｜2023 KotlinConf Global Xi’an Meetup 期待与您见面](https://kotlinxa.com/2023-kotlinconf-global-xian-meetup)

### 新成立的 Kotlin User Group
最近全国各个城市也新创建了一些 KUG，欢迎各个城市的 Kotlin 爱好者加入

- [贵州 Kotlin 用户组](https://juejin.cn/user/2946346893987704/posts)
- [郑州 Kotlin 用户组](https://zhengzhou-kug.github.io/)

### Kotlin 炉边漫谈第 8 期
[《Kotlin 炉边漫谈》第 8 期：阿里和美团的 Kotlin Multiplatform 应用案例 | 播客](https://mp.weixin.qq.com/s/G9k-S6YbiGKlsAw1_NGJ3A)

由来自阿里巴巴的曹立成和美团的刘银龙两位嘉宾，跟大家一起分享 Kotlin Multiplatform 的落地实践经验

横向对比了 Flutter,  Kotlin Multiplatform, React Native, 以及国内大厂自研跨平台框架等的优缺点及应用场景，同时分享了在做技术选型时的经验分享，非常精彩，不容错过

![](https://raw.gitmirror.com/RicardoJiang/resource/main/2023/may/p8.png)