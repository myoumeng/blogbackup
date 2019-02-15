<!--崩溃欺骗-->
 var OriginTitle = document.title;
 var titleTime;
 document.addEventListener('visibilitychange', function () {
     if (document.hidden) {
         $('[rel="icon"]').attr('href', "/images/tu1.png");
         document.title = '点我ฅ>o<*快回来！快点我！';
         clearTimeout(titleTime);
     }
     else {
         $('[rel="icon"]').attr('href', "/images/oumeng10.png");
         document.title = 'ヾ(^▽^ヾ你来啦~好开❤' + OriginTitle;
         titleTime = setTimeout(function () {
             document.title = OriginTitle;
         }, 2000);
     }
 });