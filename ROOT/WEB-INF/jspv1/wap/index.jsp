<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <!-- Sets initial viewport load and disables zooming  -->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- Makes your prototype chrome-less once bookmarked to your phone's home screen -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" href="//g.alicdn.com/msui/sm/0.6.2/css/sm.min.css">
    <link href="${mybaseurl}/res/css/swiper-3.3.1.min.css" rel="stylesheet">
    <meta name="description" content="爱收宝">
    <title>爱收宝</title>
    <style>
        @font-face {
            font-family: 'iconfont';
            src: url('//at.alicdn.com/t/font_1463569154_4416566.eot'); /* IE9*/
            src: url('//at.alicdn.com/t/font_1463569154_4416566.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
            url('//at.alicdn.com/t/font_1463569154_4416566.woff') format('woff'), /* chrome、firefox */
            url('//at.alicdn.com/t/font_1463569154_4416566.ttf') format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/
            url('//at.alicdn.com/t/font_1463569154_4416566.svg#iconfont') format('svg'); /* iOS 4.1- */
        }
        .iconfont{
            font-family:"iconfont";
            font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }
        .big{font-size: 45px;}
        .small{font-size: 20px;}
        .swiper-container {
            width: 100%;
        }

        .swiper-container img {
            width: 100%;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;
            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }
        img, object { max-width: 100%;}
        .mt10 {
            margin-top: 0.5em;
        }

        .page {
            background-color: #FFFFFF;text-align:center;
        }

        .help {
            background-color: #FAFAFA;text-align:center;padding-top:0.5em;padding-bottom:0.5em;
        }
        .help .row{line-height:2.1em;font-size: 0.8em;}
        .help a{color:#808080;}
        .bar-tab .tab-item.active, .bar-tab .tab-item:active {
            color: #00958C;
        }
        .swiper-pagination-bullet-active {
            background: #00958C;
        }
        .category{font-size: 0.7em;color: #FFFFFF;}
        .gold{background-color: #EDB146;}
        .bag{background-color: #4fb4f3}
        .clock{background-color: #4fb4f3;}
        .diamond{background-color: #979eef;}
        .phone{background-color: #00a199;}
        .stamp-entrance {
            margin-bottom:.5rem;
            background-color:#fff
        }
        .stamp-list {
            margin:0;
            padding-left:0;
            list-style:none;
            overflow:hidden
        }
        .stamp-list>li {
            float:left;
            width:25%;
            padding:.3rem 0;
            text-align:left;
            font-size:0
        }
        .stamp-list .stamp {
            display:inline-block;
            width:100%;
            overflow:hidden;
            color:white;
        }
        .stamp-list .stamp img {
            width:100%;
        }
        .stamp-list>li>span {
            display:inline-block;
            font-size:.7rem;
            white-space:nowrap;
            text-align:left;
            padding-bottom:0.5em;
            padding-left:0.4em;
        }
        .myicon{height:70px;}
        .nexticon{padding-right:10px;}
    </style>
</head>
<body>
<div class="page">
    <!-- 工具栏 -->
    <nav class="bar bar-tab">
        <a class="tab-item external" href="http://shop.aishoubao.com/mobile/">
            <span class="icon icon-cart"></span>
            <span class="tab-label">我要买</span>
        </a>
        <a class="tab-item external active" href="http://m.aishoubao.com/aishoubao/">
            <span class="icon icon-browser"></span>
            <span class="tab-label">我要卖</span>
        </a>
        <a class="tab-item external" href="http://shop.aishoubao.com/mobile/user.php">
            <span class="icon icon-me"></span>
            <span class="tab-label">个人中心</span>
        </a>
    </nav>

    <div class="content">
        <!-- Swiper ads1 -->
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <c:forEach items="${ads1}" var="ad">
                    <div class="swiper-slide"><img class="mytopimg" data-link="${ad.url}" src="${ad.picurl}" alt="${ad.name}"></div>
                </c:forEach>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>
        </div>
        <!-- category -->
        <div class="content-padded stamp-entrance category mt10">
            <ul class="stamp-list">
                <li class="gold" style="width:74%">
                    <span>黄金/白银回收</span><br>
                    <a href="http://m.aishoubao.com/aishoubao/category/new/47f288756f1a4c5ebac0a2baf1f5ee80" class="stamp external">
                    <div class="myicon" align="center"><i class="iconfont big">&#xe602;</i></div>
                    <%--<div class="nexticon" align="right"><i class="iconfont small">&#xe603;</i></div>--%>
                    </a>
                </li>
                <li style="width:1%"></li>
                <li class="bag" style="width:25%">
                    <span>名包回收</span><br>
                    <a href="http://m.aishoubao.com/aishoubao/category/new/08d2d4cbf3974d8i8d56b26ba29266aa" class="stamp external">
                    <div class="myicon" align="center"><i class="iconfont big">&#xe604;</i></div>
                    <%--<div class="nexticon" align="right"><i class="iconfont small">&#xe603;</i></div>--%>
                    </a>
                </li>
            </ul>
        </div>
        <div class="content-padded stamp-entrance category mt10">
            <ul class="stamp-list">
                <li class="clock" style="width:29%">
                    <span>名表回收</span><br>
                    <a href="http://m.aishoubao.com/aishoubao/category/new/08d2d4cbff6j48f08d56b26ba29266aa" class="stamp external">
                        <div class="myicon" align="center"><i class="iconfont big">&#xe606;</i></div>
                        <%--<div class="nexticon" align="right"><i class="iconfont small">&#xe603;</i></div>--%>
                    </a>
                </li>
                <li style="width:1%"></li>
                <li class="diamond" style="width:29%">
                    <span>钻石回收</span><br>
                    <a href="http://m.aishoubao.com/aishoubao/diamond/" class="stamp external">
                        <div class="myicon" align="center"><i class="iconfont big">&#xe601;</i></div>
                        <%--<div class="nexticon" align="right"><i class="iconfont small">&#xe603;</i></div>--%>
                    </a>
                </li>
                <li style="width:1%"></li>
                <li class="phone" style="width:40%">
                    <span>手机回收</span><br>
                    <a href="http://m.aishoubao.com/aishoubao/category/new/08d2d4cbf39748f08d56b26ba29266aa" class="stamp external">
                        <div class="myicon" align="center"><i class="iconfont big">&#xe605;</i></div>
                        <%--<div class="nexticon" align="right"><i class="iconfont small">&#xe603;</i></div>--%>
                    </a>
                </li>
            </ul>
        </div>
        <!-- ads2 -->
        <div class="row">
            <div class="col-100"><img src="${ads2[0].picurl}"/></div>
        </div>

        <div class="row mt10">
            <div class="col-100"><img src="${mybaseurl}/res/images/wap/nav_jmhj.jpg"></div>
        </div>
        <!-- ad3 -->
        <div class="row mt10">
            <div class="col-100"><img src="${ads3[0].picurl}"/></div>
        </div>

        <div class="row mt10">
            <div class="col-33"><img src="${mybaseurl}/res/images/wap/icon_jggs.jpg" width="60" height="60"></div>
            <div class="col-33"><img src="${mybaseurl}/res/images/wap/icon_jmsq.jpg" width="60" height="60"></div>
            <div class="col-33"><img src="${mybaseurl}/res/images/wap/icon_mdfw.jpg" width="60" height="60"></div>
        </div>
        <div class="row mt10">
            <div class="col-100"><a href="http://m.aishoubao.com/aishoubao/mortgage-index.html" class="external"><img src="${mybaseurl}/res/images/wap/icon_more.jpg" width="150" height="25"></a></div>
        </div>
        <div class="row mt10">
            <div class="col-100"><img src="${mybaseurl}/res/images/wap/nav_shop.jpg"></div>
        </div>
        <!-- ad4 -->
        <div class="row">
            <div class="col-100"><a href="${ads4[0].url}" class="external"><img src="${ads4[0].picurl}"/></a></div>
        </div>

        <!-- ads5 -->
        <div class="content-padded mt10">
            <div class="row">
                <div class="col-33"><a href="${ads5[0].url}" class="external"><img src="${ads5[0].picurl}"/></a></div>
                <div class="col-33"><a href="${ads5[1].url}" class="external"><img src="${ads5[1].picurl}"/></a></div>
                <div class="col-33"><a href="${ads5[2].url}" class="external"><img src="${ads5[2].picurl}"/></a></div>
            </div>
        </div>

        <!-- ads6 -->
        <div class="row mt10">
            <div class="col-100"><a href="${ads6[0].url}" class="external"><img src="${ads6[0].picurl}"/></a></div>
        </div>

        <div class="content-padded mt10">
            <div class="row" style="text-align: center;">
                <div class="col-100"><img src="${mybaseurl}/res/images/wap/chooseUs.jpg"></div>
            </div>
            <div class="row" style="text-align:center;padding-top:0.5em;padding-bottom: 0.5em;">
                <div class="col-25">
                    <img src="${mybaseurl}/res/images/wap/icon_hb.jpg" width="47.5" height="68">
                </div>
                <div class="col-25"><img src="${mybaseurl}/res/images/wap/icon_ls.jpg" width="47.5" height="68">
                </div>
                <div class="col-25"><img src="${mybaseurl}/res/images/wap/icon_gd.jpg" width="47.5" height="68">
                </div>
                <div class="col-25"><img src="${mybaseurl}/res/images/wap/icon_jd.jpg" width="47.5" height="68">
                </div>
            </div>
        </div>

        <div class="help">
            <div class="content-padded mt10">
                <div class="row">
                    <div class="col-33"><a href="http://www.aishoubao.com/wap" class="external">首页</a></div>
                    <div class="col-33"><a href="http://shop.aishoubao.com/mobile/user.php?act=estimate_list" class="external">订单</a></div>
                    <div class="col-33"><a href="http://shop.aishoubao.com/mobile/flow.php?step=cart" class="external">购物车</a></div>
                </div>
                <div class="row">
                    <div class="col-33"><a href="http://www.aishoubao.com" class="external">电脑版</a></div>
                    <div class="col-33"><a href="http://kefu.qycn.com/vclient/chat/?websiteid=113372" class="external">在线客服</a></div>
                    <div class="col-33"><a href="#" class="external">投诉建议</a></div>
                </div>
            </div>
        </div>
    </div>

</div>
<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>
<script src="${mybaseurl}/res/js/swiper-3.3.1.min.js"></script>

<script>
    <!-- Initialize Swiper -->
    $.init();
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        paginationClickable: true,
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: 2500,
        autoplayDisableOnInteraction: false
    });
    $(".mytopimg").on({
        "click": function () {
            var link = $(this).data("link");
            window.location.href = link;
        }
    });
</script>

</body>
</html>