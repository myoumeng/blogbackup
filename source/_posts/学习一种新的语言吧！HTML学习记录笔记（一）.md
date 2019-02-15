---
title: 学习一种新的语言吧！HTML学习记录笔记（一）
tags:
  - HTML
  - 学习笔记
categories:
  - 语言语法
  - HTML
abbrlink: 59711
date: 2019-01-27 10:25:30
---

<p class="description">我自从接触电脑后，就经常发现HTML这个神奇的东西出现，但是由于自己没有什么编程基础、非程序员💻，所以一直都没有使劲钻研这种语言，即使很多人说这个很简单...<br>而自从我开始对「博客blog」万分感兴趣后，我就改变了想法，我不愿意面对html时又是一头雾水了！知识改变未来，即使我是代码小白，也是有对编程的好奇之心滴！毕竟，我也是大一学过C++的人。我一定可以掌握html语言并且用它进行编写、改善我的博客等。</p>

<!--more-->

终于，我学会利用HEXO搭建了一个托管在GitHub的静态博客网站（使用的是基于NEXT模板的Gemini风格，也就是你们现在看到的这个网站啦），虽然网站还没有达到我想要的效果，不过它还在建设当中，这期间，我不断参考他人的网站、看教程，一直不停地构建、修改、调整我的blog。

在我玩hexo博客时，以下命令不知道用了多少次、代码不晓得写了多少遍:

```
npm install <package's name> --save
npm uninstall <package's name> --save
cd blog
cd
ls
clear
hexo clean
hexo g
hexo s --debug
hexo d
hexo new <post's name>
hexa -l
```
一开始接触，是真的挺费时的，因为太多不懂的东西了，看着教程也是一知半解，慢慢摸索，处处碰壁，GitHub的注册还是我两年前左右在易班网络部的吴大佬建议下弄好的。真的很感谢他呀，虽然拖了两年多才开始好好利用它。😓

我发现如果自己懂一些css、html、js等语言、代码，那么我的个人博客建立之路也不会这么困难了。天知道，我每天也就那么几次debug，存储后的log文件都达到了2M，简直恐怖

so，废话不多说啦，开始记录我的HTML学习吧~

目录如下：
[TOC]

# HTML简介（HTML5标准）

> <i class="fa fa-question-circle"></i> 什么是HTML？

他就是一种语言，叫做超文本标记语言。**HyperText Markup Language**，所以简称**HTML**
> <i class="fa fa-question-circle"></i> 什么是超文本？为什么这种语言如此流行？我们可以用它来做什么呢？

来，我们慢慢细说...

**超文本**，就是指页面内可以包含「图片」「链接」「音乐」「程序」等的**非文字**元素[百度：HTML](https://baike.baidu.com/item/HTML/97049?fr=aladdin) 。把它理解为超越文本的存在？似乎也很合适呢！

它是一种用于创建网页的标准标记语言，即是说，我们看到的网页，基本上都利用了HTML，HTML就是可以运行在浏览器上，由浏览器解析，所以，如果我们学会了HTML，那就可以建立自己的web页面、站点啦！[推荐1：HTML教程](http://www.runoob.com/html/html-tutorial.html)

超文本标记语言(HTML)的结构可以分为两个部分：
- 头`Head`;提供关于网页的信息
- 主体`Body`；部分提供关于网页的具体内容

## HTML特点

 1. 扩展名为.htm或者.html。所以无论你用什么软件几乎都可以编写，只要保存的文档扩展名为html即可啦。编写的软件通常有三类：
    - 基础的文本、文档编写软件。微软自带的记事本、写字板，word，wps，都可以写html，只需要注意扩展名即可。
    - 半所见即所得软件，如Sublime Text、E-webediter等
    - 所见即所得软件，如Dreamweaver

 2. 是一种简单通用的语言，就是一种文本，需要浏览器的解释，所以，无论用什么类型的电脑、浏览器，都可以看到html制作的页面。

## 头部内容head
> <i class="fa fa-pencil-alt"></i> 用2个标记符，表示头部信息的开始与结尾：`<head>` `</head>`

没错，它们的顺序必须是`<head>`在前，`</head>`在后。
> <i class="fa fa-exclamation-circle"></i> 注意这两个标记符号哦，后面的，多加了一个斜杠`/`

那么，问题来了
> <i class="fa fa-question-circle"></i> 头部信息一般存储什么内容呢？

head元素一般有7个：

标签|描述
:---:|:-:
`<head>`|定义了**文档的信息**
`<title>`|定义了**文档的标题**
`<base>`|定义了**页面链接标签的默认链接地址**
`<link>`|定义了**一个文档和外部资源之间的关系**
`<meta>`|定义了**HTML文档中的元数据**
`<script>`|定义了**客户端的脚本文件**
`<style>`|定义了**HTML的样式文件**

## 主体内容body
头部有两个标记符，主体也有，叫做「正文标记符」「实体标记」：`<body>` `</body>`。我们看到的网页，其中显示的实际内容，都是写在了以上两个标记符之间。

## HTML的标记标签&web页面

 - HTML不是一种编程语言，而是一种**标记**语言！还记得刚刚说的，**超文本标记语言-HTML**吗？
    - **标记语言**是一种**标记标签**。标记标签，是可以被用来**描述**网页的东西。
    - HTML文档包含了HTML**标签**（HTML tag），及**文本内容**。
 - tag即HTML标签，是由**尖括号**包围的关键词，如`<html>`、`</html>`，它们通常是**成对出现**的。第一个就是**开始标签（开放标签）**，第二个即**结束标签（闭合标签）**。
    - 所以一般长这样：`<标签>内容</标签>`。
    - 但是！严肃来说，这（`<标签>内容</标签>`）是一个HTML元素哦~🙅别记混了。
 - HTML文档也叫做Web页面。

我们看下面👇的页面结构吧！
![](https://ws1.sinaimg.cn/large/006tNc79gy1fzmef20jf4j30nh0c2gm7.jpg)

对，写的html都长这样~。
> <i class="fa fa-exclamation-circle"></i> 只有，`<body>`区域，即图中的白色部分，才会在浏览器中显示

> <i class="fa fa-edit"></i> 为了能够正确显示网页，我们一般会先进行声明，也就是添加**doctype**，声明是**不区分大小写**的：

```
<!doctype html>
<!doctype HTML>
<!DOCTYPE HTML>
<!Doctype Html>
```

当然啦，只需要一行以上的代码即可，反正不区分大小写。不要写错英文咯，还有感叹号要写在前面，以及html常用的尖括号~

> <i class="fa fa-question-circle"></i> 除了有声明之外，还有可能会在浏览器中出现中文乱码的情况，这该怎么呢？

> <i class="fa fa-edit"></i> 解决方法：我们需要在头部，将字符，声明为UTF-8。用`<meta charset="UTF-8">`

```
<!doctype html>
<html>
<head>
<meta charset="UTF-8">

<title></title>
</head>
<body>

<h1>第一个标题，采用大标题格式</h1>
<p>我的段落</p>
</body>
</html>
```

我经常能够在hexo看到这些标签（都是用于**定义**~）
```
<a>//定义超文本链接
<!doctype>//文档类型
<!--...-->//注释，在浏览器中不会显示
<audio>//音频内容
<br>//换行
<blockquote>//长的引用
<b>//文本粗体
<del>//被删除的文本
<dir>//不赞成、支持使用。定义目录列表
<cite>//引用citation
<div>//文档中的节
<em>//强调文本
<embed>//嵌入的内容，如插件
<font>//不支持、赞成使用。定义文字字体、尺寸、颜色
<frame>//框架的窗口、框架
<footer>//section或document的页脚
<figure>//独立的流内容（图像、图表、照片、代码等）
<h1>to<h6>//定义HTML文档标题
<head>//关于文档的信息
<header>//文档的头部区域
<hr>//水平线
<html>//定义html文档
<i>//斜体字
<iframe>//内敛框架
<img>//图像
<ins>//被插入文本
<label>//input元素的标注
<meta>//关于html文档的元信息
<p>//段落
<q>//短的引用
<s>//不赞成使用。定义加删除线的文本
<script>//客户端的脚本
<strong>//强调文本
<style>//定义文档的样式信息
<video>//定义视频，比如电影片段，或者其他视频流
```
# HTML基础
## 常用「标题」「段落」「链接」「图像」
### `<h1> - <h6>` 标签来定义标题Heading
```
<h1>这是一个标题</h1>
<h2>这是一个标题</h2>
<h3>这是一个标题</h3>
```
###  `<p>`段落标签
```
<p>这是一个段落。</p>
<p>这是另外一个段落。</p>
```
### `<a>`链接标签
```
<a href="http://myoumeng.github.io">这是一个链接</a>
```
运行结果就是：
![](https://ws4.sinaimg.cn/large/006tNc79gy1fzogz4r67pj30ng01zq3e.jpg)

> <i class="fa fa-edit"></i> 在 href 属性中**指定**链接的地址。href 是 Hypertext Reference 的缩写，表示超文本引用。用来建立当前元素和文档之间的链接。
常用在：link、a。

### `<img>`图像标签

```
<img src="/images/logo.png" width="258" height="39" />
```
> <i class="fa-pen-square"></i> 图像的名称和尺寸是以属性的形式提供的。
src （source）的内容，是页面必不可少的一部分，是**引入**。
href 的内容，是与该页面有关联，是**引用**。区别就是，引入和引用。

# HTML元素
之前在介绍中说过head的元素。再详细了解一下：

 - 元素，从开始标签开始，到结束标签结束的**整个部分**
 - 元素的内容，就是开始标签与结束标签**之间的部分**
 - 具有**空内容**的元素，会在开始标签开始时就关闭.`<br>` 就是没有关闭标签的空元素（<br> 标签定义换行）。开始标签中添加斜杠，比如 `<br/>`，是关闭空元素的正确方法.即使 `<br>` 在所有浏览器中都是有效的，但使用`<br/> `其实是更长远的保障。
 - 大多数元素，拥有**属性**
 - HTML 文档由嵌套的 HTML 元素构成。
 - HTML 标签对大小写不敏感：`<P>` 等同于 `<p>`。许多网站都使用大写的 HTML 标签。

# HTML属性
> <i class="fa fa-edit"></i> 属性是 HTML 元素提供的附加信息。

元素=`<开始标签><内容></结束标签>`
```
<a href="http://www.runoob.com">这是一个链接</a>
```
So，属性就如`<a href="http://www.runoob.com">这是一个链接</a>`在开始标签中**描述的，HTML 链接由 `<a>` 标签定义，链接的地址在 href 属性中指定: `href="http://www.runoob.com"`
 - 属性可以在元素中添加附加信息，常描述于开始标签
 - 属性总是以**名称/值对**的形式出现，比如：name="value"
 - 属性值应该始终被包括在引号内。
    - **双引号**是最常用的，不过使用单引号也没有问题。
    - 在某些个别的情况下，比如属性值本身就含有双引号，那么**必须使用单引号**，例如：name='John "ShotGun" Nelson'
 - 属性和属性值对大小写不敏感。但推荐小写的属性/属性值
 - class 属性可以多用 class=" "（引号里面可以填入多个class属性）；id 属性只能单独设置 id=" "（只能填写一个，多个无效）

# 标题hx
> <i class="fa fa-exclamation-circle"></i> 标题很重要！标题很重要！！标题很重要！！！（重要的事情说三遍，也不为过）。

为什么呢？为了搜索引擎与用户浏览。确保将 『HTML 标题标签』只用于**标题**。不要仅仅是为了*生成粗体或大号的文本*而使用标题。
  - 搜索引擎使用标题，为您的网页的结构和内容**编制索引**。
  - 用户可以通过标题来**快速浏览**您的网页，所以用标题来呈现文档结构是很重要的。
## `<h1>`到`<h6>`进行定义，重要性递减
应该将 h1 用作主标题（最重要的），其后是h2（次重要的），再其次是 h3，以此类推。
## `<hr>`**创建水平线(horizontal)**
分割不同的段落、内容
```html
<p>这是一个段落。</p>
<hr>
<p>这是一个段落。</p>
<hr>
<p>这是一个段落。</p>
```
## 注释:`<!--words-->`
插入HTML代码中。（words是你注释的内容）
    + 这样可以提高其可读性，使代码更易被人理解。
    + 浏览器会忽略注释，也不会显示它们。
    + 开始括号之后（左边的括号）需要紧跟一个叹号，结束括号之前（右边的括号）不需要。
## 查看**HTML源代码**
    - 你是否看过一些网页然后惊叹它是如何实现的的。如果您想找到其中的奥秘，只需要**单击右键**，然后选择"查看源文件"（IE）或"查看页面源代码"（Firefox），其他浏览器的做法也是类似的。这么做会打开一个包含页面 HTML 代码的窗口。

<!--- MAC在Google，用**cmd+shift+J**，可以查看-->
## 标题与字体逆序对应
1到6号标题与1到6号字体逆序对应
比如1号字体对应6号标题，2号字体对应5号标题。
```
<h1>这是1号标题</h1>
<font size="6">这是6号字体文本</font>

<h2>这是2号标题</h2>
<font size="5">这是5号字体文本</font>

<h3>这是3号标题</h3>
<font size="4">这是4号字体文本</font>

<h4>这是4号标题</h4>
<font size="3">这是3号字体文本</font>

<h5>这是5号标题</h5>
<font size="2">这是2号字体文本</font>

<h6>这是6号标题</h6>
<font size="1">这是1号字体文本</font>
```

# `<p>`段落

> <i class="fa fa-edit"></i> 段落通过`<p>`标签定义，浏览器会自动地**在段落的前后添加空行**。（`</p> `是块级元素）

```
<p>这是一个段落 </p>
<p>这是另一个段落</p>
```
即使忘了使用结束标签，大多数浏览器也会正确地将 HTML 显示出来，但是不要依赖这种做法。忘记使用结束标签会产生意想不到的结果和错误。

```
<p>这是一个段落
<p>这是另一个段落
```

在不产生一个新段落的情况下进行换行（新行），请使用 `<br>`标签。
`<br />`元素是一个空的 HTML元素。
由于关闭标签没有任何意义，因此它没有结束标签。
```
<p>这个<br>段落<br>演示了分行的效果</p>
```
写HTML代码时，我们加了很多空格、换行，也只是算作一个空格。（无法通过在HTML代码中添加额外的空格或换行来改变输出的效果。）
  - 当显示页面时，浏览器会**移除源代码中多余的空格和空行**。所有连续的空格或空行都会被算作一个空格。
  - HTML代码中的所有连续的空行（换行）也被显示为一个空格。

# 文本格式化
> <i class="fa fa-pen-square"></i> HTML 使用标签 `<b>`("bold") 与 `<i>`("italic")对输出的文本进行格式, 如：粗体 or 斜体。这些HTML标签被称为格式化标签。

## 加粗b、斜体i、上标sup、下标sub、强调strong、放大big、缩小文本small
<b>加粗文本</b><br><br>
<i>斜体文本</i><br><br>
<code>电脑自动输出</code><br><br>
这是 <sub> 下标</sub> 和 <sup> 上标</sup>
<strong>这个文本是strong加粗的</strong>
<big>这个文本字体放大</big>
<small>这个文本是缩小的</small>

源代码如下
```
<b>加粗文本</b><br><br>
<i>斜体文本</i><br><br>
<code>电脑自动输出</code><br><br>
这是 <sub> 下标</sub> 和 <sup> 上标</sup>
<strong>这个文本是strong加粗的</strong>
<big>这个文本字体放大</big>
<small>这个文本是缩小的</small>
```
## pre空行和空格显示

![](https://ws3.sinaimg.cn/large/006tNc79gy1fzoh6x0r42j30tt05ijsg.jpg)
源代码如下：
```
<pre>
此例演示如何使用 pre 标签
对空行和    空格
进行控制
</pre>
```
这个pre就意味着，可以显示连续空格、空行，如果没有pre标签，那浏览器会把连续的看做是一个~（前面有提到过哦）

## 计算机输出code、键盘输入kbd、打字机文本tt、计算机代码样本samp、计算机变量var
![](https://ws2.sinaimg.cn/large/006tNc79gy1fzoh5mg210j304n0b5q3a.jpg)

源代码如下：
```
<code>计算机输出</code>
<br />
<kbd>键盘输入</kbd>
<tt>打字机文本</tt>
<br>
<samp>计算机代码样本</samp>
<br />
<var>计算机变量</var>
```

- `<br />`和`<br>`都可以空行耶✌️
- 这些标签常用于显示**计算机/编程代码**

## address显示地址
运行结果在图片右方
![](https://ws3.sinaimg.cn/large/006tNc79gy1fzmim1793wj30p40ay75w.jpg)
```
<address>
Written by <a href="mailto:webmaster@example.com">Jon Doe</a>.<br>
Visit us at:<br>
Example.com<br>
Box 564, Disneyland<br>
USA
</address>
```

#（超）链接

<img id="github-emoji" alt="flushed" src="https://github.githubassets.com/images/icons/emoji/unicode/1f633.png?v8" height="20" width="20">是不是跳过来了？？

<a id="c3">这里是书签，但点击我不会跳转哦</a>
<a href="#c4">点我才可以调转，来返回刚刚的页面吧！</a>

HTML用标签 `<a>`来设置超文本链接。
> <i class="fa fa-edit"></i> HTML 使用超级链接与网络上的另一个文档相连。几乎可以在所有的网页中找到链接。点击链接可以从一张页面跳转到另一张页面。

**超链接**可以是一个字，一个词，或者一组词，也可以是一幅图像。通过点击这些内容，可以实现跳转到新的文档或者当前文档中的某个部分。
- 当把鼠标指针移动到网页中的某个链接上时，箭头会变为**一只小手**。
- 在标签`<a>` 中使用了href属性来描述链接的地址。
  - <a>如果没有用属性href，就会变成这样，仅仅单独的的链接颜色，而不会实现调转</a>

默认情况下，链接将以以下形式出现在浏览器中：
  - 一个未访问过的链接显示为蓝色字体并带有下划线。
  - 访问过的链接显示为紫色并带有下划线。
  - 点击链接时，链接显示为红色并带有下划线。

> <i class="fa fa-exclamation-circle"></i> 注意：如果为这些超链接设置了 CSS 样式，展示样式会根据 CSS 的设定而显示。

## href属性描述链接的目标<a id="c1"></a>
链接的 HTML 代码很简单。它类似这样：
```
<a href="url">链接文本</a>
```
> <i class="fa fa-question-circle"></i> 什么是url？URL？

URL 是一个网页地址。统一资源定位器(Uniform Resource Locators)
- URL可以由字母组成，如"runoob.com"，
- 或互联网协议（IP）地址： 192.68.20.50。
- 大多数人进入网站使用网站域名来访问，因为名字比数字更容易记住。
- Web浏览器通过URL从Web服务器请求页面。
    - 当您点击 HTML 页面中的某个链接时，对应的 ``<a>`` 标签指向万维网上的一个地址。
    - 一个统一资源定位器(URL) 用于定位万维网上的文档。

``<a href="url">链接文本</a>``(链接文本，会显示在屏幕上，给你点击哟)

如果把url替换为https://myoumeng.github.io，点击`链接文本`就会跳转到这个url。显示如下

![](https://ws3.sinaimg.cn/large/006tNc79gy1fzohasic0ej311d02rt9x.jpg)

## id属性创建在一个HTML文档书签标记

> <i class="fa fa-exclamation-circle"></i> 提示: 书签是不以任何特殊的方式显示，在HTML文档中是不显示的，所以对于读者来说是隐藏的。

<a href="#c2">点我查看示例</a>

---

下面👇，我们来脑洞大开一下：
1. 可以这样想，我们想要看书，可是这里有很多本书，我想看a书，那么我们就用a的url，当我们使用href指定到a的url时（href="url"），我们就可以愉快的看a书了！<a href="#c1">点我回顾a、href、url，看示例</a>
2. 有了a书，我们还有更加高级的阅读姿势：
    2.1 我可以打开新的浏览器窗口，看a书的不同章节，想看哪一章就加载哪一章，此时只要点击多个章节，就会打开多个窗口，任我选择。<a href="#s1">点我查看相关示例</a>
    2.2 我由于浏览器运行不快，那我就设定打开新的章节窗口，会自动取代前面「看完的、已经打开的窗口」章节。<a href="#s2">点我查看相关示例</a>
    2.3 也可以用现有的浏览器窗口，设置为左边是章节目录，右边是小说正文。<a href="#s3">点我查看相关示例</a>.

3. 好的，我们沉溺在a书中，看了好几个章节，发现，其中的第3章节和第10章节联系颇深，我想对比3、10这两个章节，所以，我需要增加一个书签，那么，我就用id属性。
  3.1 我在3章节这里加一个书签(id="wonderful_3"),用`<a id="wonderful_3">我是第3章</a>`插入第3章中间，相当于标签🏷了。于是，我毫无后顾之忧的去看第10章。
  3.2 然后我就只需要用href="#wonderful_3"，即把它`<a href="#wonderful_3">点我查看第3章</a>`插入第10章任何地方：当我想要立刻回到第3章，那么就可以在这本a书中的第10章点击它，就可以转到第3章看了。
---

以下皆是示例：

### 创建图片链接

创建图片链接:<a id="s4"></a>
<a href="https://myoumeng.github.io">
<img  border="10" src="https://ws4.sinaimg.cn/large/006tNc79gy1fznhorx3orj309805j0vc.jpg" alt="这个是图片彼岸花" width="200" height="100"></a>

源码：
```
创建图片链接:
<a href="https://myoumeng.github.io">
<img  border="10" src="https://ws4.sinaimg.cn/large/006tNc79gy1fznhorx3orj309805j0vc.jpg" alt="这个是图片彼岸花" width="200" height="100">
</a>
```
无边框的图片链接:
<a href="https://myoumeng.github.io">
<img border="0" src="https://ws4.sinaimg.cn/large/006tNc79gy1fznhorx3orj309805j0vc.jpg"
alt="这个是图片没有边框的彼岸花" width="100" height="50"></a>
源码：
```
无边框的图片链接:
<a href="https://myoumeng.github.io">
<img border="0" src="https://ws4.sinaimg.cn/large/006tNc7w9gy1fznhorx3orj309805j0vc.jpg"
alt="这个是图片没有边框的彼岸花" width="100" height="50"></a>
```
> <i class="fa fa-exclamation-circle"></i> 注意源码里面，以下这些都是在单独的、另外一个<>里面
```HTML 这些都是在单独的<>里面
img//表示是图像
border//图片边框的像素宽度
src//资源，也就是显示的图片，可以来源于url，或者本地文件
alt//当图片资源不显示时，alt会显示它的值
width//图片宽度
height//图片高度
```
---

### 书签标记用id
> 在当前页面，链接到指定位置。<a id="c2"></a>
我们来演示一下，定位到刚开始学的HTML吧！

你试着点击这个：<a href="#c3">我们来演示一下，定位到刚开始学的HTML吧！</a>
我在HTML链接那儿（之前）用的代码如下
```
<a id="c3">这里是书签，但点击我不会跳转哦</a>
<a href="#c4">点我才可以调转，来返回刚刚的页面吧！</a>
```
<a id="c4">欢迎回来</a>
我在这里（之后）用的代码如下
```
<a href="#c3">我们来演示一下，定位到刚开始学的HTML吧！</a>
<a id="c4">欢迎回来</a>
```
所以，用href跳转到本文的指定位置，也就是同一个页面的位置时，要用href和id，id是赋值，href用值，并且值之前要加``#``；如果是不在同一个页面，需要访问，那就用`url`+`#`+`id值`
- 在HTML文档中插入ID:
``<a id="tips">有用的提示部分</a>``

- 在HTML文档中创建一个链接到"有用的提示部分(id="tips"）"：
`<a id="tips">有用的提示部分</a>`
- 在HTML文档中创建一个链接到"有用的提示部分(id="tips"）"：
`<a href="url#tips">访问有用的提示部分</a>`

> <i class="fa fa-edit"></i> 注释：请始终将**正斜杠**添加到***子文件夹***。

假如这样书写链接：href="http://www.runoob.com/html"，就会向服务器产生两次 HTTP 请求。
这是因为服务器会添加正斜杠到这个地址，然后创建一个新的请求，就像这样：href="http://www.runoob.com/html/"。

---
## target 属性定义被链接的文档在何处显示

### 跳出框架 <a id="s1"></a>

> 如何跳出框架，假如你的页面被固定在框架之内。
跳出框架，方法是用target；使用 target 属性，你可以定义被链接的文档**在何处显示**。

:fa-code fa-ls: 源代码如下

```
<a href="https://www.baidu.com/" target="_top">点击这里!</a>
```
:fa-comment: 语法
``<a target="value">``

:fa-list-alt fa-ls: 属性值

## target属性值

值	| 描述
:---: |:---:
_blank|	在新窗口中打开被链接文档。浏览器总在一个新打开、未命名的窗口中载入目标文档。
_self	|默认。在相同的框架中打开被链接文档。这个目标的值对所有没有指定目标的 ``<a>`` 标签是默认目标，它使得目标文档载入并显示在相同的框架或者窗口中作为源文档。这个目标是多余且不必要的，除非和文档标题 ``<base>`` 标签中的 target 属性一起使用。
_parent	|在父框架集中打开被链接文档。这个目标使得文档载入父窗口或者包含来超链接引用的框架的框架集。如果这个引用是在窗口或者在顶级框架中，那么它与目标 _self 等效。
_top	|在整个窗口中打开被链接文档。这个目标使得文档载入包含这个超链接的窗口，用 _top 目标将会清除所有被包含的框架并将文档载入整个浏览器窗口。
framename	|在指定的框架中打开被链接文档。

> :fa-edit: 提示：这些 target 的所有 4 个值都以**下划线**开始。

任何其他用一个下划线作为开头的窗口或者目标都会被浏览器忽略，因此，不要将下划线作为文档中定义的任何框架 name 或 id 的第一个字符。

---
### 覆盖新打开的窗口 <a id="s2"></a>

> 一个简单的内容文档的列表，可以将文档重定向到一个单独的窗口。
假如我们看a书，其第一章是百度，第二章是搜狐，第三章是淘宝，第四章是百度学术。
然后因为我不想点开一章就是一个新窗口（还要删掉窗口，多麻烦，让我好好的看书呗），我只想一章接着一章看，每次点开章节，都可以直接覆盖之前的章节窗口，那么...

源代码如下
```
<ul>
  <li><a href="https://www.baidu.com/" target="view_window">Chapter 1：百度</a></li>
  <li><a href="http://www.sohu.com/" target="view_window">Chapter 2：搜狐</a></li>
  <li><a href="https://www.taobao.com/" target="view_window">Chapter 3：淘宝</a></li>
  <li><a href="http://xueshu.baidu.com/" target="view_window">Chapter 4：百度学术</a></li>
</ul>
```
:fa-bullhorn: 解释：当用户第一次选择内容列表中的某个链接时，浏览器将打开一个新的窗口，将它标记为 "view_window"，然后在其中显示「希望显示的文档内容」。
- 如果用户从这个内容列表中选择另一个链接，且这个 "view_window" 仍处于打开状态，浏览器就会再次将选定的文档载入那个窗口，**取代**刚才的那些文档。
- 在整个过程中，这个包含了内容列表的窗口，是用户可以访问的。通过单击窗口中的一个连接，可使另一个窗口的内容发生变化。
---

### 框架：左边内容不变，右边变 <a id="s3"></a>

> 设置：当浏览器最初显示这两个框架的时候，左边这个框架包含目录，右边这个框架包含前言。

![左边是源代码，右边是结果](https://ws4.sinaimg.cn/large/006tNc79gy1fznkayepzkj30rr0cawfm.jpg)

源代码如下
```
<html>

<frameset cols="200,*">
  <frame src="/example/html/toc.html">
  <frame src="/example/html/pref.html" name="view_frame">
</frameset>

</html>
```
其中，这是 "toc.html" 的源代码：
```
<h3>Table of Contents</h3>
<ul>
  <li><a href="pref.html" target="view_frame">Preface</a></li>
  <li><a href="chap1.html" target="view_frame">Chapter 1</a></li>
  <li><a href="chap2.html" target="view_frame">Chapter 2</a></li>
  <li><a href="chap3.html" target="view_frame">Chapter 3</a></li>
</ul>
```
> :fa-exclamation-circle: 请注意，在文档 "toc.html" 中，每个链接的目标都是 "view_frame"，也就是右边的框架。

- 当用户从左边框架中的目录中选择一个链接时，浏览器会将这个关联的文档载入并显示在右边这个 "view_frame" 框架中。
- 当其他链接被选中时，右边这个框架中的内容也会发生变化，而左边这个框架始终保持不变。
----
### 电子邮件链接
> 创建电子邮件链接，可以制定收件人、邮件主题、邮件内容、抄送、密送

<a href="mailto:somegirl@qq.com?cc=somebody@163.com&bcc=somebody@gmail.com&subject=这是邮件的主题用subject赋值:&body=这是邮件的内容用body赋值;You%20are%20invited%20to%20a%20big%20summer%20party!" rel="nofollow" target="_top">点我：发送一封有抄送、密送、主题、内容的邮件</a>

源代码
```
<a href="mailto:somegirl@qq.com?cc=somebody@163.com&bcc=somebody@gmail.com&subject=这是邮件的主题用subject赋值:&body=这是邮件的内容用body赋值%20You%20are%20invited%20to%20a%20big%20summer%20party!" rel="nofollow" target="_top">点我：发送一封有抄送、密送、主题、内容的邮件</a>
```
### 创建电子邮件链接主要参数

参数 |	描述
:---: | :---:
`mailto:name@email.com`	|邮件接收地址
`cc=name@email.com	`|抄送地址。Carbon Copy，又简称为 CC。在网络术语中，抄送就是将邮件同时发送给收信人以外的人，用户所写的邮件抄送一份给别人，对方可以看见该用户的 E-mail。同收件人地址栏一样，不可以超过 1024 个字符。一般来说，使用"抄送"服务时，多人抄送的电子邮件地址使用`` ;`` 分隔。
`bcc=name@email.com`|	密件抄送地址。密件抄送：Blind Carbon Copy ，又称“盲抄送”，和抄送的唯一区别就是它能够让各个收件人无法查看到这封邮件同时还发送给了哪些人。密件抄送是个很实用的功能，假如一次向成百上千位收件人发送邮件，最好采用密件抄送方式：一来可以保护各个收件人的地址不被其他人轻易获得，二来可以使收件人节省下收取大量抄送的 E-mail 地址的时间。
subject=subject text	|邮件主题
body=body text	|邮件内容
?	|第一个参数分隔符
&	|其他参数分隔符
20%|单词之间的空格使用 %20 代替，以确保浏览器可以正常显示文本。

- nofollow 是 HTML 页面中 a 标签的属性值。这个标签的意义是告诉搜索引擎"不要追踪此网页上的链接或不要追踪此特定链接"。
- target="_top"，如果不用_top,就会在打开邮件软件的同时，打开一个新的浏览器窗口。
- 多个邮件地址用 ``; ``隔开，空格用`%20` 代替

# HTML头部

> :fa-edit:`<head>` 元素包含了所有的头部标签元素。可以添加在头部区域的元素标签为: ``<title>, <style>, <meta>, <link>, <script>, <noscript>, <base>.``

## ``<title>``

> 定义了不同文档的标题。它是 head 部分中唯一必需的元素。

  - 定义了浏览器工具栏的标题
  - 当网页添加到收藏夹时，显示在收藏夹中的标题
  - 显示在搜索引擎结果页面的标题


## ``<style>``
> 定义了HTML文档的样式文件引用地址.在此元素中你也可以直接添加样式来渲染 HTML 文档:
```
<head>
<style type="text/css">
body {background-color:yellow}
p {color:blue}
</style>
</head>
```

## ``<meta>``
> 描述了一些基本的元数据。
标签提供了元数据，元数据也不显示在页面上，但会被浏览器解析。
通常用于指定网页的描述，关键词，文件的最后修改时间，作者，和其他元数据。
元数据可以使用于浏览器（如何显示内容或重新加载页面），搜索引擎（关键词），或其他Web服务。

- 为搜索引擎定义关键词:

``<meta name="keywords" content="HTML, CSS, XML, XHTML, JavaScript">``

- 为网页定义描述内容:

``<meta name="description" content="免费 Web & 编程 教程">``

- 定义网页作者:

``<meta name="author" content="Runoob">``

- 每30秒钟刷新当前页面:

``<meta http-equiv="refresh" content="30">``

## ``<link>``
> 定义了文档与外部资源之间的关系。通常用于链接到样式表:

```
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
```

## ``<script>``

> 用于加载脚本文件，如： JavaScript。

## ``<noscript>``
> noscript 元素用来定义在脚本未被执行时的替代内容（文本）。此标签可被用于可识别 ``<script> ``标签但无法支持其中的脚本的浏览器。

> <i class="fa fa-edit"></i>如果浏览器支持脚本，那么它不会显示出 noscript 元素中的文本。

无法识别 ``<script>`` 标签的浏览器会把此标签的内容显示到页面上。为了避免浏览器这样做，您应当在注释标签中隐藏脚本。
老式的（无法识别`` <script> ``标签的）浏览器会忽略注释，这样就不会把标签的内容写到页面上，而新式的浏览器则懂得执行这些脚本，即使它们被包围在注释标签中！

![](https://ws2.sinaimg.cn/large/006tNc79gy1fznmdxdjolj30y007vgnd.jpg)

## ``<base>``

> ``<base>``标签描述了基本的链接地址/链接目标，该标签作为HTML文档中所有的链接标签的默认链接:
```
<head>
<base href="http://www.runoob.com/images/" target="_blank">
</head>
```
# HTML样式CSS
> CSS (Cascading Style Sheets) 用于渲染HTML元素标签的样式。

## 两个样式标签
标签|	描述
:-:|:-:
``<style>``|	定义文本样式
``<link>``|	定义资源引用地址

## style标签

![](https://ws1.sinaimg.cn/large/006tNc79gy1fznonhdqdbj30qe0am402.jpg)

```
<style type="text/css">
h1 {color:red;}
p {color:blue;}
</style>
</head>

<body>
<h1>这是一个标题</h1>
<p>这是一个段落。</p>
</body>
```
- 所有主流浏览器都支持 ``<style>`` 标签。
``<style>`` 标签定义 HTML 文档的样式信息。在 ``<style> ``元素中，可以规定在浏览器中如何呈现 HTML 文档。

- 每个 HTML 文档能包含多个 ``<style> ``标签。如需链接外部样式表，请使用 ``<link> ``标签。

> <i class="fa fa-exclamation-circle"></i> 如果没有使用 "scoped" 属性，则每一个 ``<style> ``标签必须位于 head 头部区域。

- "scoped" 属性是 HTML 5 中的新属性，它允许我们为文档的指定部分定义样式，而不是整个文档。
如果使用 "scoped" 属性，那么所规定的样式只能应用到 style 元素的父元素及其子元素。

## style标签属性
属性	|值|	描述
:-:|:-:|:-:
media	|media_query|	为样式表规定不同的媒体类型。<br>media 属性规定目前资源是为何种媒介/设备优化的。<br>该属性大多用在为不同媒介类型（如屏幕预览和打印预览）规定不同样式的 CSS 样式表。<br>该属性可以接受多个值。[点这了解更多关于media的内容](http://www.runoob.com/tags/att-style-media.html)
scoped|	scoped	|如果使用该属性，则样式仅仅应用到 style 元素的父元素及其子元素。<br>目前只有 Firefox属性支持 scoped 属性。![](https://ws2.sinaimg.cn/large/006tNc79gy1fznpqn3tgjj30tx0fgwiw.jpg)
type	|text/css|	规定样式表的 MIME 类型。标签常用的 MIME 类型是 "text/css"，它规定样式表。

## link标签
![](https://ws1.sinaimg.cn/large/006tNc79gy1fznopn3xqcj311g0azmzn.jpg)
```
<body>
<h1>我是通过样式文件 styles.css 渲染后显示的。</h1>
<p>我也是。</p>
</body>
```
- 所有主流浏览器都支持 ``<link>`` 标签。
- 标签定义文档与外部资源的关系。
- 标签最常见的用途是链接样式表。

> <i class="fa fa-exclamation-circle"></i> link 元素是空元素，它仅包含属性。在 HTML 中，<link> 标签没有结束标签。
此元素只能存在于 head 部分，不过它可出现任何次数。

## link标签属性

属性|	值	|描述
:-:|:-:|:-:
href|	URL	|定义被链接文档的位置。
hreflang	|language_code|	定义被链接文档中文本的语言。
media	|media_query	|规定被链接文档将显示在什么设备上。
rel	|alternate <br>archives<br> author <br>bookmark <br>external <br>first<br> help<br> icon <br>last <br>license<br> next <br>nofollow noreferrer<br> pingback<br> prefetch <br>prev<br> search<br> sidebar <br>stylesheet<br> tag<br> up|必需。定义当前文档与被链接文档之间的关系。
sizesNew|	HeightxWidth <br>any	|定义了链接属性大小，只对属性 rel="icon" 起作用。
type|	MIME_type	|规定被链接文档的 MIME 类型。只有当设置了 href 属性时，才能使用该属性。link标签常用的 MIME 类型是 "text/css"，它规定样式表。


## CSS通过三种方式添加到HTML中
### 第一种：内联样式
> 在HTML元素中使用"style" 属性使用内联样式的方法是在相关的标签中使用样式属性。样式属性可以包含任何 CSS 属性。

![](https://ws2.sinaimg.cn/large/006tNc79gy1fzogm7pculj30vo02wgmp.jpg)
```
<p style="color:blue;margin-left:20px;">This is a paragraph.</p>
```
> 背景色属性（background-color）定义一个元素的背景颜色：

![](https://ws3.sinaimg.cn/large/006tNc79gy1fzogihfid1j311k0510uc.jpg)

```
<body style="background-color:yellow;">
<h2 style="background-color:red;">这是一个标题</h2>
<p style="background-color:green;">这是一个段落。</p>
</body>
```

> 使用font-family（字体），color（颜色），和font-size（字体大小）属性来定义字体的样式:

![](https://ws2.sinaimg.cn/large/006tNc79gy1fzogkdhzscj311g05rmyr.jpg)

```
<h1 style="font-family:verdana;">一个标题</h1>
<p style="font-family:arial;color:red;font-size:20px;">一个段落。</p>
```

> <i class="fa fa-exclamation-circle"></i> 现在通常使用font-family（字体），color（颜色），和font-size（字体大小）属性来定义文本样式，而不是使用``<font>``标签。

> 使用 text-align（文字对齐）属性指定文本的水平与垂直对齐方式：

![](https://ws1.sinaimg.cn/large/006tNc79gy1fzogl7p4p5j30z704hdhf.jpg)
```
<h1 style="text-align:center;">居中对齐的标题</h1>
<p>这是一个段落。</p>
```
> <i class="fa fa-exclamation-circle"></i> 文本对齐属性 text-align取代了旧标签`` <center> ``。

### 第二种：内部样式表
> 在HTML文档头部 ``<head>`` 区域使用``<style>`` 元素，来包含CSS。当单个文件需要特别样式时，就可以使用内部样式表。你可以在``<head>`` 部分通过 ``<style>``标签定义内部样式表:

```
<head>
<style type="text/css">
body {background-color:yellow;}
p {color:blue;}
</style>
</head>
```
### 第三种：外部引用
> 使用外部 CSS 文件
当样式需要被应用到很多页面的时候，外部样式表将是理想的选择。
使用外部样式表，你就可以通过更改一个文件来改变整个站点的外观。
```
<head>
<link rel="stylesheet" type="text/css" href="mystyle.css">
</head>
```
CSS修饰标签的样式，有 "内联" 和 "外引" 两种方式。对于大部分标签，以上两种方法均可，且修改父级标签，子级标签特性也会改变。
但某些标签却无法通过修改父级标签来改变子级标签特性，如a标签，修改其颜色特性，必须直接修改a标签的特性才可。
如:
![](https://ws2.sinaimg.cn/large/006tNc79gy1fzohok8cq1j30lj030mxr.jpg)
```
<a href="#" style="color:red;" rel="nofollow">只能使用"内联"方式</a>
```
最好的方式是通过外部引用CSS文件。
