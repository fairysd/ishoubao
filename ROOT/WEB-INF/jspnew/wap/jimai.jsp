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

        img, object { max-width: 100%;}
        .mt10 {
            margin-top: 0.5em;
        }

        .page {
            background-color: #FFFFFF;text-align:center;
        }


        .bar-tab .tab-item.active, .bar-tab .tab-item:active {
            color: #00958C;
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

        .bar-header-secondary {top: .5em;}
        .jmcategory ul{list-style: none;}
        .jmcategory ul,li{margin:0;padding:0;list-style-type:none;line-height: 0;}
        .jmcategory > .col-50 { width: 50%; margin-left: 0;}
        .jimai07{height:5.5em;}
        .content .bar .searchbar .search-input input, .searchbar .search-input{
        	background-color: rgba(0,0,0,0);
        }
        .content .bar{
        	margin: 0 1rem;
        	border-radius: 1rem;
        	background-color: rgba(0,0,0,0.3);
        	border: none;
        	
        }
        .content .bar .searchbar{
        	border-radius: 1rem;
        	background-color: rgba(0,0,0,0);
        }
        .content .bar:after{
        	background-color:rgba(0,0,0,0);
        }
    </style>
</head>
<body>
<div class="page">
    <%@include file="common/toolbar.jsp"%>
    <div class="content">        
        <!-- search -->
        <div class="bar bar-header-secondary">
            <div class="searchbar">
                <a class="searchbar-cancel">取消</a>
                <div class="search-input">
                    <label class="icon icon-search" for="search"></label>
                    <input type="search" id='search' placeholder='搜索您要寄卖的宝贝...'/>
                </div>
            </div>
        </div>
        <div class="row" style="">
            <div class="col-100"><img src="${mybaseurl}/res/images/wap/jimai_04.jpg"/></div>
        </div>
        <!-- form -->
        <%--<div class="row">--%>
            <%--<div class="col-100">aaa</div>--%>
        <%--</div>--%>
        <%--<div class="row jimai07">--%>
            <%--<div class="col-100"><img src="${mybaseurl}/res/images/wap/jimai_07.jpg"/></div>--%>
        <%--</div>--%>
        <!-- category -->
        <div class="row jmcategory">
            <div class="col-50">
                <ul>
                    <li><a href="http://m.aishoubao.com/aishoubao/category/new/08d2d4cbf39748f08d56b26ba29266aa?isMortgage=1" class="external"><img src="${mybaseurl}/res/images/wap/jimai_08.jpg"/></a></li>
                    <li><a href="http://m.aishoubao.com/aishoubao/product/8fa078e445184f1f9041ea1be763a5e8/detail?type=gjs&isMortgage=1" class="external"><img src="${mybaseurl}/res/images/wap/jimai_10.jpg"/></a></li>
                    <li><a href="http://m.aishoubao.com/aishoubao/category/new/08d2d4cbf3974d8i8d56b26ba29266aa?isMortgage=1" class="external"><img src="${mybaseurl}/res/images/wap/jimai_13.jpg"/></a></li>
                </ul>
            </div>
            <div class="col-50">
                <ul>
                    <li><a href="http://m.aishoubao.com/aishoubao/diamond/?isMortgage=1" class="external"><img src="${mybaseurl}/res/images/wap/jimai_09.jpg"/></a></li>
                    <li><a href="http://m.aishoubao.com/aishoubao/product/8fa078e445184f1f9041ea1be763a5e8/detail?type=gjs&isMortgage=1" class="external"><img src="${mybaseurl}/res/images/wap/jimai_11.jpg"/></a></li>
                    <li><a href="http://m.aishoubao.com/aishoubao/category/new/08d2d4cbff6j48f08d56b26ba29266aa?isMortgage=1" class="external"><img src="${mybaseurl}/res/images/wap/jimai_12.jpg"/></a></li>
                </ul>
            </div>
        </div>
        <!-- footer -->
        <div class="row" style="margin-top:1.5em;">
            <div class="col-100">
                <img src="${mybaseurl}/res/images/wap/wap_footer.jpg"/>
            </div>
        </div>

    </div>

</div>
<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
<script type='text/javascript' src='//g.alicdn.com/msui/sm/0.6.2/js/sm.min.js' charset='utf-8'></script>

<script>
    <!-- Initialize Swiper -->
    $.init();
    $("#search").on({
        click:function () {
            window.location.href = 'http://m.aishoubao.com/aishoubao/product/search';
        }
    })

</script>

</body>
</html>