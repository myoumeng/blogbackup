---
title: 学习CSS自定义样式，让博客焕然一新（四）
tags:
  - CSS
  - 学习笔记
categories:
  - uncategorized
abbrlink: 39396
date: 2019-02-01 12:49:11
---

{% cq %}
咳咳，一篇笔记，还是不要超过800行的好，太长了，也看不赢，书写的工具也折腾不起~所以，学习css，就这样持续到了第四章~

第三章里面，我们主要学了伪类、伪元素、导航栏、下拉菜单、提示工具、图像透明度。
接下来要讲属性选择器、边框、背景、渐变、文本效果、过渡。
{% endcq %}
<!--more-->
目录如下：

<!-- toc -->

# 属性选择器

具有特定属性的HTML元素样式
具有特定属性的HTML元素样式不仅仅是class和id。

注意：IE7和IE8需声明!DOCTYPE才支持属性选择器！IE6和更低的版本不支持属性选择器。

## 属性选择器
下面的例子是把包含标题（title）的所有元素变为蓝色：
```
[title]
{
    color:blue;
}
```

## 属性和值选择器
下面的实例改变了标题title='runoob'元素的边框样式:
```
[title=runoob]
{
    border:5px solid green;
}
```

## 属性和值的选择器:多值
下面是包含指定值的title属性的元素样式的例子，使用（~）分隔属性和值:
```
[title~=hello] { color:blue; }
```
下面是包含指定值的lang属性的元素样式的例子，使用（|）分隔属性和值:
```
[lang|=en] { color:blue; }
```

## 表单样式
属性选择器样式无需使用class或id的形式:
```
input[type="text"]
{
    width:150px;
    display:block;
    margin-bottom:10px;
    background-color:yellow;
}
input[type="button"]
{
    width:120px;
    margin-left:35px;
    display:block;
}
```

# 边框
用 CSS3，你可以创建圆角边框，添加阴影框，并作为边界的形象而不使用设计程序，如 Photoshop。

在本章中，您将了解以下的边框属性：

border-radius
box-shadow
border-image

属性|	说明
:-:|:-:
border-image	|设置所有边框图像的速记属性。
border-radius	|一个用于设置所有四个边框- -半径属性的速记属性
box-shadow|	附加一个或多个下拉框的阴影

## border-radius圆角
在 CSS2 中添加圆角棘手。我们不得不在每个角落使用不同的图像。
在 CSS3 中，很容易创建圆角。
在 CSS3 中 border-radius 属性被用于创建圆角：

这是圆角边框！
```
在div中添加圆角元素：

div
{
border:2px solid;
border-radius:25px;
}
```

## box-shadow盒阴影
CSS3 中的 box-shadow 属性被用来添加阴影:
在div中添加box-shadow属性
```
div
{
box-shadow: 10px 10px 5px #888888;
}
```

## border-image边界图片
有了 CSS3 的 border-image 属性，你可以使用图像创建一个边框：

border-image 属性允许你指定一个图片作为边框！ 用于创建上文边框的原始图像：
在 div 中使用图片创建边框:
```
div
{
border-image:url(border.png) 30 30 round;
-webkit-border-image:url(border.png) 30 30 round; /* Safari 5 and older */
-o-border-image:url(border.png) 30 30 round; /* Opera */
}
```

# border-image属性
默认值:	none 100% 1 0 stretch

语法
`border-image: source slice width outset repeat|initial|inherit;`
值	|描述
:-:|:-:
border-image-source	|用于指定要用于绘制边框的图像的位置<br>`border-image-source: none(没有图像被使用)|image(边框使用图像的路径);`
border-image-slice	|图像边界向内偏移
border-image-width	|图像边界的宽度
border-image-outset	|用于指定在边框外部绘制 border-image-area 的量
border-image-repeat	|用于设置图像边界是否应重复（repeat）、拉伸（stretch）或铺满（round）。

## border-image-slice指定图像的边界向内偏移
语法
`border-image-slice: number|%|fill;`

指定图像的边界向内偏移：
```
div
{
border-image-source: url(border.png);
border-image-slice: 50% 50%;
}
```

注意: 此属性指定==顶部，右，底部，左边缘==的图像向内偏移，分为九个区域：四个角，四边和中间。
图像中间部分将被丢弃（完全透明的处理），除非填写关键字。
如果省略第四个数字/百分比，它和第二个相同的。
如果也省略了第三个，它和第一个是相同的。
如果也省略了第二个，它和第一个是相同的。

## border-image-outset在边框外部绘制
语法
`border-image-outset: length(设置边框图像与边框（border-image）的距离，默认为0。)|number(代表相应的 border-width 的倍数);`
border-image-outset用于指定在边框外部绘制 `border-image-area` 的量,包括上下部和左右部分。
如果第四个值被省略，它和第二个是相同的。
如果也省略了第三个，它和第一个是相同的。
如果也省略了第二个，它和第一个是相同的。
不允许border-im-outset拥有负值。
设置border-img-outset属性：

```
div
{
    border-image-source: url(border.png);
    border-image-outset: 30 30;
}
```

## border-image-repeat重复图像的方式
设置重复图像的方式：
```
div {
    border-image-source: url(border.png);
    border-image-repeat: repeat;
}
```
border-image-repeat 属性用于图像边界是否应重复（repeated）、拉伸（stretched）或铺满（rounded）。

语法：
`border-image-repeat: stretch（默认值。拉伸图像来填充区域）|repeat（平铺（repeated）图像来填充区域。）|round（类似 repeat 值。如果无法完整平铺所有图像，则对图像进行缩放以适应区域。）|space（类似 repeat 值。如果无法完整平铺所有图像，扩展空间会分布在图像周围）|initial|inherit;`

# 背景
CSS3中包含几个新的背景属性，提供更大背景元素控制。

在本章您将了解以下背景属性：

background-image
background-size
background-origin
background-clip
## background-image添加背景图片
CSS3中可以通过background-image属性添加背景图片。

不同的背景图像和图像用逗号隔开，所有的图片中显示在最顶端的为第一张。
```
#example1 {
    background-image: url(img_flwr.gif), url(paper.gif);
    background-position: right bottom, left top;
    background-repeat: no-repeat, repeat;
}
```

可以给不同的图片设置多个不同的属性
```
#example1 {
    background: url(img_flwr.gif) right bottom no-repeat, url(paper.gif) left top repeat;
}
```

## background-size背景图像的大小
background-size指定背景图像的大小。CSS3以前，背景图像大小由图像的实际大小决定。

CSS3中可以指定背景图片，让我们重新在不同的环境中指定背景图片的大小。您可以指定像素或百分比大小。

你指定的大小是相对于父元素的宽度和高度的百分比的大小。
```
div
{
    background:url(img_flwr.gif);
    background-size:80px 60px;
    background-repeat:no-repeat;
}
```

伸展背景图像完全填充内容区域：
```
div
{
    background:url(img_flwr.gif);
    background-size:100% 100%;
    background-repeat:no-repeat;
}
```
## background-Origin背景图像的位置区域
background-Origin属性指定了背景图像的位置区域。

content-box, padding-box,和 border-box区域内可以放置背景图像。
```
在 content-box 中定位背景图片：

div
{
    background:url(img_flwr.gif);
    background-repeat:no-repeat;
    background-size:100% 100%;
    background-origin:content-box;
}
```
## 多个背景图像
CSS3 允许你在元素上添加多个背景图像。

在 body 元素中设置两个背景图像：
```
body
{
    background-image:url(img_flwr.gif),url(img_tree.gif);
}
```
## background-clip背景剪裁
CSS3中background-clip背景剪裁属性是从指定位置开始绘制
```
#example1 {
    border: 10px dotted black;
    padding: 35px;
    background: yellow;
    background-clip: content-box;
}
```
语法
`background-clip: border-box(默认值。背景绘制在边框方框内（剪切成边框方框）。)|padding-box(背景绘制在衬距方框内（剪切成衬距方框）。)|content-box(背景绘制在内容方框内（剪切成内容方框）。);`


# 渐变（Gradients）

CSS3 渐变（gradients）可以让你在两个或多个指定的颜色之间显示平稳的过渡。
以前，你必须使用图像来实现这些效果。但是，通过使用 CSS3 渐变（gradients），你可以减少下载的时间和宽带的使用。此外，渐变效果的元素在放大时看起来效果更好，因为渐变（gradient）是由浏览器生成的。
CSS3 定义了两种类型的渐变（gradients）：
- 线性渐变（Linear Gradients）- 向下/向上/向左/向右/对角方向
- 径向渐变（Radial Gradients）- 由它们的中心定义

## linear-gradient线性渐变

为了创建一个线性渐变，你必须至少定义两种颜色结点。颜色结点即你想要呈现平稳过渡的颜色。同时，你也可以设置一个起点和一个方向（或一个角度）。
语法
`background: linear-gradient(direction, color-stop1, color-stop2, ...);`

## 线性渐变-从上到下（默认情况下）

从顶部开始的线性渐变。起点是红色，慢慢过渡到蓝色：
从上到下的线性渐变：
```
#grad {
  background: linear-gradient(red, blue); /* 标准的语法 */
}
```

## 线性渐变-从左到右`to right`

下面的实例演示了从左边开始的线性渐变。起点是红色，慢慢过渡到蓝色：从左到右的线性渐变：
```
#grad {
  background: linear-gradient(to right, red , blue); /* 标准的语法 */
}

```
## 线性渐变-对角`to bottom right`
你可以通过指定水平和垂直的起始位置来制作一个对角渐变。
从左上角开始（到右下角）的线性渐变。起点是红色，慢慢过渡到蓝色：从左上角到右下角的线性渐变：

```
#grad {
  background: linear-gradient(to bottom right, red , blue); /* 标准的语法 */
}
```

## `xxdeg`使用角度
如果你想要在渐变的方向上做更多的控制，你可以定义一个角度，而不用预定义方向（to bottom、to top、to right、to left、to bottom right，等等）。

语法
`background: linear-gradient(angle, color-stop1, color-stop2);`
角度是指水平线和渐变线之间的角度，逆时针方向计算。
换句话说，`0deg` 将创建一个`从下到上`的渐变，`90deg` 将创建一个`从左到右`的渐变。

![](http://www.runoob.com/wp-content/uploads/2014/07/7B0CC41A-86DC-4E1B-8A69-A410E6764B91.jpg)

## `xx%`使用多个颜色结点
下面的实例演示了如何设置多个颜色结点：
带有多个颜色结点的从上到下的线性渐变：
```
#grad {
  background: linear-gradient(red, green, blue); /* 标准的语法 */
}
```

创建一个带有彩虹颜色和文本的线性渐变：
```
<style>
#grad1 {
    height: 55px;
    background: linear-gradient(to right, red, orange, yellow, green, blue, indigo, violet); /* 标准的语法（必须放在最后） */
}
</style>
<body>

<div id="grad1" style="text-align:center;margin:auto;color:#888888;font-size:40px;font-weight:bold">
渐变背景
</div>

<p><strong>注意：</strong> Internet Explorer 9 及之前的版本不支持渐变。</p>
```

## rgba()使用透明度（transparent）
CSS3 渐变也支持透明度（transparent），可用于创建减弱变淡的效果。

为了添加透明度，我们使用` rgba()` 函数来定义颜色结点。
rgba() 函数中的最后一个参数可以是从 0 到 1 的值，它定义了颜色的透明度：0 表示完全透明，1 表示完全不透明。

下面的实例演示了从左边开始的线性渐变。起点是完全透明，慢慢过渡到完全不透明的红色：
```
<style>
#grad1 {
    height: 200px;
    background: linear-gradient(to right, rgba(255,0,0,0), rgba(255,0,0,1)); /* 标准的语法（必须放在最后） */
}
</style>
<body>

<h3>线性渐变 - 透明度</h3>
<p>为了添加透明度，我们使用 rgba() 函数来定义颜色结点。rgba() 函数中的最后一个参数可以是从 0 到 1 的值，它定义了颜色的透明度：0 表示完全透明，1 表示完全不透明。</p>

<div id="grad1"></div>

<p><strong>注意：</strong> Internet Explorer 9 及之前的版本不支持渐变。</p>
```

## repeating-linear-gradient()重复的线性渐变
repeating-linear-gradient() 函数用于重复线性渐变：
```
#grad {
  background: repeating-linear-gradient(red, yellow 10%, green 20%);
}
```
## radial-gradient径向渐变
径向渐变由它的中心定义。

为了创建一个径向渐变，你也必须至少定义两种颜色结点。颜色结点即你想要呈现平稳过渡的颜色。同时，你也可以指定渐变的中心、形状（圆形或椭圆形）、大小。
默认情况下:
- 渐变的中心是 center（表示在中心点），
- 渐变的形状是 ellipse（表示椭圆形），
- 渐变的大小是 farthest-corner（表示到最远的角落）。
语法
`background: radial-gradient(center, shape size, start-color, ..., last-color);`

径向渐变 - 颜色结点均匀分布（默认情况下）
```
#grad {
    background: radial-gradient(red, green, blue); /* 标准的语法 */
}
```
颜色结点不均匀分布的径向渐变：
```
#grad {
    background: radial-gradient(red 5%, green 15%, blue 60%); /* 标准的语法 */
}
```
## shape设置形状
shape 参数定义了形状。它可以是值 circle 或 ellipse。其中，circle 表示圆形，ellipse 表示椭圆形。默认值是 ellipse。

## size不同尺寸大小关键字的使用
size 参数定义了渐变的大小。它可以是以下四个值：

closest-side
farthest-side
closest-corner
farthest-corner

## repeating-radial-gradient()重复的径向渐变
repeating-radial-gradient() 函数用于重复径向渐变

# 文本效果
CSS3中包含几个新的文本特征。

在本章中您将了解以下文本属性：

text-shadow
box-shadow
text-overflow
word-wrap
word-break



# 过渡
CSS3中，我们为了添加某种效果可以从一种样式转变到另一个的时候，无需使用Flash动画或JavaScript。
CSS3 过渡是元素从一种样式逐渐改变为另一种的效果。

要实现这一点，必须规定两项内容：

指定要添加效果的CSS属性
指定效果的持续时间。
应用于宽度属性的过渡效果，时长为 2 秒：
```
div
{
    transition: width 2s;
    -webkit-transition: width 2s; /* Safari */
}
```
如果未指定的期限，transition将没有任何效果，因为默认值是0。

指定的CSS属性的值更改时效果会发生变化。一个典型CSS属性的变化是用户鼠标放在一个元素上时：
规定当鼠标指针悬浮(:hover)于 `<div>`元素上时：
```
div
{
	width:100px;
	height:100px;
	background:red;
	transition:width 2s;
	-webkit-transition:width 2s; /* Safari */
}

div:hover
{
	width:300px;
}
</style>
</head>
<body>

<p><b>注意：</b>该实例无法在 Internet Explorer 9 及更早 IE 版本上工作。</p>
```
注意： 当鼠标光标移动到该元素时，它逐渐改变它原有样式

## 多项改变
要添加多个样式的变换效果，添加的属性由逗号分隔：
添加了宽度，高度和转换效果：

```
div
{
    transition: width 2s, height 2s, transform 2s;
    -webkit-transition: width 2s, height 2s, -webkit-transform 2s;
}
```

## 过渡属性
下表列出了所有的过渡属性:

属性|	描述|
:-:|:-:
transition	|简写属性，用于在一个属性中设置四个过渡属性。
transition-property	|规定应用过渡的 CSS 属性的名称。
transition-duration	|定义过渡效果花费的时间。默认是 0。
transition-timing-function	|规定过渡效果的时间曲线。默认是 "ease"。
transition-delay|	规定过渡效果何时开始。默认是 0。
```
<style>
div
{
	width:100px;
	height:100px;
	background:red;
	transition-property:width;
	transition-duration:1s;
	transition-timing-function:linear;
	transition-delay:2s;
}

div:hover
{
	width:200px;
}
</style>

<body>

<p><b>注意：</b>该实例无法在 Internet Explorer 9 及更早 IE 版本上工作。</p>
<div></div>

<p>鼠标移动到 div 元素上，查看过渡效果。</p>
<p><b>注意：</b> 过渡效果需要等待两秒后才开始。</p>

</body>
```
与上面的例子相同的过渡效果，但是使用了简写的 transition 属性：
```
div
{
    transition: width 1s linear 2s;
}
```
