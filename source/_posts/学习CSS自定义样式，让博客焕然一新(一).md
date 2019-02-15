---
title: 学习CSS自定义样式，让博客焕然一新（一）
tags:
  - CSS
  - 学习笔记
abbrlink: 27430
date: 2019-01-28 15:44:07
---
<p class="description">不得不说，HTML和CSS真是一对好兄弟，我有很多想法，还是得靠他们合作才能实现吧！那我就要继续记笔记咯！
搬起小板凳，开始好奇地学习CSS吧！
</p>

<!--more-->
唔，内容有点多，所以，还是分批次写吧~本文目录如下：
@[TOC]

# CSS基础简介

## CSS与HTML
CSS 指层叠样式表 (Cascading Style Sheets)

HTML 元素可以通过`样式定义`来显示，样式存储在样式表中，外部样式表就存储在CSS文件中。
所以可以编辑保存在外部的.css文件，就能改变站点中所有的页面的布局和外观。

## CSS规则由`选择器+声明`组成
![](https://ws3.sinaimg.cn/large/006tNc79gy1fzon8gtkcuj30fu03cjrn.jpg)

- 选择器：我需要改变样式的HTML元素
- 每条声明=一个属性+一个值（属性与值，被冒号分开）
- 属性：是我希望设置的样式属性style attribute
- 声明以分号结束`;`,声明组以大括号包围`{}`

每行只描述一个属性，能让CSS可读性更强

# 注释
css注释是用来解释我写的代码，第一，我看代码的时候能够提醒自己，第二，浏览器也会忽略它，不会显示的。
以`/*`开始，以`*/`结束
```
/*这是个注释*/
p
{
text-align:center;
/*这是另一个注释*/
color:black;
font-family:arial;
}
```

# id与class类
## id选择器
>id 选择器可以为标有特定 id 的 HTML 元素指定特定的样式。
HTML元素以id属性来设置id选择器,CSS 中 id 选择器以 "#" 来定义。

以下的样式规则应用于元素属性 id="para1":

```
<head>
<style>
#para1
{
	text-align:center;
	color:red;
}
</style>
</head>

<body>
<p id="para1">Hello World!</p>

<p>这个段落不受该样式的影响。</p>
```
## class选择器
>class 选择器用于描述一组元素的样式，class 选择器有别于id选择器，class可以在多个元素中使用。
class 选择器在HTML中以class属性表示, 在 CSS 中，类选择器以一个点"."号显示：

在以下的例子中，所有拥有 center 类的 HTML 元素均为居中。

```
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
<style>
.center
{
	text-align:center;
}
</style>
</head>

<body>
<h1 class="center">标题居中</h1>
<p class="center">段落居中。</p>
```
在以下实例中, 所有的 p 元素使用 class="center" 让该元素的文本居中:(此时应该算作元素/标签选择器！)
![](https://ws1.sinaimg.cn/large/006tNc79gy1fzonq4vz59j30wt0alac4.jpg)
```
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
<style>
p.center
{
	text-align:center;
}
</style>
</head>

<body>
<h1 class="center">这个标题不受影响</h1>
<p class="center">这个段落受影响，会居中对齐。</p>
</body>
</html>
```
类名的第一个字符不能使用数字！它无法在 Mozilla 或 Firefox 中起作用。

# HTML中设置CSS样式的多种选择器
如果你要在 html 标签中设置 CSS 样式，那么你有四种方法，即 css 选择器有四种。

除了提到的 id 和 class 选择器外，第三种选择器为标签选择器，即以 html 标签作为 css 修饰所用的选择器；第四种是直接在html标签内部写css代码。（好像还有好几种，我就不多写了，总之，id、class、element package都很常见~

## ID选择器（ID selector，IS）
使用` # `标识selector。
语法格式：`#S{...}`（S为选择器名）。

例：id为name的标签会匹配下面的样式
```
<style>
#name{
  color:red;
}
</style>
<!--下面文字是红色的-->
<p id="name">red text</p>
```

## 类选择器（class selector，CS）
使用` . `标识selector，
语法格式：`.S{...}`（S为选择器名）。
例：class属性值为value的标签会匹配下面的样式
```
<style>
.value{
  text-align:center;
}
</style>
<!--下面的文字是居中对齐的-->
<p class="value">center text</p>
```
## 元素选择器（element selector，ES）又叫标签选择器
使用HTML的`标签名`作为selector名。
语法格式：`S{...}`（S为选择器名）。
例：所有的p标签都会匹配以下的样式
```
<style>
p{
  font-style:italic;
}
</style>
<!--下面的文字是斜体的-->
<p>italic text</p>
```

## 包含选择器（package selector，PS）
指定目标选择器必须处在某个选择器对应的元素内部。
语法格式：`A B{...}`（A、B为HTML元素/标签，表示对处于A中的B标签有效）。(经常用div)

例：以下div内的p标签和div外的p标签分别匹配不同的样式
```
<style>
p{
  color:red;
}
div p{
  color:yellow;
}
</style>
<p>red text</p><!--文字是红色的-->
<div>
  <p>yellow text</p><!--文字是黄色的-->
</div>
```
# CSS创建：插入样式表的三种方法

## 外部样式表(External style sheet)
> 当样式需要应用于很多页面时，外部样式表将是理想的选择。
在使用外部样式表的情况下，你可以通过改变一个文件来改变整个站点的外观。
每个页面使用 `<link>` 标签链接到样式表。 `<link>` 标签在（文档的）头部：

```
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
```
浏览器会从文件 mystyle.css 中读到样式声明，并根据它来格式文档。

外部样式表可以在任何文本编辑器中进行编辑。
文件==不能包含任何的 html 标签==。
样式表应该以 .css 扩展名进行保存。下面是一个样式表文件的例子：
```
hr {color:sienna;}
p {margin-left:20px;}
body {background-image:url("/images/back40.gif");}
```
不要在==属性值与单位之间==留有空格（如："margin-left: 20 px" ），正确的写法是 "margin-left: 20px" 。

## 内部样式表(Internal style sheet)
> 当单个文档需要特殊的样式时，就应该使用内部样式表。
你可以使用` <style> `标签在文档头部定义内部样式表，就像这样:

```
<head>
<style>
hr {color:sienna;}
p {margin-left:20px;}
body {background-image:url("images/back40.gif");}
</style>
</head>
```

## 内联样式(Inline style)

> 由于要将表现和内容混杂在一起，内联样式会损失掉样式表的许多优势。
请慎用这种方法，例如当样式仅需要在一个元素上应用一次时。
要使用内联样式，你需要在相关的标签内使用样式（style）属性。Style 属性可以包含任何 CSS 属性。本例展示如何改变段落的颜色和左外边距：

```
<p style="color:sienna;margin-left:20px">这是一个段落。</p>
```
## 多重样式
如果某些属性在不同的样式表中被同样的选择器定义，那么属性值将从更具体的样式表中被继承过来。

例如，外部样式表拥有针对 h3 选择器的三个属性：
```
h3
{
    color:red;
    text-align:left;
    font-size:8pt;
}
```
而内部样式表拥有针对 h3 选择器的两个属性：
```
h3
{
    text-align:right;
    font-size:20pt;
}
```
假如拥有内部样式表的这个页面同时与外部样式表链接，那么 h3 得到的样式是：
```
color:red;
text-align:right;
font-size:20pt;
```
即颜色属性将被继承于外部样式表，而`文字排列（text-alignment）`和`字体尺寸（font-size）`会被内部样式表中的规则取代。

## 多重样式优先级
样式表允许以多种方式规定样式信息。
样式可以规定在单个的 HTML 元素中，在 HTML 页的头元素中，或在一个外部的 CSS 文件中。甚至可以在同一个 HTML 文档内部引用多个外部样式表。

一般情况下，优先级如下：

==(内联样式）Inline style > （内部样式）Internal style sheet >（外部样式）External style sheet > 浏览器默认样式==
如果外部样式放在内部样式的后面，则外部样式将覆盖内部样式。
```
<head>
    <!-- 外部样式 style.css -->
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <!-- 设置：h3{color:blue;} -->
    <style type="text/css">
      /* 内部样式 */
      h3{color:green;}
    </style>
</head>
<body>
    <h3>测试！会出现内部样式的绿色字！</h3>
</body>
```


# 背景
CSS 背景属性用于定义HTML元素的背景。

background-color
background-image
background-repeat
background-attachment
background-position
background-size

## background-size背景尺寸
语法：
`background-size: length|percentage|cover|contain;`

属性值
值	|说明
:-:|:-:
length	|设置背景图片高度和宽度。第一个值设置==宽度==，第二个值设置的高度。如果只给出一个值，第二个是设置为 auto(自动)
percentage	|将计算相对于背景定位区域的百分比。第一个值设置==宽度==，第二个值设置的高度。如果只给出一个值，第二个是设置为"auto(自动)"
cover	|此时会==保持图像的纵横比==并将图像缩放成将==完全覆盖背景定位区域的最小大小==。
contain	|此时会保持图像的纵横比并将图像缩放成将==适合背景定位区域的最大大小==。

## background-color背景颜色
CSS中，颜色值通常以以下方式定义:
- 十六进制 - 如："#ff0000"
- RGB - 如："rgb(255,0,0)"
- 颜色名称 - 如："red"


## background-image背景图像
默认情况下，背景图像进行平铺重复显示，以覆盖整个元素实体
文档中多个背景图像:
`body {background-image:url('paper.gif');}`
要么：`=""`要么`url()`
![](https://ws3.sinaimg.cn/large/006tNc79gy1fzopgu45xqj311i0dxam8.jpg)
```
<style>
#example1 {
    background-image: url(img_flwr.gif), url(paper.gif);
    background-position: right bottom, left top;
    background-repeat: no-repeat, repeat;
    padding: 15px;
}
</style>
</head>
<body>

<div id="example1">
<h1>Lorem Ipsum Dolor</h1>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>
</div>
```

## background-repeat平铺
属性值
值	|说明
:-:|:-:
repeat	|背景图像将向垂直和水平方向重复。这是默认
repeat-x|	==只有水平位置==会重复背景图像
repeat-y|	只有垂直位置会重复背景图像
no-repeat	|background-image不会重复
inherit	|指定background-repea属性设置应该从父元素继承


## background-attachment固定or滚动
属性值
值	|说明
:-:|:-:
scroll	|背景图片随页面的其余部分滚动。这是默认
fixed|	背景图像是固定的
inherit	|指定background-attachment的设置应该从父元素继承
![](https://ws2.sinaimg.cn/large/006tNc79gy1fzopb196f7j30t70fcgs4.jpg)
```
body
{
background-image:url('smiley.gif');
background-repeat:no-repeat;
background-attachment:fixed;
}
</style>
</head>

<body>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
<p>背景图片是固定的。尝试向下滚动页面。</p>
</body>
```

## background-position图片位置
属性值
值	|描述
:-:|:-:
left top<br>left center<br>left bottom<br>right top<br>right center<br>right bottom<br>center top<br>center center<br>center bottom|	如果仅指定一个关键字，其他值将会是"center"
x% y%	|第一个值是水平位置，第二个值是垂直。左上角是0％0％。右下角是100％100％。如果仅指定了一个值，其他值将是50％。 。默认值为：0％0％
xpos ypos	|第一个值是水平位置，第二个值是垂直。左上角是0。单位可以是像素（0px0px）或任何其他 CSS单位。如果仅指定了一个值，其他值将是50％。你可以混合使用％和positions
inherit	|指定background-position属性设置应该从父元素继承

## background简写背景属性到一个声明中
```
<style>
body
{
background: #00ff00 url('smiley.gif') no-repeat fixed center;
}
</style>
```
# 文本
所有CSS文本属性。
属性|	描述
:-:|:-:
color	|设置文本颜色
direction	|设置文本方向。
letter-spacing|	设置字符间距
line-height|	设置行高
text-align	|对齐元素中的文本
text-decoration	|向文本添加修饰
text-indent	|缩进元素中文本的首行
text-shadow|	设置文本阴影
text-transform	|控制元素中的字母
unicode-bidi|	设置或返回文本是否被重写
vertical-align|	设置元素的垂直对齐
white-space	|设置元素中空白的处理方式
word-spacing	|设置字间距

## white-space元素中空白的处理方式

属性|	描述
:-:|:-:
normal	|默认。空白会被浏览器忽略。
pre	|空白会被浏览器保留。其行为方式类似 HTML 中的 <pre> 标签。
nowrap	|文本不会换行，文本会在在同一行上继续，直到遇到 <br> 标签为止。
pre-wrap|	保留空白符序列，但是正常地进行换行。
pre-line|	合并空白符序列，但是保留换行符。
inherit	|规定应该从父元素继承 white-space 属性的值。
规定段落中的文本不进行换行
```
p
{
    white-space:nowrap;
}
```
## text-align对齐元素中的文本
属性值
属性|	描述
:-:|:-:
left	|把文本排列到左边。默认值：由浏览器决定。
right	|把文本排列到右边。
center|	把文本排列到中间。
justify|	实现两端对齐文本效果。
inherit	|规定应该从父元素继承 text-align 属性的值。


## direction文本方向
- ltr	默认。文本方向从左到右。
- rtl	文本方向从右到左。
- inherit	规定应该从父元素继承 direction 属性的值。

## text-decorations向文本添加修饰
属性值
属性|	描述
:-:|:-:
none	|默认。定义标准的文本。
underline	|定义文本下的一条线。
overline	|定义文本上的一条线。
line-through|	定义穿过文本下的一条线。
blink|	定义闪烁的文本。
inherit	|规定应该从父元素继承 text-decoration 属性的值。

## vertical-align元素的垂直对齐
属性值
属性|	描述
:-:|:-:
baseline	|默认。元素放置在父元素的基线上。
sub	|垂直对齐文本的下标。
super	|垂直对齐文本的上标
top	|把元素的顶端与行中最高元素的顶端对齐
text-top|	把元素的顶端与父元素字体的顶端对齐
middle|	把此元素放置在父元素的中部。
bottom	|把元素的底端与行中最低的元素的顶端对齐。
text-bottom	|把元素的底端与父元素字体的底端对齐。
length	| -
%	|使用 "line-height" 属性的百分比值来排列此元素。允许使用负值。
inherit	规定应该从父元素继承 vertical-align 属性的值。

# 字体
字体属性定义字体，加粗，大小，文字样式。
## 所有CSS字体属性
Property|	描述
:-:|:-:
font	|在一个声明中设置所有的字体属性
font-family	|指定文本的字体系列
font-size	|指定文本的字体大小
font-style|	指定文本的字体样式
font-variant	|以小型大写字体或者正常字体显示文本。
font-weight	|指定字体的粗细。

font - family属性指定一个元素的字体。

font-family 可以把多个字体名称作为一个"回退"系统来保存。如果浏览器不支持第一个字体，则会尝试下一个。

有两种类型的字体系列名称：

- family-name - 指定的系列名称：具体字体的名称，比如："times"、"courier"、"arial"。
- generic-family - 通常字体系列名称：比如："serif"、"sans-serif"、"cursive"、"fantasy"、"monospace。

使用某种特定的字体系列（Geneva）完全取决于用户机器上该字体系列是否可用；这个属性没有指示任何字体下载。因此，强烈推荐使用一个通用字体系列名作为后路。

注意：每个值用逗号分开。

注意: 如果字体名称包含空格，它必须加上引号。在HTML中使用"style"属性时，必须使用单引号。

# 链接样式
链接的样式，可以用任何CSS属性（如颜色，字体，背景等）。

特别的链接，可以有不同的样式，这取决于他们是什么状态。

## 四个链接状态

- a:link - 正常，未访问过的链接
- a:visited - 用户已访问过的链接
- a:hover - 当用户鼠标放在链接上时
- a:active - 链接被点击的那一刻

当设置为若干链路状态的样式，也有一些顺序规则：

- a:hover 必须跟在 a:link 和 a:visited后面
- a:active 必须跟在 a:hover后面

链接样式的顺序记忆：
L(link)OV(visited)E  and  H(hover)A(active)TE

text-decoration 属性主要用于删除链接中的下划线：

![](https://ws1.sinaimg.cn/large/006tNc79gy1fzos2z0uhnj30vm0bidiv.jpg)
```
<style>
a:link {text-decoration:none;}    /* unvisited link */
a:visited {text-decoration:none;} /* visited link */
a:hover {text-decoration:underline;}   /* mouse over link */
a:active {text-decoration:underline;}  /* selected link */
</style>
```
![](https://ws1.sinaimg.cn/large/006tNc79gy1fzote6iljcj30nq0fbdhx.jpg)
```
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
<style>
a:link,a:visited
{
	display:block;
	font-weight:bold;
	color:#FFFFFF;
	background-color:#98bf21;
	width:120px;
	text-align:center;
	padding:4px;
	text-decoration:none;
}
a:hover,a:active
{
	background-color:#7A991A;
}
</style>
</head>

<body>
<a href="/css/" target="_blank">这是一个链接</a>
</body>
</html>
```

# 列表项:所有的CSS列表属性
所有的CSS列表属性
属性|	描述
:-:|:-:
list-style	|简写属性。用于把所有用于列表的属性设置于一个声明中
list-style-image	|将图象设置为列表项标志。
list-style-position	|设置列表中列表项标志的位置。
list-style-type	|设置列表项标志的类型。

## list-style-image设定列表项标志的图像

属性值是url
![](https://ws3.sinaimg.cn/large/006tNc79gy1fzotmxl8kfj30ok0cbq48.jpg)
```
<style>
ul
{
	list-style-image:url('sqpurple.gif');
}
</style>
```

## list-style-position属性
inside	列表项目标记放置在文本以内，且环绕文本根据标记对齐。
outside	默认值。保持标记位于文本的左侧。列表项目标记放置在文本以外，且环绕文本不根据标记对齐。
![](http://www.runoob.com/wp-content/uploads/2013/08/E3EA5DE4-B898-450C-BE58-D2EBC1C70D8E.jpg)

```
<h2>Outside:</h2>
<ul style="list-style-position:outside;width:25%;">
<li style="border:1px solid #000000">Coffee</li>
<li style="border:1px solid #000000;border-top:0">Tea</li>
<li style="border:1px solid #000000;border-top:0">Coca-cola</li>
</ul>
<h2>Inside:</h2>
<ul style="list-style-position:inside;width:25%;">
<li style="border:1px solid #000000;">Coffee</li>
<li style="border:1px solid #000000;border-top:0;">Tea</li>
<li style="border:1px solid #000000;border-top:0;">Coca-cola</li>
</ul>
```
## list-style-type列表项标志类型

![](https://ws1.sinaimg.cn/large/006tNc79gy1fzotsv4mwqj304m0cw0t8.jpg)
```
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
<style>
ul.a {list-style-type:circle;}
ul.b {list-style-type:square;}
ol.c {list-style-type:upper-roman;}
ol.d {list-style-type:lower-alpha;}
</style>
</head>

<body>
<p>无序列表实例:</p>

<ul class="a">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Coca Cola</li>
</ul>

<ul class="b">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Coca Cola</li>
</ul>

<p>有序列表实例:</p>

<ol class="c">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Coca Cola</li>
</ol>

<ol class="d">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Coca Cola</li>
</ol>

</body>
</html>
```

# 边框
CSS边框属性允许你指定一个元素边框的样式和颜色。

CSS 边框属性
属性	|描述
:-:|:-:
border|	简写属性，用于把针对四个边的属性设置在一个声明。
border-style|	用于设置元素所有边框的样式，或者单独地为各边设置边框样式。
border-width|	简写属性，用于为元素的所有边框设置宽度，或者单独地为各边边框设置宽度。
border-color|	简写属性，设置元素的所有边框中可见部分的颜色，或为 4 个边分别设置颜色。
border-bottom	|简写属性，用于把下边框的所有属性设置到一个声明中。
border-bottom-color	|设置元素的下边框的颜色。
border-bottom-style	|设置元素的下边框的样式。
border-bottom-width	|设置元素的下边框的宽度。
border-left	|简写属性，用于把左边框的所有属性设置到一个声明中。
border-left-color	|设置元素的左边框的颜色。
border-left-style	|设置元素的左边框的样式。
border-left-width|	设置元素的左边框的宽度。
border-right|	简写属性，用于把右边框的所有属性设置到一个声明中。
border-right-color|	设置元素的右边框的颜色。
border-right-style	|设置元素的右边框的样式。
border-right-width|	设置元素的右边框的宽度。
border-top	|简写属性，用于把上边框的所有属性设置到一个声明中。
border-top-color|	设置元素的上边框的颜色。
border-top-style|	设置元素的上边框的样式。
border-top-width|	设置元素的上边框的宽度。

## border-style边框样式
border-style值:
none: 默认无边框
dotted: 定义一个点线边框
dashed: 定义一个虚线边框
solid: 定义实线边框
double: 定义两个边框。 两个边框的宽度和 border-width 的值相同
groove: 定义3D沟槽边框。效果取决于边框的颜色值
ridge: 定义3D脊边框。效果取决于边框的颜色值
inset:定义一个3D的嵌入边框。效果取决于边框的颜色值
outset: 定义一个3D突出边框。 效果取决于边框的颜色值
![](https://ws2.sinaimg.cn/large/006tNc79gy1fzoulbtbcxj30nk0f775q.jpg)

## border-width边框宽度
您可以通过 border-width 属性为边框指定宽度。

为边框指定宽度有两种方法：可以指定长度值，比如 2px 或 0.1em(单位为 px, pt, cm, em 等)，或者使用 3 个关键字之一，它们分别是 thick 、medium（默认值） 和 thin。

注意：CSS 没有定义 3 个关键字的具体宽度，所以一个用户可能把 thick 、medium 和 thin 分别设置为等于 5px、3px 和 2px，而另一个用户则分别设置为 3px、2px 和 1px。
```
p.one
{
    border-style:solid;
    border-width:5px;
}
p.two
{
    border-style:solid;
    border-width:medium;
}
```

## border-color边框颜色
border-color属性用于设置边框的颜色。可以设置的颜色：

name - 指定颜色的名称，如 "red"
RGB - 指定 RGB 值, 如 "rgb(255,0,0)"
Hex - 指定16进制值, 如 "#ff0000"
您还可以设置边框的颜色为"transparent"。

注意： border-color单独使用是不起作用的，必须得先使用border-style来设置边框样式。
```
p.one
{
    border-style:solid;
    border-color:red;
}
p.two
{
    border-style:solid;
    border-color:#98bf21;
}
```

# 表格边框border属性

## border-collapse折叠边框
下面的例子指定了一个表格的Th和TD元素的黑色边框：
```
table, th, td
{
    border: 1px solid black;
}
```
请注意，在上面的例子中的表格有双边框。这是因为表和th/ td元素有独立的边界。

为了显示一个表的单个边框，使用 border-collapse属性。
border-collapse 属性设置表格的边框是否被折叠成一个单一的边框或隔开：
```
table
{
    border-collapse:collapse;
}
table,th, td
{
    border: 1px solid black;
}
```

## Width和height表格宽度和高度
Width和height属性定义表格的宽度和高度。

下面的例子是设置100％的宽度，50像素的th元素的高度的表格：
```
table
{
    width:100%;
}
th
{
    height:50px;
}
```

## text-align表格文字对齐
表格中的文本对齐和垂直对齐属性。

text-align属性设置水平对齐方式，向左，右，或中心：
```
td
{
    text-align:right;
}
```
垂直对齐属性设置垂直对齐，比如顶部，底部或中间：
```
td
{
    height:50px;
    vertical-align:bottom;
}
```
## padding表格填充
如果在表的内容中控制空格之间的边框，应使用td和th元素的填充属性：
```
td
{
    padding:15px;
}
```
## 表格边框、文本、背景颜色
下面的例子指定边框的颜色，和th元素的文本和背景颜色：
```
table, td, th
{
    border:1px solid green;
}
th
{
    background-color:green;
    color:white;
}
```

# Box Model盒子模型
所有HTML元素可以看作盒子，在CSS中，"box model"这一术语是用来设计和布局时使用。

CSS盒模型本质上是一个盒子，封装周围的HTML元素，它包括：边距，边框，填充，和实际内容。

盒模型允许我们在其它元素和周围元素边框之间的空间放置元素。

下面的图片说明了盒子模型(Box Model)：

![](http://www.runoob.com/images/box-model.gif)
不同部分的说明：

- Margin(外边距) - 清除边框外的区域，外边距是透明的。
- Border(边框) - 围绕在内边距和内容外的边框。
- Padding(内边距) - 清除内容周围的区域，内边距是透明的。
- Content(内容) - 盒子的内容，显示文本和图像。
当您指定一个==CSS元素的宽度和高度属性==时，你只是设置==内容区域的宽度和高度==。
要知道，完全大小的元素，你还必须添加填充，边框和边距。

下面的例子中的元素的总宽度为300px：
```
div {
    width: 300px;
    border: 25px solid green;
    padding: 25px;
    margin: 25px;
}
```
让我们自己算算：
300px (宽)
+ 50px (左 + 右填充)
+ 50px (左 + 右边框)
+ 50px (左 + 右边距)
= 450px

试想一下，你只有250像素的空间。让我们设置总宽度为250像素的元素:

```
div {
    width: 220px;
    padding: 10px;
    border: 5px solid gray;
    margin: 0;
}
```
最终元素的总宽度计算公式是这样的：

总元素的宽度=宽度+左填充+右填充+左边框+右边框+左边距+右边距

元素的总高度最终计算公式是这样的：

总元素的高度=高度+顶部填充+底部填充+上边框+下边框+上边距+下边距
