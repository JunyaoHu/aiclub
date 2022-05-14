<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AI社-注册</title>
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
                // 验证用户名：必须由字母，数字下划线组成，并且长度为5到12位
                //1 获取用户名输入框里的内容
                var usernameText = $("#username").val();
                //2 创建正则表达式对象
                var usernamePatt = /^\w{5,12}$/;
                //3 使用test方法验证
                if (!usernamePatt.test(usernameText)) {
                    //4 提示用户结果
                    $("div.errorMsg").show().text("用户名不合法！");
                    return false;
                }

                // 验证密码：必须由字母，数字下划线组成，并且长度为5到12位
                //1 获取用户名输入框里的内容
                var passwordText = $("#password").val();
                //2 创建正则表达式对象
                var passwordPatt = /^\w{5,12}$/;
                //3 使用test方法验证
                if (!passwordPatt.test(passwordText)) {
                    //4 提示用户结果
                    $("div.errorMsg").show().text("密码不合法！");

                    return false;
                }

                // 验证确认密码：和密码相同
                //1 获取确认密码内容
                var repasswordText = $("#repassword").val();
                //2 和密码相比较
                if (repasswordText != passwordText) {
                    //3 提示用户
                    $("div.errorMsg").show().text("确认密码和密码不一致！");
                    return false;
                }

                // 邮箱验证：xxxxx@xxx.com
                //1 获取邮箱里的内容
                var emailText = $("#email").val();
                //2 创建正则表达式对象
                var emailPatt = /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
                //3 使用test方法验证是否合法
                if (!emailPatt.test(emailText)) {
                    //4 提示用户
                    $("div.errorMsg").show().text("邮箱格式不合法！");
                    return false;
                }

                // 验证码：现在只需要验证用户已输入。因为还没讲到服务器。验证码生成。
                var codeText = $("#code").val();
                //去掉验证码前后空格
                // alert("去空格前：["+codeText+"]")
                codeText = $.trim(codeText);
                // alert("去空格后：["+codeText+"]")

                if (codeText == null || codeText == "") {
                    $("div.errorMsg").show().text("验证码不能为空！");
                    return false;
                }

                if (codeText !== $(".given-code").text()) {
                    $("div.errorMsg").show().text("验证码不正确！");
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
            <span>欢迎注册AI社</span>
        </div>
    </div>
    <div class="errorMsg">${ empty requestScope.msg ? "" : requestScope.msg }</div>
    <form action="userServlet" method="post">
        <input type="hidden" name="action" value="regist" />
        <div class="input-box">
            <span class="icon" id="id"></span>
            <input class="regist" type="text" placeholder="请输入用户名" name="username" id="username" value="${requestScope.username}"/>
        </div>
        <div class="input-box">
            <span class="icon" id="pw"></span>
            <input class="regist" type="password" placeholder="请输入密码" name="password" id="password" value="${requestScope.password}"/>
        </div>
        <div class="input-box">
            <span class="icon" id = "repw"></span>
            <input class="regist" type="password" placeholder="确认密码" name="repassword" id="repassword" value="${requestScope.password}"/>
        </div>
        <div class="input-box">
            <span class="icon" id="mail"></span>
            <input class="regist" type="text" placeholder="请输入邮箱地址" name="email" id="email" value="${requestScope.email}"/><br/>
        </div>
        <div class="input-box" >
            <span class="icon" id="icode"></span>
            <input class="regist" type="text" placeholder="请输入验证码"  name="code" id="code"/>
            <span class="given-code">1234</span>
        </div>
        <div class="button-box">
            <input type="submit" value="注册" id="btn_submit"/>
        </div>
    </form>
    <div class="tips">
        <span>已经注册？<a href="user/login.jsp">立即登录</a></span><br/>
        <span>计科19-4班 胡钧耀 06192081</span>
    </div>
</div>

</body>
</html>