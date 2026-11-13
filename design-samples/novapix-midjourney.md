# 2026-11-13 · 诺皮克NovaPix 两组 Midjourney 风格码样本

来源：用户 2026-11-13 提供两条抖音笔记，明确说「这两个视频的审美我很喜欢」
作者：诺皮克NovaPix（粉丝 1.6 万 · 获赞 14.8 万）
取法：抖音分享页正文里的完整提示词，原文照录不改

## 样本一 · 蛮山野侠 1960（西部片 × 日系手绘动画）

**原始提示词**

```
Digital animation style illustration. A girl in a dark range coat gripping the bridle of a restless paint horse, head turned sharply over her shoulder, alert moment, complex background, a sun-blasted scrub flat, a second saddled horse behind, dry brush and rock, a low ridgeline, a haze of kicked dust in the heat. Tight medium shot from waist up with the horse's neck crossing the frame, shallow focus on her face, hard high-noon sun with warm reflected ground bounce, cinematic lighting, and deep shadows. --chaos 85 --ar 16:9 --raw --sref 3285819583 --profile 2et85rv --stylize 400 --hd
```

**作者自述的取材**：巴德·伯蒂彻《Comanche Station》(1960) 的镜头语言
提取的是「藏在镜头里的视觉秩序」——人物与环境的空间关系、宽银幕构图、正午强光、荒野孤独感

**效果图**：抖音笔记 7707123535868648378（16 张）

**结构分解**

- 风格命名：Digital animation style illustration（媒介锚定，不写 beautiful/cinematic masterpiece 这类空词）
- 锚定方式：媒介（手绘动画）+ 时代（1960 西部片摄影）
- 颜色约束：不指定色值，靠光源约束——hard high-noon sun with warm reflected ground bounce
- 画幅用途：16:9 + Tight medium shot from waist up（先给构图再给景别）
- 场景结构：三组对比——渺小人影/荒原（大小）、近景马颈/远山脊（高低）、单一动作 head turned sharply（点）

**可提取的规则**

- 先定镜头（景别 + 机位 + 前景遮挡物），再写内容，画面稳定性来自镜头语言而不是形容词
- 光影只写一种主光 + 一种反弹光，额外光线一律不加
- 材质词（颗粒 / 手绘笔触）放在风格层，不进场景层
- --raw 必须加，否则 MJ 会把硬光柔化、把颗粒抹平

## 样本二 · 玄幻 × 奇幻（黄青双色大场景）

**原始提示词**

```
a digital sci fi landscape artwork depicting a tiny solitary figure standing on a glowing yellow and orange terrain. dark, jagged, slate blue rock formations border the bottom left and right sides of the composition. a massive cliff face towers on the right side. swirling, fluid like bright yellow clouds swirl upwards around the central opening, a dark teal, starry sky. a glowing crescent moon sits centered in the upper third of the sky. the overall color palette consists of contrasting dark teal, slate gray, vivid yellow, and fiery orange. --chaos 10 --ar 1:2 --raw --sref 3424241539 --profile 7hjaxck --stylize 400
```

**作者自述的做法**：用 Style Creator 做了原创风格码，主调黄、暗调青，配自用 P 值保证人物审美统一

**效果图**：抖音笔记 7705621931357914853（22 张）

**结构分解**

- 风格命名：a digital sci fi landscape artwork（题材 + 媒介，不用风格形容词）
- 锚定方式：自建 sref 风格码（--sref 3424241539 + --profile 7hjaxck），文字层只描述构造
- 颜色约束：三种色名 + 一句 the overall color palette consists of（明写配色表，比逐项形容词稳）
- 画幅用途：1:2 竖版 + 主体居中偏上（moon sits centered in the upper third）
- 场景结构：极小人物 vs 巨大崖壁（大小）、左下右下岩石框住画面（点面）、

**可提取的规则**

- 想稳定出同一套审美，靠 sref 码而不是堆词；文字部分只负责构图与配色表
- 双色系统一画面：一个主调 + 一个暗调，其余色只做过渡（slate gray）
- 构图用「边框元素 + 中心主体 + 上部光源」三段式，竖向画幅尤其成立
- chaos 低（10）求统一，chaos 高（85）求一套图里的差异感，按用途选

## 两个样本的共同手法（跨模型可迁移）

- 单一色彩主题压全场，其余颜色全部降饱和
- 极小主体 + 巨大环境，撑出孤独感与叙事张力
- 光只给一种：正午硬光或单一天体，阴影做深不做柔
- 质感统一加颗粒，让数字图带胶片或手绘的脏感
- 参数只做三件事：定风格码（sref/profile）、定强度（stylize）、定差异度（chaos）

## 跨模型说明

`--sref` / `--profile` / `--stylize` / `--chaos` 是 Midjourney 私有参数，换到混元、豆包等模型完全无效
要迁移只能拆文字层（镜头 + 配色表 + 对比结构），参数层另找替代（参考图 / 风格 LoRA）
