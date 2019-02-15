---
title: 学习一种新的语言吧！HTML学习记录笔记（二）
tags:
  - HTML
  - 学习笔记
categories:
  - 语言语法
  - HTML
abbrlink: 31045
date: 2019-02-01 15:18:52
---

<p class="description">主要讲了html标签</p>

<!--more-->

@[TOC]

# HTML图像
## HTML图像三个标签

标签|	描述
:-:|:-:
``<img>``	|定义图像
``<map>	``|定义图像地图 [点击查看map详细属性](http://www.runoob.com/tags/tag-map.html)
``<area>``|	定义图像地图中的可点击区域

## 图像标签``<img>``，及源属性（Src）
> 在 HTML 中，图像由``<img>`` 标签定义。``<img> ``是空标签，意思是说，它只包含属性，并且没有闭合标签。
要在页面上显示图像，你需要使用源属性（src）。src 指 "source"。源属性的值是图像的 URL 地址。

从技术上讲，图像并不会插入 HTML 页面中，而是链接到 HTML 页面上。``<img>`` 标签的作用是为被引用的图像创建占位符。

定义图像的语法是：
``<img src="url" alt="some_text">``
- URL 指存储图像的位置。
如果名为 "pulpit.jpg" 的图像位于 www.runoob.com 的 images 目录中，那么其 URL 为 http://www.runoob.com/images/pulpit.jpg。

- 浏览器将图像显示在文档中图像标签出现的地方。如果你将图像标签置于两个段落之间，那么浏览器会首先显示第一个段落，然后显示图片，最后显示第二段。

## img标签alt属性
> alt 属性用来为图像定义一串预备的、可替换的文本。

替换文本属性的值是用户定义的。
``<img src="boat.gif" alt="Big Boat">``

在浏览器无法载入图像时，替换文本属性告诉读者她们失去的信息。  此时，浏览器将显示这个替代性的文本而不是图像。
为页面上的图像都加上替换文本属性是个好习惯，这样有助于更好的显示信息，并且对于那些使用纯文本浏览器的人来说是非常有用的。

## img标签属性高度height与宽度width
> height（高度） 与 width（宽度）属性用于设置图像的高度与宽度。
属性值默认单位为像素:

``<img src="pulpit.jpg" alt="Pulpit rock" width="304" height="228">``

> <i class="fa fa-edit"></i> 指定图像的高度和宽度是一个很好的习惯。
如果图像指定了高度宽度，页面加载时就会保留指定的尺寸。如果没有指定图片的大小，加载页面时有可能会破坏HTML页面的整体布局。

假如某个 HTML 文件包含十个图像，那么为了正确显示这个页面，需要加载 11 个文件。加载图片是需要时间的，所以我们的建议是：慎用图片。

> <i class="fa fa-exclamation-circle"></i> 加载页面时，要注意插入页面图像的路径，如果不能正确设置图像的位置，浏览器无法加载图片，图像标签就会显示一个破碎的图片。

## img属性usemap
>usemap值为#mapname，作用是将图像定义为客户器端图像映射
即：`<img usemap="#mapname">`

<a href="#s5">点我看img-usemap的示例</a>

## ``<map>`` 标签
>``<map>`` 标签用于客户端图像映射。图像映射指带有可点击区域的一幅图像。（map只有name/id这些命名的属性哦！）

``<img>``中的 usemap 属性可引用 ``<map> ``中的 id 或 name 属性（取决于浏览器），所以我们应同时向`` <map> ``添加 id 和 name 属性。

><i class="fa fa-exclamation-circle"></i> `` <img> ``标签中的 usemap 属性与 ``<map> ``元素中的 name 相关联，以创建图像与映射之间的关系。

<a href="#s5">点我看用map-name、img-usemap的示例</a>
如下面代码中，用到了map标签，和img的属性usemap：
```
<img src="planets.gif" width="145" height="126" alt="Planets" usemap="#planetmap">

<map name="planetmap">
  <area shape="rect" coords="0,0,82,126" alt="Sun" href="sun.htm">
  <area shape="circle" coords="90,58,3" alt="Mercury" href="mercur.htm">
  <area shape="circle" coords="124,58,8" alt="Venus" href="venus.htm">
</map>
```

## HTML `<area>`标签
> ``<area>``标签定义图像映射内部的区域（图像映射指的是带有可点击区域的图像）。``<area> ``元素始终嵌套在`` <map>`` 标签内部。

<a href="#s5">点我看用map-name、img-usemap/src/width/height、area-shape/coords/alt/href的示例</a>
在 HTML 中，``<area> ``标签没有结束标签。
```
<img src="planets.gif" width="145" height="126" alt="Planets" usemap="#planetmap">

<map name="planetmap">
  <area shape="rect" coords="0,0,82,126" alt="Sun" href="sun.htm">
  <area shape="circle" coords="90,58,3" alt="Mercury" href="mercur.htm">
  <area shape="circle" coords="124,58,8" alt="Venus" href="venus.htm">
</map>
```
如上述代码中，用到了area，其中，shape指的是点击区域的形状，coords指的应该是链接区域在图片中的坐标（像素为单位）

- 矩形：左上角顶点坐标为(x1,y1)，右下角顶点坐标为(x2,y2)
```
<area shape="rect" coords="x1,y1,x2,y2" href=url>
```
- 圆形：圆心坐标为(x1,y1)，半径为r
```
<area shape="circle" coords="x1,y1,r" href=url>
```
- 多边形：各顶点坐标依次为(x1,y1)、(x2,y2)、(x3,y3) ......
```
<area shape="poly" coords="x1,y1,x2,y2 ......" href=url>
```


[点我看area的多种属性](http://www.runoob.com/tags/tag-area.html)

---
## 在文字中排列图片

![](https://ws4.sinaimg.cn/large/006tNc79gy1fznq94e89uj310z0c2q6y.jpg)
源码
```
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
</head>
<body>

<h4>默认对齐的图像 (align="bottom"):</h4>
<p>这是一些文本。 <img src="smiley.gif" alt="Smiley face" width="32" height="32"> 这是一些文本。</p>

<h4>图片使用 align="middle":</h4>
<p>这是一些文本。 <img src="smiley.gif" alt="Smiley face" align="middle" width="32" height="32">这是一些文本。</p>

<h4>图片使用 align="top":</h4>
<p>这是一些文本。 <img src="smiley.gif" alt="Smiley face" align="top" width="32" height="32">这是一些文本。</p>

<p><b>注意:</b>在HTML 4中 align 属性已废弃，HTML5 已不支持该属性，可以使用 CSS 代替。</p>

</body>
</html>
```
以上用了style align:middle/top/bottom(默认)


## 创建图片链接。

参考：<a href="#s4">HTML之创建图片链接示例</a>。

## 创建图像映射<a id="s5"></a>

![](https://ws2.sinaimg.cn/large/006tNc79gy1fznqfb2shlj30sc0bydjb.jpg)
源码
```
<p>点击太阳或其他行星，注意变化：</p>

<img src="planets.gif" width="145" height="126" alt="Planets" usemap="#planetmap">

<map name="planetmap">
  <area shape="rect" coords="0,0,82,126" alt="Sun" href="sun.htm">
  <area shape="circle" coords="90,58,3" alt="Mercury" href="mercur.htm">
  <area shape="circle" coords="124,58,8" alt="Venus" href="venus.htm">
</map>
```

## 浮动图片

![](https://ws4.sinaimg.cn/large/006tNc79gy1fznr06o9gpj31230bdtbw.jpg)
源码
```
<p>
<img src="smiley.gif" alt="Smiley face" style="float:left" width="32" height="32"> 一个带图片的段落，图片浮动在这个文本的左边。
</p>

<p>
<img src="smiley.gif" alt="Smiley face" style="float:right" width="32" height="32"> 一个带图片的段落，图片浮动在这个文本的右边。
</p>
```
以上用了style float:left/right

# HTML表格
> 表格由 `<table>` 标签来定义。每个表格均有若干行（由 `<tr>` 标签定义），每行被分割为若干单元格（由 `<td>` 标签定义）。
字母 td 指表格数据（table data），即数据单元格的内容。数据单元格可以包含文本、图片、列表、段落、表单、水平线、表格等等。

## HTML表格标签
![总结一下表格使用](http://www.runoob.com/wp-content/uploads/2014/08/learn-html5-tables-5-638.jpg)

标签|	描述
:-:|:-:
`<table>`	|定义表格
`<th>`|	定义表格的表头
`<tr>`|	定义表格的行
`<td>`|	定义表格单元
`<caption>`|	定义表格标题
`<colgroup>`|	定义表格列的组
`<col>`|	定义用于表格列的属性
`<thead>`|	定义表格的页眉
`<tbody>`	|定义表格的主体
`<tfoot>`	|定义表格的页脚


![](https://ws4.sinaimg.cn/large/006tNc79gy1fzoht9qzfaj30eq0bw0t2.jpg)
```
<p>
每个表格从一个 table 标签开始。
每个表格行从 tr 标签开始。
每个表格的数据从 td 标签开始。
</p>

<h4>一列:</h4>
<table border="11">
<tr>
  <td>100</td>
</tr>
</table>

<h4>一行三列:</h4>
<table border="21">
<tr>
  <td>100</td>
  <td>200</td>
  <td>300</td>
</tr>
</table>

<h4>两行三列:</h4>
<table border="12">
<tr>
  <td>100</td>
  <td>200</td>
  <td>300</td>
</tr>
<tr>
  <td>400</td>
  <td>500</td>
  <td>600</td>
</tr>
</table>
```
## 表格边框属性border
> 如果不定义边框属性，表格将不显示边框。有时这很有用，但是大多数时候，我们希望显示边框。

![](https://ws1.sinaimg.cn/large/006tNc79gy1fzohvqdyd8j30o8029weh.jpg)
```
<table border="1">
    <tr>
        <td>Row 1, cell 1</td>
        <td>Row 1, cell 2</td>
    </tr>
</table>
```

## 表格表头属性th
> 表格的表头使用 <th> 标签进行定义。
大多数浏览器会把表头显示为粗体居中的文本：

![](https://ws1.sinaimg.cn/large/006tNc79gy1fzohvbe0moj30o504qaa7.jpg)
```
<table border="1">
    <tr>
        <th>Header 1</th>
        <th>Header 2</th>
    </tr>
    <tr>
        <td>row 1, cell 1</td>
        <td>row 1, cell 2</td>
    </tr>
    <tr>
        <td>row 2, cell 1</td>
        <td>row 2, cell 2</td>
    </tr>
</table>
```

## 示例1：跨两行、跨两列的单元格

![](https://ws3.sinaimg.cn/large/006tNc79gy1fzohxxvtudj30od03s0sv.jpg)
![](https://ws3.sinaimg.cn/large/006tNc79gy1fzohyka2dfj30nu04nt8x.jpg)
```

<h4>单元格跨两格:</h4>
<table border="1">
<tr>
  <th>Name</th>
  <th colspan="2">Telephone</th>
</tr>
<tr>
  <td>Bill Gates</td>
  <td>555 77 854</td>
  <td>555 77 855</td>
</tr>
</table>

<h4>单元格跨两列:</h4>
<table border="1">
<tr>
  <th>First Name:</th>
  <td>Bill Gates</td>
</tr>
<tr>
  <th rowspan="2">Telephone:</th>
  <td>555 77 854</td>
</tr>
<tr>
  <td>555 77 855</td>
</tr>
</table>
```

## 示例2：表格内加标签
![](https://ws2.sinaimg.cn/large/006tNc79gy1fzohz6phiej30o90lpaay.jpg)
```

<table border="1">
<tr>
  <td>
   <p>这是一个段落</p>
   <p>这是另一个段落</p>
  </td>
  <td>这个单元格包含一个表格:
   <table border="1">
   <tr>
     <td>A</td>
     <td>B</td>
   </tr>
   <tr>
     <td>C</td>
     <td>D</td>
   </tr>
   </table>
  </td>
</tr>
<tr>
  <td>这个单元格包含一个列表
   <ul>
    <li>apples</li>
    <li>bananas</li>
    <li>pineapples</li>
   </ul>
  </td>
  <td>HELLO</td>
</tr>
</table>
```

## 示例3：使用 Cell padding 调整单元格边距
> 创建单元格内容与其边框之间的空白、增加单元格之间的距离。

![](https://ws3.sinaimg.cn/large/006tNc79gy1fzoi4m9iywj305x0d2dge.jpg)
```
<h4>没有单元格间距:</h4>
<table border="1">
<tr>
  <td>First</td>
  <td>Row</td>
</tr>
<tr>
  <td>Second</td>
  <td>Row</td>
</tr>
</table>

<h4>单元格间距="0":</h4>
<table border="1" cellspacing="0">
<tr>
  <td>First</td>
  <td>Row</td>
</tr>
<tr>
  <td>Second</td>
  <td>Row</td>
</tr>
</table>

<h4>单元格间距="10":</h4>
<table border="1" cellspacing="10">
<tr>
  <td>First</td>
  <td>Row</td>
</tr>
<tr>
  <td>Second</td>
  <td>Row</td>
</tr>
</table>
```

![再次回顾一下表格](http://www.runoob.com/wp-content/uploads/2014/08/table-thead-tbody-tfoot.png)

# HTML列表
## 列表标签ol/ul/li/dl/dt/dd
标签|	描述
:-:|:-:
ol|	定义有序列表
ul|	定义无序列表
li|	定义列表项
dl|	定义列表
dt|	自定义列表项目
dd|	定义自定列表项的描述

## 有序列表

> 有序列表也是一列项目，列表项目使用数字进行标记。 有序列表始于 ``<ol>`` 标签。每个列表项始于 ``<li> ``标签。
列表项使用**数字**来标记。
```
<ol>
<li>Coffee</li>
<li>Milk</li>
</ol>
```

## 无序列表
> 无序列表是一个项目的列表,无序列表使用 ``<ul>`` 标签。
此列项目使用粗体圆点（典型的小黑圆圈）进行标记。

![](https://ws1.sinaimg.cn/large/006tNc79gy1fzoi6rhrknj3032020748.jpg)
```
<ul>
<li>Coffee</li>
<li>Milk</li>
</ul>
```

## 嵌套列表
![](https://ws1.sinaimg.cn/large/006tNc79gy1fzoi5t7itej3065070jrl.jpg)
```
<ul>
  <li>Coffee</li>
  <li>Tea
    <ul>
      <li>Black tea</li>
      <li>Green tea
        <ul>
          <li>China</li>
          <li>Africa</li>
        </ul>
      </li>
    </ul>
  </li>
  <li>Milk</li>
</ul>
```

## 自定义列表
> 自定义列表不仅仅是一列项目，而是项目及其注释的组合。
自定义列表以 ``<dl> ``标签开始。
自定义列表项以`` <dt> ``开始。
自定义列表项的定义以 ``<dd>`` 开始。

![](https://ws1.sinaimg.cn/large/006tNc79gy1fzoi7jwco3j3069032glo.jpg)

```
<h4>一个自定义列表：</h4>
<dl>
  <dt>Coffee</dt>
  <dd>- black hot drink</dd>
  <dt>Milk</dt>
  <dd>- white cold drink</dd>
</dl>
```
# HTML区块
## HTML分组标签
标签|	描述
:-:|:-:
`<div>`	|定义了文档的区域，块级 (block-level)
`<span>`|	用来组合文档中的行内元素， 内联元素(inline)

## HTML区块元素
> 大多数 HTML 元素被定义为块级元素或内联元素。
块级元素在浏览器显示时，通常会以新行来开始（和结束）。

实例: `<h1>, <p>, <ul>, <table>`

## HTML 内联元素
> 内联元素在显示时通常不会以新行开始。
实例: `<b>, <td>, <a>, <img>`

## `<div>` 块级元素
> HTML `<div> `元素是块级元素，它可用于组合其他 HTML 元素的容器。`<div>` 元素没有特定的含义。除此之外，由于它属于块级元素，浏览器会在其前后显示折行。

`<div>` 标签定义 HTML 文档中的一个分隔区块或者一个区域部分。常用于：
1. 组合块级元素，以便通过 CSS 来对这些元素进行格式化,与 CSS 一同使用，`<div>`元素可用于对大的内容块设置样式属性。
2. 文档布局。它取代了使用表格定义布局的老式方法。使用 `<table>` 元素进行文档布局不是表格的正确用法。`<table> `元素的作用是显示表格化的数据。
```
<p>这是一些文本。</p>

<div style="color:#0000FF" align=right>
  <h3>这是一个在 div 元素中的标题。</h3>
  <p>这是一个在 div 元素中的文本。</p>
</div>

<p>这是一些文本。</p>
```

显示如下：
![](https://ws2.sinaimg.cn/large/006tNc79gy1fzow5zcmuvj30ja050mxj.jpg)

## 属性`align`

属性|值
-|:-
align|left right center justify

## `<span>` 内联元素
> HTML `<span>` 元素是内联元素，可用作文本的容器。`<span>` 元素也没有特定的含义。

当与 CSS 一同使用时，`<span> `元素可用于为部分文本设置样式属性。使用 <span> 元素对文本中的一部分进行着色：
<p>我的母亲有 <span style="color:blue;font-weight:bold">蓝色</span> 的眼睛，我得父亲有 <span style="color:darkolivegreen;font-weight:bold">碧绿色</span> 的眼睛。</p>

```
<p>我的母亲有 <span style="color:blue;font-weight:bold">蓝色</span> 的眼睛，我得父亲有 <span style="color:darkolivegreen;font-weight:bold">碧绿色</span> 的眼睛。</p>
```
被 `<span> `元素包含的文本，可以使用 CSS 对它定义样式，或者使用 JavaScript 对它进行操作。
