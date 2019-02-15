---
title: 学习CSS自定义样式，让博客焕然一新（三）
tags:
  - CSS
  - 学习笔记
abbrlink: 63269
date: 2019-01-31 12:19:00
---
<p class="description">没想到啊，CSS内容还是很多~不过，坚持！👊应该这章就可以写完了~基础部分就会很扎实啦！基本上就可以达到看到css与html结合的样式，也能够分析90%以上啦~
继续勤奋学习css吧~
在第二章里面，我们学了css轮廓、外边距、填充、分组&嵌套选择器、尺寸、显示与可见性、溢出、组合选择器、定位、对齐。接下来要学：伪类、伪元素、导航栏、下拉菜单、提示工具、图像透明度。
</p>

<!--more-->
目录如下：

@[TOC]

# CSS 伪类(Pseudo-classes)
CSS伪类是用来添加一些选择器的特殊效果。
## 所有CSS伪类/元素
选择器|	示例	|示例说明
:-:|:-:|:-:
:link|	a:link|	选择所有未访问链接
:visited|	a:visited	|选择所有访问过的链接
:active|	a:active	|选择正在活动链接
:hover|	a:hover	|把鼠标放在链接上的状态
:focus	|input:focus|	选择元素输入后具有焦点
:first-letter|	p:first-letter|	选择每个`<p>` 元素的第一个字母
:first-line	|p:first-line	|选择每个`<p>` 元素的第一行
:first-child	|p:first-child|	选择器匹配属于任意元素的第一个子元素的 `<p>` 元素
:before|	p:before	|在每个`<p>`元素之前插入内容
:after	|p:after|	在每个`<p>`元素之后插入内容
:lang(language)|	p:lang(it)	|为`<p>`元素的lang属性选择一个开始值

## 伪类的语法
`selector:pseudo-class {property:value;}
`
CSS类也可以使用伪类：
`selector.class:pseudo-class {property:value;}
`
## anchor伪类
在支持 CSS 的浏览器中，链接的不同状态都可以以不同的方式显示
```
a:link {color:#FF0000;} /* 未访问的链接 */
a:visited {color:#00FF00;} /* 已访问的链接 */
a:hover {color:#FF00FF;} /* 鼠标划过链接 */
a:active {color:#0000FF;} /* 已选中的链接 */
```
注意： 在CSS定义中，a:hover 必须被置于 a:link 和 a:visited 之后，才是有效的。

注意： 在 CSS 定义中，a:active 必须被置于 a:hover 之后，才是有效的。

注意：伪类的名称不区分大小写。

## 伪类和CSS类
伪类可以与 CSS 类配合使用：
```
a.red:visited {color:#FF0000;}
<a class="red" href="css-syntax.html">CSS 语法</a>
```
如果在上面的例子的链接已被访问，它会显示为红色。

## :first-child 伪类
您可以使用 :first-child 伪类来选择父元素的第一个子元素。

注意：在IE8的之前版本必须声明`<!DOCTYPE> `，这样 :first-child 才能生效。
### 匹配第一个` <p> `元素
在下面的例子中，选择器匹配作为任何元素的第一个子元素的` <p>` 元素：
```
p:first-child
{
    color:blue;
}
```
### 匹配所有`<p> `元素中的第一个` <i>` 元素
在下面的例子中，选择相匹配的所有`<p>`元素的第一个 `<i> `元素：
```
p > i:first-child
{
    color:blue;
}
```
### 匹配所有作为第一个子元素的` <p>` 元素中的所有` <i> `元素
在下面的例子中，选择器匹配所有作为元素的第一个子元素的 `<p>` 元素中的所有 `<i> `元素：
```
p:first-child i
{
    color:blue;
}
```
### :lang 伪类
:lang 伪类使你有能力为不同的语言定义特殊的规则
注意：IE8必须声明`<!DOCTYPE>`才能支持:lang伪类。
在下面的例子中，:lang 类为属性值为 no 的q元素定义引号的类型：
```
q:lang(no) {quotes: "~" "~";}
```
# 伪元素
CSS伪元素是用来添加一些选择器的特殊效果。
## 伪元素的语法
selector:pseudo-element {property:value;}
CSS类也可以使用伪元素：
selector.class:pseudo-element {property:value;}

## :first-line 伪元素
"first-line" 伪元素用于向文本的首行设置特殊样式。

在下面的例子中，浏览器会根据 "first-line" 伪元素中的样式对 p 元素的第一行文本进行格式化：

```
p:first-line
{
    color:#ff0000;
    font-variant:small-caps;
}
```

## :first-letter 伪元素
"first-letter" 伪元素用于向文本的首字母设置特殊样式：
```
p:first-letter
{
    color:#ff0000;
    font-size:xx-large;
}
```
注意：`"first-line"\ "first-letter" ` 伪元素只能用于块级元素。

注意： 下面的属性可应用于 `"first-line" \ "first-letter"` 伪元素：

font properties
color properties
background properties
word-spacing
letter-spacing
text-decoration
vertical-align
text-transform
line-height
clear

## 伪元素和CSS类
伪元素可以结合CSS类：
```
p.article:first-letter {color:#ff0000;}

<p class="article">文章段落</p>
```
上面的例子会使所有 class 为 article 的段落的首字母变为红色。

## 多个伪元素
可以结合多个伪元素来使用。

在下面的例子中，段落的第一个字母将显示为红色，其字体大小为 xx-large。第一行中的其余文本将为蓝色，并以小型大写字母显示。

段落中的其余文本将以默认字体大小和颜色来显示：
```
p:first-letter
{
    color:#ff0000;
    font-size:xx-large;
}
p:first-line
{
    color:#0000ff;
    font-variant:small-caps;
}
```
## :before 伪元素
`:before` 伪元素可以在元素的内容前面插入新内容。
下面的例子在每个` <h1>`元素前面插入一幅图片：
```
h1:before
{
    content:url(smiley.gif);
}
```

## :after 伪元素
`:after` 伪元素可以在元素的内容之后插入新内容。

下面的例子在每个` <h1> `元素后面插入一幅图片：
```
h1:after
{
    content:url(smiley.gif);
}
```
## 关于伪类、伪元素
伪类选择元素基于的是`当前元素处于的状态`，或者说`元素当前所具有的特性`，而不是元素的id、class、属性等静态的标志。
由于状态是动态变化的，所以一个元素达到一个特定状态时，它可能得到一个伪类的样式；当状态改变时，它又会失去这个样式。
由此可以看出，它的功能和class有些类似，但它是基于文档之外的抽象，所以叫==伪类==。

与伪类针对特殊状态的元素不同的是，伪元素是`对元素中的特定内容进行操作`，它所操作的层次比伪类更深了一层，也因此它的动态性比伪类要低得多。
实际上，设计伪元素的目的就是去==选取诸如元素内容第一个字（母）、第一行，选取某些内容前面或后面==这种普通的选择器无法完成的工作。它控制的内容实际上和元素是相同的，但是它本身只是基于元素的抽象，并不存在于文档中，所以叫==伪元素==。

# 导航栏
熟练使用导航栏，对于任何网站都非常重要。使用CSS你可以转换成好看的导航栏而不是枯燥的HTML菜单。
==导航栏=链接列表==
作为标准的HTML基础一个导航栏是必须的。在我们的例子中我们将建立一个标准的HTML列表导航栏。导航条基本上是一个链接列表，所以使用` <ul>` 和` <li>`元素非常有意义：

```
<ul>
  <li><a href="#home">主页</a></li>
  <li><a href="#news">新闻</a></li>
  <li><a href="#contact">联系</a></li>
  <li><a href="#about">关于</a></li>
</ul>
```
现在，让我们从列表中删除边距和填充：
```
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
}
```
例子解析：

- list-style-type:none - 移除列表前小标志。一个导航栏并不需要列表标记
- 移除浏览器的默认设置将边距和填充设置为0
上面的例子中的代码是垂直和水平导航栏使用的标准代码。

## 垂直导航栏
上面的代码，我们只需要 `<a>`元素的样式，建立一个垂直的导航栏：
```
a
{
    display:block;
    width:60px;
}
```
示例说明：

- display:block - 显示块元素的链接，让整体变为可点击链接区域（不只是文本），它允许我们指定宽度
- width:60px - 块元素默认情况下是最大宽度。我们要指定一个60像素的宽度

注意： 请务必指定 `<a>`元素在垂直导航栏的的宽度。如果省略宽度，IE6可能产生意想不到的效果。

## 垂直导航条实例
创建一个简单的垂直导航条实例，在鼠标移动到选项时，修改背景颜色：
```
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

/* 鼠标移动到选项上修改背景颜色 */
li a:hover {
    background-color: #555;
    color: white;
}
```
## 激活/当前导航条实例
在点击了选项后，我们可以添加` "active" `类来标准哪个选项被选中：
```
.active {
    background-color: #4CAF50;
    color: white;
}
```

## 创建链接并添加边框
- 可以在` <li> `or` <a> `上添加`text-align:center` 样式来让链接居中。

- 可以在 border `<ul> `上添加 border 属性来让导航栏有边框。如果要在每个选项上添加边框，可以在每个 `<li>` 元素上添加`border-bottom` :
```
ul {
    border: 1px solid #555;
}

li {
    text-align: center;
    border-bottom: 1px solid #555;
}

li:last-child {
    border-bottom: none;
}
```
## 全屏高度的固定导航条
接下来我们创建一个左边是全屏高度的固定导航条，右边是可滚动的内容。
```
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 25%;
    background-color: #f1f1f1;
    height: 100%; /* 全屏高度 */
    position: fixed;
    overflow: auto; /* 如果导航栏选项多，允许滚动 */
}
```
注意: 该实例可以在移动设备上使用。
## 水平导航栏
有两种方法创建横向导航栏。使用`内联(inline)`或`浮动(float)`的列表项。

这两种方法都很好，但如果你想链接到==具有相同的大小==，你必须使用浮动的方法。

## 内联列表项
建立一个横向导航栏的方法之一是指定元素， 下面代码是标准的内联:
```
li
{
    display:inline;
}
```
display:inline; -默认情况下，`<li>`元素是块元素。在这里，我们删除换行符之前和之后每个列表项，以显示一行。

## 浮动列表项
在上面的（内联列表项）例子中链接有不同的宽度。

对于所有的链接宽度相等，浮动 `<li>`元素，并指定为` <a>`元素的宽度：
```
li
{
    float:left;
}
a
{
    display:block;
    width:60px;
}
```
实例解析：

- float:left - 使用浮动块元素的幻灯片彼此相邻
- display:block - 显示块元素的链接，让整体变为可点击链接区域（不只是文本），它允许我们指定宽度
- width:60px - 块元素默认情况下是最大宽度。我们要指定一个60像素的宽度

## 水平导航条实例
创建一个水平导航条，在鼠标移动到选项后修改背景颜色。
```
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/*鼠标移动到选项上修改背景颜色 */
li a:hover {
    background-color: #111;
}
```
## 激活/当前导航条实例
在点击了选项后，我们可以添加 "active" 类来标准哪个选项被选中：
```
.active {
    background-color: #4CAF50;
}
```
## float:right;链接右对齐
将导航条最右边的选项设置右对齐 (float:right;)：
```
<ul>
  <li><a href="#home">主页</a></li>
  <li><a href="#news">新闻</a></li>
  <li><a href="#contact">联系</a></li>
  <li style="float:right"><a class="active" href="#about">关于</a></li>
</ul>
```
## border-right添加分割线
`<li> `通过 border-right 样式来添加分割线:
```
/* 除了最后一个选项(last-child) 其他的都添加分割线 */
li {
    border-right: 1px solid #bbb;
}

li:last-child {
    border-right: none;
}
```
## 固定导航条
可以设置页面的导航条固定在头部或者底部：
固定在头部
```
ul {
    position: fixed;
    top: 0;
    width: 100%;
}
```
固定在底部
```
ul {
    position: fixed;
    bottom: 0;
    width: 100%;
}
```
注意: 该实例可以在移动设备上使用。

## 灰色水平导航条
固定在底部
```
ul {
    border: 1px solid #e7e7e7;
    background-color: #f3f3f3;
}

li a {
    color: #666;
}
```

# 下拉菜单
使用 CSS 创建一个鼠标移动上去后显示下拉菜单的效果。
## 基本下拉菜单
当鼠标移动到指定元素上时，会出现下拉菜单。
```
<style>
.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding: 12px 16px;
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}
</style>

<div class="dropdown">
  <span>Mouse over me</span>
  <div class="dropdown-content">
    <p>Hello World!</p>
  </div>
</div>
```

实例解析
- HTML 部分：

  - 我们可以使用任何的 HTML 元素来打开下拉菜单，如：`<span>`, 或 `a <button>` 元素。
  - 使用容器元素 (如：` <div>`) 来创建下拉菜单的内容，并放在任何你想放的位置上。
  - 使用 `<div>` 元素来包裹这些元素，并使用 CSS 来设置下拉内容的样式。

- CSS 部分：
  - ==.dropdown== 类使用 position:relative,
  将设置下拉菜单的内容放置在下拉按钮 (使用position:absolute) 的右下角位置。
  - ==.dropdown-content== 类中是实际的下拉菜单。
  默认是隐藏的，在鼠标移动到指定元素后会显示。
  > 注意 :min-width 的值设置为 160px。你可以随意修改它。
如果你想设置下拉内容与下拉按钮的宽度一致，可设置 width 为 100% ( overflow:auto 设置可以在小尺寸屏幕上滚动)。
  - 我们使用 `box-shadow` 属性让下拉菜单看起来像一个"卡片"。
  - :hover 选择器用于在用户将鼠标移动到下拉按钮上时显示下拉菜单。

## 下拉菜单
创建下拉菜单，并允许用户选取列表中的某一项：
这个实例类似前面的实例，当我们在下拉列表中添加了链接，并设置了样式：
```
<style>
/* 下拉按钮样式 */
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* 容器 <div> - 需要定位下拉内容 */
.dropdown {
    position: relative;
    display: inline-block;
}

/* 下拉内容 (默认隐藏) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

/* 下拉菜单的链接 */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* 鼠标移上去后修改下拉菜单链接颜色 */
.dropdown-content a:hover {background-color: #f1f1f1}

/* 在鼠标移上去后显示下拉菜单 */
.dropdown:hover .dropdown-content {
    display: block;
}

/* 当下拉内容显示后修改下拉按钮的背景颜色 */
.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>

<div class="dropdown">
  <button class="dropbtn">下拉菜单</button>
  <div class="dropdown-content">
    <a href="#">菜鸟教程 1</a>
    <a href="#">菜鸟教程 2</a>
    <a href="#">菜鸟教程 3</a>
  </div>
</div>
```
## 下拉内容对齐方式
如果你想设置右浮动的下拉菜单内容方向是从右到左，而不是从左到右，可以添加以下代码 right: 0;
```
.dropdown-content {
    right: 0;
}
```

# 提示工具(Tooltip)
使用 HTML 与 CSS 来创建提示工具。

提示工具在鼠标移动到指定元素后触发.
## 基础提示框(Tooltip)
提示框在鼠标移动到指定元素上显示：
```
<style>
/* Tooltip 容器 */
.tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black; /* 悬停元素上显示点线 */
}

/* Tooltip 文本 */
.tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: black;
    color: #fff;
    text-align: center;
    padding: 5px 0;
    border-radius: 6px;

    /* 定位 */
    position: absolute;
    z-index: 1;
}

/* 鼠标移动上去后显示提示框 */
.tooltip:hover .tooltiptext {
    visibility: visible;
}
</style>

<div class="tooltip">鼠标移动到这
  <span class="tooltiptext">提示文本</span>
</div>
```

实例解析
- HTML)
  - 使用容器元素 (like `<div>`) 并添加 "tooltip" 类。在鼠标移动到 `<div> `上时显示提示信息。
  - 提示文本放在内联元素上(如 `<span>`) 并使用`class="tooltiptext"`。

- CSS）
  - tooltip 类使用 `position:relative`, 提示文本需要设置定位值 `position:absolute`。
  注意: 接下来的实例会显示更多的定位效果。
  - tooltiptext 类用于实际的提示文本。模式是隐藏的，在鼠标移动到元素显示 。设置了一些宽度、背景色、字体色等样式。
  - CSS3 `border-radius` 属性用于为提示框添加圆角。
  - `:hover` 选择器用于在鼠标移动到到指定元素` <div>` 上时显示的提示。

## 定位提示工具
以下实例中，提示工具显示在指定元素的右侧(left:105%) 。

注意 top:-5px 同于定位在容器元素的中间。使用数字 5 因为提示文本的顶部和底部的内边距（padding）是 5px。

如果你修改 padding 的值，top 值也要对应修改，这样才可以确保它是居中对齐的。

在提示框显示在左边的情况也是这个原理。
### 显示在右侧：
```
.tooltip .tooltiptext {
    top: -5px;
    left: 105%;
}
```
如果你想要提示工具显示在头部和底部。我们需要使用 margin-left 属性，并设置为 -60px。
这个数字计算来源是使用宽度的一半来居中对齐，即： width/2 (120/2 = 60)。
### 显示在头部：
```
.tooltip .tooltiptext {
    width: 120px;
    bottom: 100%;
    left: 50%;
    margin-left: -60px; /* 使用一半宽度 (120/2 = 60) 来居中提示工具 */
}
```
## 添加箭头
我们可以用CSS 伪元素 `::after `及 `content` 属性为提示工具创建一个小箭头标志，箭头是由边框组成的，但组合起来后提示工具像个语音信息框。

以下实例演示了如何为显示在顶部的提示工具添加底部箭头：
```
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
</head>
<style>
.tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: black;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;
    position: absolute;
    z-index: 1;
    bottom: 150%;
    left: 50%;
    margin-left: -60px;
}

.tooltip .tooltiptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: black transparent transparent transparent;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
}
</style>
<body style="text-align:center;">

<h2>顶部提示框/底部箭头</h2>

<div class="tooltip">鼠标移动到我这
  <span class="tooltiptext">提示文本</span>
</div>

</body>
</html>
```

## transition及opacity:淡入效果
我们可以使用 CSS3 transition 属性及 opacity 属性来实现提示工具的淡入效果:

左侧提示框/右侧箭头：
```
.tooltip .tooltiptext {
    opacity: 0;
    transition: opacity 1s;
}

.tooltip:hover .tooltiptext {
    opacity: 1;
}
```

# 图像透明/不透明
使用CSS很容易创建透明的图像。
## opacity实例1:创建一个透明图像
CSS3中属性的透明度是opacity。

首先，我们将向您展示如何用CSS创建一个透明图像。

```
img
{
  opacity:0.4;
  filter:alpha(opacity=40); /* IE8 及其更早版本 */
}
```
- IE9，Firefox，Chrome，Opera，和Safari浏览器使用透明度属性可以将图像变的不透明。 Opacity属性值从0.0 - 1.0。值越小，使得元素更加透明。

- IE8和早期版本使用滤镜：`alpha（opacity= x）`。 x可以采取的值是从`0 - 100`。较低的值，使得元素更加透明。

## 实例2:图像的透明度:悬停效果
将鼠标移到图像上
```
img
{
  opacity:0.4;
  filter:alpha(opacity=40); /*  IE8 及其更早版本 */
}
img:hover
{
  opacity:1.0;
  filter:alpha(opacity=100); /* IE8 及其更早版本 */
}
```
第一个CSS块是和例1中的代码类似。此外，我们还增加了当用户将鼠标悬停在其中一个图像上时发生什么。在这种情况下，当用户将鼠标悬停在图像上时，我们希望图片是清晰的。
此CSS是：opacity=1.

IE8和更早版本使用： filter:alpha(opacity=100).

当鼠标指针远离图像时，图像将重新具有透明度。

## 实例3:透明的盒子中的文字
首先，我们创建一个固定的高度和宽度的div元素，带有一个背景图片和边框。然后我们在第一个div内部创建一个较小的div元素。 这个div也有一个固定的宽度，背景颜色，边框:而且它是透明的。
透明的div里面，我们在P元素内部添加一些文本。
```
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
div.background
{
  width:500px;
  height:250px;
  background:url(klematis.jpg) repeat;
  border:2px solid black;
}
div.transbox
{
  width:400px;
  height:180px;
  margin:30px 50px;
  background-color:#ffffff;
  border:1px solid black;
  opacity:0.6;
  filter:alpha(opacity=60); /* IE8 及更早版本 */
}
div.transbox p
{
  margin:30px 40px;
  font-weight:bold;
  color:#000000;
}
</style>
</head>

<body>

<div class="background">
<div class="transbox">
<p>这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。这些文本在透明框里。
</p>
</div>
</div>

</body>
</html>
```
