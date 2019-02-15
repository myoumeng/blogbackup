---
title: 用HEXO打造更个性化的个人博客（一）
tags:
  - HEXO
  - 博客
  - 个性化
  - 插件
  - NEXT
categories:
  - HEXO
abbrlink: 64584
date: 2019-02-01 15:49:29
---

{% cq %}
个人博客，在我的心中，就像一个家一样，它像是我心灵的避港湾。博客里面的文章是构成我家的主要部分，我选择的next主题是家的装饰，来我博客参观的你们，就是远道而来的贵客。
{% endcq %}
<!--more-->

我很喜欢这样的想法，所以才会那么认真的对待我的家🏠，耗费许多心血、精力、时间，去完善它。

相信，它不会让我失望的。

可以看到，我目前用的next主题是v6.7.0，也许以后还会换，目前就记下我常用的一些装点方法吧！如果也对你有用，那就更好了。

此文主要记录一下我使用的插件

next有些功能是需要安装插件的，所以，还是要看懂英文注释，然后去相应的网站下载即可。

这是本文目录

[TOC]

当然啦，我的博客页面右下方的汉堡<i class="fa fa-bars"></i>图标，点击后也会有目录大纲出来，陪你看完此文哦！

# 相关文章

https://github.com/tea3/hexo-related-popular-posts

npm install hexo-related-popular-posts --save

# 注脚
plugins:
  - hexo-footnotes


# 分享NeedMoreShare2 for NexT

https://github.com/theme-next/theme-next-needmoreshare2

Step 1 → Go to NexT dir到next主题的根目录（而不是hexo哦）
Change dir to NexT directory. There must be layout, source, languages and other directories:
```
$ cd themes/next
$ ls
bower.json  _config.yml  docs  gulpfile.coffee  languages  layout  LICENSE.md  package.json  README.md  scripts  source  test
```

Step 2 → Get module安装模块
Install module to source/lib directory:

```
$ git clone https://github.com/theme-next/theme-next-needmoreshare2 source/lib/needsharebutton
```

Step 3 → Set it up
Enable module in NexT `_config.yml` file:到next主题配置文件中设置好以下代码：

```
needmoreshare2:
  enable: true
  postbottom:
    enable: true
  float:
    enable: true
```

Update

```
$ cd themes/next/source/lib/needsharebutton
$ git pull
```
# 部署到gutbub上hexo-deployer-git

需要安装插件后，就可以部署到github上，对于像我一样没有买域名的，也就可以把代码存到github上了。

## 安装插件

在博客根目录，使用命令` npm install hexo-deployer-git --save`，即可安装插件


## 配置

在站点`_config.yml`配置中，deploy 的type使用git，而不是github

```
deploy
     type: git
     repository: git@github.com:YOUR_ID/YOUR_ID.github.io.git
     branch: master
```

## 使用方法

当我们用了`hexo g`生成静态博客、`hexo s`在当地可浏览网页页面后无误，觉得可以了，那就使用`hexo d`把生成的文件部署到github上保存，就好咯。

hexo d是hexo deploy的简写

# 实现博客订阅功能generator-feed

https://github.com/hexojs/hexo-generator-feed
Leave rss as empty to use site's feed link, and install hexo-generator-feed: `npm install hexo-generator-feed --save`.

即`cd blog`在blog文件夹内，输入并且回车终端命令`npm install hexo-generator-feed --save`进行安装。

然后在配置文件中输入代码：
```
feed:
  type: atom
  path: atom.xml
  limit: 20
  hub:
  content:
  content_limit: 140
  content_limit_delim: ' '
  order_by: -date
  icon: icon.png
```

# 统计字数与阅读时长hexo-symbols-count-time

https://github.com/theme-next/hexo-symbols-count-time

npm install hexo-symbols-count-time --save

# 本地搜索searchdb

https://github.com/theme-next/hexo-generator-searchdb

安装命令
```
npm install hexo-generator-searchdb --save
npm install hexo-generator-search --save
```

修改站点配置文件：在==站点==配置文件中，添加下面的配置信息:

```
search:
    path: search.xml
    field: post
    format: html
    limit: 10000
```

修改==Next主题==配置文件：找到local_search配置项，把enable改为true即可。

```
local_search:
    enable: true
```

# markdown增强：hexo-renderer-markdown-it-plus

[^markdown]:https://github.com/CHENXCHEN/hexo-renderer-markdown-it-plus

## 安装

使用命令[^markdown]

npm un hexo-renderer-marked --save
npm i hexo-renderer-markdown-it-plus --save

## 站点配置

在站点配置中任意空白处加入这些代码：
```
markdown_it_plus:
    highlight: true
    html: true
    xhtmlOut: true
    breaks: true
    langPrefix:
    linkify: true
    typographer:
    quotes: “”‘’
    pre_class: highlight
```

## 高级功能：关闭一些不想用的插件

因为这个插件是默认安装了很多其他的插件
```html plugins enabled by default:

markdown-it-emoji
markdown-it-sub
markdown-it-sup
markdown-it-deflist
markdown-it-abbr
markdown-it-footnote
markdown-it-ins
markdown-it-mark
@iktakahiro/markdown-it-katex
markdown-it-toc-and-anchor
```

所以，你可以选择性的关闭

## 高级功能：安装其他插件

Add other markdown-it Plugins
If you want to add a plugin named as markdown-it-something:

1. Install this plugin；使用以下代码命令安装插件

```
npm install markdown-it-something --save
```
2. config main hexo `_config.yml`；在站点配置文件中自定义配置

```
markdown_it_plus:
    # ...
    plugins:
        - plugin:
            name: markdown-it-something
            enable: true
            options:
                # this is plugin option

```

## 主要特性&常用Markdown语言

- Support for Markdown
- Extensive configuration
- Faster than the default renderer | hexo-renderer-marked
- sub, 下标：`H~2~0` H~2~0
- sup, 上标：`x^2^` x^2
- ins, 插入下划线：`++Inserted++` ++Inserted++, `~~Del~~` ~~Del~~
- Katex, 数学公式[^math]：`$\sqrt{3x-1}+(1+x)^2$`
- emoji, 表情：
- toc&anchor 目录：`@[toc]`
- deflist
- abbr 缩写：`*[HTML]: Hyper Text Markup Language`
- footnote 页脚、脚注：`[^1]  [^1]: `
- mark 标记：`==marked== => <mark>inserted</mark>` ==marked== => <mark>inserted</mark>

[^math]:https://www.npmjs.com/package/@iktakahiro/markdown-it-katex

# jquery-backstretch

## 安装

Installation
1. Download/save the JS file from GitHub.先在github下载此代码（https://github.com/jquery-backstretch/jquery-backstretch）
2. 安装bower，因为下面要用bower命令安装jquery-backstretch
3. Install via Bower with the following command.用下面的命令安装jquery-backstretch
```
bower install jquery-backstretch
```

## 报错1

我没有想到，在这里用了一个代码`$\sqrt{3x-1}+(1+x)^2$`，然后我的页面宽度极具扩大！本来博客页面只有上下滚动的嘛，后来，因为宽度扩大，导致我的页面还可以左右动，非常宽。真是bug

虽然目前不常用数学公式，但是未必未来不用，毕竟理科生，latex、katex可能未来还是要用到的，如果在博客用这些公式出现了差错，就有迹可循了。因为我把这个代码放到了无序列表中一项内容的后面，然后`sqrt`这个根的上部分就一直..一直.....往右..延长......

所以，以后要检查、排除一下差错，不要放到无序列表，或者，背景用的代码加上一句width:xxxxxpx
`{ width: 1080, url: "path/to/image1_1080.jpg" }`
