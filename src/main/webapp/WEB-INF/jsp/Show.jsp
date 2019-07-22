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
    <title>分享歌曲</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.js"></script>
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
        <!-- /.navbar-collapse -->
    </div>


    <ul class="nav nav-tabs" role="tablist" id="myTab">
        <li role="presentation" class="active"><a href="#showSongList"
                                                  aria-controls="showSongList" role="tab" data-toggle="tab">分享歌单</a>
        </li>
        <li role="presentation"><a href="#showSongs"
                                   aria-controls="showSongs" role="tab" data-toggle="tab">分享歌曲</a></li>

    </ul>

    <div class="tab-content">
        <!-- 下面显示的是创建歌单的页面,包括修改歌单 -->
        <div role="tabpanel" class="tab-pane active" id="showSongList">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <label>歌单名</label> <input type="text" class="form-control"
                                                  id="songListName"> <br> <input type="file"
                                                                                 id="exampleInputFile">

                        <p class="help-block">选着封面图片</p>
                    </div>
                    <div class="col-md-8 ">
                        <h4>简介:</h4>
                        <textarea rows="6" cols="100"></textarea>
                    </div>
                </div>
                <div class="row" style="height: 50px">
                    <div class="col-md-12">
                        <hr>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-xs-8">
                                <h4>添加和删除歌曲</h4>

                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <button class="btn btn-default" type="submit">添加</button>
                            </div>
                        </div>
                        <ul class="list-group" id="listSongs">
                            <li class="list-group-item">歌名 <span
                                    class="glyphicon glyphicon-remove" aria-hidden="true"></span></li>
                            <li class="list-group-item">歌名 <span
                                    class="glyphicon glyphicon-remove" aria-hidden="true"></span></li>
                            <li class="list-group-item">歌名 <span
                                    class="glyphicon glyphicon-remove" aria-hidden="true"></span></li>
                            <li class="list-group-item">歌名 <span
                                    class="glyphicon glyphicon-remove" aria-hidden="true"></span></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5"></div>
                    <div class="col-md-2">
                        <button class="btn btn-default" type="submit">提交</button>
                    </div>
                    <div class="col-md-5"></div>
                </div>
            </div>
        </div>
        <!-- 是歌单的js和juquery代码了 -->
        <script type="text/javascript">
            //初始化css
            var $span = $("#listSongs .list-group-item .glyphicon.glyphicon-remove");
            $span.css({
                "position": "absolute",
                "right": "7px",
                "top": "12px"
            });
            $span.hide();
            //事件
            var $li = $("#listSongs .list-group-item");
            $li.mouseover(function () {
                $span.show();
            });
            $li.mouseout(function () {
                $span.hide();
            });
            $span.mouseover(function () {
                $(this).css({
                    "color": "#E60000"
                });
            });
            $span.mouseout(function () {
                $(this).css({
                    "color": "#515151"
                });
            })
            $span.click(function () {
                $(this).parent().remove();
            });
        </script>
        <!-- 下面显示的分享歌曲的页面 -->
        <div role="tabpanel" class="tab-pane" id="showSongs"
             style="width: 1030px; height: 700px;">

            <form>

                <div class="model"
                     style="height: auto; width: 200px; margin: 10px; float: left;">
                    <div class="form-group">
                        <label for="exampleInputEmail1">歌名</label> <input type="text"
                                                                          class="form-control" id="songName1">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">演唱者</label> <input type="text"
                                                                              class="form-control" id="sing1">
                    </div>
                    <div class="form-group">
                        <input type="file" id="songFile1">
                        <p class="help-block">请选着歌曲文件</p>
                        <input type="file" id="songLyric1">
                        <p class="help-block">请选歌词</p>
                    </div>
                </div>

                <div style="float: right">
                    <button type="submit" class="btn btn-default">提交</button>
                    <br> <br> <br> <br>
                    <button type="button" class="btn btn-default" id="addItemSong">增加一项</button>
                    <br> <br> <br> <br>
                    <button type="button" class="btn btn-default"
                            id="deleteLastItemSong">删除最后
                    </button>
                </div>
            </form>
            <script>
                var index = 1;
                $("#addItemSong")
                    .click(
                        function () {
                            index++;
                            $(
                                "<div class='model'" +
                                "style='height: auto; width: 200px; margin: 10px; float: left;'>"
                                + "<div class='form-group'>"
                                + "<label for='exampleInputEmail1'>歌名</label> <input type='text'" +
                                "class='form-control' id='songName"  + "' >"
                                + "</div>"
                                + "<div class='form-group'>"
                                + "<label for='exampleInputPassword1'>演唱者</label> <input type='text'" +
                                "class='form-control' id='sing"  + "'>"
                                + "</div>"
                                + "<div class='form-group'>"
                                + "<input type='file' id='songFile"  + "'>"
                                + "<p class='help-block'>请选着歌曲文件</p>"
                                + "<input type='file' id='songLyric"  + "'>"
                                + "<p class='help-block'>请选歌词</p>"
                                + "</div>"
                                + "<div class='modeNext'>"
                                + "</div>").appendTo(
                                "#showSongs form ")

                        });
                $("#deleteLastItemSong").click(function () {
                    if (index != 0) {
                        index = index - 1;
                    }
                    $("#showSongs form div.model:last").remove();
                });
            </script>


        </div>

    </div>

    <script>
        $(function () {
            $('#myTab a:first').tab('show')
        })
    </script>
</div>
</body>
</html>
