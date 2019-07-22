<%--
  Created by IntelliJ IDEA.
  User: culushishui
  Date: 19-7-10
  Time: 下午3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>播放</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.js"></script>
    <link rel="stylesheet" href="/static/fonts/iconfont.css">
    <link rel="stylesheet" type="text/css" media="screen"
          href="/static/css/reset.css"/>
    <link rel="stylesheet" type="text/css" media="screen"
          href="/static/css/player.css"/>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-5 col-sm-8">
            <div class="music-player">
                <!-- audio标签 -->
                <audio class="music-player__audio"></audio>
                <!-- 播放器主体 -->
                <div class="music-player__main">
                    <!-- 模糊背景 -->
                    <div class="music-player__blur"></div>
                    <!-- 唱片 -->
                    <div class="music-player__disc">
                        <!-- 唱片图片 -->
                        <div class="music-player__image">
                            <img width="100%" src="" alt="">
                        </div>
                        <!-- 指针 -->
                        <div class="music-player__pointer">
                            <img width="100%" src="/static/images/cd_tou.png" alt="">
                        </div>
                    </div>
                    <!-- 控件主体 -->
                    <div class="music-player__controls">
                        <!-- 歌曲信息 -->
                        <div class="music__info">
                            <h3 class="music__info--title">...</h3>
                            <p class="music__info--singer">...</p>
                        </div>
                        <!-- 控件... -->
                        <div class="player-control">
                            <div class="player-control__content">
                                <div class="player-control__btns">
                                    <div class="player-control__btn player-control__btn--prev">
                                        <i class="iconfont icon-prev"></i>
                                    </div>
                                    <div class="player-control__btn player-control__btn--play">
                                        <i class="iconfont icon-play"></i>
                                    </div>
                                    <div class="player-control__btn player-control__btn--next">
                                        <i class="iconfont icon-next"></i>
                                    </div>
                                    <div class="player-control__btn player-control__btn--mode">
                                        <i class="iconfont icon-loop"></i>
                                    </div>
                                </div>
                                <div class="player-control__volume">
                                    <div class="control__volume--icon player-control__btn">
                                        <i class="iconfont icon-volume"></i>
                                    </div>
                                    <div class="control__volume--progress progress"></div>
                                </div>
                            </div>

                            <!-- 歌曲播放进度 -->
                            <div class="player-control__content">
                                <div class="player__song--progress progress"></div>
                                <div class="player__song--timeProgess nowTime">00:00</div>
                                <div class="player__song--timeProgess totalTime">00:00</div>
                            </div>

                        </div>

                    </div>
                </div>
                <!-- 歌曲列表 -->
                <div class="music-player__list">
                    <ul class="music__list_content">
                        <!-- <li class="music__list__item play">123</li>
        <li class="music__list__item">123</li>
        <li class="music__list__item">123</li> -->
                    </ul>
                </div>
            </div>
        </div>
        <!-- 下面是歌词显示 -->
        <div class="col-md-7 col-sm-4">
            <!-- 先导入歌词文本 -->
            <textarea id="lrc_content" name="textfield" cols="70" rows="10"
                      style="display: none;">
      [ti:光年之外 (《太空旅客（Passengers）》电影中国区主题曲)]
[ar:G.E.M. 邓紫棋]
[al:光年之外]
[by:]
[offset:0]
[00:00.00]光年之外 (《太空旅客（Passengers）》电影中国区主题曲) - G.E.M. 邓紫棋 (Gem Tang)
[00:02.55]词：G.E.M. 邓紫棋
[00:05.10]曲：G.E.M. 邓紫棋
[00:07.66]编曲：Lupo Groinig
[00:10.21]监制：Lupo Groinig
[00:12.77]感受停在我发端的指尖
[00:16.68]如何瞬间冻结时间
[00:21.80]
[00:23.58]记住望着我坚定的双眼
[00:27.62]也许已经没有明天
[00:32.66]
[00:34.24]面对浩瀚的星海
[00:36.19]
[00:36.71]我们微小得像尘埃
[00:39.27]漂浮在一片无奈
[00:43.49]
[00:45.13]缘分让我们相遇乱世以外
[00:49.40]
[00:50.50]命运却要我们危难中相爱
[00:54.72]
[00:55.92]也许未来遥远在光年之外
[01:00.36]
[01:01.48]我愿守候未知里为你等待
[01:05.58]我没想到为了你我能疯狂到
[01:09.69]
[01:10.87]山崩海啸没有你根本不想逃
[01:15.38]
[01:16.36]我的大脑为了你已经疯狂到
[01:20.68]
[01:21.76]脉搏心跳没有你根本不重要
[01:26.27]
[01:29.07]一双围在我胸口的臂弯
[01:33.17]足够抵挡天旋地转
[01:38.49]
[01:40.02]一种执迷不放手的倔强
[01:44.05]足以点燃所有希望
[01:49.25]
[01:50.59]宇宙磅礡而冷漠
[01:53.09]我们的爱微小却闪烁
[01:55.63]颠簸却如此忘我
[02:00.02]
[02:01.44]缘分让我们相遇乱世以外
[02:06.36]
[02:06.90]命运却要我们危难中相爱
[02:11.28]
[02:12.37]也许未来遥远在光年之外
[02:17.11]
[02:17.80]我愿守候未知里为你等待
[02:21.80]我没想到为了你我能疯狂到
[02:26.07]
[02:27.27]山崩海啸没有你根本不想逃
[02:31.63]
[02:32.71]我的大脑为了你已经疯狂到
[02:37.06]
[02:38.17]脉搏心跳没有你根本不重要
[02:42.46]
[02:44.17]也许航道以外是醒不来的梦
[02:53.78]
[02:56.71]乱世以外是纯粹的相拥
[03:05.27]
[03:05.86]我没想到为了你我能疯狂到
[03:09.84]
[03:10.92]山崩海啸没有你根本不想逃
[03:15.36]
[03:16.39]我的大脑为了你已经疯狂到
[03:20.65]
[03:21.82]脉搏心跳没有你根本不重要
[03:26.12]
[03:27.70]相遇乱世以外危难中相爱
[03:37.72]
[03:38.66]相遇乱世以外危难中相爱
[03:48.53]
[03:49.07]我没想到
    </textarea>

            <ul id="text"
                style="overflow: hidden;height:517px; position: absolute; left: 100px; top: 50px">
            </ul>
        </div>
    </div>

</div>

<!-- 下面是末尾要执行的js脚本 -->
<script src="/static/js/utill.js"></script>
<script src="/static/js/player.js"></script>
<!-- 下面js处理歌词 -->
<script type="text/javascript">
    //首先吧获取到的格尺解析为对象数组,并且放入指定的位置,并且溢出隐藏(t.split(“:”)[0] * 60 + parseFloat(t.split(“:”)[1])).toFixed(3)这里是要把原来的mm:ss的时间格式改为秒
    var medisArray = new Array(); // 定义一个新的数组
    function createLrc() {
        var medis = document.getElementById('lrc_content').innerText;
        var medises = medis.split("\n"); // 用换行符拆分获取到的歌词

        $.each(medises, function (i, item) { // 遍历medises，并且将时间和文字拆分开，并push进自己定义的数组，形成一个对象数组
            var t = item
                .substring(item.indexOf("[") + 1, item.indexOf("]"));
            medisArray.push({

                t: (t.split(":")[0] * 60 + parseFloat(t.split(":")[1]))
                    .toFixed(3),
                c: item.substring(item.indexOf("]") + 1, item.length)
            });
        });
        var ul = $("#text");
        // 遍历medisArray，并且生成li标签，将数组内的文字放入li标签
        $.each(medisArray, function (i, item) {
            var li = $("<li style='list-style: none;'>");
            li.html(item.c);
            ul.append(li);
        });
    }

    createLrc();
    //下面是设置歌词的css
    $("#text li").css({"color": "#FFFFFF", "font-size": "15px", "margin-bottom": "5px", "margin-top": "5px"});
    //设置文字的css样式
    /* 	$("#text li.lineheight").css({"color":"#099CBF"}); */

    var fraction = 0.5;
    var topNum = 0;

    function lineHeight(lineno) {
        console.log("点亮的行是" + lineno);
        var ul = $("#text");
        var $ul = document.getElementById('text');
        // 令正在唱的那一行高亮显示
        if (lineno > 0) {
            /* $(ul.find("li").get(topNum + lineno - 1)).removeClass(
                    "lineheight"); */
            $(ul.find("li")).removeClass(
                "lineheight").css({"color": "#FFFFFF"});
            ;

        }
        var nowline = ul.find("li").get(topNum + lineno);
        $(nowline).addClass("lineheight").css({"color": "#099CBF"});
        ;


        // 实现文字滚动
        var _scrollTop;
        $ul.scrollTop = 0;
        if ($ul.clientHeight * fraction > nowline.offsetTop) {
            _scrollTop = 0;
        } else if (nowline.offsetTop > ($ul.scrollHeight - $ul.clientHeight
            * (1 - fraction))) {
            _scrollTop = $ul.scrollHeight - $ul.clientHeight;
        } else {
            _scrollTop = nowline.offsetTop - $ul.clientHeight * fraction;
        }

        //以下声明歌词高亮行固定的基准线位置成为 “A”
        if ((nowline.offsetTop - $ul.scrollTop) >= $ul.clientHeight
            * fraction) {
            //如果高亮显示的歌词在A下面，那就将滚动条向下滚动，滚动距离为 当前高亮行距离顶部的距离-滚动条已经卷起的高度-A到可视窗口的距离
            $ul.scrollTop += Math.ceil(nowline.offsetTop - $ul.scrollTop
                - $ul.clientHeight * fraction);

        } else if ((nowline.offsetTop - $ul.scrollTop) < $ul.clientHeight
            * fraction
            && _scrollTop != 0) {
            //如果高亮显示的歌词在A上面，那就将滚动条向上滚动，滚动距离为 A到可视窗口的距离-当前高亮行距离顶部的距离-滚动条已经卷起的高度
            $ul.scrollTop -= Math.ceil($ul.clientHeight * fraction
                - (nowline.offsetTop - $ul.scrollTop));

        } else if (_scrollTop == 0) {
            $ul.scrollTop = 0;
        } else {
            $ul.scrollTop += $(ul.find('li').get(0)).height();
        }
    }

    //监听audio 的timeupdate 事件，实现文字与音频的同步
    //如果medisArray[lineNo].t <=T && T<= medisArray[lineNo + 1].t，那么行号为lineNo的这行歌词就需要高亮
    /* var lineNo = 10; */
    /*    var audio = document.getElementById("audio"); */
    var audio = $(".music-player__audio");
    audio.bind('timeupdate', function () {
        /* console.log("当前播放的时间是"+audio[0].currentTime); */
        ///遍历数组,获取行号
        for (var index = 0; index < medisArray.length; index++) {
            if (parseFloat(medisArray[index].t) <= audio[0].currentTime
                    .toFixed(3)
                && audio[0].currentTime.toFixed(3) <= parseFloat(medisArray[index + 1].t)) {
                if (index >= 10) {
                    lineHeight(index);
                }
            }
        }
        /* if (lineNo == medisArray.length - 1
                && audio[0].currentTime.toFixed(3) >= parseFloat(medisArray[lineNo].t)) {
            lineHeight(lineNo);
        }
        if (parseFloat(medisArray[lineNo].t) <= audio[0].currentTime
                .toFixed(3)
                && audio[0].currentTime.toFixed(3) <= parseFloat(medisArray[lineNo + 1].t)) {
            lineHeight(lineNo);
            lineNo++;
        } */
    });
</script>
</body>
</html>
