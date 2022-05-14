<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>发表文章管理</title>
    <%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script type="text/javascript" src="static/scripts/jquery-1.7.2.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>发表文章管理</legend>
</fieldset>

<div class="layui-form-item">
    <div class="layui-inline">
        <label class="layui-form-label">按标题查找</label>
        <div class="layui-input-inline">
            <input name="search_title" autocomplete="off" id="input_search" class="layui-input">
        </div>
        <button type="button" id="btn_serach" class="layui-btn">搜索</button>
    </div>
</div>



<table id="demo" lay-filter="test" lay-data="{id:'article'}"></table>

<script src="layui/layui.js"></script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
    layui.use(['table','form'], function () {
        var table = layui.table;
        var form = layui.form;

        table.render({
            elem: '#demo'
            , height: 500
            , url: 'articleServlet?action=list&action=page' //数据接口
            , method: 'post'
            , page: true //开启分页
            , request: {
                pageName: 'pageNo' //页码的参数名称，默认：page
                , limitName: 'pageSize' //每页数据量的参数名，默认：limit
            }
            , cols: [[ //表头
                {type:'checkbox', fixed: 'left'}
                , {field: 'article_id',     title: '文章ID',   width: 100, sort: true}
                , {field: 'user_id',        title: '作者ID',   width: 100, sort: true}
                , {field: 'publish_state',  title: '发表状态',  width: 120, sort: true}
                , {field: 'selected_state', title: '精选状态',  width: 120, sort: true}
                , {field: 'category',       title: '类型',     width: 80,  sort: true}
                , {field: 'tag',            title: '标签',     width: 200}
                , {field: 'title',          title: '标题',     width: 200}
                , {field: 'content',        title: '正文',     width: 200}
                , {field: 'views',          title: '浏览',     width: 80,  sort: true}
                , {field: 'likes',          title: '点赞',     width: 80,  sort: true}
                , {field: 'right',          title: '操作',     width: 150, toolbar: '#barDemo', fixed: 'right'}
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
                    , title: '文章属性编辑'
                    , maxmin: true
                    , content: 'setting/admin/article_edit.jsp'
                    , area: ['1000px', '600px']
                    , success:function (layero,index) {
                        var form = layero.find('iframe').contents().find("form[name='article_edit']");
                        var body = layer.getChildFrame('body', index);
                        form.find("[name=title]"     ).val(data.title     );
                        form.find("[name=user_id]"   ).val(data.user_id   );
                        form.find("[name=article_id]").val(data.article_id);
                        form.find("[name='content']").val(data.content);
                        // form.find("[name='publish_state']").val(data.publish_state);
                        // form.find("[name=category] option[value=-1]").removeAttr("selected");
                        // form.find("[name=category] option[value=" + data.category +"]").attr("selected", "");
                        // form.find("[name='tag[mbjc]']").val(data.tag[mbjc]);
                        // form.find("[name='tag[yyfg]']").val(data.tag[yyfg]);
                        // form.find("[name='tag[txfl]']").val(data.tag[txfl]);
                        // form.find("[name='tag[fgqy]']").val(data.tag[fgqy]);
                        // form.find("[name='tag[znwd]']").val(data.tag[znwd]);
                        // form.find("[name='tag[sztp]']").val(data.tag[sztp]);
                        // form.find("[name='tag[wbfy]']").val(data.tag[wbfy]);
                        // form.find("[name='selected_state']").val(data.selected_state);
                    }
                });
            }
        });

        $('#btn_serach').on('click', function () {
            var layer = layui.layer;
            var search_title = $("#input_search").val();
            table.reload('demo',{
                url: 'articleServlet?action=queryArticleTitle',
                method: "post",
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where : {
                    search_title: search_title
                },
                success: function (result) {
                    if (result == "success") {
                        layer.msg('查询成功', {icon: 1});
                    }
                }
            })
        });
    });
</script>
</body>
</html>


