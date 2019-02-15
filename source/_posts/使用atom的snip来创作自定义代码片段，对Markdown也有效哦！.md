---
title: 使用atom的snip来创作自定义代码片段，对Markdown也有效哦！
id: 1550071927
tags:
  - atom
  - snippet
  - Markdown
categories:
  - 教程
keywords: 'atom,snippet,Markdown'
abbrlink: 40310
date: 2019-02-13 23:32:07
---
{% cq %}
当我发现hexo+next有一些不错的自定义样式，能够给自己的文章增色时，我发现要重复使用许多相同的代码片段。积少成多，每一次写md时，就很难专心于{% label info@思考&打字 %}，反而要花大量时间去回忆使用样式的多个代码^我这脑子经过的锤炼还不够^ ✧(≖ ◡ ≖✿)嘿嘿^，所以我对感觉就像是“好钢没有用在刀刃上”，~~咳咳我这也不算多好的钢~~ 🤦‍♀️
要是有立即、方便的解决重复输入代码的情况，那多省事省时间呀！
聪明的人类（及程序员👨‍💻‍）早就想到了这一点！
{% endcq %}

<!--more-->

让我为你点一首歌吧！陪伴你看完这篇文章，或者静静享受歌曲吧！
{% meting "29722582" "netease" "song" "mutex:false" "listmaxheight:340px" "preload:none" "theme:red"%}

snippet   n. 小片，片段; 不知天高地厚的年轻人;
我们可以理解为代码片段[^1]。
[^1]:https://www.jianshu.com/p/2ee34d8da142

# snippets.cson中自定义snip

在atom中可以使用：`cmd+shift+p` ，然后搜索snip,回车打开第一个选项就是的。

在snippets.cson文件中输入snip，回车，就得到一个 snippet 模板：

```
'.source.js':
  'Snippet Name':
    'prefix': 'Snippet Trigger'
    'body': 'Hello World!'
```

其中：
> '.source.js' 目标文件类型为 .js
> 'Snippet Name' 要新建的 snippet 的名称
> 'prefix' 触发当前 snippet 的代码
> 'body' 要填充的代码

我们想要在相应的文件类型中写入不同的代码片段，那就要先设置好目标文件类型。

# 怎么查找目标文件类型？

在atom中，先打开相应文件类型的文件；然后按cmd+shift+p，输入：`editor:log cursor scope`,选中它，随后就会在文件的右下角显示对应的文件类型。

比如我要设置markdown为目标文件类型，那最后显示的是：

![](https://ws4.sinaimg.cn/large/006tKfTcgy1g05ub26znoj30fo06mmxs.jpg)
```
Scopes at Cursor

source.gfm
```
其中的source.gfm就是我们要替换'.source.js'中的代码。
{% note warning %} `.source.js`必须有`.`作为开头 {% endnote %}

# 光标

以c语言为例：
C 语言的 if 写一个 snippet:
```
'.source.c':
  'if':
    'prefix': 'if'
    'body': 'if($1){$2}'
```
`$1` 表示光标的默认位置
`$2` 按下 `tab `键，光标跳到的第二个位置，以此类推

# 替换

使用`${1:'replaced'}`替换$1即可转换光标到选定状态，选定内容为`replaced`.

# 换行

在要填充的代码中使用回车并不能使代码填充以后自动换行:
<span id="inline-toc">1. </span>自动换行要使用`\n`
<span id="inline-toc">2. </span>或者用"""将要填充的代码包起来:

```
'.source.c':
  'if':
    'prefix': 'if'
    'body': """
      if($1)
      {
          $2\n}
    """
```

# 定义多个代码片段

要给 C 语言文件定义多个 snippet ，只需在.source.c下从添加新的 snippet 名称写起。

  ```
  '.source.c':
    'if':
      'prefix': 'if'
      'body': """
        if($1)
        {
            $2\n}
      """
    'while':
      'prefix': 'while'
      'body':"""
        while($1)
        {
            $2
        }
      """
```
