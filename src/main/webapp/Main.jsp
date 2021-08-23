<%@ page import="Blog.domain.LoginUser" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" href="img/logo/logo.ico" type="images/x-ico" />
    <title>哔哩哔哩 （゜-゜）つロ 干杯~-bilibili</title>
    <script src="js/jquery.js"></script>
    <link rel="stylesheet" href="css/top.css">
    <style>

        body{margin: 0; font: 12px -apple-system,BlinkMacSystemFont,Helvetica Neue,Helvetica,Arial,PingFang SC,Hiragino Sans GB,Microsoft YaHei,sans-serif; -webkit-font-smoothing: antialiased; }
        #div_top{width: 100%; height: 200px; background: url(img/bili/bili_223.jpg) no-repeat 0 -80px; background-size: 100%; }

    </style>
    <script type="text/javascript">
        $(function () {
            /*//图片单击更换头像
            $("#input_head").click(function () { $("#input_headFile").click() });
            // 头像预览
            $("#input_headFile").change(function () {
                // 获取上传文件对象
                var file = $(this)[0].files[0];
                // 读取文件URL
                var reader = new FileReader();
                reader.readAsDataURL(file);
                // 阅读文件完成后触发的事件
                reader.onload = function () {
                    // 读取的URL结果：this.result
                    $("#input_head").attr("src", this.result);
                }
            });*/

            //登录成功
            <%
                LoginUser user = (LoginUser) session.getAttribute("User");
                if( null != user ){
            %>
            $("#tip_login").css("display","none").removeClass("tip_login");
            $("#tip_logan").addClass("tip_login").css("display","block");
            <% }else{ %>
            $("#tip_logan").css("display","none").removeClass("tip_login");
            $("#tip_login").addClass("tip_login").css("display","block");
            <% } %>

            /*input_head停留显示Span_headLogin,不停留不显示*/
            function tip_login_display1(){ $(".tip_login").css("display","block"); }
            function tip_login_display2(){ $(".tip_login").css("display","none"); }
            $("#input_head").hover( function (){ tip_login_display1() } ).mouseleave( function (){tip_login_display2()} );
            $(".tip_login").hover( function (){ tip_login_display1() } ).mouseleave( function (){tip_login_display2()} );

            /*退出登录*/
            $("#login_cancel").click( function(){
                $.ajax({
                    url:"cancel.do",
                    type:"post",
                    success:function(resp){
                        window.open("Main.jsp","_self",false);
                    }
                })
            } )

        })
    </script>
</head>
<body>
    <%--top界面--%>
    <div id="div_top">
        <%--top_left界面--%>
        <div id="top_left">
            <ul>
                <li><img src="img/logo/logo.ico" style="width: 18px;height: 18px"></li>
                <li><a href="" id="a_Main">主站</a></li>
                <li><a href="" id="a_video">番剧</a></li>
                <li><a href="" id="a_game">游戏中心</a></li>
                <li><a href=""  id="a_shop">会员购</a></li>
            </ul>
        </div>
        <%--top_center界面--%>
        <div id="top_center">
            <input type="text" placeholder="search" id="input_searchBox">
            <div id="input_searchBack">
                <input type="image" src="img/search.png" id="input_search">
            </div>
        </div>

        <%--top_right界面--%>
        <div id="top_right">
            <div style="float:left;">
                <%--<%=user.getName()%>--%>
                <input type="button" id="input_head">
                <img src="img/head.jpg" id="img_head">
            </div>
            <ul>
                <li><a href="" id="a_dynamic">消息</a></li>
                <li><a href="" id="a_collection">动态</a></li>
                <li><a href="" id="a_history">收藏</a></li>
                <li><a href="" id="a_message">历史记录</a></li>
                <span id="span_submit">
                    投稿
                </span>
            </ul>
        </div>

        <%--tip--%>
        <div role="tooltip" aria-hidden="false" tabindex="0" class="tip_login" id="tip_login">
            <span class="int"></span>
            <span class="out"></span>
            <div style="margin: 15px 20px;">登录后你可以:</div>
            <div id="tip_loginAll">
                <div class="tip_loginDiv"><div class="tip_loginImg" style="background-image:url(img/bili/hd.png);"></div><span class="tip_loginMain">免费看高清视频</span></div>
                <div class="tip_loginDiv"><div class="tip_loginImg" style="background-image:url(img/bili/danmaku.png);"></div><span class="tip_loginMain">多端同步播放记录</span></div><br/><br/>
                <div class="tip_loginDiv"><div class="tip_loginImg" style="background-image:url(img/bili/time.png);"></div><span class="tip_loginMain">发表弹幕/评论</span></div>
                <div class="tip_loginDiv"><div class="tip_loginImg" style="background-image:url(img/bili/video.png);"></div><span class="tip_loginMain">热门番剧影视看不停</span></div><br/><br/>
            </div>
            <div id="tip_login_a_div">
                <a href="login.jsp" target="_blank" id="tip_login_a">立即登录</a>
            </div>
            <div style="height:40px;float: left;margin: 6px;padding: 0 100px">首次使用?&nbsp;&nbsp;&nbsp;<a href="register.jsp" style="color: #00a1d6;text-decoration: none;">点我注册</a></div>
        </div>
        <div role="tooltip" aria-hidden="false" tabindex="0" id="tip_logan" class>
            <div style="margin: 15px 20px;">登录后你可以</div>
            <div style="width: 100%;text-align: center">
                <%--<a href="cancel.do" style="text-decoration: none;color: #00a1d6;" target="_self">退出登录</a>--%>
                <input type="button" value="退出登录" style="color: #00a0d8" id="login_cancel">
            </div>
        </div>

    </div>
</body>
</html>
