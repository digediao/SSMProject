<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" href="img/logo/logo.ico" type="images/x-ico" />
    <title>登录</title>
    <link href="css/loginTop.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script type="text/javascript">
        $(function(){

            $(".active").css("color","#02a7de");
            $(".type-tab span:eq(1)").click(function(){
                $(".type-tab span:eq(1)").addClass("active").css("color","#02a7de");
                $(".type-tab span:eq(0)").removeClass("active").css("color","#555");
                $(".div1").css("display","none");
                $(".div2").css("display","block");
            });
            $(".type-tab span:eq(0)").click(function(){
                $(".type-tab span:eq(0)").addClass("active").css("color","#02a7de");
                $(".type-tab span:eq(1)").removeClass("active").css("color","#555");
                $(".div2").css("display","none");
                $(".div1").css("display","block");
            });

            $("#loginBtn").click(function(){
                var username = $("#username").val();
                var password = $("#password").val();
                if(username == "" || password == ""){ $(".login-error1").html("请输入账号或者密码") }
                //focus消除提示
                $("#username").focus(function(){ $(".login-error1").html("") })
                $("#password").focus(function(){ $(".login-error1").html("") })
                //发送login.do请求
                $.ajax({
                    url:"login.do",
                    data:{
                        username:username,
                        password:password
                    },
                    type:"post",
                    success:function(resp){
                        //判断账号密码是否错误给予提示
                        if(resp == 0){
                            $(".login-error1").html("账号或者密码错误")
                        }else{
                            window.open("Main.jsp","_self",false);
                        }
                    }
                })
            })

        })
    </script>
    <style>
        body{margin:0;padding: 0}

        .left{width: 489px;left: 24%;position: absolute;}
        .center{border-right: 1px solid #ddd;height: 300px;margin: 28px;position: absolute;left: 48%}
        .right{margin-left: 50vw;width: 489px;padding-left: 45px}
        /*左半部分*/

        /*右半部分*/
        .form-login{position: relative;margin: 78px 5px;}
        /*type-tab部分*/
        .type-tab{cursor: pointer;-webkit-box-align: center;-webkit-align-items: center;-moz-box-align: center;-ms-flex-align: center;align-items: center;margin-bottom: 12px;font-size: 14px;color: #555;letter-spacing: 0;text-align: left;}
        .type-tab span{padding-right: 20px}
        /*选择部分div1和div2*/
        .type-tab .password{padding-left:10px;cursor: text;width:100%;height: 40px;border: 1px solid #dcdcdc;border-radius: 5px}
        .type-tab .password::placeholder{color: #c6c6c6}
        /*div1*/
        .checkbox{margin-top: 4px;}
        .checkbox .input{position: absolute;width: 12px;height: 12px;visibility: hidden;}
        .checkbox .input+label{display: inline-block;width: 12px;height: 12px;background: white;border: 1px solid #cbcbcb;border-radius: 2px;vertical-align: middle}
        label{cursor: pointer;}
        .checkbox .input:checked+label{background: #00a0d8 no-repeat center center;}
        .btn{display: inline-block;height: 36px;border-radius: 2px;width: 184px;line-height: 38px;font-size: 14px;text-align: center;cursor: pointer;transition: 0.3s;}
        .a-login{background-color:#00a0d8;height: 38px}
        .a-login:hover{background-color: #0fc0ec;}
        .a-register:hover{background-color: #e8e8e8;}
        /*div2*/
        .type-tab .message{padding-left:10px;cursor: text;width:100%;height: 40px;border: 1px solid #dcdcdc;border-bottom-right-radius: 5px;border-top-right-radius: 5px;}
        .type-tab .message::placeholder{color: #c6c6c6}

    </style>
</head>
<body>
    <div id="top">
        <span class="top_shadow"></span>
    </div>


    <div id="login">
        <div class="title">
            <div class="title background"><img class="title img" src="img/bili/title.png"></div>
        </div>
        <div class="login_border">
            <span class="login_border login">登录</span>
        </div>
        <div class="left">
            <img src="img/干杯.jpg" style="float:left;width: 480px">
        </div>
        <div class="center"></div>
        <div class="right">
            <div class="form-login">
                <div style="margin-top: 50px;width: 414px">
                    <div class="type-tab">
                        <span class="active">密码登录</span>
                        <span class>短信登录</span>
                    </div>
                    <div style class="type-tab div1">
                        <input type="text" placeholder="你的手机号/邮箱" class="type-tab password" name="username" id="username">
                        <span style="height: 20px;"></span>
                        <input type="password" placeholder="密码" class="type-tab password" name="password" id="password">
                        <span style="height: 20px;color: #d21d1d;font-size: 10px" class="login-error1"></span>
                        <div class="remember" style="margin-left: 0;">
                            <span class="checkbox">
                                <input type="checkbox" checked class="checkbox input" id="check">
                                <label for="check"></label>
                                <label for="check" style="margin-left: 5px;font-size: 5px;color: #787878;">记住我</label>
                                <label for="check" style="margin-left: 10px;font-size: 3px;color:#cdcdcd;">不是自己的电脑上不要勾选此项</label>
                            </span>
                        </div>
                        <div class="div1-btn" style="margin-top: 10px">
                            <%--登录按钮--%>
                            <input class="btn a-login" type="button" style="color:white;border: 1px solid #ccc;" value="登录" id="loginBtn">
                            <a class="btn a-register" href="register.jsp" target="_self" style="color: #4c4c4c;text-decoration:none;float:right;border: 1px solid #ccc;">注册</a>
                        </div>
                        <div class="div1-sns"></div>
                    </div>
                    <div style="display:none" class="type-tab div2">
                        <input type="radio" placeholder="中国大陆">
                        <input type="text" placeholder="填写常用手机号" class="type-tab message">
                        <span style="height: 20px;"></span>
                        <input type="text" placeholder="请输入短信验证码" class="type-tab message">
                        <span style="height: 20px;color: #d21d1d;font-size: 10px" class="login-error2"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
