<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AI社-暂无权限</title>
    <%-- 静态包含 base标签、css样式、jQuery文件 --%>
    <%@ include file="/common/user_head.jsp"%>
    <script type="text/javascript">
        setTimeout("self.location = 'user/login.jsp'", 3000);
    </script>
</head>
<body>
<div class="main">
    <div class="main-header">
        <div>
            <img src="static/images/icon.jpg">
            <span>您需要权限才能操作!</span>
        </div>
    </div>
    <div class="tips">
        <span>未跳转？<a href="user/login.jsp">立即跳转</a></span>
    </div>
</div>
</body>
</html>