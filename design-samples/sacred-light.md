# 神圣光影 · 暗黑童话（诺皮克NovaPix）

来源：抖音 @诺皮克NovaPix 图文作品，2026-11-10 发布
主题：神圣光影氛围，冷漠、神性、怜悯，用光勾出的意境

## 原始提示词（原文照录）

```
CG digital illustration of a female character, attractive female. Dark fairytale storytelling,
concept art, dramatic silhouette design, deep charcoal black, desaturated silver and ghostly blue
color palette, refined painterly textures, theatrical cinematic lighting, psychological mystery,
visual symbolism of innocence and forbidden power, a captivating story frozen at the moment of
transformation --chaos 65 --ar 1:2 --raw --profile jw3b2rz --stylize 400 --hd
```

## 效果图（7863 移植验证）

```
https://jsd.1143520.xyz/gh/manji1143/picx-images-hosting@master/paste/sample-sacred-light.png.avif
```

用下面「移植到非 MJ 模型的写法」跑的一次，风格成立：冷银边缘光、炭黑环境、幽蓝雾、剪影人物、大面积负空间都对

## 结构分解

```
主体层      CG digital illustration, female character, attractive female
叙事层      Dark fairytale storytelling, concept art
构图层      dramatic silhouette design            剪影优先，形体靠轮廓读
色板层      deep charcoal black + desaturated silver + ghostly blue   三色，无暖色
质感层      refined painterly textures            细笔触，不靠 3D 渲染
光影层      theatrical cinematic lighting         舞台式主光，暗部大面积留黑
情绪层      psychological mystery                 不解释、不露全脸
符号层      innocence and forbidden power         纯真 + 禁忌，冲突造张力
时间层      frozen at the moment of transformation 定格在转变瞬间
```

## 参数层

```
--chaos 65          变体差异大，构图更野
--ar 1:2            竖长构图，人物占比小、负空间大
--raw               不加 MJ 默认美学滤镜，保留冷硬感
--profile jw3b2rz   个人风格档案（MJ 私有，等于一套调好的审美向量）
--stylize 400       风格化中等偏上，不糊不呆
--hd                更细的渲染与纹理
```

## 跨模型怎么搬

```
能搬   叙事层、构图层、色板层、光影层、情绪层、符号层 —— 纯文字描述，任何模型都吃
搬不动 --profile（MJ 私有风格档案）、--chaos / --raw / --stylize / --hd（MJ 参数）
替代   需要固定风格时，用自己的参考图做图生图，或在提示词里把色板写成具体色值
```

## 移植到非 MJ 模型的写法（已验证可用）

```
Cinematic concept art of a lone female figure, viewed in silhouette from behind,
standing in a vast dark hall. Deep charcoal black environment, desaturated silver rim light,
ghostly pale blue haze. Theatrical single-source lighting from above, most of the frame in shadow.
Refined painterly brushwork, muted film grain. Psychological, sacred, restrained;
symbolism of innocence meeting forbidden power. The moment just before transformation.
Vertical 1:2 composition, large negative space.
```

## 用法提示

```
竖版 1:2 适合手机壁纸、公众号首图、海报侧栏
要更强神性感：把 ghostly blue 换成 cold white，并加 cathedral light shafts
要更暗黑：加 rust-red accent 一处，只给眼睛或手中物
```
