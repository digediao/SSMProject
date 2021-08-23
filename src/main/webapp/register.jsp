<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link href="css/loginTop.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    <script>

    </script>
    <style>
        body{margin:0;padding: 0}

        /*div中register部分*/
        #register{text-align: center;width: 420px;margin-top: 85px}
        input{width: 100%;height: 42px;cursor: text;border: 1px solid #dcdfe6;border-radius: 4px;background: none;color: #606266;}
        input::placeholder{color: #c7c7c7}
        .password,.message,.phone{margin-top: 40px}
        .register{padding: 0 15px}
        .registerBtn{cursor: pointer;background: #00a1d6;color: white}
        .registerBtn:hover{background: #0eb5ec;}
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
        <span class="login_border login">注册</span>
    </div>
    <%--注册主体部分--%>
    <div align="center">
        <div id="register">
            <form action="register.do" method="post">
                <input type="text" placeholder="昵称" class="register name" name="name"><br>
                <input type="password" placeholder="密码(6-16字符组成,区分大小写)" class="register password" name="password"><br>
                <input type="text" placeholder="填写常用手机号" class="register phone" name="username"><br>
                <input type="text" placeholder="请输入短信验证码" class="register message"><br>

                <div class="check" style="margin: 6px">
                    <input type="checkbox" class="checkbox" style="width: 16px;display: none">
                    <label style="font-size: 10px">我已同意</label><a href="" style="text-decoration: none;color: #00a1d6;font-size: 10px">《哔哩哔哩弹幕网用户使用协议》</a>
                    <label style="font-size: 10px">和</label><a href="" style="text-decoration: none;color: #00a1d6;font-size: 10px">《哔哩哔哩隐私政策》</a>
                </div>
                <input type="submit" value="注册" class="register registerBtn">
            </form>
        </div>
    </div>
</div>
</body>
</html>
