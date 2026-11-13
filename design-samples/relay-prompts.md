# 2026-11-09 · 继电保护主题 · 赫梅斯生成的两组提示词

用户当时的要求：「给我一张继电保护学习的生图提示词」
第一组出 A/B/C（西方手绘插画），用户回复「都不错，不过这都是一个风格的吧，有没有其他风格」
第二组出五个不同大类，两组都被认可 —— 这批是用户确认过的审美，不是我自己觉得好的

题材固定：电力继电保护学习场景（屏柜、CT、母线、定值）
画幅固定 Wide 16:9（C 版为 Square 1:1）

## A · Sempé 风（温和、学习感，适合博客封面）

```
Style name: Fine-Line Urban Miniature. Reference author/style name:
Jean-Jacques Sempé. Theme color: #E8873A, used only as a single indicator
light. Wide 16:9 cover illustration. Theme: a tiny engineer sits on a
stool before a towering protection panel in a vast empty switchgear hall,
a sprawling one-line diagram unrolling across the floor; a single
amber-orange #E8873A LED glows on the panel above her head.
```

## B · Hopper 风（孤独、夜班，适合技术报告封面）

```
Style name: Nocturnal Industrial Realism. Reference author/style name:
Edward Hopper. Theme color: #FFB23F, used only as a single light source.
Wide 16:9 cover illustration. Theme: one engineer alone in a dim relay
room at 2am, seated before three rows of protection panels that dwarf
her, the room otherwise empty and silent; a single warm #FFB23F desk lamp
illuminates nothing but her notebook and the CT wiring diagram on it.
```

## C · 蓝图线稿（技术图解感，适合教程插图）

```
Style name: Blueprint Line Art. Reference author/style name: Moebius.
Theme color: #1A4D8F, used only on the structural lines. Square 1:1
editorial illustration. Theme: an exploded view of a current transformer
floats in white space, its secondary leads unspooling into thin parallel
lines that converge on a miniature relay; a single deep-blue #1A4D8F
arrow traces the current path from the primary busbar down to the trip
coil.
```

## 1 · Risograph 双色印刷

```
Style name: Two-Color Risograph Print. Reference artist/style name: Risograph
zine culture of the 1980s. Theme color: #FF4D3D, used only on the trip
circuit. Wide 16:9 cover illustration. Theme: two overlapping color layers
of a relay panel diagram, the coral-red layer misregistered by 4mm so its
edges peek out from behind the dark teal layer; a single #FF4D3D line
tracing the trip path runs off the right edge of the page.
```

## 2 · 等距 3D

```
Style name: Clean Isometric 3D. Reference style: modern SaaS illustration.
Theme color: #2DD4BF, used only as glow on active current. Wide 16:9 cover
illustration. Theme: a cutaway isometric block of a switchgear room, three
levels stacked, tiny CTS and relays as clean geometric shapes, thin grey
wires routing between them; a single teal #2DD4BF glow marks the one live
circuit carrying fault current.
```

## 3 · 中国水墨留白

```
Style name: Ink Wash Minimalism. Reference artist/style name: Liang Kai
(梁楷 减笔). Theme color: none — ink only, a single vermilion seal.
Wide 16:9 cover illustration. Theme: a few dry brush strokes suggest a
transmission tower and a sagging conductor across a vast empty paper;
below, a tiny scholar sits cross-legged reading, rendered in a single
continuous line; one small vermilion seal stamp in the lower right corner.
```

## 4 · 木刻版画（德式表现主义）

```
Style name: Woodcut Expressionism. Reference artist/style name: Frans Masereel.
Theme color: #C4342A, used only as the arc flash. Wide 16:9 cover
illustration. Theme: angular knife-cut black shapes form a protection panel
and a hunched engineer, the lines jagged with visible wood grain; a single
violent #C4342A jagged burst marks where a fault arcs across the busbar.
```

## 5 · 极简构成主义（包豪斯几何）

```
Style name: Bauhaus Constructivism. Reference artist/style name: Herbert Bayer.
Theme color: #D62828, used only as a single circle. Wide 16:9 cover
illustration. Theme: a perfect grid of black squares and thin lines forming
an abstract one-line diagram, four circles in the corners representing
buses; one solid #D62828 red circle marks the faulted node, breaking the
grid's symmetry.
```

## 结构分解

两组都严格走五槽位，区别只在锚定维度

- 第一组换画家（Sempé / Hopper / Moebius），媒介都是手绘插画，情绪随画家变
- 第二组换媒介（孔版印刷 / 3D / 水墨 / 木刻 / 构成主义），情绪随媒介变
- 八条的共同点：色值都带使用约束（used only as），主体都是「小人物 + 大设备」，点睛物只有一个

## 可提取的规则

- 同一题材想换风格，**先换锚定维度再换词**：换画家速度最快，换媒介差异最大
- 电气题材适合粗粝媒介（Risograph、木刻），不适合 3D 塑料感 —— 用户后来也认同这条判断
- 中国题材锚定古代画家（梁楷减笔）比写「中国风」有效
- 留白与孤独感是这个用户的稳定偏好，跨风格都成立

## 生成器对应

这 8 条都可复现，`generator.py` 内置风格 sempe / hopper / moebius / riso / isometric / masereel / bayer，水墨那条未内置
