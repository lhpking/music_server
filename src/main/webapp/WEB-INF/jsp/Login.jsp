<%--
  Created by IntelliJ IDEA.
  User: culushishui
  Date: 19-7-10
  Time: 下午3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录和注册页面</title>
    <link rel="stylesheet" href="/static/css/bootstrap.css">
    <script type="text/javascript" src="/static/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            //判断用户名的位数
            $("#exampleInputPassword1")
                .keyup(
                    function () {
                        console.log("触发用户名的input的keyup事件");
                        var $exampleInputPassword1Value = $(
                            "#exampleInputPassword1").val();
                        if ($exampleInputPassword1Value.length > 11) {
                            $("#01").text("不超过11位");
                            $("#fistdiv").attr("class", "row has-warning");
                            console.log("执行true");
                        } else {
                            $("#01").text("用户名");
                            console.log("执行false");
                            $("#fistdiv").attr("class", "row has-success");
                        }
                    });

        });
    </script>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
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
                    <li><a href="search">分享歌曲</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="login">登录</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- 下面是表单提交 -->
    <div class="row">
        <div class="col-md-3"></div>

        <form  name="LoginAndRigister" class="col-md-6" method="post" >
            <div class="row has-success  " id="fistdiv">
                <label class="control-label" id="01">用户名</label> <input type="text"
                                                                        class="form-control" name="user" id="yonghu"
                                                                        placeholder="用户名">
            </div>
            <div class="row" style="height: 10px"></div>
            <div class="row has-success ">
                <label class="control-label" >密码</label> <input
                    type="password" class="form-control" name="password" id="mima"
                    placeholder="密码">
            </div>
            <div class="row" style="height: 10px"></div>
            <div class="row">
                <div class="col-md-3"></div>
                <button onclick="login()" class="btn btn-default col-md-2" >登录</button>
                <div class="col-md-3"></div>
                <button  onclick="reginster()" class="btn btn-default col-md-2">注册</button>
                <div class="col-md-2"></div>
            </div>
        </form>
        <script>
            function login(){
//        document.("表单的name值").action
//        document.("表单的name值").submit
                document.LoginAndRigister.action="/cp";
                document.LoginAndRigister.submit();
            }
            function reginster() {
                console.log("注册")
                $.ajax({
                    url: '/rig',
                    type: 'POST',
                    sync: true,
                    dataType: 'text',
                    data: '{' +
                        '"user":'
                        + '"'
                        + $("#yonghu").val()
                        + '"'
                        + ','
                        + '"password":'
                        + '"'
                        + $("#mima").val()
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
            }
        </script>


        <div class="col-md-3"></div>
    </div>

</div>
</body>
</html>
