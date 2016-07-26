<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="WEB-INF/jspnew/common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit"/>
    <meta content="zh-cn" http-equiv="content-language"/>
    <meta name="keywords" content="灵岩山 爱收宝团队"/>
    <meta name="description" content=""/>
    <title>爱收宝-新闻</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?0c974c3c7bb75a06befe38a2fc0293fe";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
    <style>
        body{
            font-family: 微软雅黑;
            overflow-x: hidden;
        }
        .mywrapper.news{
            background-color: #fafafa;
        }

        .title h3{            
            font-size: 24px;
            font-weight: bold;
            color: #323232;
            padding-top: 42px;
            margin-bottom: 28px;
            text-align: center;
        }
        .title p{
            text-align: center;
            font-size: 14px;
            color: #666666;
            padding-bottom: 28px;
            border-bottom: solid 1px #d7d7d7;
        }
        .body p{
            font-size: 16px;
            color: #646464;

            margin-top: 32px;
            margin-bottom: 44px;
            line-height: 30px;
        }
        .body p span{
            font-size: 14px;
        }
        .bannerpic{
            text-align: center;
        }
        .middle{
            width: 1050px;
            margin: auto;
        }
        .middle div{
            float: right;
            width: 500px;
        }
        .middle1 div{
            float: left;
            width: 623px;
        }

        .bottom div{
            text-align: center;
            margin-top: 56px;
        }
        .bottom p{
            text-align: center;
            line-height: 55px;
            margin-top: 24px;
            padding-bottom: 30px;
            margin-bottom: 0;
        }
        footer{
            background-color: #fff;
                    }
    </style>
</head>
<body>
    <%@ include file="WEB-INF/jspnew/common/header.jsp" %>
    <div class="mywrapper news">
        <div class="out_box">
            <div class="title">
                <h3>感谢你能来</h3>
                <p>写给曾经陪我走过还有现在依然陪伴的你</p>
            </div>
            <div class="body">
                <p>从我存在的那一天起，就在想，如何让你遇见我，在我最美丽的时刻。为这我已在佛前求五百年，求他让我们结一段尘缘。</p>
                <div class="bannerpic">
                    <img src="${mybaseurl}/res/images/new/news/news_03.jpg" alt="">
                </div>
                <p style="text-align:center;line-height: 52px;">佛于是把我化作一颗树<br>长在你必经的路旁<br>阳光下慎重地开满了花<br>朵朵都是我前世的盼望</p>
                <div class="bannerpic">
                    <img src="${mybaseurl}/res/images/new/news/news_07.jpg" alt="">
                </div>
                <p>从2015年10月到现在，每篇文章都是我慎重开的花，朵朵都期盼着你可以看见。我在你必经的路旁守候，期待着你看一眼，结一段尘缘。</p>
                <div class="middle1" style="margin-top:75px;">
                    <div>
                        <p style="line-height:57px;text-align:center;">可能我曾不得你心，你看见了我，但只是路过；<br>
                                                    可能我曾令你厌倦，你拥抱了我，而后离开了；<br>
                                                    可能你对我是真心的，直到现在，都会抚摸我朵朵花开。<br>
                                                    感谢你能来，你的存在是我坚持并完善下去的最大动力；<br>
                                                    不遗憾你离开，你的远去是对我过去纰漏的警戒。成长路<br>
                                                    上有你们，我想我已经足够幸运。
                                                    </p>
                    </div>
                    <img style="margin: 65px 0;" src="${mybaseurl}/res/images/new/news/news_11.jpg" alt="">
                </div>
                <div class="middle" style="margin-top:75px;margin-bottom:45px;">
                <img src="${mybaseurl}/res/images/new/news/news_13.jpg" alt="">
                <div>
                <p style="line-height:57px;text-align:center;">一路有你，一路开花。爱收宝，在前行的路上，幸好有你。<br>
                无论是通过何种途径我们有了交集，于我来说，都是最美丽的际遇。<br>
                爱收宝，三千尘世遇见你，一定会为你改变为你优秀。
                </p>
                </div>

                </div>

            </div>
            </div>
        <%@ include file="WEB-INF/jspnew/common/footer.jsp" %></body>
</html>