<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <link rel="stylesheet" href="static/styles/swiper.min.css">
    <script type="text/javascript" src="static/scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="static/scripts/swiper.min.js"></script>
    <link rel="stylesheet" href="static/styles/banner_style.css">
    <link rel="stylesheet" href="static/styles/subject.css">
    <link rel="stylesheet" href="static/styles/index.css">
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
    <meta charset="utf-8">
    <title>AI社——人工智能学习者的精神家园</title>
</head>

<body>

<%@ include file="/common/page_main_nav.jsp"%>

<section class="sec1">
    <div class="main">
        <!-- 基于swiper的新闻滚动组合1 -->
        <div class="w-newsList w-newsList1 clearfix" id="newsList1">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="news-item"><a href="subject/beijing2022/news.jsp" class="clearfix">
                        <div class="news-imgbox img-count">
                            <div class="aspectRatio"></div>
                            <div class="img-count-in"><img src="static/images/article1.jpg"></div>
                        </div>
                        <div class="news-text">
                            <div class="date">
                                <div class="year">2022</div>
                                <div class="day_month">03-01</div>
                            </div>
                            <div class="news-h">“3D+AI”量化分析 3秒瞬间一帧呈现</div>
                            <div class="news-sum">
                                在高空滑雪这项“空中飞人”运动，你是否有一丝困惑：滑雪运动的评判标准究竟是怎样的？裁判如何看清冠、亚军之间的细微差别？
                            </div>
                            <div class="more"></div>
                        </div>
                    </a></div>
                </div>
                <div class="swiper-slide">
                    <div class="news-item"><a href="subject/beijing2022/news.jsp" class="clearfix">
                        <div class="news-imgbox img-count">
                            <div class="aspectRatio"></div>
                            <div class="img-count-in"><img src="static/images/article2.jpg"></div>
                        </div>
                        <div class="news-text">
                            <div class="date">
                                <div class="year">2022</div>
                                <div class="day_month">03-02</div>
                            </div>
                            <div class="news-h">北京冬奥曝光的保密项目“中国AI教练”</div>
                            <div class="news-sum">
                                在北京冬奥会自由式滑雪女子空中技巧项目比赛中，中国运动员、冬奥会“四朝元老”徐梦桃以一个近乎完美的动作为中国再添一金，实现了中国自由
                                式滑雪空中技巧队十六年的金牌梦。而徐梦桃夺金的背后，有名虚虚拟教练“观君”。
                            </div>
                            <div class="more"></div>
                        </div>
                    </a></div>
                </div>
                <div class="swiper-slide">
                    <div class="news-item"><a href="subject/beijing2022/news.jsp" class="clearfix">
                        <div class="news-imgbox img-count">
                            <div class="aspectRatio"></div>
                            <div class="img-count-in"><img src="static/images/article3.jpg"></div>
                        </div>
                        <div class="news-text">
                            <div class="date">
                                <div class="year">2022</div>
                                <div class="day_month">03-03</div>
                            </div>
                            <div class="news-h">元宇宙加持，大跳台和冷却塔才能这么搭</div>
                            <div class="news-sum">
                                北京2022年冬奥会自由式滑雪女子大跳台资格赛2月7日在北京首钢滑雪大跳台举行，首钢滑雪大跳台正式进入冬奥会比赛时间。平顺细腻的场地条件
                                、工业遗存风格的酷炫赛场背景，让众多中外选手盛赞“这条赛道是全球最好的赛道之一”。
                            </div>
                            <div class="more"></div>
                        </div>
                    </a></div>
                </div>
            </div>
            <div class="adSN_page"></div>
            <div class="swiper-num">
                <span class="active"></span>/
                <span class="total"></span>
            </div>
        </div>
        <script type="text/javascript">
            $(function () {
                /*图片位置计算*/
                var imgCount = function () {
                    $('.img-count').each(function (index, element) {
                        var imgH = $(this).height();
                        var imgW = $(this).width();
                        var $thisimg = $(this).find('img');
                        var img = new Image();
                        img.onload = function () {
                            if ($thisimg.data("img") === false) {
                                return '';
                            }
                            var imgWidth = img.width;
                            var imgHeight = img.height;
                            if ((imgWidth / imgHeight) < (imgW / imgH)) {
                                $thisimg.css({
                                    'height': (imgW / imgH) * ((imgHeight) / imgWidth) * imgH,
                                    'max-height': (imgW / imgH) * ((imgHeight) / imgWidth) * imgH,
                                    'top': -((imgW / imgH) * ((imgHeight) / imgWidth) - 1) / 2 * imgH
                                })
                            } else {
                                $thisimg.css({
                                    'width': (imgH / imgW) * ((imgWidth) / imgHeight) * imgW,
                                    'max-width': (imgH / imgW) * ((imgWidth) / imgHeight) * imgW,
                                    'left': -((imgH / imgW) * ((imgWidth) / imgHeight) - 1) / 2 * imgW
                                })
                            }
                        }
                        img.src = $thisimg.attr("src");
                    });
                }

                //滚动设置
                var swiper = new Swiper('#newsList1', {
                    effect: 'fade',
                    fadeEffect: {
                        crossFade: true,
                    },
                    direction: 'horizontal',
                    loop: true,
                    autoplay: {
                        delay: 5000,//滚动速度
                        disableOnInteraction: false,
                    },
                    pagination: {
                        el: '.adSN_page',
                        clickable: true,
                    },
                    on: {
                        init: function () {
                            var total = this.slides.length - 2;
                            $('.swiper-num .total').text('0' + total);
                            this.emit('transitionEnd');
                        },
                        transitionEnd: function () {
                            var index = this.realIndex + 1;
                            $(".swiper-num .active").text("0" + index);
                        }
                    }
                });

                imgCount();
                $(window).resize(function () {
                    imgCount();
                });
            });
        </script>
    </div>
</section>


<main id="home">
    <div class="home_content">
        <div class="fl home_left">
            <div class="choiceList">
                <div class="tit">
                    <span>社区精选</span>
                </div>
                <div class="list">
                    <ul>
                        <li><a href="javascript:;"><span class="source">资源</span>
                            <p>AI入门、大数据、机器学习免费教程</p></a></li>
                        <li><a href="javascript:;"><span class="course">直播</span>
                            <p>AI/transformers 音乐生成 ：brrrr~</p></a></li>
                        <li><a href="javascript:;"><span class="source">资源</span>
                            <p>CVPR2021 最新 Oral 论文汇总</p></a></li>
                        <li><a href="javascript:;"><span class="source">资源</span>
                            <p>温州大学黄海广博士《机器学习》课程课件（一）</p></a></li>
                        <li><a href="javascript:;"><span class="job">求职</span>
                            <p>我是如何成为算法工程师的，超详细的学习路线</p></a></li>
                        <li><a href="javascript:;"><span class="source">资源</span>
                            <p>477页的开源电子书和598页的课件：献给机器翻译爱好者</p></a></li>
                    </ul>
                </div>
            </div>
            <div class="index_list">
                <div class="list_tab">
                    <span class="choose">最新</span>
                    <span class="">最热</span>
                </div>
                <div>
                    <div class="list_one">
                        <div class="info_picture">
                            <img src="static/images/index1.jpg">
                        </div>
                        <div class="info_message"><a href="http://xwzx.cumt.edu.cn/77/5a/c513a620378/page.htm" target="_blank"><h3>中国矿业大学AI研究院王殿辉教授创办《Industrial Artificial Intelligence》学术期刊</h3></a>
                            <div class="list_detail">
                                <div class="info-type">新闻</div>
                                <div class="info-author">中国矿业大学</div>
                            </div>
                        </div>
                    </div>
                    <div class="list_one">
                        <div class="info_message"><a href="http://ai.cumt.edu.cn/info/1021/1908.htm" target="_blank"><h3>中国矿业大学人工智能研究院副院长陈兴教授再度入围全球顶尖前10万科学家榜单</h3></a>
                            <div class="list_detail">
                                <div class="info-type">新闻</div>
                                <div class="info-author">中国矿业大学</div>
                            </div>
                        </div>
                    </div>
                    <div class="list_one">
                        <div class="info_picture">
                            <img src="static/images/index2.png">
                        </div>
                        <div class="info_message"><a href="https://www.jiqizhixin.com/articles/2022-04-21-5" target="_blank"><h3>有人声称「解决了」MNIST与CIFAR 10，实现了100%准确率</h3></a>
                            <div class="list_detail">
                                <div class="info-type">杂谈</div>
                                <div class="info-author">机器之心</div>
                            </div>
                        </div>
                    </div>
                    <div class="list_one">
                        <div class="info_picture">
                            <img src="static/images/index3.png">
                        </div>
                        <div class="info_message"><a href="https://www.jiqizhixin.com/articles/2022-04-21-4" target="_blank"><h3>全职任教清华，73岁丘成桐受聘清华大学讲席教授</h3></a>
                            <div class="list_detail">
                                <div class="info-type">新闻</div>
                                <div class="info-author">机器之心</div>
                            </div>
                        </div>
                    </div>
                    <div class="list_one">
                        <div class="info_message"><a href="https://www.bilibili.com/video/BV1ih411J7Kz" target="_blank"><h3>9年后重读深度学习奠基作之一：AlexNet【论文精读】</h3></a>
                            <div class="list_detail">
                                <div class="info-type">视频</div>
                                <div class="info-author">李沐</div>
                            </div>
                        </div>
                    </div>
                    <div class="list_one">
                        <div class="info_message"><a href="https://zhuanlan.zhihu.com/p/59270912" target="_blank"><h3>字节跳动计算机视觉算法实习生视频面试</h3></a>
                            <div class="list_detail">
                                <div class="info-type">面经</div>
                                <div class="info-author">小新</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="fr home_right">
            <div class="partBase">
                <div class="part-tit">
                    <span>直播</span>
                    <a href="https://live.yanxishe.com?from=index" target="_blank" class="more">更多</a>
                </div>
                <div class="part-con">

                    <div class="class-item">
                        <div class="item-header">
                            <span class="time">04-02 17:32</span>
                            <div class="status">
                                <a href="https://live.yanxishe.com/room/986" target="_blank" class="review">观看回放</a>
                            </div>
                        </div>
                        <div class="item-body">
                            <a href="https://live.yanxishe.com/room/986" target="_blank" class="title">CVPR 2022 论文分享会第三场</a>
                        </div>
                    </div>

                    <div class="class-item">
                        <div class="item-header">
                            <span class="time">04-01 12:20</span>
                            <div class="status">
                                <a href="https://live.yanxishe.com/room/986" target="_blank" class="review">观看回放</a>
                            </div>
                        </div>
                        <div class="item-body">
                            <a href="https://live.yanxishe.com/room/986" target="_blank" class="title">CVPR 2022 论文分享会第二场</a>
                        </div>
                    </div>


                    <div class="class-item">
                        <div class="item-header">
                            <span class="time">03-30 21:17</span>
                            <div class="status">
                                <a href="https://live.yanxishe.com/room/986" target="_blank" class="review">观看回放</a>
                            </div>
                        </div>
                        <div class="item-body">
                            <a href="https://live.yanxishe.com/room/986" target="_blank" class="title">CVPR 2022 论文分享会第一场</a>
                        </div>
                    </div>

                </div>

            </div>

            <div class="partBase">
                <div class="part-tit">
                    <span>顶会专区推荐</span>
                    <a href="https://live.yanxishe.com?from=index" target="_blank" class="more">更多</a>
                </div>
                <div class="part-con">
                    <div class="meetingBox">
                        <div class="boxArea">
                            <div class="mainPic">
                                <img src="static/images/meeting.png">
                            </div>
                            <div class="timeArea">
                                <h2>PRCV 2022</h2>
                                <h2>会议未开始 (UTC+8)</h2><div class="countdown2">2022/10/14 - 2022/10/17</div>
                            </div>
                            <div class="rowMsg">
                                <div class="row">会议地点：线上+线下</div>
                                <div class="row">官方网站：<a href="http://2021.prcv.cn/arrangement.html">http://2021.prcv.cn/arrangement.html</a></div>
                                <div class="row">会议时间：2022/10/14 - 2022/10/17</div>
                                <div class="row">论文截稿时间：2022/07/15 23:59:00</div>
                                <div class="row">录用通知时间：2022/08/10</div>
                            </div>
                            <div class="enter"><a target="_blank" href="http://www.prcv.cn/">进入专区</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<%@ include file="/common/page_footer.jsp"%>

<button id="btn-back"><img src="static/images/top.png"></button>
</body>
</html>