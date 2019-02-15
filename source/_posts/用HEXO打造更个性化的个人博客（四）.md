---
title: 用HEXO打造更个性化的个人博客（四）
id: 1550110704
tags:
  - untagged
categories:
  - uncategorized
keywords: 'keyword1,keyword2'
description: description
abbrlink: 3724
date: 2019-02-14 10:18:24
---

{% cq %}
第四波攻势来临啦~
还是对hexo-next做优化、美化♣️
这次我想加入折叠功能、鼠标放置后图片放大、分类和标签界面显示年份、可爱的十二生肖、分类层级显示、文章阅读后评分、侧栏加音乐
{% endcq %}

<!--more-->

<i class="fa fa-check-square fa-1x  fa-fw"></i> 折叠功能
<i class="fa fa-check-square fa-1x  fa-fw"></i> 鼠标放置后图片放大

<i class="fa fa-check fa-1x  fa-fw"></i>分类和标签界面显示年份

<i class="fa fa-square fa-1x  fa-fw"></i> 年份后显示十二生肖

<i class="fa fa-check-square fa-1x  fa-fw"></i> 分类&标签层级显示

- [ ] 文章阅读后评分

<i class="fa fa-check-square fa-1x  fa-fw"></i> 侧栏加音乐

1.
<!-- toc -->

2
toc
3
[toc]
4
@toc
5
@[toc]

# 折叠功能

有大段的东西想要放上去，但又不想占据大量的位置。折叠是最好的选择。[^2]
[^2]:https://blog.rmiao.top/hexo-fold-block/

(其实也可以用tabs功能，请看：http://localhost:4000/post/24651.html#%E4%B8%BB%E9%A2%98%E8%87%AA%E5%B8%A6%E6%A0%B7%E5%BC%8F%EF%BC%9Atabs-%E6%A0%87%E7%AD%BE)

下面在Hexo的主题上定制添加折叠功能。
next主题的主要js位于`themes/next/source/js/src/post-details.js`,在里面找合适的位置，添加如下代码：

```
$(document).ready(function(){
    $(document).on('click', '.fold_hider', function(){
        $('>.fold', this.parentNode).slideToggle();
        $('>:first', this).toggleClass('open');
    });
    //默认情况下折叠
    $("div.fold").css("display","none");
});
```

在主题的scripts下添加一个tags.js, 位于`themes/next/scripts/tags.js`
```js themes/next/scripts/tags.js
/*
  @haohuawu
  修复 Nunjucks 的 tag 里写 ```代码块```，最终都会渲染成 undefined 的问题
  https://github.com/hexojs/hexo/issues/2400
*/
const rEscapeContent = /<escape(?:[^>]*)>([\s\S]*?)<\/escape>/g;
const placeholder = '\uFFFD';
const rPlaceholder = /(?:<|&lt;)\!--\uFFFD(\d+)--(?:>|&gt;)/g;
const cache = [];
function escapeContent(str) {
  return '<!--' + placeholder + (cache.push(str) - 1) + '-->';
}
hexo.extend.filter.register('before_post_render', function(data) {
  data.content = data.content.replace(rEscapeContent, function(match, content) {
    return escapeContent(content);
  });
  return data;
});
hexo.extend.filter.register('after_post_render', function(data) {
  data.content = data.content.replace(rPlaceholder, function() {
    return cache[arguments[1]];
  });
  return data;
});
```

再继续添加一个`fold.js`:
```js themes/next/scripts/fold.js
/* global hexo */
// Usage: {% fold ???? %} Something {% endfold %}
function fold (args, content) {
    var text = args[0];
    if(!text) text = "点击显/隐";
    return '<div><div class="fold_hider"><div class="close hider_title">' + text + '</div></div><div class="fold">\n' + hexo.render.renderSync({text: content, engine: 'markdown'}) + '\n</div></div>';
}
hexo.extend.tag.register('fold', fold, {ends: true});
```

最后，添加几个自定义样式，
```html 位置themes/next/source/css/_custom/custom.styl

.hider_title{
    font-family: "Microsoft Yahei";
    cursor: pointer;
}
.close:after{
    content: "▼";
}
.open:after{
    content: "▲";
}
```
使用方法：在我们需要折叠的地方前后添加便签，示例用法：
```
{% fold 点击显/隐内容 %}
something you want to fold, include code block.
{% endfold %}
```


# 分类和标签界面显示年份

## 修改分类年份
打开　`\themes\next\layout\category.swig`

查找
```
{% for post in page.posts %}
  {{ post_template.render(post) }}
{% endfor %}
```
改为
```
{% for post in page.posts %}
  {# Show year #}
  {% set year %}
  {% set post.year = date(post.date, 'YYYY') %}
  {% if post.year !== year %}
    {% set year = post.year %}
    <div class="collection-title">
      <h2 class="archive-year motion-element" id="archive-year-{{ year }}">{{ year }}</h2>
    </div>
  {% endif %}
  {# endshow #}
  {{ post_template.render(post) }}
{% endfor %}
```
添加
```
{% block script_extra %}
  {% if theme.use_motion %}
    <script type="text/javascript" id="motion.page.archive">
      $('.archive-year').velocity('transition.slideLeftIn');
    </script>
  {% endif %}
{% endblock %}
```

## 修改标签年份

打开`　\themes\next\layout\tag.swig`
查找:
```
{% for post in page.posts %}
  {{ post_template.render(post) }}
{% endfor %}
```
改为:
```
{% for post in page.posts %}
  {# Show year #}
  {% set year %}
  {% set post.year = date(post.date, 'YYYY') %}
  {% if post.year !== year %}
    {% set year = post.year %}
    <div class="collection-title">
      <h2 class="archive-year motion-element" id="archive-year-{{ year }}">{{ year }}</h2>
    </div>
  {% endif %}
  {# endshow #}
  {{ post_template.render(post) }}
{% endfor %}
```
添加
```
{% block script_extra %}
  {% if theme.use_motion %}
    <script type="text/javascript" id="motion.page.archive">
      $('.archive-year').velocity('transition.slideLeftIn');
    </script>
  {% endif %}
{% endblock %}

```

# 修改分类&标签层级显示

## 分类层级

在`\themes\next\layout\_macro\post.swig`查找[^1]：
[^1]:https://qianling.pw/hexo-optimization/#8-%E4%BF%AE%E6%94%B9%E5%88%86%E7%B1%BB%E5%B1%82%E7%BA%A7%E6%98%BE%E7%A4%BA


```
{{ __('symbol.comma') }}
```
将其改为

```
{{ __('>') }}
```
则显示如下：

![分类于：xx>>xx](https://i.loli.net/2017/07/30/597d6dbc4eea8.png)

## 标签层级

在`\themes\next\source\css\_custom\custom.styl`中添加:
```
.category-list ul
    list-style none
    li:before
      content '>> '

```

则显示如下：
![](https://i.loli.net/2017/07/30/597d6dbc2d9ed.png)


## 侧栏加音乐「aplayer」

https://qianling.pw/hexo-optimization/#23-%E4%BE%A7%E8%BE%B9%E6%A0%8F%E6%B7%BB%E5%8A%A0-APlayer


打开　`\themes\next\source\js\src\custom\`

放置　`APlayer.min.js`
复制这个页面的内容：

{% btn #https://qianling.pw/js/src/custom/APlayer.min.js/, 点我即可, <i class="fa fa-download fa-2x fa-fw"></i>, title %}

打开　`\themes\next\layout\_custom\`

新建　`sidebar.swig`

写入　
```
<div id="aplayer" class="aplayer"></div>
<script src="/js/src/custom/APlayer.min.js"></script>
<script type="text/javascript">
var ap = new APlayer({
    element: document.getElementById('aplayer'),                       // Optional, player element
    narrow: false,                                                     // Optional, narrow style
    autoplay: false,                                                    // Optional, autoplay song(s), not supported by mobile browsers
    showlrc: 0,                                                        // Optional, show lrc, can be 0, 1, 2, see: ###With lrc
    mutex: true,                                                       // Optional, pause other players when this player playing
    theme: '#e6d0b2',                                                  // Optional, theme color, default: #b7daff
    mode: 'random',                                                    // Optional, play mode, can be `random` `single` `circulation`(loop) `order`(no loop), default: `circulation`
    preload: 'metadata',                                               // Optional, the way to load music, can be 'none' 'metadata' 'auto', default: 'auto'
    listmaxheight: '513px',                                             // Optional, max height of play list
    music: [{
      title: '双笙 囧菌 - 世末歌者',
      author: '双笙 囧菌',
      url: 'https://qianling-1254036047.cos.ap-chengdu.myqcloud.com/music/%E5%8F%8C%E7%AC%99%20%E5%9B%A7%E8%8F%8C%20-%20%E4%B8%96%E6%9C%AB%E6%AD%8C%E8%80%85.mp3',
      pic: 'https://qianling-1254036047.cos.ap-chengdu.myqcloud.com/music/%E5%8F%8C%E7%AC%99%20%E5%9B%A7%E8%8F%8C%20-%20%E4%B8%96%E6%9C%AB%E6%AD%8C%E8%80%85.webp',
    }, {
      title: '幹物女(WeiWei)',
      author: '封茗囧菌',
      url: 'https://qianling-1254036047.cos.ap-chengdu.myqcloud.com/music/%E5%B0%81%E8%8C%97%E5%9B%A7%E8%8F%8C%20-%20%E5%B9%B9%E7%89%A9%E5%A5%B3(WeiWei).mp3',
      pic: 'https://qianling-1254036047.cos.ap-chengdu.myqcloud.com/music/%E5%B0%81%E8%8C%97%E5%9B%A7%E8%8F%8C%20-%20%E5%B9%B9%E7%89%A9%E5%A5%B3(WeiWei).webp',
    }]
  });
</script>
```
