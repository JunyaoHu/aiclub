<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>AI社-管理员后台-首页</title>
    <%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="layui/css/layui.css">
    <link rel="stylesheet" href="static/scripts/jquery-1.7.2.js">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black">AI社管理员后台</div>


        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a href="javascript:;">
                    <img id='iconNav' src="static/images/icon/${sessionScope.user.icon}" class="layui-nav-img">
                    ${sessionScope.user.username}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="index.jsp">回到社区</a></dd>
                    <dd><a href="userServlet?action=logout">退出登录</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
                <a href="javascript:;">
                    <i class="layui-icon layui-icon-more-vertical">消息</i>
                </a>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">文章</a>
                    <dl class="layui-nav-child">
                        <dd><a href="setting/admin/article_create.jsp">发表文章</a></dd>
                        <dd><a href="setting/admin/article_publish_manage.jsp">发表文章管理</a></dd>
                        <dd><a href="setting/admin/article_love_manage.jsp">收藏文章管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">数据集</a>
                    <dl class="layui-nav-child">
                        <dd><a href="setting/admin/dataset_create.jsp">发布数据集</a></dd>
                        <dd><a href="setting/admin/dataset_publish_manage.jsp">发布数据集管理</a></dd>
                        <dd><a href="setting/admin/dataset_love_manage.jsp">收藏数据集管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">用户</a>
                    <dl class="layui-nav-child">
                        <dd><a href="setting/admin/user_manage.jsp">用户管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="index.jsp">回到社区</a></li>
                <li class="layui-nav-item"><a href="userServlet?action=logout">退出登录</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <iframe src="" id="main" height="100%" width="100%" style="border: none">
        </iframe>
    </div>

    <div class="layui-footer">
        [基于Layui的后台管理系统] 计算机科学与技术2019-4班 06192081 胡钧耀
    </div>
</div>
<script src="layui/layui.js"></script>
<script>
    //JS
    layui.use(['element', 'layer', 'util'], function(){
        var element = layui.element
            ,layer = layui.layer
            ,util = layui.util
            ,$ = layui.$;

        $(document).ready(function () {
            $(".layui-side dd>a").click(function (e) {
                e.preventDefault();
                $('#main').attr("src",$(this).attr('href'));
            })
        })

        //头部事件
        util.event('lay-header-event', {
            //左侧菜单事件
            menuLeft: function(othis){
                layer.msg('展开左侧菜单的操作', {icon: 0});
            }
            ,menuRight: function(){
                layer.open({
                    type: 1
                    ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                    ,area: ['260px', '100%']
                    ,offset: 'rt' //右上角
                    ,anim: 5
                    ,shadeClose: true
                });
            }
        });

    });
</script>
</body>
</html>
