<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>冬奥2022-论文-AI社</title>
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
    <div class="banner">
        <img src="static/images/topic-banner.jpg">
    </div>
    <nav class="topic-nav">
        <ul>
            <li><a href="subject/beijing2022/news.jsp">冬奥黑科技</a></li>
            <li><a href="javascript:void(0);">相关论文</a></li>
            <li><a href="subject/beijing2022/dataset.jsp">数据集</a></li>
        </ul>
    </nav>
    <div class="info">
        <div class="video-info">
            <iframe class="bilibili"
                    src="//player.bilibili.com/player.html?aid=937671378&bvid=BV1AT4y1q7ui&cid=560933815&page=1"
                    border="0" framespacing="0" allowfullscreen="true"></iframe>
        </div>
        <div class="text-info">
            <p>北京冬奥会期间，花样滑冰男子单人项目因为中国选手金博洋以及日本选手羽生结弦的参与，这场比赛备受关注。</p>
            <p>羽生结弦在在花样滑冰领域中具有超高的人气。他是亚洲第一位奥运花滑冠军，更是一位“学霸”。2020年，早稻田大学发表了羽生结弦的毕业论文《花样滑冰中动作捕捉技术的应用及展望》，论文面世后获得了上万次下载，吸引了全球各地粉丝们的关注。 值得一提的是，羽生结弦选择使用诺亦腾 Perception Neuron 2 (PN 2) 惯性动作捕捉系统作为这项研究的重要基础工具。来自中国的诺亦腾，凭借领先的动作捕捉技术为世界顶级运动选手提供助力，我们与有荣焉！ </p>
            <p>在羽生结弦即将挑战奥运金牌之际，我们不妨来回顾这篇论文，快速看懂研究思路，看懂这篇论文究竟是如何用到动作捕捉技术的。</p>
        </div>
    </div>
    <iframe class="pdf" src="static/pdf/NingenKagakuKenkyu_2021_3.pdf">
    </iframe>
    <p>若该浏览器无法支持PDF，请点击查看：<a href="https://waseda.repo.nii.ac.jp/?action=repository_uri&item_id=64787&file_id=162&file_no=1">下载 PDF</a></p>
    <p>论文</p>
</main>

<%@ include file="/common/page_footer.jsp"%>

<button id="btn-back"><img src="static/images/top.png"></button>
</body>


</html>