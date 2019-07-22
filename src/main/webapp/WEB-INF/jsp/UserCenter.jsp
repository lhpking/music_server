<%--
  Created by IntelliJ IDEA.
  User: culushishui
  Date: 19-7-10
  Time: 下午3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户中心</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="/static/js/bootstrap.js"></script>
</head>
<body>

<div class="container-builder">
    <div class="row" style="height: 100px"></div>
    <div class="row">
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="row">
                <div class="col-md-2 col-sm-3 "
                     style="background-color: #E2F4FF; height: 600px">
                    <div class="row" style="height: 20px"></div>
                    <div class="row">
                        <!--头像地址-->
                        <img id="userCenterInformation_avatarAddress" src="/static/images/tubiao.jpeg" alt="..."
                             class="img-circle img-responsive center-block ">
                        <p id="userCenterInformation_nickname">账号名</p>
                    </div>
                </div>
                <!-- 下面显示标签页 -->
                <div class="col-md-10 col-sm-9">
                    <ul class="nav nav-tabs" role="tablist" id="myTab">
                        <li role="presentation"><a href="#songList"
                                                   aria-controls="songList" role="tab" data-toggle="tab">创建的歌单</a></li>
                        <li role="presentation"><a href="#songs"
                                                   aria-controls="songs" role="tab" data-toggle="tab">分享的歌曲</a></li>
                        <li role="presentation"><a href="#modifyPassword"
                                                   aria-controls="modifyPassword" role="tab" data-toggle="tab">修改密码</a>
                        </li>
                        <li role="presentation"><a href="#modifyData"
                                                   aria-controls="modifyData" role="tab" data-toggle="tab">编辑资料</a></li>
                        <li role="presentation"><a href="#modifyPicture"
                                                   aria-controls="modifyPicture" role="tab" data-toggle="tab">修改头像</a>
                        </li>
                    </ul>

                    <div class="tab-content">

                        <div role="tabpanel" class="tab-pane" id="songList">


                            <!-- 这里填写用户分享的歌单 -->
                            <!-- 一行为4个图 -->
                            <div class="row songlists" id="iconlist" style="padding: 10px">
                            </div>


                        </div>
                        <!-- 这里填写对应歌单的js代码 -->
                        <script type="text/javascript">
                            function cssAnd() {
                                //先设置css样式
                                $(".col-sm-3.col-md-3.thumbnailFatherDiv")
                                    .css({
                                        "padding": "3px",
                                        "margin": "0px"
                                    });
                                $(".col-sm-3.col-md-3.thumbnailFatherDiv div.thumbnail").css({
                                    "margin": "0px"
                                });
                                $(".col-sm-3.col-md-3.thumbnailFatherDiv div.thumbnail .showPlayAmount").css({
                                    "position": "absolute",
                                    "left": "5px",
                                    "top": "5px"
                                });
                                $(".col-sm-3.col-md-3.thumbnailFatherDiv div.thumbnail  div.showAuthorAndShowSonglist").css({
                                    "font-size": "10px",
                                    "position": "absolute",
                                    "left": "5px",
                                    "bottom": "4px"
                                });
                                $(".col-sm-3.col-md-3.thumbnailFatherDiv div.thumbnail div.showPlayIcon").css({
                                    "position": "absolute",
                                    "right": "7px",
                                    "bottom": "4px"
                                });
                                $(".col-sm-3.col-md-3.thumbnailFatherDiv div.thumbnail  div.showAuthorAndShowSonglist .showSonginformation").css({
                                    "line-height": "16px",
                                    "margin": "0px"
                                });
                                $(".glyphicon.glyphicon-play-circle").css({
                                    "font-size": "20px",
                                    "color": "black"
                                })
                                //下面为初始化操作
                                $(".col-sm-3.col-md-3.thumbnailFatherDiv div.thumbnail div.showPlayIcon").hide();
                                //下面是动态显示播放图标的
                                $(".col-sm-3.col-md-3.thumbnailFatherDiv div.thumbnail").mouseout(
                                    function () {
                                        $(this).children(
                                            "div.showPlayIcon")
                                            .hide();

                                    });
                                $(".col-sm-3.col-md-3.thumbnailFatherDiv div.thumbnail").mouseover(
                                    function () {
                                        $(this).children(
                                            "div.showPlayIcon")
                                            .show();

                                    });
                                //再填写事件,
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
                            }

                            //下面这个是一个自动触发的请求，用于请求回用户的分享的歌单,没有分页的功能，
                            function ssb() {

                                $.ajax({
                                    url: '/lustl',
                                    type: 'get',
                                    sync: true,
                                    dataType: 'text',
                                    contentType: "application/json",
                                    success: function (f) {
                                        traverse(JSON.parse(f));
                                    },
                                    error: function () {
                                        alert("请求失败");
                                    }
                                });

                            }

                            function traverse(ss) {
                                var index = 0;
                                for (var i = 0; i < ss.length; i++) {
                                    if (index == 4) {
                                        index = 0;
                                        //创建一个组
                                        $(
                                            "<div"
                                                +" "
                                            + "class='row songlists'"
                                                +" "
                                            + "style='padding:10px'"
                                            + ">"
                                            +"</div>"
                                        ).appendTo($("#songList"));
                                    }
                                        var playAmount = ss[i].playAmount;
                                        var pictureAddress = ss[i].pictureAddress;
                                        var author = ss[i].author;
                                        var songTableName = ss[i].songTableName;
                                        var playAddress = ss[i].playAddress;
                                        console.log(playAmount + "///" + pictureAddress + "///" + author + "////" + songTableName + "///" + playAddress);
                                        var aabc = parseInt(i/4);
                                        console.log("aabc的值是（在哪个大的框架下）"+aabc);
                                        $(
                                            "<div class='col-sm-3 col-md-3 thumbnailFatherDiv'>"
                                            + "<div class='thumbnail'>"
                                            + "<!-- 显示播放量 -->"
                                            + "<div class='showPlayAmount'>"
                                            + "<span>" + playAmount + "万</span><span"
                                            + "class='glyphicon glyphicon-headphones' aria-hidden='true'></span>"
                                            + "</div>"
                                            + "<img src=" + pictureAddress + " "+"alt='歌单图标'>"
                                            + "<!-- 显示歌单名和作者 -->"
                                            + " <div class='showAuthorAndShowSonglist'>"
                                            + "<p class='showSonginformation'>" + songTableName + "</p>"
                                            + "<p class='showSonginformation'>" + author+ "</p>"
                                            + "    </div>"
                                            + "<!-- 动态显示播放图标,使用元素选择器 -->"
                                            + "<div class='showPlayIcon'>"
                                            + "<a href='" + playAddress + "'> <span class='glyphicon glyphicon-play-circle' aria-hidden='true'></span>"
                                            + "</a> </div> </div> </div>"
                                        ).appendTo($("#songList  .row.songlists:eq(" + aabc + ")"));

                                    index++;
                                }

                                //设置css和其他的一些事件
                                console.log("设置css样式")
                                cssAnd();
                            }


                        </script>
                        <div role="tabpanel" class="tab-pane" id="songs">

                            <!-- 控制checkbox的头栏 -->
                            <div class="row checkbox" style="padding: 10px">
                                <div class="checkbox">
                                    <label> <input type="checkbox" value=""> 全选
                                    </label>
                                    <button type="button" class="btn btn-info"
                                            style="float: right">
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
                                            if ($(this).is(
                                                ':checked')) {
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
                        <div role="tabpanel" class="tab-pane" id="modifyPassword">
                            <div class="row" style="height: 60px"></div>
                            <div class="row">
                                <div class="col-md-2"></div>
                                <p class="col-md-2" style="margin: 0px; padding: 0px">原密码</p>
                                <div class="col-md-6">
                                    <input type="text" class="form-control "
                                           aria-describedby="basic-addon1" id="oldPassword">
                                </div>
                                <div class="col-md-2"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-2"></div>
                                <p class="col-md-2" style="margin: 0px; padding: 0px">新密码</p>
                                <div class="col-md-6">
                                    <input type="text" class="form-control"
                                           aria-describedby="basic-addon1">
                                </div>
                                <div class="col-md-2"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-2"></div>
                                <p class="col-md-2" style="margin: 0px; padding: 0px">确认密码</p>
                                <div class="col-md-6">
                                    <input type="text" class="form-control "
                                           aria-describedby="basic-addon1" id="newPassword">
                                </div>
                                <div class="col-md-2"></div>
                            </div>
                            <div class="row">
                                <div class="col-md-5"></div>
                                <div class="col-md-2">
                                    <button class="btn btn-default"
                                            id="submitModifyPassword">提交
                                    </button>
                                </div>
                                <div class="col-md-5"></div>
                            </div>


                        </div>
                        <!-- 下为修改密码的js -->
                        <script>
                            //初始化css
                            $("#modifyPassword div.row").css({
                                "margin": "10px 10px"
                            });

                            //验证输入的信息不能为空
                            //设置div.row标签的变量
                            var $divLabel = null;
                            $("#modifyPassword .row .col-md-6 input")
                                .blur(
                                    function () {
                                        var index = null;
                                        var $divLabel = $(this)
                                            .parent(".col-md-6")
                                            .parent(".row");
                                        index = $(
                                            "#modifyPassword .row")
                                            .index($divLabel);
                                        console
                                            .log("触发密码输入框事件 ,index的值为"
                                                + index);
                                        if (($(this).val()).length == 0) {
                                            console.log("密码长度为零");
                                            $pLabel = $(this)
                                                .parent(
                                                    ".col-md-6")
                                                .parent(".row");

                                            $divLabel
                                                .children("p")
                                                .html(
                                                    "<p style='color:red'>密码不能为空</p>");

                                        } else {
                                            console
                                                .log("设置会label标签原来的值");
                                            if (index == 1) {
                                                $divLabel
                                                    .children(
                                                        "p")
                                                    .html(
                                                        "<p>原密码</p>");
                                            } else if (index == 2) {
                                                $divLabel
                                                    .children(
                                                        "p")
                                                    .html(
                                                        "<p>新密码</p>");
                                            } else if (index == 3) {
                                                $divLabel
                                                    .children(
                                                        "p")
                                                    .html(
                                                        "<p>确认密码</p>");
                                            }

                                        }

                                    });
                            //下面是提交信息的操作.采用xmlhttprequest对对象来操作
                            $("#submitModifyPassword").click(function () {
                                var oldPassword = $("#oldPassword").val();
                                var newpassword = $("#newPassword").val();
                                console.log('newpassword的值是' + newpassword);
                                $.ajax({
                                    url: '/mup',
                                    type: 'POST',
                                    sync: false,
                                    dataType: 'text',
                                    data: '{' +
                                        '"oldpassword":'
                                        + '"'
                                        + oldPassword
                                        + '"'
                                        + ','
                                        + '"password":'
                                        + '"'
                                        + newpassword
                                        + '"'
                                        + '}',
                                    contentType: "application/json",
                                    success: function (f) {
                                        alert(f);
                                    },
                                    error: function () {
                                        alert("请求失败");
                                    }
                                });

                            });

                        </script>
                        <!-- 下面为修改用户信息 -->
                        <div role="tabpanel" class="tab-pane active" id="modifyData">
                            <div class="row" style="height: 60px"></div>
                            <div class="row" style="margin-bottom: 10px">
                                <div class="col-md-2"></div>
                                <p class="col-md-2" style="margin: 0px; padding: 0px">昵称</p>
                                <div class="col-md-6">
                                    <input type="text" class="form-control "
                                           aria-describedby="basic-addon1">
                                </div>
                                <div class="col-md-2"></div>
                            </div>
                            <div class="row" style="margin-top: 10px">
                                <div class="col-md-2"></div>
                                <p class="col-md-2" style="margin: 0px; padding: 0px">个性签名</p>
                                <div class="col-md-6">
                                    <textarea rows="10" cols="40"></textarea>
                                </div>
                                <div class="col-md-2"></div>
                            </div>

                            <div class="row" style="margin-top: 10px">
                                <div class="col-md-5"></div>
                                <div class="col-md-2">
                                    <button class="btn btn-default" type="submit"
                                            id="submitModifyData">提交
                                    </button>
                                </div>
                                <div class="col-md-5"></div>
                            </div>

                        </div>
                        <!-- 下面是修改用户信息的js和jquery -->
                        <script type="text/javascript">
                            $("#submitModifyData").click(function () {
                                //获取各个输入框的密码值
                                /*  var nickname = $("#modifyData div.row:eq(1) div.col-md-6 input ").val();
                                  var signature = $("#modifyData div.row:eq(2) div.col-md-6 input ").val();

                                  var xmlhttp;
                                  if (window.XMLHttpRequest) {
                                      xmlhttp = new XMLHttpRequest();
                                  } else {
                                      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                                  }
                                  xmlhttp.onreadystatechange = function () {
                                      if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                                          alert("修改成功");
                                      }
                                  }
                                  xmlhttp.open("POST", "请求地址", true);
                                  //添加请求头:
                                  xmlhttp.setRequestHeader("nickname", nickname);
                                  xmlhttp.setRequestHeader("signature", signature);
                                  xmlhttp.send();*/

                                var nickname = $("#modifyData div.row:eq(1) div.col-md-6 input ").val();
                                var signature = $("#modifyData div.row:eq(2) div.col-md-6 textarea ").val();
                                console.log("请求的值是=" + nickname + "///" + signature);
                                $.ajax({
                                    url: '/mui',
                                    type: 'POST',
                                    sync: true,
                                    dataType: 'text',
                                    data: '{' +
                                        '"nickname":'
                                        + '"'
                                        + nickname
                                        + '"'
                                        + ','
                                        + '"signature":'
                                        + '"'
                                        + signature
                                        + '"'
                                        + '}',
                                    contentType: "application/json",
                                    success: function (f) {
                                        alert(f);
                                    },
                                    error: function () {
                                        alert("请求失败");
                                    }
                                });


                            });
                        </script>
                        <!-- 下面是修改头像的东西 -->

                        <div role="tabpanel" class="tab-pane" id="modifyPicture">

                            <div class="row" style="padding: 10px">
                                <form id="modifyPictureForm">
                                    <div class="form-group">
                                        <label for="exampleInputFile"></label> <input type="file"
                                                                                      id="exampleInputFile"
                                                                                      name="avatar">
                                        <p class="help-block">请选择你的头像</p>
                                    </div>
                                </form>
                                <button class="btn btn-default" id="modifyUserAvatar">修改</button>

                            </div>
                        </div>
                    </div>
                    <script>
                        //其实下面的执行什么我也不知到呀
                        $(function () {
                            $('#myTab a:first').tab('show')
                            gerUserCenterInformation();
                           ssb();


                        })
                        function gerUserCenterInformation(){
                            $.ajax({
                                url: "guci",
                                type: "get",
                                processData: false,
                                dataType: 'text',
                                contentType: "application/json",
                                success: function (data) {
                                    var aa = JSON.parse(data);
                                    console.log("头像地址是"+aa.avatarDddress+"////"+"昵称是"+aa.nickname);
                                    $("#userCenterInformation_avatarAddress").attr('src',aa.avatarDddress);
                                    $("#userCenterInformation_nickname")[0].innerText=aa.nickname;
                                },
                                error: function (e) {
                                    alert("错误！！");
                                }
                            });
                        }
                        //执行修改图片事件
                        $("#modifyUserAvatar").click(function () {
                            //获取头像图片
                            console.log("开始执行跟换头像操作")
                            var form = new FormData(document.getElementById("modifyPictureForm"));
                            $.ajax({
                                url: "mua",
                                type: "post",
                                data: form,
                                processData: false,
                                contentType: false,
                                success: function (data) {
                                    alert(data)
                                },
                                error: function (e) {
                                    alert("错误！！");
                                }
                            });
                        });

                    </script>
                </div>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>

</div>

<script type="text/javascript">

</script>
</body>
</html>
