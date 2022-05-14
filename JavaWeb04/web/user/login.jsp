<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AI社-登录</title>
    <%-- 静态包含 base标签、css样式、jQuery文件 --%>
    <%@ include file="/common/user_head.jsp"%>
    <script type="text/javascript">
        // 页面加载完成之后
        $(function () {
            if ($("div.errorMsg").text() == "") {
                $("div.errorMsg").hide();
            }
            // 给注册绑定单击事件
            $("#btn_submit").click(function () {

                var usernameText = $("#username").val().trim();
                if (usernameText == '') {
                    $("div.errorMsg").show().text("用户名为空！");
                    return false;
                }

                var passwordText = $("#password").val().trim();
                if (passwordText == '') {
                    $("div.errorMsg").show().text("密码为空！");
                    return false;
                }

                // 去掉错误信息
                $("div.errorMsg").text("").hide();
            });

        });
    </script>
</head>
<body>

<div class="main">
    <div class="main-header">
        <div>
            <img src="static/images/icon.jpg">
            <span>欢迎登录AI社</span>
        </div>
    </div>
    <div class="errorMsg">${ empty requestScope.msg ? "" : requestScope.msg }</div>
    <form action="userServlet" method="post">
        <input type="hidden" name="action" value="login" />
        <div class="input-box">
            <span class="icon" id="id"></span>
            <input class="login" type="text" placeholder="请输入用户名" name="username" id="username" value="${requestScope.username}"/>
        </div>
        <div class="input-box">
            <span class="icon" id="pw"></span>
            <input class="login" type="password" placeholder="请输入密码" name="password" id="password"/><br/>
        </div>
        <div class="button-box">
            <input type="submit" value="登录" id="btn_submit"/>
        </div>
    </form>
    <div class="tips">
        <span>还未注册？<a href="user/regist.jsp">立即注册</a> 或者 <a href="index.jsp">游客登陆</a></span><br/>
        <span>计科19-4班 胡钧耀 06192081</span>
    </div>
</div>

</body>
</html>