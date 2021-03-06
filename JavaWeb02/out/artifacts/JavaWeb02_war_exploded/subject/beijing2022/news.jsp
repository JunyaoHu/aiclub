<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>冬奥2022-新闻-AI社</title>
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
            <li><a href="javascript:void(0);">冬奥黑科技</a></li>
            <li><a href="subject/beijing2022/paper.jsp">相关论文</a></li>
            <li><a href="subject/beijing2022/dataset.jsp">数据集</a></li>
        </ul>
    </nav>
    <div class="info">
        <div class="video-info">
            <iframe class="bilibili"
                    src="//player.bilibili.com/player.html?aid=551685393&bvid=BV15i4y127Ez&cid=511458788&page=1"
                    border="0" framespacing="0" allowfullscreen="true"></iframe>
        </div>
        <div class="text-info">
            <p>一朵雪花折射世界文明之光，中华文化在世界舞台精彩绽放。 </p>
            <p>这是一次激动人心的冬奥盛会，简约、安全、精彩是它的主题， 数字科技、美学创新是它的基调。不论是开幕式上晶莹剔透的“ 冰雪五环”、黄河之
                水天上来，还是冬奥场馆低能耗的“冰菱花”、 智能化造雪，抑或是采用5G技术的“8K﹢VR”全方位高清直播带来 的极致观感，正在全方位展示着
                北京冬奥盛会的“科技范儿”。</p>
            <p>在这场全球瞩目的冬季冰雪体育盛会上，科技创新助力运动员在赛场 上留下无数个精彩瞬间，实现自我超越，体现一起向未来的精神。 如今，科技
                元素融入冬奥会的各个方面，从比赛装备到科学训练、 技能优化，再到气象、医疗等全方位保障，一项项“黑科技”运用 于各个运动项目的训练、
                比赛中，助力运动员在冰雪赛场上更快 、更高、更强。</p>
        </div>
    </div>
    <article>
        <div>
            <h1>“3D+AI”量化分析“时间切片” 3秒瞬间一帧呈现</h1>
            <img src="static/images/article1.jpg">
            <p>在高空滑雪这项“空中飞人”运动，你是否有一丝困惑：滑雪运动的评判标准究竟是怎样的？裁判如何看清冠、亚军之间的细微差别？</p>
            <p>相信您一定对这个“时间切片”有深刻的印象，如果用文字形容，时间切片就是把运动员从跳台上起飞一直到落地的过程展现在一帧画面上。这到底是
                怎么做到的？</p>
            <p>“通过‘3D+AI’技术，打造首钢滑雪大跳台打造了1∶1的3D模型，观众可以通过3D场景漫游的形式实现沉浸式观赛。通过此项技术手段对运动员动作
                进行量 化分析，将滑行速度、腾空高度、落地远度、旋转角度等一系列运动数据与原始画面叠加起来。这解决了高速度、高难度动作还原的难题。
                技术呈现的画面 再配合专业解说的技术分解，观众可以更直观地从流畅性、完成度、难度、多样性和美观度等角度看懂选手之间的技术差异，轻松
                看懂冠亚军之争。</p>
        </div>
        <div>
            <h1>北京冬奥曝光的保密项目“中国AI教练”</h1>
            <img src="static/images/article2.jpg">
            <p>在北京冬奥会自由式滑雪女子空中技巧项目比赛中，中国运动员、冬奥会“四朝元老”徐梦桃以一个近乎完美的动作为中国再添一金，实现了中国自由
                式滑雪空中技巧队十六年的金牌梦。而徐梦桃夺金的背后，有名虚虚拟教练“观君”。</p>
            <p>“观君”依托领先的计算机视觉及完整框架技术，首创了“小样本、大任务”的冰雪运动分析模型（Xiaoice CV Analysis Model for Winter
                Sports），针对运动员每一跳，“观君”都会做出专业判断，与国际裁判计分准则保持高度一致，严格判别扣分动作，并对起跳、空中、落地三个阶
                段的全流程动作进行量化，支持运动轨迹、身体姿态、出台角度、高远度等多维度指标分析，给教练员提供指导依据。</p>
        </div>
        <div>
            <h1>元宇宙加持，大跳台和冷却塔才能这么搭</h1>
            <img src="static/images/article3.jpg">
            <p>北京2022年冬奥会自由式滑雪女子大跳台资格赛2月7日在北京首钢滑雪大跳台举行，首钢滑雪大跳台正式进入冬奥会比赛时间。平顺细腻的场地条件
                、工业遗存风格的酷炫赛场背景，让众多中外选手盛赞“这条赛道是全球最好的赛道之一”。</p>
            <p>首钢滑雪大跳台设计师张利讲解首钢冬奥园区设计中应用的虚拟现实技术，通过虚拟现实技术将大跳台的设计方案放入整个改造环境中亲身体会，通过
                虚拟现实技术带来的真实体验，提前打磨设计细节，让大跳台和冷却塔及周围环境完美融搭。</p>
        </div>
        <div>
            <h1>冬奥“智慧餐厅”，机器人自动炒菜做饭、调酒、空中传菜！</h1>
            <img src="static/images/article4.gif">
            <p>各国冬奥代表团加上媒体工作人员达到万人的规模，同时解决这么多人吃饭问题，还要尽可能满足多样化的选择，可不是一件容易的事。于是打造了智
                能餐厅，各种“厨房机器人”一起上阵。</p>
            <p>除了地道中国菜，机器人大厨还可以制作汉堡、披萨、鸡尾酒、冰淇淋、咖啡等多种类型食物。起锅、炒制、调味、装盘等环节自动完成，用料比例和
                烹煮时间都有严格的限制，不少用餐的消费者表示机器人大厨水平不亚于人工厨师。</p>
        </div>
        <div>
            <h1>智能多媒体</h1>
            <img src="static/images/article5.gif">
            <p>开幕式大家被惊艳了吗？黄河之水天上来，生成冰立方，然后雕刻出晶莹剔透的冰雪五环。三维舞美直接把大气磅礴的视觉效果拉满，而这些都是依赖
                于8K屏幕，3D显示及机器视觉AI技术实现的。</p>
        </div>
    </article>

    <div class="relative-article">
        <h3>相关文章</h3>
        <div class="article-box">
            <div class="news-view">
                <div class="news-img "><img src="static/images/relative1.jpg" width="184" height="105"></div>
                <div class="news-header"><p><a href="#">中国花样滑冰将使用AI辅助评分</a></p></div>
            </div>
            <div class="news-view">
                <div class="news-img "><img src="static/images/relative2.jpg" width="184" height="105"></div>
                <div class="news-header"><p><a href="#">人工智能在足球领域能够起到怎样的作用？</a></p></div>
            </div>
            <div class="news-view">
                <div class="news-img "><img src="static/images/relative3.jpg" width="184" height="105"></div>
                <div class="news-header"><p><a href="#">为什么说篮球界的AI视觉技术应用是最难的？</a></p></div>
            </div>
        </div>
    </div>
</main>

<%@ include file="/common/page_footer.jsp"%>


<button id="btn-back"><img src="static/images/top.png"></button>
</body>


</html>