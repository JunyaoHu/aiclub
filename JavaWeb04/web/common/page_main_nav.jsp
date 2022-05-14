<%--
  Created by IntelliJ IDEA.
  User: hujunyao
  Date: 2022.4.13
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="main-nav">
    <div class="main-nav-left">
        <div class="logo">
            <img src="static/images/icon.jpg">
        </div>
        <div class="name">AI社<br>AIer的精神家园</div>
        <div class="main-tab">
            <ul>
                <li><a href="index.jsp">首页</a></li>
                <li><a href="javascript:void(0);">理论</a></li>
                <li><a href="javascript:void(0);">竞赛</a></li>
                <li><a href="subject/beijing2022/news.jsp">专题</a></li>
                <li><a href="javascript:void(0);">关于</a></li>
            </ul>
        </div>
    </div>

    <div class="user">
        <%--如果用户还没有登录，显示     【登录 和注册的菜单】 --%>
        <c:if test="${empty sessionScope.user}">
            <a href="user/login.jsp"><button>登录</button></a>
            <a href="user/regist.jsp"><button>注册</button></a>
        </c:if>
        <%--如果已经登录，则显示 登录 成功之后的用户信息。--%>
        <c:if test="${not empty sessionScope.user}">
            <span id="user-welcome">${sessionScope.user.username} </span>
            <a href="setting/user/home.jsp"><button>个人中心</button></a>
            <a href="userServlet?action=logout"><button>注销</button></a>
        </c:if>
    </div>
</nav>
