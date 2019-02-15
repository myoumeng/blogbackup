---
title: 学习CSS自定义样式，让博客焕然一新（二）
tags:
  - CSS
  - 学习笔记
abbrlink: 64348
date: 2019-01-30 20:44:07
---
{% cq %}
前面我们已经学习了CSS的语法、id和class选择器、如何创建及使用、css的背景、文本、字体、链接、列表样式、表格、盒子模型、边框，这些内容实在是丰富。
我们要牢记，css就是一个层叠样式表，我们可以利用它来装饰我们的html。所以，使用css的三种方法要熟练。如果不用内联样式或内联样式表，那就要用外联，此时我们就得写一个外部的css文件，还有id、类、元素/标签、包含这4个常见的选择器。
想要做出好看的样式？那就继续学习css吧！
{% endcq %}

<!--more-->

目录如下：
[TOC]


# 轮廓（outline）

轮廓（outline）是绘制于元素周围的一条线，位于边框边缘的外围，可起到突出元素的作用。轮廓（outline）属性指定元素轮廓的样式、颜色和宽度。

属性|说明	|值
:-:|:-:|:-:
outline	|在一个声明中设置所有的轮廓属性	|outline-color<br>outline-style<br>outline-width<br>inherit
outline-color	|设置轮廓的颜色|	color-name<br>hex-number<br>rgb-number<br>invert<br>inherit
outline-style	|设置轮廓的样式|	none<br>dotted<br>dashed<br>solid<br>double<br>groove<br>ridge<br>inset<br>outset<br>inherit
outline-width|	设置轮廓的宽度	|thin<br>medium<br>thick<br>length<br>inherit

CSS outline 属性规定元素轮廓的样式、颜色和宽度。
![](http://www.runoob.com/images/box_outline.gif)

# margin外边距
CSS margin(外边距)属性定义元素周围的空间。
margin 清除周围的（外边框）元素区域。margin 没有背景颜色，是==完全透明==的。
![](http://www.runoob.com/wp-content/uploads/2013/08/VlwVi.png)
margin 可以单独改变元素的上，下，左，右边距，也可以一次改变所有的属性。

## margin简写属性
为了缩短代码，有可能使用一个属性中margin指定的所有边距属性。这就是所谓的简写属性。

所有边距属性的简写属性是 margin :
`margin:100px 50px;`
margin属性可以有一到四个值。

margin:25px 50px 75px 100px;
- 上边距为25px
- 右边距为50px
- 下边距为75px
- 左边距为100px

margin:25px 50px 75px;
- 上边距为25px
- 左右边距为50px
- 下边距为75px

margin:25px 50px;
- 上下边距为25px
- 左右边距为50px

margin:25px;
- 所有的4个边距都是25px

## 所有边距属性
属性|	描述
:-:|:-:
margin|	简写属性。在一个声明中设置所有外边距属性。
margin-bottom	|设置元素的下外边距。
margin-left	|设置元素的左外边距。
margin-right|	设置元素的右外边距。
margin-top|	设置元素的上外边距。

> margin可以使用负值，重叠的内容。

# padding填充
CSS padding（填充）是一个简写属性，定义元素边框与元素内容之间的空间，即上下左右的内边距。
值	|说明
:-:|:-:
length|	定义一个固定的填充(像素, pt, em,等)
%	|使用百分比值定义一个填充

![](http://www.runoob.com/wp-content/uploads/2013/08/VlwVi.png)

padding（填充）；当元素的 padding（填充）内边距被清除时，所释放的区域将会受到元素背景颜色的填充。单独使用 padding 属性可以改变上下左右的填充。

类比：鸠占鹊巢。如果我不使用填充，那么元素背景会侵占我的领域~

## 填充简写属性
为了缩短代码，它可以在一个属性中指定的所有填充属性。这就是所谓的简写属性。所有的填充属性的简写属性是 padding :
Padding属性，可以有一到四个值:
  - padding:25px 50px 75px 100px;
上填充为25px
右填充为50px
下填充为75px
左填充为100px
  - padding:25px 50px 75px;
上填充为25px
左右填充为50px
下填充为75px
  - padding:25px 50px;
上下填充为25px
左右填充为50px
  - padding:25px;
所有的填充都是25px

## 所有的填充属性
属性|	说明
:-:|:-:
padding	|使用简写属性设置在一个声明中的所有填充属性
padding-bottom|	设置元素的底部填充
padding-left	|设置元素的左部填充
padding-right	|设置元素的右部填充
padding-top	|设置元素的顶部填充

# 尺寸(Dimension)
CSS 尺寸 (Dimension) 属性允许你控制元素的高度和宽度。同样，它允许你增加行间距。
## 所有尺寸(Dimension)属性
属性|	描述
:-:|:-:
height	|设置元素的高度。不包括填充，边框，或页边距！
line-height|	设置行高。负值是不允许的
max-height	|设置元素的最大高度。
max-width	|设置元素的最大宽度。
min-height|	设置元素的最小高度。
min-width	|设置元素的最小宽度。
width|	设置元素的宽度。不包括填充，边框，或页边距！
注意，width、height等尺寸属性值，有4种:
值	|描述
:-:|:-:
auto|	默认值。浏览器可计算出实际的宽度。
length|	使用 px、cm 等单位定义宽度。
%|	定义基于包含块（父元素）宽度的百分比宽度。
inherit	|规定应该从父元素继承 width 属性的值。

![](https://ws2.sinaimg.cn/large/006tNc79gy1fzoyjropjzj311l0fbae4.jpg)
```
<style>
img.normal
{
	height:auto;
}
img.big
{
	height:120px;
}
p.ex
{
	height:130px;
	width:130px;
}
</style>
<body>
<img class="normal" src="logocss.gif" width="95" height="84" /><br>
<img class="big" src="logocss.gif" width="95" height="84" />
<p class="ex">这个段落的高和宽是 130px.这个段落的高和宽是 130px这个段落的高和宽是 130px
	这个段落的高和宽是 130px
	这个段落的高和宽是 130px
</p>

<p>这是段落中的一些文本。这是段落中的一些文本。
这是段落中的一些文本。这是段落中的一些文本。
这是段落中的一些文本。这是段落中的一些文本.</p>
</body>
```
## line-height行高

![](https://ws2.sinaimg.cn/large/006tNc79gy1fzoym75le8j30ua0fp42p.jpg)
```
<style>
p.small {line-height:70%;}
p.big {line-height:200%;}
</style>
</head>

<body>
<p>
这是一个标准行高的段落。<br>
这是一个标准行高的段落。<br>
大多数浏览器的默认行高约为110%至120%。<br>
</p>

<p class="small">
这是一个更小行高的段落。<br>
这是一个更小行高的段落。<br>
这是一个更小行高的段落。<br>
这是一个更小行高的段落。<br>
</p>

<p class="big">
这是一个更大行高的段落。<br>
这是一个更大行高的段落。<br>
这是一个更大行高的段落。<br>
这是一个更大行高的段落。<br>
</p>

</body>
```

# 分组和嵌套选择器
## 分组选择器
在样式表中有很多具有相同样式的元素。
```
h1
{
    color:green;
}
h2
{
    color:green;
}
p
{
    color:green;
}
```
为了尽量减少代码，你可以使用分组选择器。每个选择器用逗号分隔。在下面的例子中，我们对以上代码使用分组选择器
```
h1,h2,p
{
    color:green;
}
```

## 嵌套选择器
它可能适用于选择器内部的选择器的样式。
在下面的例子设置了三个样式：
- p{ }: 为所有 p 元素指定一个样式。
- .marked{ }: 为所有 `class="marked" 的元素`指定一个样式。
- .marked p{ }: 为所有 `class="marked" 元素内`的 p 元素指定一个样式。
- p.marked{ }: 为所有` class="marked"` 的 `p 元素`指定一个样式。

很拗口吧？
```
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
<style>
p
{
	color:blue;
	text-align:center;
}
.marked
{
	background-color:red;
}
.marked p
{
	color:white;
}
p.marked{
  text-decoration:underline;
	color:black;
	background-color:yellow;

}
</style>
</head>

<body>
<p>这个段落是蓝色文本，居中对齐。我是p，p本来就是蓝色文本，居中对齐</p>
<div class="marked">
<p>
	这个段落不是蓝色文本。
	我外头包围的是p，
	p外面是div的class=marked，marked类是背景色为红色，
	并且.marked p这种，字体颜色是白色！~
	因为我是被class=marked的div元素包围的p元素~~~么么哒
</p>
</div>
<p>所有 class="marked"元素内的 p 元素指定一个样式，但有不同的文本颜色。
	我是可爱的p，我p外面没有class，我就是简单的p。</p>

<p class="marked">带下划线的 p 段落?????????????????????。
	我是p，并且我的class用了marked，要知道，p.marked是下划线，黑字，黄底</p>
</body>
</html>
```
![](https://ws3.sinaimg.cn/large/006tNc79gy1fzoxpuwl2uj30i407qac0.jpg)


# 组合选择符
组合选择符说明了两个选择器直接的关系。CSS组合选择符包括各种简单选择符的组合方式。在 CSS3 中包含了四种组合方式:

- 后代选择器(以空格分隔)
- 子元素选择器(以大于号分隔）
- 相邻兄弟选择器（以加号分隔）
- 普通兄弟选择器（以破折号分隔）

## 后代选择器(以空格分隔)
后代选择器用于选取某元素的后代元素。

以下实例选取所有 `<p>` 元素插入到 `<div>` 元素中:
```
div p
{
  background-color:yellow;
}
```
## 子元素选择器(以大于号分隔）
与后代选择器相比，子元素选择器（Child selectors）只能选择作为某元素子元素的元素。

以下实例选择了`<div>`元素中所有直接子元素 `<p> `：
```
div>p
{
  background-color:yellow;
}
```
## 相邻兄弟选择器（以加号分隔）
相邻兄弟选择器（Adjacent sibling selector）可选择紧接在另一元素后的元素，且二者有相同父元素。

如果需要选择紧接在另一个元素后的元素，而且二者有相同的父元素，可以使用相邻兄弟选择器（Adjacent sibling selector）。

以下实例选取了所有位于 `<div>` 元素后的第一个 `<p>` 元素:
```
div+p
{
  background-color:yellow;
}
```
## 后续兄弟选择器（以破折号分隔）
后续兄弟选择器选取所有指定元素之后的相邻兄弟元素。

以下实例选取了所有` <div> `元素之后的所有相邻兄弟元素` <p>` :
```
div~p
{
  background-color:yellow;
}
```

# Display(显示) 与 Visibility（可见性）
## Display:块和内联元素
### 块元素
块元素是一个元素，占用了==全部宽度==，在前后都是换行符。

```
address , blockquote , center , dir , div , dl , fieldset ,
form , h1 , h2 , h3 , h4 , h5 , h6 , hr , isindex , menu ,
noframes , noscript , ol , p , pre , table , ul , li
```
### 内联元素
内联元素只需要必要的宽度，不强制换行。

```
a , abbr , acronym , b , bdo , big , br , cite , code , dfn ,
em , font , i , img , input , kbd , label , q , s , samp ,
select , small , span , strike , strong , sub , sup ,
textarea , tt , u , var
```

利用CSS我们可以摆脱HTML标签归类的限制，自由地在不同标签/元素上应用我们需要的属性。主要用的CSS样式有以下三个：
- display:block  -- 显示为块级元素
- display:inline  -- 显示为内联元素
- display:inline-block -- 显示为内联块元素

## `display:none`或`visibility:hidden`隐藏元素
隐藏一个元素可以通过把display属性设置为"none"，或把visibility属性设置为"hidden"。但是请注意，这两种方法会产生不同的结果。

visibility:hidden可以隐藏某个元素，但隐藏的元素仍需占用与未隐藏之前一样的空间。也就是说，该元素虽然被隐藏了，但仍然会影响布局。
display:none可以隐藏某个元素，且隐藏的元素不会占用任何空间。也就是说，该元素不但被隐藏了，而且该元素原本占用的空间也会从页面布局中消失。
然而，visibility 还可能取值为 collapse 。

当设置元素 `visibility: collapse` 后，一般的元素的表现与 visibility: hidden 一样，也即其会占用空间。但如果该元素是与 table 相关的元素，例如 table row、table column、table column group、table column group 等，其表现却跟 display: none 一样，也即其占用的空间会释放。

## `display:inline-block`内联块元素
显示为内联块元素，表现为同行显示并可修改宽高内外边距等属性
我们常将`<ul>`元素加上`display:inline-block`样式，原本垂直的列表就可以水平显示了。

## 列表项显示为内联元素

```
<style>
li{display:inline;}
</style>

<body>
<p>链接列表水平显示：</p>

<ul>
<li><a href="/html/" target="_blank">HTML</a></li>
<li><a href="/css/" target="_blank">CSS</a></li>
<li><a href="/js/" target="_blank">JavaScript</a></li>
<li><a href="/xml/" target="_blank">XML</a></li>
</ul>

</body>
```
## span元素作为块元素

```
<style>
span
{
	display:block;
}
</style>
<body>

<h2>Nirvana</h2>
<span>Record: MTV Unplugged in New York</span>
<span>Year: 1993</span>

<h2>Radiohead</h2>
<span>Record: OK Computer</span>
<span>Year: 1997</span>

</body>
```
# Position定位
position 属性指定了元素的定位类型。
position 属性的五个值：

- static
- relative
- fixed
- absolute
- sticky

元素可以使用的顶部，底部，左侧和右侧属性定位。
然而，这些属性无法工作，除非是先设定position属性。他们也有不同的工作方式，这取决于定位方法。
## static没有定位
HTML 元素的默认值，即没有定位，遵循正常的文档流对象。

静态定位的元素不会受到 top, bottom, left, right影响。
## fixed相对于浏览器窗口是固定位置
元素的位置相对于浏览器窗口是固定位置。即使窗口是滚动的它也不会移动
Fixed定位使元素的位置与文档流无关，因此不占据空间。
Fixed定位的元素和其他元素重叠。

## relative相对定位元素的定位是相对其正常位置
相对定位元素的定位是相对其正常位置。
移动相对定位元素，但它原本所占的空间不会改变。
相对定位元素经常被用来作为绝对定位元素的容器块。

## absolute相对于最近的已定位父元素
绝对定位的元素的位置相对于最近的已定位父元素，如果元素没有已定位的父元素，那么它的位置相对于`<html>`:
absolute 定位使元素的位置与文档流无关，因此不占据空间。
absolute 定位的元素和其他元素重叠。

## sticky粘性定位
sticky 英文字面意思是粘，粘贴，所以可以把它称之为粘性定位。`position: sticky`; 基于用户的滚动位置来定位。

粘性定位的元素是依赖于用户的滚动，`在 position:relative 与 position:fixed 定位之间切换`。

它的行为就像 `position:relative`; 而当页面滚动超出目标区域时，它的表现就像 `position:fixed;`，它会固定在目标位置。

元素定位表现为在跨越特定阈值前为相对定位，之后为固定定位。

这个特定阈值指的是 top, right, bottom 或 left 之一，换言之，指定 top, right, bottom 或 left 四个阈值其中之一，才可使粘性定位生效。否则其行为与相对定位相同。

## z-index设置元素的堆叠顺序
元素的定位与文档流无关，所以它们可以覆盖页面上的其它元素。`z-index`属性指定了一个元素的堆叠顺序（哪个元素应该放在前面，或后面）
元素的定位与文档流无关，所以它们可以覆盖页面上的其它元素

一个元素可以有正数或负数的堆叠顺序。如果两个定位元素重叠，没有指定z - index，最后定位在HTML代码中的元素将被显示在最前面。

## cursor显示光标移动到指定的类型
值有：auto
crosshair
default
e-resize
help
move
n-resize
ne-resize
nw-resize
pointer
progress
s-resize
se-resize
sw-resize
text
w-resize
wait

![](https://ws3.sinaimg.cn/large/006tNc79gy1fzp0hxktdmj30w70ek797.jpg)

## clip剪裁
如果图像大于包含它的元素，会发生什么？-clip属性，让你指定一个绝对定位的元素，该尺寸应该是可见的，该元素被剪裁成这种形状并显示。
其值：`shape`，设置元素的形状。
唯一合法的形状值是：`rect (top, right, bottom, left)`
![](https://ws1.sinaimg.cn/large/006tNc79gy1fzp0kftdpyj30nv0am3zy.jpg)

# overflow是否显示滚动条
如果元素中的内容超出了给定的宽度和高度属性，overflow 属性可以确定是否显示滚动条等行为。
属性值
值	|描述
:-:|:-:
visible|	默认值。内容不会被修剪，会呈现在元素框之外。内容溢出元素框
hidden	|内容会被修剪，并且其余内容是不可见的。
scroll	|内容会被修剪，但是浏览器会显示滚动条以便查看其余的内容。
auto	|如果内容被修剪，则浏览器会显示滚动条以便查看其余的内容。
inherit|	规定应该从父元素继承 overflow 属性的值。

# float元素向左或向右移动
CSS 的 Float（浮动），会使元素向左或向右移动，其周围的元素也会重新排列。
Float（浮动），往往是用于图像，但它在布局时一样非常有用。

float属性值有：
- left
- right
- none
- inherit

## 元素怎样浮动
元素的水平方向浮动，意味着元素只能左右移动而不能上下移动。

一个浮动元素会尽量向左或向右移动，直到它的外边缘碰到包含框或另一个浮动框的边框为止。
浮动元素之后的元素将围绕它。
浮动元素之前的元素将不会受到影响。

如果图像是右浮动，下面的文本流将环绕在它左边：
![](https://ws4.sinaimg.cn/large/006tNc79gy1fzp0pdy468j31230f8dj6.jpg)

## 彼此相邻的浮动元素
如果你把几个浮动的元素放到一起，如果有空间的话，它们将彼此相邻。
在这里，我们对图片廊使用 float 属性：
```
.thumbnail
{
	float:left;
	width:110px;
	height:90px;
	margin:5px;
}
</style>

<body>
<h3>图片库</h3>
<p>试着调整窗口,看看当图片没有足够的空间会发生什么。</p>
<img class="thumbnail" src="/images/klematis_small.jpg" width="107" height="90">
<img class="thumbnail" src="/images/klematis2_small.jpg" width="107" height="80">
<img class="thumbnail" src="/images/klematis3_small.jpg" width="116" height="90">
<img class="thumbnail" src="/images/klematis4_small.jpg" width="120" height="90">
<img class="thumbnail" src="/images/klematis_small.jpg" width="107" height="90">
<img class="thumbnail" src="/images/klematis2_small.jpg" width="107" height="80">
<img class="thumbnail" src="/images/klematis3_small.jpg" width="116" height="90">
<img class="thumbnail" src="/images/klematis4_small.jpg" width="120" height="90">
</body>
```

## clear清除浮动
元素浮动之后，周围的元素会重新排列，为了避免这种情况，使用 clear 属性。

clear 属性指定元素两侧不能出现浮动元素。

使用 clear 属性往文本中添加图片廊：
```
.text_line
{
    clear:both;
}
```
clear 属性值有：left
right
both
none
inherit

# 对齐
## 元素居中对齐
要水平居中对齐一个元素(如 `<div>`), 可以使用` margin: auto;`

设置到元素的宽度将防止它溢出到容器的边缘。
注意: 如果没有设置 width 属性(或者设置 100%)，居中对齐将不起作用。
元素通过指定宽度，并将两边的空外边距平均分配：
```
.center {
    margin: auto;
    width: 50%;
    border: 3px solid green;
    padding: 10px;
}
```

## 文本居中对齐
如果仅仅是为了文本在元素内居中对齐，可以使用` text-align: center;`
```
.center {
    text-align: center;
    border: 3px solid green;
}
```
## margin: auto图片居中对齐
要让图片居中对齐, 可以使用 `margin: auto;` 并将它放到 块 元素中:
```

img {
    display: block;
    margin: auto;
    width: 40%;
}
```
## position:定位左右对齐
我们可以使用` position: absolute;` 属性来对齐元素:
```
.right {
    position: absolute;
    right: 0px;
    width: 300px;
    border: 3px solid #73AD21;
    padding: 10px;
}
```
注释：绝对定位元素会被从正常流中删除，并且能够交叠元素。

提示: 当使用 position 来对齐元素时, 通常 `<body> `元素会设置 margin 和 padding 。 这样可以避免在不同的浏览器中出现可见的差异。

当使用 position 属性时，IE8 以及更早的版本存在一个问题。如果容器元素（在我们的案例中是 `<div class="container">`）设置了指定的宽度，并且省略了 !DOCTYPE 声明，那么 IE8 以及更早的版本会在右侧增加 17px 的外边距。这似乎是为滚动条预留的空间。
当使用 position 属性时，请始终设置 !DOCTYPE 声明：

## float左右对齐
我们也可以使用 float 属性来对齐元素。
当像这样对齐元素时，对 `<body>` 元素的外边距和内边距进行预定义是一个好主意。这样可以避免在不同的浏览器中出现可见的差异。
```
.right {
    float: right;
    width: 300px;
    border: 3px solid #73AD21;
    padding: 10px;
}
```
注意：如果子元素的高度大于父元素，且子元素设置了浮动，那么子元素将溢出，这时候你可以使用`clearfix(清除浮动)`来解决该问题。

我们可以在父元素上添加 `overflow: auto`; 来解决子元素溢出的问题:
![](https://ws2.sinaimg.cn/large/006tNc79gy1fzpftrnbcpj311c0eqdmq.jpg)
```
<style>
div {
    border: 3px solid #4CAF50;
    padding: 5px;
}

.img1 {
    float: right;
}

.clearfix {
    overflow: auto;
}

.img2 {
    float: right;
}
</style>
<body>

<p>以下实例图在父元素中溢出，很不美观:</p>

<div>
<img class="img1" src="pineapple.jpg" alt="Pineapple" width="170" height="170">
菜鸟教程 - 学的不仅是技术，更是梦想！！！</div>

<p style="clear:right">在父元素上通过添加 clearfix 类，并设置 overflow: auto; 来解决该问题:</p>

<div class="clearfix">
<img class="img2" src="pineapple.jpg" alt="Pineapple" width="170" height="170">
菜鸟教程 - 学的不仅是技术，更是梦想！！！</div>
```
## padding垂直居中
CSS 中有很多方式可以实现垂直居中对齐。 一个简单的方式就是头部顶部使用 padding:
```
.center {
    padding: 70px 0;
    border: 3px solid green;
}
```
## `padding`和`text-align:center`水平和垂直都居中
```
.center {
    padding: 70px 0;
    border: 3px solid green;
    text-align: center;
}
```
## line-height垂直居中
```
.center {
    line-height: 200px;
    height: 200px;
    border: 3px solid green;
    text-align: center;
}

/* 如果文本有多行，添加以下代码: */
.center p {
    line-height: 1.5;
    display: inline-block;
    vertical-align: middle;
}
```

## position和transform垂直居中
除了使用 padding 和 line-height 属性外,我们还可以使用 transform 属性来设置垂直居中:
```
.center {
    height: 200px;
    position: relative;
    border: 3px solid green;
}

.center p {
    margin: 0;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
```
注：更多 transform 属性内容可以参阅 2D 翻转章节。
