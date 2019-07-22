<%--
  Created by IntelliJ IDEA.
  User: culushishui
  Date: 19-7-10
  Time: 下午3:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>歌单</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>

</head>
<body>
<div class="container">

    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header" style="margin-bottom: 30px">
            <a class="navbar-brand" href="home"
               style="padding-left: 20px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; height: auto">
                <img alt="音鹉" src="/static/images/pattorAndpattor_font.gif"
                     style="width: 170px; height: 60px">
            </a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse"
             id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login">登录</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="show">分享歌曲</a></li>
            </ul>

        </div>

        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-2">
                        <div class="row">
                            <img src="/static/images/tubiao.jpeg" alt="..." class="img-thumbnail">
                        </div>
                        <div class="row">
                            <p>
                                名称:<span>哈哈</span>
                            <p>
                            <p>
                                创建人:<span>猪八戒</span>
                            <p>
                            <p>
                                更新事件:<span> 1012121</span>
                            <p>
                            <p>
                                简介<span>sdfa发的说说的asdfasdf</span>
                            <p>
                        </div>

                    </div>
                    <div class="col-md-10">
                        <div role="tabpanel" class="tab-pane" id="songs">

                            <!-- 控制checkbox的头栏 -->
                            <div class="row checkbox" style="padding: 10px">
                                <div class="checkbox">
                                    <label> <input type="checkbox" value=""> 全选
                                    </label>
                                    <button type="button" class="btn btn-info" style="float: right">
                                        <span class="glyphicon glyphicon-play" aria-hidden="true"></span>
                                        播放
                                    </button>
                                </div>
                            </div>
                            <!-- 下面是歌曲的展示 -->
                            <div class="row hotSongList" style="padding: 10px">
                                <div class="list-group col-md-12">
                                    <a href="#" class="list-group-item"> <label> <input
                                            type="checkbox" id="blankCheckbox" value="多选框的值">
                                    </label> <span class="numberOrder">序号</span> <span class="songName">歌名</span>
                                        <span class="glyphicon glyphicon-play" aria-hidden="true">
									</span>
                                    </a> <a href="#" class="list-group-item"> <label> <input
                                        type="checkbox" id="blankCheckbox" value="多选框的值">
                                </label> <span class="numberOrder">序号</span> <span class="songName">歌名</span>
                                    <span class="glyphicon glyphicon-play" aria-hidden="true">
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
                                //修改a标签内显示图标的元素,css样式,浮动,字体大小
                                $(
                                    ".row.hotSongList .list-group.col-md-12 .list-group-item .glyphicon.glyphicon-play")
                                    .css({
                                        "position": "absolute",
                                        "right": "3px"
                                    });
                                //下面是歌曲栏播放连接图表的动态交互,
                                $(
                                    ".row.hotSongList .list-group.col-md-12 .list-group-item .glyphicon.glyphicon-play")
                                    .mouseover(function () {
                                        //首先图表动态改变颜色
                                        $(this).css({
                                            "color": "blue"
                                        });
                                        console.log("触发图标在上事件");
                                    });
                                $(
                                    ".row.hotSongList .list-group.col-md-12 .list-group-item .glyphicon.glyphicon-play")
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
                            </script>

                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
