<%--
  Created by IntelliJ IDEA.
  User: hujunyao
  Date: 2022.4.13
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme()
            + "://"
            + request.getServerName()
            + ":"
            + request.getServerPort()
            + request.getContextPath()
            + "/";
%>

<!--使用 base 标签（page_head）-->
<base href="<%=basePath%>">
<link href="static/styles/subject.css" rel="stylesheet">
<script type="text/javascript" src="static/scripts/jquery-1.7.2.js"></script>