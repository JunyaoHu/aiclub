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

<!--base标签-->
<base href="<%=basePath%>">
<link href="static/styles/user.css" rel="stylesheet">
<script type="text/javascript" src="static/scripts/jquery-1.7.2.js"></script>