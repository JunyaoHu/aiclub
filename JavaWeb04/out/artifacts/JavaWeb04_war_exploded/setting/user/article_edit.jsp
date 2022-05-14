<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>文章属性编辑</title>
    <%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script type="text/javascript" src="static/scripts/jquery-1.7.2.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>文章属性编辑</legend>
</fieldset>

<form class="layui-form" action="" lay-filter="article_edit" name="article_edit">
    <div class="layui-form-item">
        <label class="layui-form-label">标题</label>
        <div class="layui-input-block">
                <input type="text" autocomplete="off" placeholder="请输入标题" class="layui-input" name='title'>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label" >用户ID</label>
            <div class="layui-input-block">
                <input type="text" autocomplete="off" placeholder="" class="layui-input" name='user_id' disabled="" style="background:#D2D2D2">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">文章ID</label>
            <div class="layui-input-block">
                <input type="text" autocomplete="off" placeholder="" class="layui-input" name='article_id' disabled="" style="background:#D2D2D2">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">类型</label>
        <div class="layui-input-block">
            <select name="category">
                <option value="-1" selected=""></option>
                <option value="竞赛">竞赛</option>
                <option value="论文">论文</option>
                <option value="新闻">新闻</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">标签</label>
        <div class="layui-input-block" >
            <input type="checkbox" name="tag[mbjc]" title="目标检测">
            <input type="checkbox" name="tag[yyfg]" title="语义分割">
            <input type="checkbox" name="tag[txfl]" title="图像分类">
            <input type="checkbox" name="tag[fgqy]" title="风格迁移">
            <input type="checkbox" name="tag[znwd]" title="智能问答">
            <input type="checkbox" name="tag[sztp]" title="知识图谱">
            <input type="checkbox" name="tag[wbfy]" title="文本翻译">
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">文章编辑器</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" class="layui-textarea" name="content"  ></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
<%--                        <button type="button" class="layui-btn layui-btn-normal" id="LAY-component-form-setval">赋值</button>--%>
<%--                        <button type="button" class="layui-btn layui-btn-normal" id="LAY-component-form-getval">取值</button>--%>
            <button type="submit" class="layui-btn" lay-submit="" lay-filter="edit_submit">立即提交</button>
<%--            <button type="reset" class="layui-btn layui-btn-primary">重置</button>--%>
        </div>
    </div>


</form>

<script src="layui/layui.js"></script>
<script>
    layui.use(['form'], function(){
        var form = layui.form
            ,layer = layui.layer

        form.on('submit(edit_submit)', function(data){
            $.ajax({
                url: "articleServlet?action=update",
                type: 'post',
                data: data.field,
                dataType:"text",
                success: function (result) {
                    // console.log(data)
                    // console.log("result: " + result)
                    if (result == 'success') {
                        layer.msg('提交成功', {icon: 1});
                    } else {
                        layer.msg('提交失败', {icon: 2});
                    }
                }
            });
            return false;//阻止表单跳转
        });


        //
        // //表单取值
        // layui.$('#LAY-component-form-getval').on('click', function(){
        //     var data = form.val('example');
        //     alert(JSON.stringify(data));
        // });
        //
        // //表单赋值
        // layui.$('#LAY-component-form-setval').on('click', function(){
        //     form.val('article_edit', {
        //         'title' : "test_title"
        //         ,"category": "论文"
        //         ,"publish_state": 1
        //         ,"selected_state": "on"
        //         ,"tag[mbjc]": true //复选框选中状态
        //         ,"tag[znwd]": true //复选框选中状态
        //         ,"content": "我爱 layui"
        //
        //     });
        // });

    });
</script>

</body>
</html>