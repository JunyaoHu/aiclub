<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>收藏文章管理</title>
    <%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script type="text/javascript" src="static/scripts/jquery-1.7.2.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>收藏文章管理</legend>
</fieldset>


<table id="demo" lay-filter="test" lay-data="{id:'love_article'}"></table>

<script src="layui/layui.js"></script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
    layui.use(['table','form'], function () {
        var table = layui.table;
        var form = layui.form;

        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 500
            ,url: 'loveArticleServlet?action=list&action=page&user_id=' + ${sessionScope.user.user_id}
            ,method: 'post'
            ,page: true //开启分页
            ,request: {
                pageName: 'pageNo' //页码的参数名称，默认：page
                ,limitName: 'pageSize' //每页数据量的参数名，默认：limit
            }
            ,cols: [[ //表头
                { field: 'loving_article_id', title: '收藏文章ID', width:180, sort: true}
                ,{field: 'user_id', title: '收藏用户ID', width:180, sort: true}
                ,{field: 'article_id', title: '文章ID', width:180, sort: true}
                ,{field: 'note', title: '备注', width:180, sort: true}
                ,{field: 'right', title: '操作', width: 100, toolbar:'#barDemo'}
            ]]
        });

        //监听行工具事件
        table.on('tool(test)', function (obj) {
            var data = obj.data
                ,layer = layui.layer;
            // 删除
            if (obj.event === 'del') {
                layer.confirm("确定删除这行数据吗？", function () {
                    $.ajax({
                        url: "loveArticleServlet?action=delete&loving_article_id=" + data.loving_article_id,
                        method: "post",
                        success: function (res) {
                            if (res == "success") {
                                layer.msg('删除成功', {icon: 1});
                            }
                        },
                        async: false
                    })
                    obj.del();
                    layer.close();
                });
            }
        });
    });
</script>


</body>
</html>