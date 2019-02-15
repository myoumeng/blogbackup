<!DOCTYPE html>

{# NexT version #}
{% set version = next_env('version') %}

{# Language & Config #}
{% set title = __('title') !== 'title' && __('title') || config.title %}
{% set subtitle = __('subtitle') !== 'subtitle' && __('subtitle') || config.subtitle %}
{% set author = __('author') !== 'author' && __('author') || config.author %}
{% set description = __('description') !== 'description' && __('description') || config.description %}

{% set html_class = 'theme-next ' + theme.scheme %}
{% if theme.motion.enable %}
  {% set html_class = html_class + ' use-motion' %}
{% endif %}

<html class="{{ html_class | lower }}" lang="{{ config.language }}">
<head>
  {{ partial('_partials/head/head.swig', {}, {cache: theme.cache.enable}) }}
  {% include '_partials/head/head-unique.swig' %}
  <title>{% block title %}{% endblock %}</title>
  {% include '_third-party/analytics/index.swig' %}
  {{ partial('_scripts/noscript.swig', {}, {cache: theme.cache.enable}) }}
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="{{ page.lang || page.language || config.language }}">

  {% set container_class = 'container' %}
  {% if theme.sidebar.position %}
    {% set container_class = container_class + ' sidebar-position-' + theme.sidebar.position %}
  {% endif %}

  <div class="{{ container_class }} {% block page_class %}{% endblock %}">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner">{% include '_partials/header/index.swig' %}</div>
    </header>

    {{ partial('_partials/github-banner.swig', {}, {cache: theme.cache.enable}) }}

    <main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
          {% if theme.scheme === 'Pisces' || theme.scheme === 'Gemini' %}
            {% include '_partials/header/sub-menu.swig' %}
          {% endif %}
          <div id="content" class="content">
            {% block content %}{% endblock %}
          </div>
          {% include '_partials/comments.swig' %}
        </div>
        {% if theme.sidebar.display !== 'remove' %}
          {% block sidebar %}{% endblock %}
        {% endif %}
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        {{ partial('_partials/footer.swig', {}, {cache: theme.cache.enable}) }}
        {% include '_third-party/analytics/analytics-with-widget.swig' %}
        {% block footer %}{% endblock %}
      </div>
    </footer>


    {% if theme.needmoreshare2.enable and theme.needmoreshare2.float.enable %}
      <div id="needsharebutton-float">
        <span class="btn">
          <i class="fa fa-share-alt" aria-hidden="true"></i>
        </span>
      </div>
    {% endif %}

    {% if theme.baidushare and theme.baidushare.type === "slide" %}
      <div>
        {% include '_partials/share/baidushare.swig' %}
      </div>
    {% endif %}

    {% if theme.add_this_id %}
      <div>
        {% include '_partials/share/add-this.swig' %}
      </div>
    {% endif %}
  </div>

    {% if not theme.sidebar.b2t %}
      <div class="back-to-top">
        <i class="fa fa-arrow-up"></i>
        {% if theme.sidebar.scrollpercent %}
          <span id="scrollpercent"><span>0</span>%</span>
        {% endif %}
      </div>
    {% endif %}

  {% include '_scripts/vendors.swig' %}
  {% include '_scripts/commons.swig' %}

  {% set scheme_script = '_scripts/schemes/' + theme.scheme | lower + '.swig' %}
  {% include scheme_script %}

  {% block script_extra %}{% endblock %}

  {% include '_scripts/boostrap.swig' %}

  {% include '_third-party/comments/index.swig' %}
  {% include '_third-party/search/index.swig' %}
  {% include '_third-party/analytics/lean-analytics.swig' %}
  {% include '_third-party/analytics/firestore.swig' %}
  {% include '_third-party/seo/baidu-push.swig' %}
  {% include '_third-party/schedule.swig' %}
  {% include '_third-party/math/index.swig' %}
  {% include '_third-party/needsharebutton.swig' %}
  {% include '_third-party/rating.swig' %}
  {% include '_third-party/pangu.swig' %}
  {% include '_third-party/scroll-cookie.swig' %}
  {% include '_third-party/exturl.swig' %}
  {% include '_third-party/bookmark.swig' %}
  {% include '_third-party/copy-code.swig' %}
  {% include '_third-party/pdf.swig' %}


<!-- 背景  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-backstretch/2.0.4/jquery.backstretch.min.js"></script>
<!-- 鼠标特效  -->
<script type="text/javascript" src="/js/src/fuqiangtexiao.js"></script>
<script>
$("body").backstretch([
    "http://img.netbian.com/file/2018/0722/93d1af25f76bc9974dd84c2e033b0eb1.jpg",
    "http://pic1.win4000.com/wallpaper/2019-02-11/5c614108eb245.jpg",
    "http://pic1.win4000.com/wallpaper/2019-02-11/5c61410aedcc8.jpg",
    "http://pic.bizhi360.com/bbpic/92/6792.jpg",
    "https://ws4.sinaimg.cn/large/006tNc79gy1g04od3wnk6j31400p076d.jpg",
    "https://ws1.sinaimg.cn/large/006tNc79gy1g04oe716mvj31hc0u0tmf.jpg",
    "https://ws1.sinaimg.cn/large/006tNc79gy1g04of03rw8j31hc0u0goq.jpg",
    "http://pic1.win4000.com/wallpaper/2018-12-22/5c1ddc1a09154.jpg",
    "http://pic1.win4000.com/wallpaper/2018-12-22/5c1ddc169ce59.jpg",
  ], {duration:10000,fade:4000,animateFirst:!0});
</script>


<!--从上到下依次是：
m蓝色美女1："http://img.netbian.com/file/2018/0722/93d1af25f76bc9974dd84c2e033b0eb1.jpg",
m2：    "http://pic1.win4000.com/wallpaper/2019-02-11/5c614108eb245.jpg",

m3：    "http://pic1.win4000.com/wallpaper/2019-02-11/5c61410aedcc8.jpg",

风景1：http://pic.bizhi360.com/bbpic/92/6792.jpg

v字仇杀队1，
v2
v3
x星空1
x2
-->




<script type="text/javascript" src= "/js/src/instantclick.min.js" data-no-instant></script>
<script data-no-instant>InstantClick.init();
</script>


<!--崩溃欺骗-->
<script type="text/javascript" src="/js/src/crash_cheat.js"></script>

</body>
</html>
