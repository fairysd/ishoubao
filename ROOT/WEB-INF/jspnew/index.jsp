﻿<%--
  User: donny
  Date: 2/25/16
  Time: 12:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp"%>
<%@ taglib prefix="asb" uri="/cmstag" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta content="zh-cn" http-equiv="content-language" />
    <meta name="keywords" content="苏州黄金回收，黄金回收多少钱一克，今日黄金现价，黄金现在多少钱一克，苏州二手奢侈品回收，黄金回收价格查询" />
    <meta name="description" content="苏州爱收宝网络科技有限公司的总店位于苏州市观前街，以回收与售卖黄金珠宝、名包名表、手机数码为主。爱收宝采用线上结合线下的方式，来经营二手名品的回收、寄卖、代售、护理、置换的业务。"/>
    <title>爱收宝</title>
    <meta name="baidu-site-verification" content="ZXJUwMQOuK" />
    <link rel="canonical" href="http://www.aishoubao.com/" />
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/main.css">
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/root.css">
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/idangerous.swiper.css"> 
    <link type="text/css" rel="stylesheet" href="${baseurl}res/js/layer/skin/layer.css">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
 <!--寄卖轮转图-->
    <style type="text/css">
        #dHomePageCarousel {
                background: url("${mybaseurl}/res/images/new/mortage/mortagebg1_03.jpg") no-repeat scroll 0 0 transparent;
                height: 364px;
                width: 1200px;
                position: relative;
                margin: 0 auto;
                padding-left: 15px;
            }
            
            #dLocalHomesCarousel {
                height:268px;
                margin: 0px 2px 3px 1px;
                overflow: hidden;
                position: relative;
            }
            
            .divCarouselInfo {
                color: #3C404E;
                font-size: 24px;                
                letter-spacing: 1px;
                width: 1200px;
                height: 80px;
                line-height: 32px;
                margin-right: 15px;
                padding-top: 20px;
                position: relative;
            }
            
            .imgBorder {
                border: 3px solid #fff;
                position: absolute;
                cursor: pointer;
            }
            
            .imgBorder:hover {
                border: 2px solid #FFAA55;
                cursor: pointer;
                position: absolute;
            }
            
            .btnCarouselLT {
                background: url("${mybaseurl}/res/images/new/mortage/arrow_09.jpg") no-repeat scroll left top transparent;
                display: block;
                height: 46px;
                overflow: hidden;
                position: absolute;
                cursor: pointer;
                top: 17px;
                width: 28px;
            }
            
            .btnCarouselRT {
                background: url("${mybaseurl}/res/images/new/mortage/arrow_06.jpg") no-repeat scroll right top transparent;
                display: block;
                height: 115px;
                overflow: hidden;
                position: absolute;
                cursor: pointer;
                top: 17px;
                width: 28px;
            }
            .ssindex{
                background-color: #FFFFFF;
                    height: 200px;
    padding-top: 50px;
    box-shadow:#999999 1px 1px 1px 1px;
            }
            .newslist li span{
                float: right;
                color:#000;
            }
    </style>
    <%@ include file="common/otherHeader.jsp"%>
</head>
<body>
<%@ include file="common/header.jsp"%>
<!-- banner -->
<div class = "banner_box">
    <div class = "leftBox">
        <div class = "box">
            <i></i>
            <span class="quickClose"><img src="${baseurl}res/images/closebtn.png"/></span>
            <ul style="display:none;">
                <li class = "active"><i></i>我要卖</li>
                <li><i></i>我要抵押</li>
            </ul>
            <ul>
                <li id="estimateQuickLi" class = "active"><label class = "select"><span>宝贝品类</span><b>名包</b>
                    <ul class="quickEstimateUL">
                        <li data-value="08d2d4cbf3974d8i8d56b26ba29266aa" class="quickEstimateFirst">名包</li>
                        <li data-value="08d2d4cbff6j48f08d56b26ba29266aa">名表</li>
                        <li data-value="gold">黄金</li>
                        <li data-value="08d2d4cbf39748f08d56b26ba29266aa">手机</li>
                        <li data-value="47f288756f1a4c5ebac0a2baf1f5ee80">贵金属</li>
                        <li data-value="0">钻石</li>
                    </ul>
                </label>
                    <label class = "select"><span>宝贝品种</span><b class="quickEstimateBrandB">爱马仕</b>
                        <ul class="quickEstimateBrand">
                        </ul>
                    </label>
                    <label>
                        <button id="quickEstimateBtn" data-url="">估价搜索</button>
                    </label>
                </li>
                <li id="mortgageQuickLi">
                    <%--<form name="dyform" id="dyform" action="${baseurl}webintention/create" method="post">--%>
                        <input type="hidden" name="type" value="2"/>
                        <input type="hidden" name="productType" id="quickProductType" value="贵金属寄卖"/>
                    <label class = "select"><span>寄卖宝贝</span><b>贵金属寄卖</b>
                    <ul class="quickProductTypeSelect">
                        <li data-value="贵金属寄卖">贵金属寄卖</li>
                        <li data-value="钻石寄卖">钻石寄卖</li>
                        <li data-value="珠宝寄卖">珠宝寄卖</li>
                        <li data-value="名表寄卖">名表寄卖</li>                        
                        <li data-value="名包寄卖">名包寄卖</li>
                    </ul>
                </label>
                    <label class = "select"><span>寄卖金额</span><b class = "no"><input type = "text" name="rzJe" id="quickrzJe">元</b></label>
                    <label class = "select"><span>联系手机</span><b class = "no"><input type = "text" name="phone" id="quickPhone"></b></label>
                    <label>
                        <button id="indexKsdydksqBtn">快速寄卖申请</button>
                    </label>
                    <%--</form>--%>
                </li>
            </ul>
        </div>
    </div> 
    <div class = "swiper-container">
            <div class="swiper-wrapper">
                <!-- <div class = "swiper-slide">
                    <a href="${mybaseurl}/category/first"><img src = "${baseurl}res/images/banner1.jpg"></a>
                </div>
                <div class = "swiper-slide" >
                    <a href="${mybaseurl}/mortgage"><img src = "${baseurl}res/images/banner2.jpg"></a>
                </div >
                <div class = "swiper-slide">
                    <a href="${mybaseurl}/luxury"><img src = "${baseurl}res/images/banner3.jpg"></a>
                </div>
                <div class = "swiper-slide">
                    <a href="${mybaseurl}/consignment"><img src = "${baseurl}res/images/banner4.jpg"></a>
                </div>
                <div class = "swiper-slide">
                    <a href="http://shop.aishoubao.com"><img src = "${baseurl}res/images/banner5.jpg"></a>
                </div> -->
                <asb:ad posId="eb46a0578c5a40ea94e47d8d93ebc150" res="testres">
                         <c:forEach items="${testres}" var="article">
                         <div class = "swiper-slide">
                            <a href="${article.url}"><img src = "${article.picurl}"></a>
                        </div>
                        </c:forEach>
                </asb:ad>
            </div>
            <div class="pagination"></div>  
        </div>
    <div class = "banner_nav_button">
        <img id="estimateBtn" src="${mybaseurl}/res/images/v2/ban_1.gif">
        <img id="mortgageBtn" src="${mybaseurl}/res/images/v2/ban_2.gif">
    </div>    
</div>
<div class="out_box">
    <ul id="content">
        <li>
            <img src="${mybaseurl}/res/images/v2/huanbao.gif"/>
            <div>
                <p>环保</p>
                <span>循环利用&nbsp;绿色环保</span>
            </div>
        </li>
        <li>
            <img src="${mybaseurl}/res/images/v2/liansuo.gif"/>
            <div>
                <p>连锁</p>
                <span>全国连锁&nbsp;值得信赖</span>
            </div>
        </li>
        <li>
            <img src="${mybaseurl}/res/images/v2/gongdao.gif"/>
            <div>
                <p>公道</p>
                <span>隐私保护&nbsp;价格公道</span>
            </div>
        </li>
        <li>
            <img src="${mybaseurl}/res/images/v2/jianding.gif"/>
            <div>
                <p>鉴定</p>
                <span>免费服务&nbsp;专业鉴定</span>
            </div>
        </li>
    </ul>
</div>
<%@include file="common/index_common.jsp"%>
<!-- shop -->
<div class="mywrapper indexbg" style="clear: both;">
    <div class = "out_box">
        <div class = "title">
            <h6>Love collecting treasure mall<br>爱收宝商城</h6>
        </div>        
            <div class="pure-g">
                <div class="pure-u-1-4 shoptitle">
                    <h3>限时优惠</h3>
                    <div class="shoppic">
                        <a href="http://shop.aishoubao.com"><img src="${mybaseurl}/res/images/new/shop/shoppic_10.jpg" alt="" /></a>
                    </div> 
                </div>
                <div class="pure-u-3-4 xinshang">
                    <h3>名品欣赏</h3>
                    <div class="pure-u-1-3">
                        <a href="http://shop.aishoubao.com/category.php?id=18"><img src="${mybaseurl}/res/images/new/shop/shoppic_03.jpg" alt="" /></a>
                    </div>
                    <div class="pure-u-1-3">
                        <a href="http://shop.aishoubao.com/category.php?id=352"><img src="${mybaseurl}/res/images/new/shop/shoppic_05.jpg" alt="" /></a>
                    </div>
                    <div class="pure-u-1-3">
                        <a href="http://shop.aishoubao.com/category.php?id=272"><img src="${mybaseurl}/res/images/new/shop/shoppic_07.jpg" alt="" /></a>
                    </div>
                    
                </div>
            </div>        
    </div>
</div>
<!-- 护理 -->
<div class = "out_box">
    <div class = "title nursingtitle">
        <h6>NURSING<br>护理</h6>
    </div>
    <div class = "man_content main_content_js" style="padding-bottom:0;">
        <div class="pure-g">
            <div class="pure-u-1-1"><a href="${mybaseurl}/luxury"><img class="lazy" data-original="${mybaseurl}/res/images/v2/nursing_1.jpg"/></a></div>
        </div>       
    </div>
</div>
<!-- 区域店推荐 -->
<div class = "out_box">
    <div class = "title">
        <h6>THE PREMIUM STORE<br>门店服务</h6>
    </div>
        <div class="store-title">
            <div class="title_page">
                    <span class="next">&gt;</span>
                    <span class="pre">&lt;</span>
        </div>
            <ul id="allstore">
                <li id="total">全部门店( <span></span> )</li>               
            </ul>
            
        </div>
        <div class="store-img">
            <img src="${mybaseurl}/res/images/new/homepage/storeimg_03.jpg" alt="" />
        </div>
            <div class="stroe-cont">
            <ul id="storedetail" style="">
                
            </ul>
            <div class="page_store">
                <span class="pre">&lt;</span>
                <div class="num">
                    <span class="cur-num"></span>
                    <span class="split">/</span>
                    <span class="total-num"></span>
                </div>
                <span class="next">&gt;</span>
            </div>
        </div>
</div>
<div id="storelayer" class="storedetail" style="display:none">
            <div class="storemap">
                <div class="iframe">
                    <div class = "map storemap" id="allmap"></div>
                    <h3>这里是门店详细地址</h3>
                </div>
                <div class="picture">
                    <img  id="picture" src="${baseurl}res/images/new/login/storepic.jpg" alt="" />
                    <h3>门店照片</h3>
                </div>
            </div>
            <div class="storestream">
                <img src="${baseurl}res/images/new/login/storestream.jpg" alt="" />
            </div>
        </div>
<!-- 新闻 -->
<div class = "out_box">
    <div class = "title">
        <h6>Love to receive Po information<br>爱收宝资讯</h6>
    </div>    
        <div class="pure-g zixunbl">
            <div class="pure-u-1-5">
                <img src="${mybaseurl}/res/images/new/zinxunpic_03.jpg" alt="" />
            </div>
            <div class="pure-u-4-5 hotnews">                
                <div class="newsmarquee">
                    <ul class="newslist">
                      <c:if test="${empty curId}">
                        <asb:articlePos posId="1" count="10" res="testres">
                         <c:forEach items="${testres}" var="article">
                        <li><a href="${mybaseurl}/news/article/${article.id}">${article.title}<span><fmt:formatDate value="${article.publishTime}" type="date" dateStyle="long"/></span></a></li>
                        </c:forEach>
                        </asb:articlePos>
                    </c:if>
        <!--                 <li><a href="${mybaseurl}/news/1"><span>></span>知识篇：3D硬金与千足金的区别<span style="text-align: right;display: block;float: right; color: #000000;">2016-05-23</span></a></li>
                        <li><a href="${mybaseurl}/news1.jsp"><span>></span>走进爱收宝系列：感谢你能来！<span style="text-align: right;display: block;float: right;color: #000000;">2016-04-13</span></a></li>
                        <li><a href="${mybaseurl}/news.jsp"><span>></span>走进爱收宝系列：你说登山的意义在于什么？<span style="text-align: right;display: block;float: right;color: #000000;">2016-07-09</span></a></li>
                        <li><a href="${mybaseurl}/news/4"><span>></span>细节控戛纳红毯上的这些珠宝你看到了吗？<span style="text-align: right;display: block;float: right;color: #000000;">2016-01-06</span></a></li> -->                       
                    </ul>
                </div>
            </div>
            <!--<div class="pure-u-2-5" style="text-align:right;"><img class="lazy" style="padding-left:175px;" data-original="${mybaseurl}/res/images/v2/news.jpg"/></div>-->
        </div>
</div>
<!-- 实时指数 -->
<div class="mywrapper indexbg" style="clear: both;height: 320px;">
    <div class = "out_box">
        <div class = "title zhishu">
            <h6>REAL-TIME INDEX<br>实时指数</h6>
        </div>
        <div class = "man_content ssindex">
            <ul>
                <li><img class="lazy" data-original="http://photo.zhijinwang.com/cn/metals/gold/t24_au_cny_gram_180x114.gif" alt="纸黄金走势图" width="220" height="146" border="0" vspace="4"></li>
                <li><img class="lazy" data-original="http://photo.zhijinwang.com/cn/metals/silver/t24_ag_cny_gram_180x114.gif" alt="白银价格走势图" width="220" height="146" border="0"></li>
                <li><img class="lazy" data-original="http://photo.zhijinwang.com/cn/metals/platinum/t24_pt_cny_gram_180x114.gif" alt="铂金价格即时走势图" width="220" height="146" border="0"></li>
                <li><img class="lazy" data-original="http://photo.zhijinwang.com/cn/metals/palladium/t24_pd_cny_gram_180x114.gif" alt="钯金价格即时走势图" width="220" height="146" border="0"></li>
                <li><img class="lazy" data-original="http://photo.zhijinwang.com/cn/live_charts/t24_crude_182x116.gif" alt="美国原油即时走势图" width="220" height="146" border="0"></li>
            </ul>
       </div>
    </div>
</div>
<div style="clear:both;height:40px;">&nbsp;</div>
<!-- 战略合作伙伴 -->
<div class="mywrapper indexbg" style="clear: both;height: 265px;">
    <div class = "out_box">
        <div class = "title">
            <h6>STRATEGIC PARTENR<br>战略合作伙伴</h6>
        </div>
        <div class = "man_content main_content_js hzhb" style="padding:40px 0;background: transparent;">
            <ul class="">
                <li><img src = "${baseurl}res/images/hLogo01.png" alt = "上海黄金交易所"></li>
                <li><img src = "${baseurl}res/images/hLogo02.png" alt = "苏州东吴黄金"></li>
                <li><img src = "${baseurl}res/images/hLogo03.png" alt = "新浪网"></li>
                <li><img src = "${baseurl}res/images/hLogo04.png" alt = "中国奢侈品行业协会"></li>
                <li><img src = "${baseurl}res/images/hLogo05.png" alt = "搜狐网"></li>
                <li><img src = "${baseurl}res/images/hLogo06.png" alt = "中国珠宝玉石首饰行业协会"></li>
                <li><img src = "${baseurl}res/images/hLogo07.png" alt = "央视网"></li>
            </ul>
        </div>
    </div>
</div>
<div id="chooseCity">
    <p><img src="${mybaseurl}/res/images/v2/pos.jpg"/> 您的IP所属地为<span class="">${sessionScope.areainfo.name}</span>，但您正在进入<span class="">苏州</span>站</p>
    <p>建议您选择工作生活的城市，否则商家将无法受理您的交易</p>
    <p><span class="realCity"><a href="${mybaseurl}/selcity/${sessionScope.cityId}">切换到${sessionScope.areainfo.name}站</a></span><span class="oriCity"><a href="#" onclick="layer.closeAll();">继续访问苏州站</a></span></p>
</div>
<%@ include file="common/footer.jsp"%>
<script src="${baseurl}res/js/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/layer/layer.js"></script>
<script type="text/javascript" src="${baseurl}res/js/idangerous.swiper.js"></script>
<script type="text/javascript" src="${baseurl}res/js/scroll.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=DeQszKLbgZNzVKY4ZflHkDbX"></script>
<script type="text/javascript" src="${baseurl}res/js/action.js"></script>
<script type="text/javascript"> 
            function AdItem(name, phone, address, Photo, price, time, url) {
                this.name = name;
                this.phone = phone;
                this.address = address;
                this.Photo = Photo;
                this.url = url;
                this.price = price;
                this.time = time;
            }
            var ad = new Array();
            ad[0] = new AdItem('黄金寄卖：高价诚信', '400-086-1131', '', '${mybaseurl}/res/images/new/mortage/1.png', '专业寄卖值得信赖', '', '${mybaseurl}/product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold');
            ad[1] = new AdItem('名包寄卖：正规安全', '400-086-1131', '', '${mybaseurl}/res/images/new/mortage/2.png', '专业的鉴定团队鉴定人', '', '${mybaseurl}/category/08d2d4cbf3974d8i8d56b26ba29266aa/0');
            ad[2] = new AdItem('名表寄卖：灵活高效 ', '400-086-1131', '', '${mybaseurl}/res/images/new/mortage/3.png', '保证客户利益有效实行', '', '${mybaseurl}/category/08d2d4cbff6j48f08d56b26ba29266aa/0');
            ad[3] = new AdItem('手机寄卖：方便快捷', '400-086-1131', '', '${mybaseurl}/res/images/new/mortage/4.png', '资深的推广运营团队', '', '${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0');
            ad[4] = new AdItem('铂金寄卖：专业鉴定', '400-086-1131', '', '${mybaseurl}/res/images/new/mortage/5.png', '线上线下整合营销推广', '', '${mybaseurl}/product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt');
            ad[5] = new AdItem('钯金寄卖：低息放心', '400-086-1131', '', '${mybaseurl}/res/images/new/mortage/6.png', '量身定制品牌营销方案', '', '${mybaseurl}/product/094c2f5308514105a862c6299f9d320b?ptype=gjs&goldType=palau');
            ad[6] = new AdItem('K金寄卖： 闲置换新', '400-086-1131', '', '${mybaseurl}/res/images/new/mortage/7.png', '量身定制品牌营销方案', '', '${mybaseurl}/product/bcf8086e4f4647fabcfc3409430baa60?ptype=gjs&goldType=k');
            ad[7] = new AdItem('白银寄卖：便捷省心', '400-086-1131', '', '${mybaseurl}/res/images/new/mortage/8.png', '量身定制品牌营销方案', '', '${mybaseurl}/product/5f67c6baca4b4167a4b49b6df510a3f1?ptype=gjs&goldType=sliver');
            ad[8] = new AdItem('钻石寄卖：贴心服务', '400-086-1131', '', '${mybaseurl}/res/images/new/mortage/9.png', '量身定制品牌营销方案', '', '${mybaseurl}/product/diamond');
            var img = new Array();
            img[0] = document.getElementById("imgSmallLeft");
            img[1] = document.getElementById("imgMiddleLeft");
            img[2] = document.getElementById("imgBig");
            img[3] = document.getElementById("imgMiddleRight");
            img[4] = document.getElementById("imgSmallRight");
            img[5] = document.getElementById("imgHidden");
            img[6] = document.getElementById("imgHidden1");
            img[7] = document.getElementById("imgHidden2");
            img[8] = document.getElementById("imgHidden3");
            var position = 0;
            for (i = 0; i < img.length; i++) {
                img[i].src = ad[i].Photo;
            }
            var adname = document.getElementById("adname");
            var adtel = document.getElementById("adtel");
            var adaddr = document.getElementById("adaddr");
            var adprice = document.getElementById("adprice");
            var adtime = document.getElementById("adtime");
            var cur = 2;
            adname.href = ad[2].url;
            if (navigator.userAgent.indexOf("Firefox") > 0) {
                adname.textContent = ad[2].name;
                adtel.textContent = ad[2].phone;
                adaddr.textContent = ad[2].address;
                adprice.textContent = ad[2].price;
                adtime.textContent = ad[2].time;
            } else {
                adname.innerText = ad[2].name;
                adtel.innerText = ad[2].phone;
//              adaddr.innerText = ad[2].address;
//              adprice.innerText = ad[2].price;
//              adtime.innerText = ad[2].time;
            }       
</script>
<script>
      var mySwiper = new Swiper('.swiper-container',{
            pagination: '.pagination',
            autoplay:2000,
            loop:true,
            speed:1000,
            grabCursor: true,
            autoplayDisableOnInteraction : false,
            paginationClickable: true
          })
    function getCategoryByTop(id) {
        $.ajax({
            url: "${baseurl}category/json/"+id,    //请求的url地址
            dataType: "json",
            async: true,
            data: { },
            type: "GET",
            success: function(data) {
//                console.log(data);
                var u = data.body, len= u.length;
                var v = "";
                if (len>0) {
                    $(".quickEstimateBrandB").html(u[0].name);
                    $("#quickEstimateBtn").data("url", "${baseurl}category/"+id+"/"+u[0].id);
                    for(var i=0; i<len;i++) {
                        v += '<li data-value="'+u[i].id+'">'+u[i].name+'</li>';
                    }
                }
                $(".quickEstimateBrand").html(v);
                bindDhevent();
                $(".quickEstimateBrand li").on({
                    "click":function(){
                        $("#quickEstimateBtn").data("url", "${baseurl}category/"+id+"/"+$(this).data("value"));
                    }
                });
            }
        });
    }
    $(function(){
        $("img.lazy").lazyload({skip_invisible : false,effect: "fadeIn"});
        $('.newsmarquee').kxbdSuperMarquee({
            isMarquee:true,
            isEqual:true,
            scrollDelay:30,
            direction:'up'
        });
        $('.hzhb').kxbdSuperMarquee({
            isMarquee:true,
            isEqual:true,
            scrollDelay:20,
            direction:'left'
        });
        $(".pro-slide li").hover(function(){
            var _th = $(this),index = $(".pro-slide li").index(this);
            if(!_th.hasClass('act')){
                _th.addClass("act").siblings().removeClass('act');
                $(".pro-slide li").css({ width : '71px'}).find('.JText').hide();
                $(".pro-slide li").css('overflow','visible');
                if($('body').hasClass('skSmallStyle')){
                    _th.css({ width : '320px'}).find('.JText').stop().fadeIn();
                }else{
                    _th.css({ width : '404px'}).find('.JText').stop().fadeIn();
                }
            }
        }).eq(0).trigger('mouseover');
        //快速回收估价
        $(".quickEstimateUL li").on({
           "click":function(){
               $cid = $(this).data("value");
//               console.log($cid);
               switch ($cid) {
                   case -1:
                       alert("该产品频道正在建设中,请稍候访问!");
                       break;
                   case 0:
                       window.location.href="${baseurl}product/diamond";
                       break;
                   case "gold":
                       window.location.href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold";
                       break;
                   case "47f288756f1a4c5ebac0a2baf1f5ee80": //gjs
                       $(".quickEstimateBrandB").html("铂金");
                       $("#quickEstimateBtn").data("url", "${baseurl}product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt");
                       $(".quickEstimateBrand").html('<li data-value="product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt">铂金</li><li data-value="product/094c2f5308514105a862c6299f9d320b?ptype=gjs&goldType=palau">钯金</li><li data-value="product/bcf8086e4f4647fabcfc3409430baa60?ptype=gjs&goldType=k">K金</li><li data-value="product/5f67c6baca4b4167a4b49b6df510a3f1?ptype=gjs&goldType=sliver">白银</li>');
                       bindDhevent();
                       $(".quickEstimateBrand li").on({
                           "click":function(){
                                $("#quickEstimateBtn").data("url", "${baseurl}"+$(this).data("value"));
                           }
                       });
                       break;
                   case "08d2d4cbf3974d8i8d56b26ba29266aa": //bag
                   case "08d2d4cbff6j48f08d56b26ba29266aa": //clock
                   case "08d2d4cbf39748f08d56b26ba29266aa": //phone
                        getCategoryByTop($cid);
                        break;
               }
           }
        });

        $(".quickEstimateBrand li").on({
           "click":function(){
           }
        });

        $("#quickEstimateBtn").on({
           "click":function(){
               window.location.href=$(this).data("url");
           }
        });

        $(".quickProductTypeSelect li").on({
           "click":function() {
               $("#quickProductType").attr("value", $(this).data("value"));
           }
        });
       $("#indexKsdydksqBtn").on({
           "click":function(){
//                if ($("#quickrzJe").val()=="") {
//                    alert("请输入融资金额!");
//                    $("#quickrzJe").focus();
//                    return false;
//                } else {
//                    $("#quickrzJe").val($("#quickrzJe").val()+"万元");
//                }
//               if ($("#quickPhone").val()=="") {
//                   alert("请输入联系电话!");
//                   $("#quickPhone").focus();
//                   return false;
//               }
//               $("#dyform").submit();
               window.location.href="${baseurl}mortgage";
           }
       });
        $(".dy1ul li").on({
           "click":function(){
               $("#dy1productType").val($(this).data("value"));
           }
        });
        $(".dy2ul li").on({
            "click":function(){
                $("#dy2productType").val($(this).data("value"));
            }
        });
        $(".dy3ul li").on({
            "click":function(){
                $("#dy3productType").val($(this).data("value"));
            }
        });
        $(".dy4ul li").on({
            "click":function(){
                $("#dy4productType").val($(this).data("value"));
            }
        });
        $(".dy5ul li").on({
            "click":function(){
                $("#dy5productType").val($(this).data("value"));
            }
        });

        $("#save").click(function(){
            var flag=true;
            var  goodsType=$("#goodsType").val();
            var  brand=$("#productBrand").val();
            var goodsName=$("#goodsName").val();
            var contactPhone=$("#contactPhone").val();
            var contactName=$("#contactName").val();
            var expectPrice=$("#expectPrice").val();

            if(goodsType==""){
                flag=false;
                alert("请选择商品类型");
                return flag;
            }
//            if(brand==""){
//                flag=false;
//                alert("请输入品牌");
//                return flag;
//            }
            if(goodsName==""){
                flag=false;
                alert("请填写商品名称");
                return flag;
            }
            if(contactName==""){
                flag=false;
                alert("请填写联系人");
                return flag;
            }
            if(contactPhone==""){
                flag=false;
                alert("请填写联系人手机");
                return flag;
            }else if(!/^0?1([3,4,5,7,8]{1}[0-9]{1}){1}[0-9]{8}$/
                            .test(contactPhone)){
                flag=false;
                alert("请填写正确的手机号");
                return flag;
            }
            if(expectPrice==""){
                flag=false;
                alert("请填写期望价格");
                return flag;
            }else if(!/^[\d]*(.[\d]{1,2})?$/.test(expectPrice)){
                flag=false;
                alert("请填写正确的价格格式");
                return flag;
            }
            $("#jsform").submit();
        });
    });
    $(document).ready(function () {
        $(".quickEstimateFirst").trigger("click");
        <c:if test="${sessionScope.cityId != '856'}">
        //页面一打开就执行弹层
        layer.ready(function(){
            layer.open({
                type: 1,
                title:'温馨提示',
                area: ['450px', '270px'],
                shadeClose: true, //点击遮罩关闭
                content: $('#chooseCity')
            });
        });
        </c:if>

    });

    function check(form) {
        if(form.rzTime.value=='' || !unsignedDoubleCheck(form.rzTime.value)){
            alert("请输入正确的融资期限!");
            form.rzTime.focus();
            return false;
        }
        if(form.rzJe.value=='' || !unsignedDoubleCheck(form.rzJe.value)){
            alert("请输入正确的融资金额!");
            form.rzJe.focus();
            return false;
        }
        if(form.phone.value=='' || !telRuleCheck2(form.phone.value)) {
            alert("请输入正确的手机号码!");
            form.phone.focus();
            return false;
        }
        return true;
    }
</script>
<style>
    .layui-layer-title{font-size: 18px;}
</style>
</body>
</html>
