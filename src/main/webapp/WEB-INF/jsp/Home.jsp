<%--
  Created by IntelliJ IDEA.
  User: culushishui
  Date: 19-7-10
  Time: 下午3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>首页</title>
    <!-- 在html的title中显示图标 -->
    <link href="/static/images/parrot.png" rel="icon" type="image/x-ico">
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.js"></script>
</head>
<body>
<div class="container-fluid">
    <!-- 导航栏 -->
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="/home"
                   style="padding-left: 20px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; height: auto">
                    <img alt="音鹉" src="/static/images/pattorAndpattor_font.gif"
                         style="width: 170px; height: 60px">
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse"
                 id="bs-example-navbar-collapse-1">

                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="余情未了">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/show">分享歌曲</a></li>
                    <li><a href="/login">登录</a></li>
                    <li><a href="/userCenter">个人中心</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!-- 下面是显示广告条的 -->
    <div class="row">
        <div class="col-md-12" style="margin:0px 20px 20px 20px" align="center">
            <img src="/static/images/advertisement.jpg" alt="早啊">
        </div>
    </div>
    <!-- 下面是显示标签页的 -->
    <div class="row">
        <div class="col-md-4">
            <ul class="nav nav-tabs" role="tablist" id="songListTab">
                <li role="presentation" class="active"><a
                        href="#bestNewSongList" aria-controls="bestNewSongList" role="tab"
                        data-toggle="tab">最新歌单</a></li>
                <li role="presentation"><a href="#bestHotSongList"
                                           aria-controls="bestHotSongList" role="tab" data-toggle="tab">最热歌单</a></li>

            </ul>

            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="bestNewSongList">
                    <div class="row songlists" id="iconlist">
                        <!-- 下面div是缩略图 -->
                        <div class="col-sm-3 col-md-3 thumbnailFatherDiv">
                            <div class="thumbnail">
                                <!-- 显示播放量 -->
                                <div class="showPlayAmount">
                                    <span>5.1万</span> <span class="glyphicon glyphicon-headphones"
                                                            aria-hidden="true"></span>
                                </div>
                                <!-- 这个是蒙版 -->
                                <div class="black"></div>
                                <img src="/static/images/tubiao.jpeg" alt="...">
                                <!-- 显示歌单名和作者 -->
                                <div class="showAuthorAndShowSonglist">
                                    <p class="showSonginformation">歌单名</p>
                                    <p class="showSonginformation">作者</p>
                                </div>
                                <!-- 动态显示播放图标,使用元素选择器 -->
                                <div class="showPlayIcon">
                                    <a href="/play"> <span
                                            class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-3 col-md-3 thumbnailFatherDiv">
                            <div class="thumbnail">
                                <!-- 显示播放量 -->
                                <div class="showPlayAmount">
                                    <span>5.1万</span> <span class="glyphicon glyphicon-headphones"
                                                            aria-hidden="true"></span>
                                </div>
                                <img src="/static/images/tubiao.jpeg" alt="...">
                                <div class="black"></div>
                                <!-- 显示歌单名和作者 -->
                                <div class="showAuthorAndShowSonglist">
                                    <p class="showSonginformation">歌单名</p>
                                    <p class="showSonginformation">作者</p>
                                </div>
                                <!-- 动态显示播放图标,使用元素选择器 -->
                                <div class="showPlayIcon">
                                    <a href="/play"> <span
                                            class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-md-3 thumbnailFatherDiv">
                            <div class="thumbnail">
                                <!-- 显示播放量 -->
                                <div class="showPlayAmount">
                                    <span>5.1万</span> <span class="glyphicon glyphicon-headphones"
                                                            aria-hidden="true"></span>
                                </div>
                                <img src="/static/images/tubiao.jpeg" alt="...">
                                <div class="black"></div>
                                <!-- 显示歌单名和作者 -->
                                <div class="showAuthorAndShowSonglist">
                                    <p class="showSonginformation">歌单名</p>
                                    <p class="showSonginformation">作者</p>
                                </div>
                                <!-- 动态显示播放图标,使用元素选择器 -->
                                <div class="showPlayIcon">
                                    <a href="/play"> <span
                                            class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-md-3 thumbnailFatherDiv">
                            <div class="thumbnail">
                                <!-- 显示播放量 -->
                                <div class="showPlayAmount">
                                    <span>5.1万</span> <span class="glyphicon glyphicon-headphones"
                                                            aria-hidden="true"></span>
                                </div>
                                <img src="/static/images/tubiao.jpeg" alt="...">
                                <div class="black"></div>
                                <!-- 显示歌单名和作者 -->
                                <div class="showAuthorAndShowSonglist">
                                    <p class="showSonginformation">歌单名</p>
                                    <p class="showSonginformation">作者</p>
                                </div>
                                <!-- 动态显示播放图标,使用元素选择器 -->
                                <div class="showPlayIcon">
                                    <a href="/play"> <span
                                            class="glyphicon glyphicon-play-circle" aria-hidden="true"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 这里填写对应歌单的js代码 -->
                    <script type="text/javascript">
                        //动态调整".row.songlists的css样式
                        $(".row.songlists").css({"padding": "0px 15px"});
                        //先设置css样式
                        $(".col-sm-3.col-md-3.thumbnailFatherDiv").css({
                            "padding": "3px",
                            "margin": "0px"
                        });
                        $("div.thumbnail").css({
                            "margin": "0px"
                        });
                        $(".showPlayAmount").css({
                            "position": "absolute",
                            "left": "5px",
                            "top": "5px"
                        });
                        $("div.showAuthorAndShowSonglist").css({
                            "font-size": "10px",
                            "position": "absolute",
                            "left": "5px",
                            "bottom": "4px"
                        });
                        $("div.showPlayIcon").css({
                            "position": "absolute",
                            "right": "7px",
                            "bottom": "4px"
                        });
                        $(".showSonginformation").css({
                            "line-height": "16px",
                            "margin": "0px"
                        });
                        $(".glyphicon.glyphicon-play-circle").css({
                            "font-size": "30px",
                            "color": "black"
                        })
                        //设置蒙版的css
                        $("div.thumbnail .black").css({
                            "position": "absolute",
                            "width": "100%",
                            "height": "100%",
                            "top": "0px",
                            "left": "0px",
                            "background-color": "black",
                            "opacity": "0.2"
                        }).hide();
                        //下面为初始化操作
                        $("div.showPlayIcon").hide();
                        //设置蒙版点击事件
                        $("div.thumbnail .black").click(function () {
                            console.log("触发蒙版点击事件");
                            window.open("songlist");
                        });
                        //下面是动态显示播放图标的
                        $("div.thumbnail").mouseout(function () {
                            $(this).children("div.showPlayIcon").hide();
                            $(this).children(".black").hide();

                        });
                        $("div.thumbnail").mouseover(function () {
                            $(this).children("div.showPlayIcon").show();
                            $(this).children(".black").show();

                        });
                        //再填写事件,
                        $("div.thumbnail").click(function () {
                            //跳转到songlist.html页面
                        });

                        $(
                            ".row.songlists  .col-sm-3.col-md-3.thumbnailFatherDiv .thumbnail .showPlayIcon .glyphicon.glyphicon-play-circle")
                            .mouseover(function () {
                                //首先图表动态改变颜色
                                $(this).css({
                                    "color": "blue"
                                });
                                console.log("触发图标在上事件");
                            });
                        $(
                            ".row.songlists  .col-sm-3.col-md-3.thumbnailFatherDiv .thumbnail .showPlayIcon .glyphicon.glyphicon-play-circle")
                            .mouseout(function () {
                                //首先图表动态改变颜色
                                $(this).css({
                                    "color": "#555"
                                });
                            });
                    </script>
                </div>
                <div role="tabpanel" class="tab-pane" id="bestHotSongList">...</div>
            </div>

            <script>
                $(function () {
                    $('#songListTab a:first').tab('show')
                })
            </script>
        </div>
        <div class="col-md-8">
            <div class="col-md-6">
                <ul class="nav nav-tabs" role="tablist" id="songsTab">
                    <li role="presentation" class="active"><a
                            href="#bestNewSongs" aria-controls="bestNewSongs" role="tab"
                            data-toggle="tab">最新歌曲</a></li>
                    <li role="presentation"><a href="#bestHotSongs"
                                               aria-controls="bestHotSongs" role="tab" data-toggle="tab">最热歌曲</a></li>

                </ul>

                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="bestNewSongs">...</div>
                    <div role="tabpanel" class="tab-pane" id="bestHotSongs">
                        <div class="row checkbox" style="padding: 10px">
                            <div class="checkbox">
                                <label> <input type="checkbox" value=""> 全选
                                </label>
                                <button type="button" class="btn btn-info" style="float: right"
                                        id="button_download">
                                    <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
                                    下载
                                </button>
                                <button type="button" class="btn btn-info"
                                        style="float: right; margin-right: 20px" id="button_play">
                                    <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
                                    播放
                                </button>
                            </div>
                        </div>
                        <!-- 下面是歌曲的展示 -->
                        <div class="row hotSongList" style="padding: 10px">
                            <div class="list-group col-md-12">
                                <a href="play" class="list-group-item"> <label> <input
                                        type="checkbox" id="blankCheckbox" value="多选框的值">
                                </label> <span class="numberOrder">序号</span> <span class="songName">歌名</span>
                                    <!-- 下面的是播放的图标 --> <span class="glyphicon glyphicon-play"
                                                             aria-hidden="true"> </span> <!-- 下面的是下载的图标 --> <span
                                            class="glyphicon glyphicon-arrow-down" aria-hidden="true">
									</span>
                                </a> <a href="play" class="list-group-item"> <label> <input
                                    type="checkbox" id="blankCheckbox" value="多选框的值">
                            </label> <span class="numberOrder">序号</span> <span class="songName">歌名</span>
                                <!-- 下面的是播放的图标 --> <span class="glyphicon glyphicon-play"
                                                         aria-hidden="true"> </span> <!-- 下面的是下载的图标 --> <span
                                        class="glyphicon glyphicon-arrow-down" aria-hidden="true">
									</span>
                            </a>
                            </div>

                        </div>
                        <!-- 设置歌曲展示的css -->
                        <script type="text/javascript">
                            //修改歌曲展示的css样式,修改a标签父元素div的外边距,内边距
                            $(".row.hotSongList .list-group.col-md-12")
                                .css({
                                    "margin": "0px",
                                    "padding": "0px"
                                });
                            //修改a标签内的行高,内边距
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item")
                                .css({
                                    "padding": "10px",
                                    "height": "0px"
                                });
                            //修改多选框的样式
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item label")
                                .css({
                                    "margin": "0px",
                                    "position": "absolute",
                                    "left": "3px",
                                    "top": "3px"
                                });
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item label input ")
                                .css({
                                    "margin": "0px",
                                    "position": "absolute",
                                    "left": "3px",
                                    "top": "3px"
                                });
                            //修改a标签内显示序号的元素
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item .numberOrder")
                                .css({
                                    "position": "absolute",
                                    "left": "30px",
                                    "top": "1px",
                                    "font-size": "10px"
                                });
                            //修改a标签内显示歌名的元素,css样式,浮动,字体大小
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item .songName")
                                .css({
                                    "position": "absolute",
                                    "left": "70px",
                                    "top": "1px",
                                    "font-size": "10px"
                                });
                            //修改a标签内显示播放图标的元素,css样式,浮动,字体大小,并初始化隐藏
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item  .glyphicon.glyphicon-play")
                                .css({
                                    "position": "absolute",
                                    "right": "20px"
                                }).hide();
                            //修改a标签内显示下载图标的元素,css样式,浮动,字体大小
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item  .glyphicon.glyphicon-arrow-down")
                                .css({
                                    "position": "absolute",
                                    "right": "3px"
                                });
                            //设置a标签的鼠标..事件
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item")
                                .mouseover(
                                    function () {
                                        $(
                                            ".row.hotSongList .list-group.col-md-12 .list-group-item  .glyphicon.glyphicon-play")
                                            .show();
                                    });
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item")
                                .mouseout(
                                    function () {
                                        $(
                                            ".row.hotSongList .list-group.col-md-12 .list-group-item  .glyphicon.glyphicon-play")
                                            .hide();
                                    });
                            //下面是歌曲栏播放连接图表的动态交互,
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item .glyphicon.glyphicon-arrow-down")
                                .mouseover(function () {
                                    //首先图表动态改变颜色
                                    $(this).css({
                                        "color": "blue"
                                    });
                                    console.log("触发图标在上事件");
                                });
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item .glyphicon.glyphicon-arrow-down")
                                .mouseout(function () {
                                    //首先图表动态改变颜色
                                    $(this).css({
                                        "color": "#555"
                                    });
                                });

                            //全选checkbox起效
                            $(".row.checkbox .checkbox label input")
                                .click(
                                    function () {
                                        console.log("触发点击事件");
                                        if ($(this).is(':checked')) {
                                            console.log("触发点击");
                                            //全选
                                            $(
                                                ".row.hotSongList .list-group.col-md-12 .list-group-item label input")
                                                .prop(
                                                    "checked",
                                                    true);
                                        } else {
                                            //取消全选
                                            $(
                                                ".row.hotSongList .list-group.col-md-12 .list-group-item label input")
                                                .prop(
                                                    "checked",
                                                    false);
                                        }
                                    }
                                );
                            $(
                                ".row.hotSongList .list-group.col-md-12 .list-group-item label input")
                                .click(
                                    function () {
                                        if ($(this).is(':checked')) {
                                            console.log("触发点击");
                                        } else {
                                            $(
                                                ".row.checkbox .checkbox label input")
                                                .prop(
                                                    "checked",
                                                    false);
                                        }

                                    });
                        </script>
                    </div>
                </div>

                <script>
                    $(function () {
                        $('#songListTab a:first').tab('show')
                    })
                </script>
            </div>
        </div>
    </div>
</div>
</body>
</html>
