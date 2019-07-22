<%--
  Created by IntelliJ IDEA.
  User: culushishui
  Date: 19-7-10
  Time: 下午3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">

            <div class="col-sm-10">
                <input class="form-control" type="text" id="formGroupInputLarge"
                       placeholder="Large input">
            </div>
            <button class="btn btn-default col-sm-2" type="submit">搜索</button>
        </div>
        <div class="col-md-3"></div>
    </div>
    <div class="row">
        <div role="tabpanel">

            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#songs"
                                                          aria-controls="songs" role="tab" data-toggle="tab">歌曲</a></li>
                <li role="presentation"><a href="#songList"
                                           aria-controls="songList" role="tab" data-toggle="tab">歌单</a></li>

            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="songs">

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
                            </label> <span class="numberOrder">作者</span> <span class="songName">歌名</span>
                                <span class="glyphicon glyphicon-play" aria-hidden="true">
								</span>
                            </a> <a href="#" class="list-group-item"> <label> <input
                                type="checkbox" id="blankCheckbox" value="多选框的值">
                        </label> <span class="numberOrder">作者</span> <span class="songName">歌名</span>
                            <span class="glyphicon glyphicon-play" aria-hidden="true">
								</span>
                        </a>
                        </div>

                    </div>
                    <!-- 设置歌曲展示的css -->
                    <script type="text/javascript">
                        //修改歌曲展示的css样式,修改a标签父元素div的外边距,内边距
                        $(".row.hotSongList .list-group.col-md-12").css({
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
                                            .prop("checked",
                                                true);
                                    } else {
                                        //取消全选
                                        $(
                                            ".row.hotSongList .list-group.col-md-12 .list-group-item label input")
                                            .prop("checked",
                                                false);
                                    }
                                }
                            );

                        $(
                            ".row.hotSongList .list-group.col-md-12 .list-group-item label input").click(function () {
                            if ($(this).is(':checked')) {
                                console.log("触发点击");
                            } else {
                                $(".row.checkbox .checkbox label input").prop("checked",
                                    false);
                            }

                        });
                    </script>

                </div>
                <!-- 下面是歌单的搜索结果 -->
                <div role="tabpanel" class="tab-pane" id="songList">
                    <div class="searchSongList" style="padding: 10px">
                        <div class="list-group col-md-12">
                            <a href="#" class="list-group-item"> <img
                                    src="/static/images/tubiao.jpeg" alt="" class="img-rounded"> <span
                                    class="songlistNameAndAuthor">歌单名</span> <span class="play">播放量</span>
                            </a>
                        </div>

                    </div>
                    <!-- 下面是歌单搜索显示的css样式 -->
                    <script type="text/javascript">
                        //初始化css样式
                        $(
                            "div.searchSongList .list-group.col-md-12 .list-group-item img")
                            .css({
                                "width": "50px",
                                "height": "50px"
                            });
                        $(
                            "div.searchSongList .list-group.col-md-12 .list-group-item .play")
                            .css({
                                "position": "absolute",
                                "right": "3px",
                                "top": "26px"
                            });
                    </script>
                </div>
            </div>
        </div>
        <script>
            $(function () {
                $('#myTab a:first').tab('show')
            })
        </script>
    </div>
</div>

</body>
</html>
