<%--
  User: donny
  Date: 2/25/16
  Time: 12:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta content="zh-cn" http-equiv="content-language" />
    <meta name="keywords" content="" />
    <meta name="description" content=""/>
    <title>爱收宝</title>
    <link rel="canonical" href="http://www.aishoubao.com/" />
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/main.css">
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/root.css">
    <style>
        .quickEstimateBrand{height:150px;overflow-y:scroll;}
        #chooseCity{padding: 15px; text-align: center;display:none;}
        #chooseCity p{padding-bottom:20px;font-size:14px;}
        #chooseCity p:first-child{padding-top:20px;font-size:18px;}
        #chooseCity p:last-child{padding-top:15px;}
        #chooseCity .realCity{display: inline-block;width: 150px;height: 40px;line-height: 40px;background: #00A298;color: #fff;}
        #chooseCity .oriCity{display:inline-block;width:150px;height: 40px;line-height:40px;background: #858585;color:#fff;margin-left:20px;}
        #chooseCity img{vertical-align: middle;}
        #chooseCity a{color:#fff;}
        #chooseCity a:hover{color:#FFFF00;}
        .newsmarquee{height:168px;overflow:hidden;}
        .hzhb{width:1198px;height:87px;overflow: hidden;text-align: center;}
        .hzhb ul li{float:left;width:162px;padding-left:10px;}
        .hzhb ul li img{display:block;}
        .pro-slide{ position:relative;height: 140px;width: 1107px;margin-left: 47px;}
        .border-dash{height: 1px; width:98%;border-bottom: 1px dashed #f3d2a6;position: absolute;top: 72px;left: 0;z-index: 0;}
        .pro-slide ul{padding-top: 30px;margin-left: -71px;position: absolute;z-index: 2;width: 1200px;}
        .pro-slide ul li{ float: left;width: 71px;height: 72px;margin-left: 66px; position:relative;}
        .pro-slide ul li.act{  margin-right:-10px;}
        .pro-slide ul li b{ position:absolute; left:-29px; top:37px; z-index:5; display:inline-block; width:10px; height:11px;background:url(${mybaseurl}/res/images/v2/yh_tit.png) no-repeat; background-position:0 -236px;}

        .pro-slide .JText{width: 297px;border: 1px solid #f3941f;border-radius: 2px;background-color: #fff;padding: 10px;line-height: 16px;color: #666; display:none; overflow:hidden;position:absolute; right:0; top:8px;font-size: 12px;}
        .pro-slide .JText:first-child,.pro-slide .JText:last-child{top:3px;}
        .skSmallStyle .JText{ width:216px;}
        .pro-slide ul li.act .JText{/* display:block*/}
        .Jicon{width: 92px; height:130px; text-align:center; font-family:"微软雅黑"; margin:6px 0 0; color:#666;font-weight: bold;}
        .Jicon em{width: 71px; height:72px; margin-bottom:1px; display:inline-block;background: url(${mybaseurl}/res/images/v2/yh_tit.png) no-repeat;margin-right: 8px;}
        .Jicon em.Jicon01{ background-position:0 -72px;}
        .Jicon em.Jicon02{ background-position:-72px -72px;}
        .Jicon em.Jicon03{ background-position:-144px -72px;}
        .Jicon em.Jicon04{ background-position:-0 -144px;}
        .Jicon em.Jicon05{ background-position:-72px -144px;}
        .Jicon em.Jicon06{ background-position:-144px -144px;}
        .clearfix:after{visibility:hidden;display:block;font-size:0;content:" ";clear:both;height:0}* html .clearfix{zoom:1}*:first-child+html .clearfix{zoom:1}
    </style>
</head>
<body>
<%@ include file="common/header.jsp"%>
<!-- banner -->
<div class = "banner_box">
    <div class = "leftBox">
        <div class = "box">
            <i></i>
            <span class="quickClose">X</span>
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
                    <%--<label class = "select"><span>回收方法</span><b>门店</b>--%>
                        <%--<ul>--%>
                            <%--<li>门店</li>--%>
                            <%--<li>快递</li>--%>
                            <%--<li>上门</li>--%>
                        <%--</ul>--%>
                    <%--</label>--%>
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
                        <li data-value="珠宝寄卖">珠宝寄卖</li>
                        <li data-value="名表寄卖">名表寄卖</li>
                        <li data-value="车辆寄卖">车辆寄卖</li>
                        <li data-value="民品寄卖">民品寄卖</li>
                    </ul>
                </label>
                    <label class = "select"><span>寄卖金额</span><b class = "no"><input type = "text" name="rzJe" id="quickrzJe">万元</b></label>
                    <label class = "select"><span>联系手机</span><b class = "no"><input type = "text" name="phone" id="quickPhone"></b></label>
                    <label>
                        <button id="indexKsdydksqBtn">快速寄卖申请</button>
                    </label>
                    <%--</form>--%>
                </li>
            </ul>
        </div>
    </div>
    <div class = "imgBox">
        <ul>
            <li class = "active">
                <div class = "out_box"><img src = "${baseurl}res/images/banner1.jpg"></div>
            </li>
            <li>
                <div class = "out_box"><img src = "${baseurl}res/images/banner2.jpg"></div>
            </li>
            <li>
                <div class = "out_box"><img src = "${baseurl}res/images/banner3.jpg"></div>
            </li>
            <li>
                <div class = "out_box"><img src = "${baseurl}res/images/banner4.jpg"></div>
            </li>
            <li>
                <div class = "out_box"><img src = "${baseurl}res/images/banner5.jpg"></div>
            </li>
        </ul>
    </div>
    <div class = "banner_nav_button">
        <img id="estimateBtn" src="${mybaseurl}/res/images/v2/ban_1.gif">
        <img id="mortgageBtn" src="${mybaseurl}/res/images/v2/ban_2.gif">
    </div>
    <div class = "banner_nav"><span class = "active"></span><span></span><span></span><span></span><span></span></div>
</div>
<div class="out_box">
    <ul id="content">
        <li>
            <img src="${mybaseurl}/res/images/v2/huanbao.gif"/>
            <div>
                <p>环保</p>
                <span>全面利用&nbsp;避免污染</span>
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
                <span>百家竞价&nbsp;价格公道</span>
            </div>
        </li>
        <li>
            <img src="${mybaseurl}/res/images/v2/jianding.gif"/>
            <div>
                <p>鉴定</p>
                <span>免费鉴定&nbsp;帮你到底</span>
            </div>
        </li>
    </ul>
</div>
<%@include file="common/index_common.jsp"%>
<!-- shop -->
<div class="mywrapper indexbg" style="clear: both;height: 792px;">
    <div class = "out_box">
        <div class = "title">
            <h6>SALE<br>限时优惠</h6>
        </div>
        <div class = "man_content myshop" style="padding-bottom:30px;">
            <div class="pure-g">
                <div class="pure-u-1-5">
                    <div class = "t_nav">
                        <ul class = "t_nav_right" style="padding-top:45px;">
                            <li class = "active"><i class="iconfont f24">&#xe604;</i> <span>大牌名包</span></li>
                            <li><i class="iconfont f24">&#xe617;</i> <span>大牌名表</span></li>
                            <li><i class="iconfont f20">&#xe602;</i> <span>黄金白银</span></li>
                            <li><i class="iconfont f24">&#xe601;</i> <span>钻石珠宝</span></li>
                            <li><i class="iconfont f24">&#xe605;</i> <span>手机数码</span></li>
                        </ul>
                    </div>
                </div>
                <div class="pure-u-4-5">
                    <div class = "t_content">
                        <ul class = "t_c_left">
                            <li class = "active">
                                <div class="pure-g mt20">
                                    <c:forEach items="${goods18.goods}" var="good">
                                    <div class="pure-u-1-4 tac pb20">
                                        <a href="http://shop.aishoubao.com/${good.goodsUrl}" target="_blank">
                                        <div class="hsdiv">
                                                <img class="lazy" data-original="http://shop.aishoubao.com/${good.goodsImg}"/>
                                                <p>${good.goodsName}</p>
                                        </div>
                                        <div class="myshop_pricediv">
                                            <div class="pure-u-1-2">${good.goodsPrice}</div>
                                            <div class="pure-u-1-2">立即购买</div>
                                        </div>
                                        </a>
                                    </div>
                                    </c:forEach>
                                </div>
                            </li>
                            <li>
                                <div class="pure-g mt20">
                                    <c:forEach items="${goods352.goods}" var="good">
                                        <div class="pure-u-1-4 tac pb10">
                                            <a href="http://shop.aishoubao.com/${good.goodsUrl}" target="_blank">
                                                <div class="hsdiv">
                                                    <img src="http://shop.aishoubao.com/${good.goodsImg}"/>
                                                    <p>${good.goodsName}</p>
                                                </div>
                                                <div class="myshop_pricediv">
                                                    <div class="pure-u-1-2">${good.goodsPrice}</div>
                                                    <div class="pure-u-1-2">立即购买</div>
                                                </div>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </li>
                            <li>
                                <div class="pure-g mt20">
                                    <c:forEach items="${goods150.goods}" var="good">
                                        <div class="pure-u-1-4 tac pb10">
                                            <a href="http://shop.aishoubao.com/${good.goodsUrl}" target="_blank">
                                                <div class="hsdiv">
                                                    <img src="http://shop.aishoubao.com/${good.goodsImg}"/>
                                                    <p>${good.goodsName}</p>
                                                </div>
                                                <div class="myshop_pricediv">
                                                    <div class="pure-u-1-2">${good.goodsPrice}</div>
                                                    <div class="pure-u-1-2">立即购买</div>
                                                </div>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </li>
                            <li>
                                <div class="pure-g mt20">
                                    <c:forEach items="${goods272.goods}" var="good">
                                        <div class="pure-u-1-4 tac pb10">
                                            <a href="http://shop.aishoubao.com/${good.goodsUrl}" target="_blank">
                                                <div class="hsdiv">
                                                    <img src="http://shop.aishoubao.com/${good.goodsImg}"/>
                                                    <p>${good.goodsName}</p>
                                                </div>
                                                <div class="myshop_pricediv">
                                                    <div class="pure-u-1-2">${good.goodsPrice}</div>
                                                    <div class="pure-u-1-2">立即购买</div>
                                                </div>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </li>
                            <li>
                                <div class="pure-g mt20">
                                    <c:forEach items="${goods292.goods}" var="good">
                                        <div class="pure-u-1-4 tac pb10">
                                            <a href="http://shop.aishoubao.com/${good.goodsUrl}" target="_blank">
                                                <div class="hsdiv">
                                                    <img src="http://shop.aishoubao.com/${good.goodsImg}"/>
                                                    <p>${good.goodsName}</p>
                                                </div>
                                                <div class="myshop_pricediv">
                                                    <div class="pure-u-1-2">${good.goodsPrice}</div>
                                                    <div class="pure-u-1-2">立即购买</div>
                                                </div>
                                            </a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 护理 -->
<div class = "out_box">
    <div class = "title">
        <h6>NURSING<br>护理</h6>
    </div>
    <div class = "man_content main_content_js" style="padding-bottom:0;">
        <div class="pure-g">
            <div class="pure-u-1-1"><img class="lazy" data-original="${mybaseurl}/res/images/v2/nursing_1.jpg"/></div>
        </div>
        <div class="pure-g">
            <div class="pure-u-1-1">
                <div class="pro-slide">
                    <ul class="clearfix">
                        <li class="" style="">
                            <div class="Jicon fl">
                                <em class="Jicon01"></em>
                                前台接收
                            </div>
                            <div class="JText fr">
                                <p>1、前台接收</p>
                                北京、上海、苏州会所养护中心前台接收货品，接待人员对货品信息进行登记，并拍照上传至养护服务系统；初步制定养护服务方案，明确报价并收取费用。
                            </div>
                        </li>
                        <li class="">
                            <div class="Jicon fl"><em class="Jicon02"></em>调拨工厂</div>
                            <div class="JText fr">
                                <p>2、调拨工厂</p>
                                养护中心前台将货品调拨养护工厂；专业物流运送货品至养护工厂。
                            </div>
                            <b></b>
                        </li>
                        <li class="">
                            <div class="Jicon fl"><em class="Jicon03"></em>消毒分发</div>
                            <div class="JText fr">
                                <p>3、消毒分发</p>
                                货品消毒，根据货品需要养护的不同项目分发给专长技师进行服务。
                            </div>
                            <b></b>
                        </li>
                        <li class="">
                            <div class="Jicon fl"><em class="Jicon04"></em>技师养护</div>
                            <div class="JText fr">
                                <p>4、技师养护</p>
                                技师出具详细养护方案，严格按照12道养护工序进行专业养护工作。
                            </div>
                            <b></b>
                        </li>
                        <li class="">
                            <div class="Jicon fl"><em class="Jicon05"></em>货品质检<br/>消毒 调拨出厂</div>
                            <div class="JText fr">
                                <p>5、货品质检，消毒、调拨出厂</p>
                                货品养护后由专业质检人员进行严格质量检查，再次消毒、包装后由专业物流送出工厂
                            </div>
                            <b></b>
                        </li>
                        <li class="">
                            <div class="Jicon fl"><em class="Jicon06"></em>完成养护<br/>顾客取货</div>
                            <div class="JText fr">
                                <p>6、完成养护，顾客取货</p>
                                完成养护后，养护服务系统会自动发送物品养护完成的通知短信，顾客可选择到就近的养护中心提取自己的货品或者拨打养护中心服务电话选择快递送货上门（快递费用顾客自行支付）。
                            </div>
                            <b></b>
                        </li>
                    </ul>
                    <div class="border-dash"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 区域店推荐 -->
<div class = "out_box">
    <div class = "title">
        <h6>REGIONAC STRORE IMAGE DISPLAY<br>区域店推荐</h6>
    </div>
    <div class = "man_content main_content_js" style="padding-bottom:0;">
        <div class="pure-g store_js_1">
            <div class="pure-u-1-2"><img class="lazy" data-original="${mybaseurl}/res/images/v2/store_1_1.jpg"/><img class="lazy storeimg" data-original="${mybaseurl}/res/images/v2/store_1_2.jpg"/></div>
            <div class="pure-u-1-2 store-content">
                <p class="store_name">爱收宝网络科技-苏州甪直店</p>
                <p class="store_subname">你身边的回收专家</p>
                <p><span class="store_label">业务范围：</span><span class="store_ywfw">估价回收，寄卖，代售，护理，免费鉴定</span></p>
                <p class="store_hsdbb"><span class="store_label">回收的宝贝：</span><span class="store_hsdbb_content">黄金，珠宝，名包，名表，手机，数码，贵金属等</span></p>
                <p class="paddr"><span class="store_label">地址：</span><span class="store_addr">甪直镇晓市路62-5号</span></p>
                <p><span class="store_label">贵宾专线：</span><span class="store_phone">0512-65046817</span></p>
                <p><span class="store_label">营业时间：</span><span class="store_time">9:30 -- 21:30(节假日不休)</span></p>
            </div>
        </div>
        <div class="pure-g store_js_2">
            <div class="pure-u-1-2 store-content">
                <p class="store_name">爱收宝网络科技-苏州吴江店</p>
                <p class="store_subname">你身边的回收专家</p>
                <p><span class="store_label">业务范围：</span><span class="store_ywfw">估价回收，寄卖，代售，护理，免费鉴定</span></p>
                <p class="store_hsdbb"><span class="store_label">回收的宝贝：</span><span class="store_hsdbb_content">黄金，珠宝，名包，名表，手机，数码，贵金属等</span></p>
                <p class="paddr"><span class="store_label">地址：</span><span class="store_addr">吴江区康路步行街199号万亚购物中心一楼</span></p>
                <p><span class="store_label">贵宾专线：</span><span class="store_phone">0512-63108507</span></p>
                <p><span class="store_label">营业时间：</span><span class="store_time">9:30 -- 21:30(节假日不休)</span></p>
            </div>
            <div class="pure-u-1-2"><img class="lazy" data-original="${mybaseurl}/res/images/v2/store_2_1.jpg"/><img class="lazy storeimg" data-original="${mybaseurl}/res/images/v2/store_2_2.jpg"/></div>
        </div>
    </div>
</div>
<!-- 新闻 -->
<div class = "out_box">
    <div class = "title">
        <h6>LASTEST NEWS<br>最新资讯</h6>
    </div>
    <div class = "man_content main_content_js" style="padding-bottom:0;">
        <div class="pure-g">
            <div class="pure-u-3-5 hotnews">
                <p class="news_title">观前直营店开业啦</p>
                <p class="news_desc">热烈庆祝位于观前大井巷15号的爱收宝开业！爱收宝是一家回收、寄卖：黄金珠宝，名包名表，手机数码等互联网+回收O2O的公司！全国服务热线：400-086-1131。《爱收宝》打造二手名品交易第一平台！</p>
                <div class="newsmarquee">
                <ul class="newslist">
                    <li><a href="${mybaseurl}/news/1"><span>></span>3D硬金与千足金的区别</a></li>
                    <li><a href="${mybaseurl}/news/2"><span>></span>穿的好不如戴的对 想做职场白骨精你得来块表</a></li>
                    <li><a href="${mybaseurl}/news/3"><span>></span>金价收盘创逾一周新高 蓄势决战千三之巅</a></li>
                    <li><a href="${mybaseurl}/news/4"><span>></span>细节控戛纳红毯上的这些珠宝你看到了吗？</a></li>
                </ul>
                </div>
            </div>
            <div class="pure-u-2-5" style="text-align:right;"><img class="lazy" style="padding-right:60px;" data-original="${mybaseurl}/res/images/v2/news.jpg"/></div>
        </div>
    </div>
</div>
<!-- 实时指数 -->
<div class="mywrapper indexbg" style="clear: both;height: 320px;">
    <div class = "out_box">
        <div class = "title">
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
<script type="text/javascript" src="${baseurl}res/js/scroll.js"></script>
<script>
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
