<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>冬奥2022-数据集-AI社</title>
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
            <li><a href="subject/beijing2022/paper.jsp">相关论文</a></li>
            <li><a href="javascript:void(0);">数据集</a></li>
        </ul>
    </nav>

    <div class="dataset_item">
        <div class="dataset">
            <div class="dataset_title">
                <span class="dataset_title_good">精</span>
                <div class="dataset_title_name">CCF-FSD-10</div>
                <span class="dataset_title_time">2021-08-17</span>
            </div>
            <div class="dataset_intro">花样滑冰动作识别数据集FSD-10。由于版权原因，未开放video格式数据，仅开放openpose提取后的骨骼数据</div>
            <div class="dataset_detail">
                <div class="dataset_detail_content">
                    <img class="dataset_detail_user_icon" src="static/images/icon.jpg">
                    <span class="dataset_detail_user_name">test1</span>
                </div>
                <div class="dataset_detail_content tag">
                    <span class="dataset_detail_icon tag"></span>
                    <span class="dataset_detail_tag_name">细粒度</span>
                    <span class="dataset_detail_tag_name">花样滑冰</span>
                    <span class="dataset_detail_tag_name">骨骼行为识别</span>
                </div>
                <div class="dataset_detail_content type">
                    <span class="dataset_detail_icon type"></span>
                    <span>视频</span>
                </div>
                <div class="dataset_detail_content from">
                    <span class="dataset_detail_icon from"></span>
                    <span>百度飞桨</span>
                </div>
                <div class="dataset_detail_content view">
                    <span class="dataset_detail_icon view"></span>
                    <span>2.3K</span>
                </div>
                <div class="dataset_detail_content comment">
                    <span class="dataset_detail_icon comment"></span>
                    <span>4</span>
                </div>
            </div>
        </div>
        <span class="dataset_btn link">
            <span class="dataset_btn_icon link"></span>
            <span><a href="https://aistudio.baidu.com/aistudio/datasetdetail/104474/1" target="_blank">查看数据集</a></span>
        </span>
        <span class="dataset_btn like">
            <span class="dataset_btn_icon like"></span>
            <span>123</span>
        </span>
    </div>
    <div class="dataset_item">
        <div class="dataset">
            <div class="dataset_title">
                <span class="dataset_title_good">精</span>
                <div class="dataset_title_name">新闻标题可视化与情感分析——以中国新闻网冬奥主题新闻为例</div>
                <span class="dataset_title_time">2022-01-06</span>
            </div>
            <div class="dataset_intro">对中国新闻网近日冬奥新闻报道的标题进行关键词分析可视化和情感分析</div>
            <div class="dataset_detail">
                <div class="dataset_detail_content">
                    <img class="dataset_detail_user_icon" src="static/images/icon.jpg">
                    <span class="dataset_detail_user_name">test2</span>
                </div>
                <div class="dataset_detail_content tag">
                    <span class="dataset_detail_icon tag"></span>
                    <span class="dataset_detail_tag_name">自然语言处理</span>
                    <span class="dataset_detail_tag_name">可视化</span>
                    <span class="dataset_detail_tag_name">情感分析</span>
                </div>
                <div class="dataset_detail_content type">
                    <span class="dataset_detail_icon type"></span>
                    <span>表格</span>
                </div>
                <div class="dataset_detail_content from">
                    <span class="dataset_detail_icon from"></span>
                    <span>百度飞桨</span>
                </div>
                <div class="dataset_detail_content view">
                    <span class="dataset_detail_icon view"></span>
                    <span>1.2K</span>
                </div>
                <div class="dataset_detail_content comment">
                    <span class="dataset_detail_icon comment"></span>
                    <span>16</span>
                </div>
            </div>
        </div>
        <span class="dataset_btn link">
            <span class="dataset_btn_icon link"></span>
            <span><a href="https://aistudio.baidu.com/aistudio/projectdetail/3390597" target="_blank">查看数据集</a></span>
        </span>
        <span class="dataset_btn like">
            <span class="dataset_btn_icon like"></span>
            <span>17</span>
        </span>
    </div>
    <div class="dataset_item">
        <div class="dataset">
            <div class="dataset_title">
                <span class="dataset_title_good">精</span>
                <div class="dataset_title_name">Olympic Games Beijing 2022</div>
                <span class="dataset_title_time">2022-03-26</span>
            </div>
            <div class="dataset_intro">The following dataset contains the medal won by NOC's as well as by </div>
            <div class="dataset_detail">
                <div class="dataset_detail_content">
                    <img class="dataset_detail_user_icon" src="static/images/icon.jpg">
                    <span class="dataset_detail_user_name">test3</span>
                </div>
                <div class="dataset_detail_content tag">
                    <span class="dataset_detail_icon tag"></span>
                    <span class="dataset_detail_tag_name">运动</span>
                    <span class="dataset_detail_tag_name">奖牌</span>
                    <span class="dataset_detail_tag_name">数据处理</span>
                </div>
                <div class="dataset_detail_content type">
                    <span class="dataset_detail_icon type"></span>
                    <span>表格</span>
                </div>
                <div class="dataset_detail_content from">
                    <span class="dataset_detail_icon from"></span>
                    <span>Kaggle</span>
                </div>
                <div class="dataset_detail_content view">
                    <span class="dataset_detail_icon view"></span>
                    <span>12.3K</span>
                </div>
                <div class="dataset_detail_content comment">
                    <span class="dataset_detail_icon comment"></span>
                    <span>4.4K</span>
                </div>
            </div>
        </div>
        <span class="dataset_btn link">
            <span class="dataset_btn_icon link"></span>
            <span><a href="https://www.kaggle.com/datasets/vaibhavchopra2/olympic-games-beijing-2022" target="_blank">查看数据集</a></span>
        </span>
        <span class="dataset_btn like">
            <span class="dataset_btn_icon like"></span>
            <span>32K</span>
        </span>
    </div>
    <div class="dataset_item">
        <div class="dataset">
            <div class="dataset_title">
                <div class="dataset_title_name">120 years of Olympic history: athletes and results</div>
                <span class="dataset_title_time">2018-06-01</span>
            </div>
            <div class="dataset_intro">basic bio data on athletes and medal results from Athens 1896 to Rio 2016</div>
            <div class="dataset_detail">
                <div class="dataset_detail_content">
                    <img class="dataset_detail_user_icon" src="static/images/icon.jpg">
                    <span class="dataset_detail_user_name">test4</span>
                </div>
                <div class="dataset_detail_content tag">
                    <span class="dataset_detail_icon tag"></span>
                    <span class="dataset_detail_tag_name">运动员</span>
                    <span class="dataset_detail_tag_name">体育</span>
                </div>
                <div class="dataset_detail_content type">
                    <span class="dataset_detail_icon type"></span>
                    <span>表格</span>
                </div>
                <div class="dataset_detail_content from">
                    <span class="dataset_detail_icon from"></span>
                    <span>Kaggle</span>
                </div>
                <div class="dataset_detail_content view">
                    <span class="dataset_detail_icon view"></span>
                    <span>613</span>
                </div>
                <div class="dataset_detail_content comment">
                    <span class="dataset_detail_icon comment"></span>
                    <span>45</span>
                </div>
            </div>
        </div>
        <span class="dataset_btn link">
            <span class="dataset_btn_icon link"></span>
            <span><a href="https://www.kaggle.com/datasets/heesoo37/120-years-of-olympic-history-athletes-and-results" target="_blank">查看数据集</a></span>
        </span>
        <span class="dataset_btn like">
            <span class="dataset_btn_icon like"></span>
            <span>1.1K</span>
        </span>
    </div>
    <div class="dataset_item">
        <div class="dataset">
            <div class="dataset_title">
                <div class="dataset_title_name">70类运动图像数据集</div>
                <span class="dataset_title_time">2021-05-19</span>
            </div>
            <div class="dataset_intro">70种 10782 张 224 X224 X 3大小 jpg运动图像，分为训练目录，测试目录和验证目录</div>
            <div class="dataset_detail">
                <div class="dataset_detail_content">
                    <img class="dataset_detail_user_icon" src="static/images/icon.jpg">
                    <span class="dataset_detail_user_name">test5</span>
                </div>
                <div class="dataset_detail_content tag">
                    <span class="dataset_detail_icon tag"></span>
                    <span class="dataset_detail_tag_name">运动</span>
                    <span class="dataset_detail_tag_name">姿势</span>
                    <span class="dataset_detail_tag_name">分类</span>
                </div>
                <div class="dataset_detail_content type">
                    <span class="dataset_detail_icon type"></span>
                    <span>图片</span>
                </div>
                <div class="dataset_detail_content from">
                    <span class="dataset_detail_icon from"></span>
                    <span>百度飞桨</span>
                </div>
                <div class="dataset_detail_content view">
                    <span class="dataset_detail_icon view"></span>
                    <span>456</span>
                </div>
                <div class="dataset_detail_content comment">
                    <span class="dataset_detail_icon comment"></span>
                    <span>789</span>
                </div>
            </div>
        </div>
        <span class="dataset_btn link">
            <span class="dataset_btn_icon link"></span>
            <span><a href="https://aistudio.baidu.com/aistudio/datasetdetail/90390" target="_blank">查看数据集</a></span>
        </span>
        <span class="dataset_btn like">
            <span class="dataset_btn_icon like"></span>
            <span>1.9K</span>
        </span>
    </div>
</main>

<%@ include file="/common/page_footer.jsp"%>


<button id="btn-back"><img src="static/images/top.png"></button>
</body>


</html>