<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>用户管理</title>
    <%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script type="text/javascript" src="static/scripts/jquery-1.7.2.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>用户管理</legend>
</fieldset>

<table id="demo" lay-filter="test"></table>

<script src="layui/layui.js"></script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
    layui.use('table', function(){
        var table = layui.table;

        //第一个实例
        table.render({
            elem: '#demo'
            ,height: 500
            ,url: 'userServlet?action=list&action=page' //数据接口
            ,method: 'post'
            ,page: true //开启分页
            ,request: {
                pageName: 'pageNo' //页码的参数名称，默认：page
                ,limitName: 'pageSize' //每页数据量的参数名，默认：limit
            }
            ,cols: [[ //表头
                {type:'checkbox', fixed: 'left'}
                ,{field: 'user_id', title: '用户ID', width:100, sort: true}
                ,{field: 'username', title: '用户名', width: 100, sort: true}
                ,{field: 'password', title: '密码', style:"-webkit-text-security: disc;", width: 100}
                ,{field: 'icon', title: '头像', width: 150}
                ,{field: 'email', title: '邮箱', width: 200, sort: true}
                ,{field: 'right', title: '操作', width: 150, toolbar:'#barDemo'}
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
                        url: "articleServlet?action=delete&article_id=" + data.article_id,
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

            } else if (obj.event === 'edit') {
                layer.open({
                    type: 2
                    , title: '用户信息编辑'
                    , maxmin: true
                    , content: 'setting/admin/user_edit.jsp'
                    , area: ['1000px', '600px']
                    , success:function (layero,index) {
                        var form = layero.find('iframe').contents().find("form[name='user_edit']");
                        var body = layer.getChildFrame('body', index);
                        form.find("[name=user_id]"    ).val(data.user_id);
                        form.find("[name=username]"   ).val(data.username);
                        form.find("[name=password]"   ).val(data.password);
                        form.find("[name=icon]"       ).val(data.icon);
                        form.find("[name=email]"      ).val(data.email);
                        form.find("#iconShow"         ).attr("src", "static/images/icon/" + data.icon);
                    }
                });
            }
        });

    });
</script>

<button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">居中弹出</button>

</body>
</html>