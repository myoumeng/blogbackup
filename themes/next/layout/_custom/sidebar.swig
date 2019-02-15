<div id="aplayer" class="aplayer"></div>
<script src="/js/src/APlayer.min.js"></script>
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
    listmaxheight: '100px',                                             // Optional, max height of play list
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
