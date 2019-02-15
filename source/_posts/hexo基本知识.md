---
title: hexo基本知识
abbrlink: 63321
date: 2019-02-09 14:33:44
tags:
---

{% cq %}
<i class="fa fa-snowflake fa-spin fa-fw fa-2x"></i>
要做好next主题，这些内容一定要懂😁
{% endcq %}

<!--more-->


# next主题
next主题集成了我们大部分想用的功能哦！也就是有很多插件，在主题配置文件中，将默认的false改为true即可。
我们需要改的文件其实也就那么几个，大部分是不需要更改，next都已经帮我们配置好了[^1]。

[^1]:https://blog.csdn.net/sunshine940326/article/details/69933696

默认目录结构：
```
.
├── .deploy
├── public
├── scaffolds
├── scripts
├── source
|   ├── _drafts
|   └── _posts
├── themes
├── _config.yml
└── package.json
```
- deploy：执行hexo deploy命令部署到GitHub上的内容目录
- public：执行hexo generate命令，输出的静态网页内容目录
- scaffolds：layout模板文件目录，其中的md文件可以添加编辑
- scripts：扩展脚本目录，这里可以自定义一些javascript脚本
- source：文章源码目录，该目录下的markdown和html文件均会被hexo处理。该页面对应repo的根目录，404文件、favicon.ico文件，CNAME文件等都应该放这里，该目录下可新建页面目录。
- drafts：草稿文章
- posts：发布文章
- themes：主题文件目录

`_config.yml`：全局配置文件，大多数的设置都在这里
`package.json`：应用程序数据，指明hexo的版本等信息，类似于一般软件中的关于按钮.

我们最先修改的应该是在hexo根目录下的配置文件_config.yml文件，这里是配置整个站点的配置信息。

其次就是我们的主题配置文件，在对应的主题下的_config.yml 因为我使用的是next主题，所以目录的路径为`\Hexo\themes\next\_config.yml` 这里配置的是使用主题的配置文件，这个配置文件的东西就有点多了，我们大部分的修改也是在这个文件下完成的。比如说使用集成的第三方插件，默认为false，我们需要将其改为true并且配置相应的app_key就可以使用该插件了~有木有很方便(^ ◕ᴥ◕ ^)
然后我们需要修改样式的话是需要设置css和甚至是修改模板，


```html next主题的全部逻辑
├── .github            #git信息
├── languages          #多语言
|   ├── default.yml    #默认语言
|   └── zh-Hans.yml      #简体中文
|   └── zh-tw.yml      #繁体中文
├── layout             #布局，根目录下的*.ejs文件是对主页，分页，存档等的控制
|   ├── _custom        #可以自己修改的模板，覆盖原有模板
|   |   ├── _header.swig    #头部样式
|   |   ├── _sidebar.swig   #侧边栏样式
|   ├── _macro        #可以自己修改的模板，覆盖原有模板
|   |   ├── post.swig    #文章模板
|   |   ├── reward.swig    #打赏模板
|   |   ├── sidebar.swig   #侧边栏模板
|   ├── _partial       #局部的布局
|   |   ├── head       #头部模板
|   |   ├── search     #搜索模板
|   |   ├── share      #分享模板
|   ├── _script        #局部的布局
|   ├── _third-party   #第三方模板
|   ├── _layout.swig   #主页面模板
|   ├── index.swig     #主页面模板
|   ├── page           #页面模板
|   └── tag.swig       #tag模板
├── scripts            #script源码
|   ├── tags           #tags的script源码
|   ├── marge.js       #页面模板
├── source             #源码
|   ├── css            #css源码
|   |   ├── _common    #*.styl基础css
|   |   ├── _custom    #*.styl局部css
|   |   └── _mixins    #mixins的css
|   ├── fonts          #字体
|   ├── images         #图片
|   ├── uploads        #添加的文件
|   └── js             #javascript源代码
├── _config.yml        #主题配置文件
└── README.md          #用GitHub的都知道
```
