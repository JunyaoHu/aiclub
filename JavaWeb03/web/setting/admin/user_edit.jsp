<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>用户信息编辑</title>
    <%String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";%>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script type="text/javascript" src="static/scripts/jquery-1.7.2.js"></script>
</head>
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>用户信息编辑</legend>
</fieldset>

<form class="layui-form" action="" lay-filter="user_edit" name="user_edit">
    <div class="layui-form-item">
        <label class="layui-form-label">用户ID</label>
        <div class="layui-input-block">
            <input type="text" name="user_id" autocomplete="off" placeholder="" class="layui-input" disabled="" style="background:#D2D2D2">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-block">
            <input type="text" name="username" autocomplete="off" placeholder="" class="layui-input" disabled="" style="background:#D2D2D2">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-block">
            <input type="password" name="password"  autocomplete="off" placeholder="" class="layui-input" disabled="" style="background:#D2D2D2">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">邮箱</label>
        <div class="layui-input-block">
            <input type="text" name="email"  autocomplete="off" placeholder="" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">头像</label>
        <div class="layui-input-block">
            <input type="text" name="icon"  autocomplete="off" placeholder="" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit="" lay-filter="edit_submit">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
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
                url: "userServlet?action=update",
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

    });
</script>

</body>
</html>