---
title: 用iPic来配合Markdown完成内容丰富的文档！
tags:
  - iPic
  - 图片
  - Markdown
  - mac软件
  - 图床
img: 'https://ps.toolinbox.net/trluz.png'
abbrlink: 63512
date: 2019-01-27 11:19:59
---

<p class="description">前不久也在折腾Markdown，我发现「图片」这一项对我来说还是比较麻烦的一件事情，于是不停的搜寻着解决方案，果不其然，原来网上有这么多「图床」服务，例如七牛等。可是，却还没有解决我的问题。怎样找到一个免费、方便的工具，让我优雅地玩转Markdown和图片呢？
现在我的问题基本上解决啦！</p>
<!--more-->

中国的确有很多不错的图床，[参考知乎:国内有什么方便的图床？](https://www.zhihu.com/question/21667151)只是，我的博客还是用的GitHub的静态页面，没有备案，所以，七牛仅有1个月的非备案域名试用，对我来说就相当于一个定时炸弹。
除此以外，我也有一些截图直接上传的需求。而普通的图床都需要经过这些步骤：
1. 打开某图床网页并且登录，打开个人存储空间
2. 上传图片通常要拖拽
3. 复制外链
4. 粘贴到 Markdown
<div align=center>
啊，这四步，对于我这个懒癌患者，还是不能忍！

接着我就发现了它，

铛铛铛铛，看下方👇
<div align=center>
<img src="https://ps.toolinbox.net/ro6or.png" alt="good" width="100" height="100" >
</div>

它的详细介绍在此：👉 [iPic - Markdown 图床、文件上传工具](https://toolinbox.net/iPic/)
</div>
<i class="fa fa-quote-left fa-4x fa-pull-left"></i>有了图床神器 iPic，不论屏幕截图、还是复制图片，都可以自动上传、保存 Markdown 格式的链接，直接粘贴插入，够懒人吧？使用 Hexo | Heroku 或 WordPress 写博客、在公众号发文章、在知乎讨论、在豆瓣灌水、在论坛发帖、跨境做外贸电商 …iPic 带给你从未有过的插图体验。当然，除了图片，你可以上传普通文件，上传方式与图片完全相同。

我目前主要用MacBook Air。iPic的免费版还是够用的，直接上传到免费的图床上，它在Mac上运行的不错呢！

<div align=center>
很好，以后就用它了！

...

什么？你还不知道怎么用？
那我就简单说一下，它的使用方法吧~
</div>

# 图片上传

我最喜欢的就是他的图片上传~免费上传图片，（默认图床是微博图床）立刻就可以获得链接，写Markdown时自动生成`![](URL)`这个格式，我们就得到了插入的图片。

## 操作方法

### 复制图片上传

很多时候，要么我们复制好图片，要么是截图后得到的图片（也算复制哦！因为它在剪切板中），那就只需要在菜单栏上选择要上传的图片，就会自动上传啦。上传后，再次点击我们的图片，那就可以得到Markdown的`![](URL)`这个格式。那我们就可以直接粘贴到Markdown软件中了！

iPic 会自动监测剪切板的变化，当复制图片后，该图片会出现在 iPic 菜单中`待上传`区域。
如果需要上传，点击菜单中该图片即可。手动上传比较适合临时上传少量图片。
![](https://ww2.sinaimg.cn/large/006tKfTcgy1fewqvevds5g30j60as7rz.gif)

### 拖拽上传

就是把图片拖到菜单栏上的ipic。

![](https://ww4.sinaimg.cn/large/006tKfTcgy1fewqw208xmg30j60aske8.gif)
可以注意到，上传时菜单栏图标也会显示上传的进度。很简洁、却很实用，不再盲目等待。

<div align=center>
<img src="https://ww2.sinaimg.cn/large/006tKfTcgy1fewqweqbdrg3078014mxs.gif"  >
</div>

如果有很多图片，也是可以一次性上传的，图片上传后的顺序，和上传前选择的顺序一致。

### 右击图片选择finder中的服务上传

![](https://ww4.sinaimg.cn/large/006tKfTcgy1fewqvt4svyg30j60asay7.gif)
使用服务上传还有其他便利之处：

- 可以一次性上传多张图片
- 即使 iPic 并未运行，系统也会启动 iPic、并自动上传

### cmd+U快捷键上传

只要选中图片，然后按下 Command + U 快捷键，即可自动上传。
如果你觉得默认快捷键 Command + U 不方便，也可以在 系统偏好设置 > 键盘 > 快捷键 > 服务 中修改 使用 iPic 上传 对应的快捷键。同样，如果你的 Mac 中安装了很多程序、菜单中有很多你不需要的服务，也可以在这里进行关闭。
<div align=center>
<img src="https://ps.toolinbox.net/ogb9y.png">
</div>

## ipic菜单
### Markdown链接与普通链接切换

这里有个很贴心的功能：切换普通链接、Markdown 格式链接时，如果粘贴板中有上一格式的内容，会转换后重新保存到粘贴板中。
![](https://ps.toolinbox.net/klqxf.png)

### 图片上传记录

iPic 会保存最近上传的 15 张图片，其中最后上传的 3 张图片会出现在一级菜单中，其他的则在 更多已上传图片 中。
点击已上传图片，则会复制该图片的链接。

当然，可以在 `更多` 菜单中清空图片上传记录。
<div align=center>
<img src="https://ps.toolinbox.net/trluz.png">
</div>

## 下载ipic

介绍完了ipic，你觉得不错，就可以下载了哦~

<div align=center>
<a href="https://itunes.apple.com/cn/app/id1101244278?mt=12"><img src="https://ps.toolinbox.net/0vsw5.jpg"></a>
</div>
