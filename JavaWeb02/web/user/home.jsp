<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>个人中心-AI社</title>
    <%@ include file="/common/page_head.jsp"%>
    <script type="text/javascript">


        $(function () {
            $("#btn-back").hide().click(function() {
                document.body.scrollTop = document.documentElement.scrollTop = 0;
            });

            window.onscroll = function() {
                if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
                    $("#btn-back").show();
                } else {
                    $("#btn-back").hide();
                }
            };

        })


    </script>
</head>

<body>

<header>


</header>
<%@ include file="/common/page_main_nav.jsp"%>

<main>
    <p>论文</p>
</main>

<%@ include file="/common/page_footer.jsp"%>

<button id="btn-back"><img src="static/images/top.png"></button>
</body>


</html>