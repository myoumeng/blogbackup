---
title: 用HEXO打造更个性化的个人博客（二）
id: 1549440540
tags:
  - HEXO
  - 博客
  - 个性化
  - NEXT
  - 插件
categories:
  - HEXO
keywords: 'keyword1,keyword2'
abbrlink: 27698
date: 2019-02-06 16:09:00
---

{% cq %}
我的确花了不少时间在整理自己的博客上，hexo站点的各项配置，更是折腾了我许久，谁让我本身对代码不是很懂呢？全程只能靠自己琢磨、学习，参考了许许多多的教程，有老有新。可是都是混在一起，我也没有太分开，导致自己多次配置出了差错，并且很难修整，天知道，我重新安装hexo以及next主题是否有超过10次了。真是痛苦的经历。
还好，最终我获胜了😎
这次要介绍与图片、音乐、视频、动效相关的内容哦！
期待地搓手手~
{% endcq %}


<!--more-->

# 随笔


因为本身对hexo及其不熟悉，所以自定义的过程既长久又艰辛^一把辛酸泪呀^。
还好，风风雨雨都经历过来了，这样才有成长和进步嘛。

磨刀不误砍柴工，一个漂亮的、舒服的博客，总会让人赏心悦目，更有希望坚持写下去。若是我们在能力足够的前提下，还能亲手打造出来，那更是成就感十足！

接下来，就要好好地打造一个令我们舒适、愉悦的个人博客啦！

这是本文目录

[TOC]

当然啦，我的博客页面右下方的汉堡图标，点击后也会有目录大纲出来，陪你看完此文哦！

# 在文章末尾添加“文章结束”标记

在路径`Blog\themes\next\layout\_macro`文件夹中新建passage-end-tag.swig文件[^文章结束]。
[^文章结束]:https://www.jianshu.com/p/9f0e90cc32c2

```
//切换到路径_macro
cd [_macro路径]

//创建passage-end-tag.swig文件
touch passage-end-tag.swig

```
在passage-end-tag.swig添加以下内容，直接用文本编辑器打开，粘贴以下内容后保存

```
<div>
    {% if not is_index %}
        <div style="text-align:center;color: #ccc;font-size:14px;">
        -------------本文结束啦<i class="fa fa-paw"></i>感谢您的阅读-------------
        </div>
    {% endif %}
</div>

```
打开`Blog\themes\next\layout\_macro\post.swig`，在post-body之后，post-footer之前（post-footer之前两个DIV），添加以下代码：

```html 文件位置：Blog\themes\next\layout\_macro\post.swig
<div>
  {% if not is_index %}
    {% include 'passage-end-tag.swig' %}
  {% endif %}
</div>
```


添加位置，如下图所示：

![](https://upload-images.jianshu.io/upload_images/3072214-976a8cf36c994dc7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1000/format/webp)

最后修改主题配置文件_config.yml，在末尾添加：
```
# 文章末尾添加“本文结束”标记
passage_end_tag:
  enabled: true
```

配置完成之后，效果如下：

# 背景图片

通过 jquery-backstretch[^jq]，具体操作呢，编辑文件：
[^jq]:https://github.com/jquery-backstretch/jquery-backstretch

```html 文件位置：~/blog/themes/next/layout/_layout.swig
+  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-backstretch/2.0.4/jquery.backstretch.min.js"></script>
+  <script>
+  $("body").backstretch("https://背景图.jpg");
+  </script>
</body>
```
加入到文件最后面</body>前面即可。

如果想要轮播效果，那就这样添加代码：把上面的`$("body").backstretch("https://背景图.jpg")`改为：
```
$("body").backstretch([
    "https://背景图1.jpg",
    "https://背景图2.jpg",
    "https://背景图3.jpg"
  ], {duration: 4000});
```

你应该要知道duration持续时间的单位是milliseconds毫秒哦。

那就可以实现4秒从背景图1到2（或2到3，或3到1）的转变了。


# 文章摘要图片

俗话说：「图文并茂」，现实中用笔书写文章实现起来比较困难，但在博客上可以很轻松实现sunglasses。

首先，文章摘要（excerpt）是指每篇文章在页面（page）上显示的那部分内容，也就是 [Read More] 之前的文章内容。由于它会展示在页面，因此在每篇文章的文章摘要中加一张图片，页面看起来就很美观。

但是有时候可能会出现一个问题：你想从文章中选一张图片作为文章摘要图片，而这张图片由于写作要求，必须添加在文章的末尾，这样点 [Read More] 查看文章时，这张图片就会重复出现了。咋办？

前提是在主题配置文件中：

```html 文件位置：~/blog/themes/next/_config.yml
excerpt_description: false

auto_excerpt:
  enable: false
```

首先加代码：

```diff 文件位置：~/blog/themes/next/layout/_macro/post.swig
      {% if is_index %}
        {% if post.description and theme.excerpt_description %}
          {{ post.description }}
          <!--noindex-->
          <div class="post-button text-center">
            <a class="btn" href="{{ url_for(post.path) }}">
              {{ __('post.read_more') }} &raquo;
            </a>
          </div>
          <!--/noindex-->
        {% elif post.excerpt  %}
          {{ post.excerpt }}
+
+        {% if post.image %}
+        <div class="out-img-topic">
+          <img src={{ post.image }} class="img-topic" />
+        </div>
+        {% endif %}
+
          <!--noindex-->
          <div class="post-button text-center">
            <a class="btn" href="{{ url_for(post.path) }}{% if theme.scroll_to_more %}#{{ __('post.more') }}{% endif %}" rel="contents">
              {{ __('post.read_more') }} &raquo;
            </a>
          </div>
          <!--/noindex-->
```

为了防止有的图片宽度不够导致风格不够统一，页面不美观，需要在custom.styl中加入：

```html 文件位置：~/blog/themes/next/source/css/_custom/custom.styl
// 自定义的文章摘要图片样式
img.img-topic {
    width: 100%;
}
```
最后编辑有这需求的相关文章时，在Front-matter（文件最上方以---分隔的区域）加上一行：

image: url

url即图片的链接地址～

# 点击侧栏头像回到博客首页

不知道为什么，我看到侧栏头像的第一反应是点击，然后心理预期会跳到博客首页，可惜也仅是预期，那么开始动手吧～
首先要在主题配置文件中配置好，比如我把头像avatar.gif放在~/blog/source/uploads/下，则：

```diff 文件位置：~/blog/themes/next/_config.yml
# Sidebar Avatar
# in theme directory(source/images): /images/avatar.gif
# in site  directory(source/uploads): /uploads/avatar.gif
-#avatar: /images/avatar.gif
+avatar: /uploads/avatar.gif
```

然后编辑文件：


```diff 文件位置：~/blog/themes/next/layout/_macro/sidebar.swig
+        <a href="/">
          <img class="site-author-image" itemprop="image"
               src="{{ url_for( theme.avatar | default(theme.images + '/avatar.gif') ) }}"
               alt="{{ theme.author }}" />
+        </a>
```
最后就 OK 了～

# 字体设置

1. 主题配置文件中找到font，改为以下内容
```
font:
  enable: true

  # Uri of fonts host. E.g. //fonts.googleapis.com (Default)
  host: https://fonts.loli.net

  # Font options:
  # `external: true` will load this font family from `host` above.
  # `family: Times New Roman`. Without any quotes.
  # `size: xx`. Use `px` as unit.

  # Global font settings used on <body> element.
  global:
    external: true
    family: Lato
    size:

  # Font settings for Headlines (h1, h2, h3, h4, h5, h6).
  # Fallback to `global` font settings.
  headings:
    external: true
    family: Roboto Slab
    size:

  # Font settings for posts.
  # Fallback to `global` font settings.
  posts:
    external: true
    family:

  # Font settings for Logo.
  # Fallback to `global` font settings.
  logo:
    external: true
    family:
    size:

  # Font settings for <code> and code blocks.
  codes:
    external: true
    family: Roboto Mono
    size:
```


# 出现鼠标点击后的文字“富强，民主，敬业...”特效

在填上一段代码：
```js 位置：blog/themes/hexo-theme-next-6.7.0/layout/_layout.swig

<!-- 鼠标特效  -->
<script type="text/javascript">

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
    return "rgb(" + ~~ (255 * Math.random()) + "," + ~~ (255 * Math.random()) + "," + ~~ (255 * Math.random()) + ")"
}
</script>
<script type="text/javascript" src= "/js/src/instantclick.min.js" data-no-instant></script>
<script data-no-instant>InstantClick.init();</script>

```

# 页脚使用红色的小爱心动效

介绍next v6主题，很简单的方法，就是在主题配置中，找到`icon:`。
`animated：true`意味着让图标动起来，有如果换成心脏❤️图标，那就有嘭嘭嘭跳动的效果，根据下面的把代码改一下就OK了！

```
# Icon between year and copyright info.
icon:
  # Icon name in fontawesome, see: https://fontawesome.com/v4.7.0/icons/
  # `heart` is recommended with animation in red (#ff0000).
  name: heart
  # If you want to animate the icon, set it to true.
  animated: true
  # Change the color of icon, using Hex Code.
  color: "#ff0000"

```

# 插入音乐

自从爱上我的博客小屋后，一直在优化、美化，音乐这个动态的美感，总感觉加上后就能够更加个性化、有感觉，好像很有我“自己的味道”，非常让我有归属感。是吧！你应该也赞同，音乐必不可少咯:fa-smile:
所以，必须有音乐！精神的寄托，品味的提升，吼吼吼。

## way1.直接用 HTML 的标签

写法如下：

```
<audio src="https://什么什么什么.mp3" style="max-height :100%; max-width: 100%; display: block; margin-left: auto; margin-right: auto;" controls="controls" loop="loop" preload="meta">Your browser does not support the audio tag.</audio>
```

注意，`https://`是链接开头哦！必须有的。以防止有人用的是`http://`

## way2.用插件

有显示歌词功能，也美观，建议使用这种方法。

### 安装插件
首先在站点文件夹根目录安装插件：

```html 所在目录：~/blog/
npm install hexo-tag-aplayer --save
```

### 单首歌曲

==md文章==中的写法：

```
{% aplayer "歌曲名" "歌手名" "https://什么什么什么.mp3" "https://封面图.jpg" "lrc:https://歌词.lrc" %}
```

高级自定义代码：
```
{% aplayer title author url [picture_url, narrow, autoplay, width:xxx, lrc:xxx] %}
```

标签参数
title : 曲目标题
author: 曲目作者
url: 音乐文件 URL 地址
picture_url: (可选) 音乐对应的图片地址
narrow: （可选）播放器袖珍风格
autoplay: (可选) 自动播放，移动端浏览器暂时不支持此功能
width:xxx: (可选) 播放器宽度 (默认: 100%)
lrc:xxx: （可选）歌词文件 URL 地址

### 歌单

支持歌单：
```
{% aplayerlist %}
{
    "autoplay": false,
    "showlrc": 3,
    "mutex": true,
    "music": [
        {
            "title": "歌曲名",
            "author": "歌手名",
            "url": "https://什么什么什么.mp3",
            "pic": "https://封面图.jpg",
            "lrc": "https://歌词.lrc"
        },
        {
            "title": "歌曲名",
            "author": "歌手名",
            "url": "https://什么什么什么.mp3",
            "pic": "https://封面图.jpg",
            "lrc": "https://歌词.lrc"
        }
    ]
}
{% endaplayerlist %}
```

稍等，别急，一首一首的这样加入岂不是要累shi。
:fa-tripadvisor:这里有更好的方法，用meting


如果是一首付费的歌曲呢？会怎么样？
首先在网易云找到这个音乐，复制浏览器上的链接：https://music.163.com/#/song?id=29722582
很明显，后面就有id=29722582

那我要用简单的代码：
```
{% aplayer "Caffeine" "Jeff Williams" "https://music.163.com/#/song?id=29722582" %}
```

显示如下：

{% aplayer "Caffeine" "Jeff Williams" "https://music.163.com/#/song?id=29722582" %}
呵呵，发现竟然没有显示，那我就换一个代码，用它（When you use MetingJS, your blog can play musics from Tencent, Netease, Xiami, Kugou, Baidu and more.）[^meting]


[^meting]:https://github.com/MoePlayer/hexo-tag-aplayer#meingjs-support-new-in-30

ok,再试一下，代码如下
```
{% meting "29722582" "netease" "song" "mutex:false" "listmaxheight:340px" "preload:none" "theme:#000"%}
```

{% meting "29722582" "netease" "song" "mutex:false" "listmaxheight:340px" "preload:none" "theme:#000"%}

太棒了，能够显示付费下载的单首歌曲。那么，再试下我的歌单！
同样，我们播放网易云歌单，然后看到浏览器上的地址为：https://music.163.com/#/my/m/music/playlist?id=113655500。后面就是id。
比如，我的歌单的id=2639061041；然后在一篇博客md文章中，写下如下代码：
```
{% meting "id" "netease" "playlist" "mutex:false" "listmaxheight:340px" "preload:none" "theme:#ad7a86"%}
```

用上我的id后，显示如下：

{% meting "2639061041" "netease" "playlist" "mutex:false" "listmaxheight:340px" "preload:none" "theme:#ad7a86"%}

```
The {% meting %} options are shown below:
```

Option	|Default|	Description
:-:|:-:|:-:
id|	required	|song id / playlist id / album id / search keyword
server|	required|	Music platform: netease, tencent, kugou, xiami, baidu
type|	required	|song, playlist, album, search, artist
fixed	|false|	Enable fixed mode
mini|	false	|Enable mini mode
loop|	all	|Player loop play, values: 'all', 'one', 'none'
order	|list	|Player play order, values: 'list', 'random'
volume	|0.7|	Default volume, notice that player will remember user setting, default volume will not work after user |set volume themselves|-
lrctype	|0	|Lyric type
listfolded	|false|	Indicate whether list should folded at first
autoplay|	false	|Autoplay song(s), not supported by mobile browsers
mutex|	true|	Pause other players when this player playing
listmaxheight	|340px|	Max height of play list
preload	|auto|	The way to load music, can be none, metadata, auto
storagename	|metingjs	|LocalStorage key that store player setting
theme|	#ad7a86	|Theme color

### 找到付费音乐的外部链接&id

其实，很多时候由于自己的歌单部分音乐要付费，导致无法生成外部链接，更找不到id了，所以，教大家怎么找到外部链接&id！[^音乐]
[^音乐]:https://www.shknn.com/music-163-gedan.html

#### id在浏览器中

首先在网易云找到这个音乐，复制浏览器上的链接：`https://music.163.com/#/song?id=29722582`
很明显，后面就有id=29722582

#### 外部链接需要在网页上检查元素

1. （以 Chrome 为例，其他浏览器类似）打开歌单页面，在“生成外链播放器”上`右击`，点击`审查元素（检查）` `ctrl+shift+i`；

2. 接着找到`生成外链播放器`这段文字，outchain这里，直接双击复制前面的`/outchain/0/46064061/`

![](https://cdn.shknn.com/wp-content/uploads/2015/12/20151228111322.png)

3. 浏览器中输入：http://music.163.com/#/outchain/0/46064061/
也就是，`http://music.163.com/#`+`你复制的内容`

那么，就可以看到外链播放器啦！

# 视频

## way1.直接用 HTML 的标签

写法如下：

```
<video poster="https://封面图.jpg" src="https://什么什么什么.mp4" style="max-height :100%; max-width: 100%; display: block; margin-left: auto; margin-right: auto;" controls="controls" loop="loop" preload="meta">Your browser does not support the video tag.</video>
```

## way2.用插件

功能更加强大，比如可以弹幕，非常建议食用。

首先在站点文件夹根目录安装插件[^dplayer]：

[^dplayer]https://github.com/MoePlayer/hexo-tag-dplayer

```html 所在目录：~/blog/
npm install hexo-tag-dplayer --save
```

然后md文章中的写法：

```
{% dplayer "url=https://什么什么什么.mp4" "https://封面图.jpg" "api=https://api.prprpr.me/dplayer/" "id=" "loop=false" %}
```

要使用弹幕，必须有api和id两项，并且若使用的是官方的 api 地址（即上面的"api=https://api.prprpr.me/dplayer/"），id 的值不能与这个列表的值一样。id 的值自己随便取，唯一要求就是前面这点。

如果唯一要求难倒了你，可以使用这个工具将一段与众不同的文字joy生成一段看起来毫无意义的哈希值，这样看起来是不是好多了。

唔，我也是边学边用，有些也是不熟悉，我来试一下这个视频能不能播放吧！

{% dplayer "url=http://he.yinyuetai.com/uploads/videos/common/77AA01404947D9221B9AB681B0B043F9.flv?sc=0484434754292fc9&br=3127&vid=469820&aid=25209&area=ML&vst=0" "https://ws2.sinaimg.cn/large/006tNc79gy1fzrbow28q8j30u00u00yz.jpg" "api=https://api.prprpr.me/dplayer/" "id=469820" "loop=false" %}

哇，我可是试了许多次，那个url一直不对，之前用的是直接copy浏览器上的网址，但是并没有用。随后，我在视频上右键，点击“复制视频地址”，哈哈，就成了！把这个视频地址拷贝到url=后面就好咯！

![](https://ws4.sinaimg.cn/large/006tNc79gy1fzvw58dahcj30mz0ctgx6.jpg)

目前已经实现了很多功能呢！😝文文会继续更新的，这篇就到这咯。
