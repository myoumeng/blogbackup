---
title: 用HEXO打造更个性化的个人博客（三）
id: 1549442977
tags:
  - untagged
categories:
  - uncategorized
keywords: 'keyword1,keyword2'
abbrlink: 24651
date: 2019-02-06 16:49:37
---

{% cq %}
总有些意想不到的好看的样式
嘻嘻，我就借鉴过来了吖
{% endcq %}

<!--more-->

# 随笔

寻寻觅觅，在hexo next的个性化道路上，我也陆陆续续发现了许许多多不错的甚至是接近perfect的博客，令我好生羡慕，后来发现，很多时候是自己没有用好hexonext的自带功能，以及由于我html、css接触不深，导致配置的成果都是不如人意的。

我真的没想到，因为hexo-next，我会花近1个月的时间，日日沉浸在电脑中（是的，过春节回老家也带着电脑，对着自己的博客修修补补），我居然会花近1周的时间粗略地学习html和css。emm...我有种喜欢做事就要面面俱到的强迫症，所以硬是把html和css的知识都过了一遍。

嘿，说真的哈，我过了一遍后没有记住这些html标签以及css的各种样式，不过，让我在理解next的代码上有了不小的进步，对于网络上的95%的自定义hexo教程都能知其所以然了，还熟悉了这么在网页上看css、html代码。天哪，我这是初窥代码的世界了呀，是不是也算得上半个小前端了呢？？？

我在大学做过^技术一般^的美工，也时常听过“前端”“css”，现在！竟然！！自己开始琢磨了！！！真是谁能想到呢，我的专业可是和程序员关系不深吖。

这次，真的费了好大的劲，不仅接触到了hexo、next、html、css，还基本上可以构建一个自己喜爱的小窝-我的博客，真的挺欢喜的。当然啦，还有许多待用上的功能，我就开始一一记录了，写文文的时候就可以学以致用啦，对正在寻找"如何个性化hexo博客"的你，或许会有帮助哦！

# 链接持久化

安装方式：在博客根目录输入
```
npm install hexo-abbrlink --save
```
在站点配置文件中更改以下信息：
```
permalink: post/:abbrlink.html
permalink_defaults:
  abbrlink:
  alg: crc32 # 算法：crc16(default) and crc32
  rep: hex # 进制：dec(default) and hex
```

# 修改标签云
```html 位置：\blog\themes\next\layout\page.swig
{{ tagcloud({min_font: 13, max_font: 31, amount: 1000, color: true, start_color: '#9733EE', end_color: '#FF512F'}) }}
```
修改对应参数值即可，参数说明见 Hexo 官方文档，颜色可以参考这个网站，自己去纠结……

# 主题自带样式：文本居中的引用
此标签将生成一个带上下分割线的引用，同时引用内文本将自动居中。 文本居中时，多行文本若长度不等，视觉上会显得不对称，因此建议在引用单行文本的场景下使用。 例如作为文章开篇引用 或者 结束语之前的总结引用。
使用方式：

HTML方式：使用这种方式时，给 img 添加属性 class=”blockquote-center” 即可。
标签方式：使用 centerquote 或者 简写 cq。

```
<!-- HTML方式: 直接在 Markdown 文件中编写 HTML 来调用 -->
<!-- 其中 class="blockquote-center" 是必须的 -->
<blockquote class="blockquote-center">blah blah blah</blockquote>

<!-- 标签 方式，要求版本在0.4.5或以上 -->
{% centerquote %}blah blah blah{% endcenterquote %}

<!-- 标签别名 -->
{% cq %} blah blah blah {% endcq %}
```

```
{% cq %}人的一切痛苦，本质上都是对自己的无能的愤怒
王小波
{% endcq %}
```
效果如下：

{% cq %}人的一切痛苦，本质上都是对自己的无能的愤怒
王小波
{% endcq %}

# 主题自带样式：Bootstrap Callout/note记录

使用方式：
```
{% note class_name %} Content (md partial supported) {% endnote %}
```
其中，class_name 可以是以下列表中的一个值：

1. default
2. primary
3. success
4. info
5. warning
6. danger

{% note default %} hahaha {% endnote %}
{% note primary %} 嘻嘻我是高级的 {% endnote %}
{% note success %} 我是成功！ {% endnote %}
{% note info %} hahaha我带来信息 {% endnote %}
{% note warning %} hahaha⚠️警告哦 {% endnote %}
{% note danger %} hahaha危险哦！！！ {% endnote %}


```lisp
{% note danger %}note danger, note danger, note danger{% endnote %}
```

```lisp 什么是lisp？？
{% note danger %}note danger, note danger, note danger{% endnote %}
```

{% note danger %}note danger, note danger, note danger{% endnote %}  


# 主题自带样式：label标签

有这些：

```
{% label default@default %}
{% label primary@primary %}
{% label success@success %}
{% label info@info %}
{% label warning@warning %}
{% label danger@danger %}
```

使用如下：

Lorem {% label @ipsum %} {% label primary@dolor sit %} amet, consectetur {% label success@adipiscing elit, %} sed {% label info@do eiusmod %} tempor incididunt ut labore et dolore magna aliqua.

Ut enim *{% label warning @ad %}* minim veniam, quis **{% label danger @nostrud %}** exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

Duis aute irure dolor in reprehenderit in voluptate ~~{% label default @velit %}~~ <mark>esse</mark> cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

```
Lorem {% label @ipsum %} {% label primary@dolor sit %} amet, consectetur {% label success@adipiscing elit, %} sed {% label info@do eiusmod %} tempor incididunt ut labore et dolore magna aliqua.

Ut enim *{% label warning @ad %}* minim veniam, quis **{% label danger @nostrud %}** exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

Duis aute irure dolor in reprehenderit in voluptate ~~{% label default @velit %}~~ <mark>esse</mark> cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

```

# 主题自带样式：tabs 标签

```
{% tabs 选项卡, 2 %}
<!-- tab -->
**这是选项卡 1** 哈哈哈哈哈哈哈哈哈哈哈哈😁吼吼吼我是选项卡1的内容
<!-- endtab -->
<!-- tab -->
**这是选项卡 2，这是标题吗？** 我是第二个选项卡的内容哟
<!-- endtab -->
<!-- tab -->
**这是选项卡 3** 哇，😝嘻嘻
<!-- endtab -->
{% endtabs %}
```


{% tabs 选项卡, 2 %}
<!-- tab -->
**这是选项卡 1** 哈哈哈哈哈哈哈哈哈哈哈哈😁吼吼吼我是选项卡1的内容
<!-- endtab -->
<!-- tab -->
**这是选项卡 2，这是标题吗？** 我是第二个选项卡的内容哟
<!-- endtab -->
<!-- tab -->
**这是选项卡 3** 哇，😝嘻嘻
<!-- endtab -->
{% endtabs %}


然后上面源码中`, 2`表示一开始在第二个选项卡，非必须，若数值为`-1`则隐藏选项卡内容。


# 主题自带样式：按钮

https://almostover.ru/2016-01/hexo-theme-next-test/#Button-tag-test

使用方法：
```
 {% button /path/to/url/, text, icon [class], title %}
 or:
 {% btn /path/to/url/, text, icon [class], title %}

```


{% btn url(https://www.baidu.com), 点击我下载百度, download fa-lg fa-fw %}

{% btn url(https://www.baidu.com), 点击下载百度吧, download fa-2x %}

{% btn url(https://www.baidu.com), 啦啦啦, home fa-3x fa-fw %}

{% btn url(https://www.baidu.com), 笑嘻嘻, home fa-3x, 嘿嘿这是标题 %}

{% btn #, Text %}
{% btn #, Text & Title,, Title %}


```
{% btn url(https://www.baidu.com), 点击我下载百度, download fa-lg fa-fw %}

{% btn url(https://www.baidu.com), 点击下载百度吧, download fa-2x %}

{% btn url(https://www.baidu.com), 啦啦啦, home fa-3x fa-fw %}

{% btn url(https://www.baidu.com), 笑嘻嘻, home fa-3x, 嘿嘿这是标题 %}

{% btn #, Text %}

{% btn #, Text & Title,, Title %}
```

# 自定义样式 数字块
需加入custom.styl的代码：

```html 文件位置：~/blog/themes/next/source/css/_custom/custom.styl
// 自定义的数字块
span#inline-toc {
    display: inline-block;
    border-radius: 80% 100% 90% 20%;
    background-color: rgb(227, 242, 253);
    color: #555;
    padding: 0.05em 0.4em;
    margin: 2px 5px 2px 0px;
    line-height: 1.5;
}
```
使用方法：

```
<span id="inline-toc">1.</span>
```

效果如下：
<span id="inline-toc">1.</span>

# 给网页title添加一些搞怪特效

crash_cheat.js
在`next\source\js\src文件夹下创建crash_cheat.js`，添加代码[^cheat]：

[^cheat]:https://asdfv1929.github.io/2018/01/25/crash-cheat/

```
<!--崩溃欺骗-->
 var OriginTitle = document.title;
 var titleTime;
 document.addEventListener('visibilitychange', function () {
     if (document.hidden) {
         $('[rel="icon"]').attr('href', "/img/TEP.ico");
         document.title = '╭(°A°`)╮ 页面崩溃啦 ~';
         clearTimeout(titleTime);
     }
     else {
         $('[rel="icon"]').attr('href', "/favicon.ico");
         document.title = '(ฅ>ω<*ฅ) 噫又好了~' + OriginTitle;
         titleTime = setTimeout(function () {
             document.title = OriginTitle;
         }, 2000);
     }
 });
```

引用：在`next\layout\_layout.swig`文件中，添加引用（注：在swig末尾添加）：

```
<!--崩溃欺骗-->
<script type="text/javascript" src="/js/src/crash_cheat.js"></script>
```

# 添加顶部加载条
https://github.com/theme-next/theme-next-pace

在主题配置文件_config.yml中，找到pace并修改：
```
pace: true
pace_theme: pace-theme-minimal
```
加载条样式有许多，在你找到的位置中可自行更换

Load bar at the top for NexT
Installation

Step 1 → Go to NexT dir
Change dir to NexT directory. There must be layout, source, languages and other directories:
```
$ cd themes/next
$ ls
bower.json  _config.yml  docs  gulpfile.coffee  languages  layout  LICENSE.md  package.json  README.md  scripts  source  test
```

Step 2 → Get module
Install module to source/lib directory:
```
$ git clone https://github.com/theme-next/theme-next-pace source/lib/pace
```

Step 3 → Set it up
Enable module in NexT` _config.yml file:`
```
pace: true
```

Update
```
$ cd themes/next/source/lib/pace
$ git pull
```

# 鼠标点击特效"富强""民主""文明"

新建文件为：`fuqiangtexiao.js`

文件内容为：
```js 文件位置：/blog/themes/next/source/js/src

var a_idx = 0;
jQuery(document).ready(function($) {
    $("body").click(function(e) {
        var a = new Array
        ("富强", "民主", "文明", "和谐","☀️","自由", "平等", "公正", "法治","🌎", "爱国", "敬业", "诚信", "友善","🤝");
        var $i = $("<span/>").text(a[a_idx]);
        a_idx = (a_idx + 1) % a.length;
        var x = e.pageX,
        y = e.pageY;
        $i.css({
            "z-index": 5,
            "top": y - 20,
            "left": x,
            "position": "absolute",
            "font-weight": "bold",
            "color": s()
        });
        $("body").append($i);
        $i.animate({
            "top": y - 180,
            "opacity": 0
        },
        3000,
        function() {
        $i.remove();
        });
    });
    setTimeout('delay()', 2000);
});

function delay() {
    $(".buryit").removeAttr("onclick");
}

function s() {
    return "rgb(" + ~~ (250 * Math.random()) + "," + ~~ (240 * Math.random()) + "," + ~~ (250 * Math.random()) + ")"
}
```

放入位置：`/blog/themes/next/source/js/src`

然后再引用：在`next\layout\_layout.swig`文件中，添加引用（注：在`</body>`末尾添加）：
```
<!-- 鼠标特效  -->
<script type="text/javascript" src="/js/src/fuqiangtexiao.js"></script>
```

即可✌️

当然，可能有其他的鼠标点击代码，那就只需要更改fuqiangtexiao.js里面的代码就行，可以参考以下几份文档：

- https://blog.techauch.com/get/detail/54116
- https://blog.csdn.net/qq_31878883/article/details/86426232
- https://www.cnblogs.com/mylhy/p/10016874.html
- https://www.cnblogs.com/dalulu/p/9284941.html
- http://www.5lli.com/358.html
