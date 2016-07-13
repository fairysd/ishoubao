<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit"/>
    <meta content="zh-cn" http-equiv="content-language"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <title>爱收宝寄卖</title>
    <style>

        .topimg{text-align: center;}
        .footerimg{text-align: center;background-color: #FAFAFA;}
        .jmcategory ul{display: inline;}
        .jmcategory ul li{float:left;height:100px;line-height:100px;background-color: #e1882a;color:#fff;font-size:18px;width:200px;margin-right: 20px;text-align:center;margin-top:100px;-moz-border-radius: 15px; -webkit-border-radius: 15px; border-radius:15px;}
        .jmcategory ul li p{line-height:30px;padding-top:15px;}
        .jmcategory ul li p:first-child{font-weight: bold;font-size:24px;}
        .jmcategory ul a:hover li{background-color: #E8B07D;}        
			* {
				margin: 0;
				padding: 0;
				list-style-type: none;
			}
			
			body {
				margin: 0;
				padding: 0;
			}
			
			img {
				border: none;
			}
			/* dHomePageCarousel */
			
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
			.topimg{
				margin-bottom: 20px
			}
			.consignment{
				background-color: #efeff4;
				font-size: 24px;
				padding: 6px 0;
			}
			.consignment h2{
				border-left: #007af5 solid 3px;				
			}
    </style>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
	<%@ include file="../common/otherHeader.jsp"%>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="pure-g topimg">
    <div class="pure-u-1-1">
        <img style="width:100%" src="${mybaseurl}/res/images/v2/jm_top.jpg" />
    </div>
</div>
<div class="out_box" style="margin-bottom: 20px;" >
	<div class="consignment">
		<h2>TYPES OF CONSIGMENT</h2>
		<h2>寄卖种类</h2>
	</div>
<div class="pure-g jmcategory">
    <!--<div class="pure-u-1-3">
        <img src="${mybaseurl}/res/images/v2/jm_left.jpg"/>
    </div>
    <div class="pure-u-2-3">
        <ul>
            <a href="${mybaseurl}/product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold"><li><p>黄金/珠宝寄卖</p><p>专业寄卖,值得信赖</p></li></a>
            <a href="${mybaseurl}/product/diamond"><li><p>钻石寄卖</p><p>专业的团队鉴定人员</p></li></a>
            <a href="${mybaseurl}/category/08d2d4cbf3974d8i8d56b26ba29266aa/0"><li><p>名包寄卖</p><p>保证客户利益失效执行</p></li></a>
        </ul>
        <ul>
            <a href="${mybaseurl}/category/08d2d4cbff6j48f08d56b26ba29266aa/0"><li style="margin-left: 100px;"><p>名表寄卖</p><p>资深的推广运营团队</p></li></a>
            <a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0"><li><p>手机/数码寄卖</p><p>线上线下整合营销推广</p></li></a>
            <a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0"><li><p>贵金属寄卖</p><p>量身定制品牌营销方案</p></li></a>
        </ul>
    </div>-->
    <div id="dHomePageCarousel">
			<div id=dLocalHomesCarousel>
				<img id="imgSmallLeft" class="imgBorder" style="height:118px;width:140px;left:65px;bottom:20px;" onclick="clearInterval(autoplay);moveD('l');" />
				<img id="imgMiddleLeft" class="imgBorder" style="height:160px;width:192px;left:217px;bottom:20px;" onclick="clearInterval(autoplay);move('l');" />
				<img id="imgBig" class="imgBorder" style="height:236px;width:290px;left:436px;bottom:5px;" onclick="openNewPage();" />
				<img id="imgMiddleRight" class="imgBorder" style="height:160px;width:192px;left:757px;bottom:20px;" onclick="clearInterval(autoplay);move('r');" />
				<img id="imgSmallRight" class="imgBorder" style="width:140px;height:118px;left:960px;bottom:20px;" onclick="clearInterval(autoplay);moveD('r');" />
				<img id="imgHidden" class="imgBorder" style="width:10px;height:10px;left:-90px;bottom:20px;" />
				<img id="imgHidden1" class="imgBorder" style="width:10px;height:10px;left:-90px;bottom:20px;" />
				<img id="imgHidden2" class="imgBorder" style="width:10px;height:10px;left:-90px;bottom:20px;" />
				<img id="imgHidden3" class="imgBorder" style="width:10px;height:10px;left:-90px;bottom:20px;" />
			</div>
			<div id=divCarouselInfo class="divCarouselInfo">
				<div class=divCarouselInfoLt>
					<a id="btnCarouselLt" class="btnCarouselLT" style="left:60px;" onclick="clearInterval(autoplay);move('l');"></a>
					<table style="margin:0 auto;">
						<tbody>
							<tr>
								<td height="28" align=center>
									<a id="adname" class="name" href="#"></a>&nbsp;&nbsp;&nbsp;&nbsp;贵宾热线：<span id="adtel" class="tel"></span></td>
							</tr>
							<tr style="display: none;">
								<td align=center><span id="adaddr"></span>&nbsp;&nbsp;&nbsp;&nbsp;保障：<span id="adprice" class="org"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span id="adtime" class="org"></span></td>
									</tr>							
						</tbody>
					</table>
					<a id="btnCarouselRt" class="btnCarouselRT" style="right: 86px;" onclick="clearInterval(autoplay);move('r');"></a>
				</div>
			</div>
		</div>
    
</div>
</div>
<div class="pure-g footerimg">
    <div class="pure-u-1-1">
        <img class="lazy" data-original="${mybaseurl}/res/images/v2/jm_footer.jpg" width: 1200;/>
    </div>
</div>

<%@ include file="../common/footer.jsp" %>
<script src="${baseurl}res/js/jquery.lazyload.min.js"></script>
<script src="${baseurl}res/js/action.js"></script>
<script type="text/javascript">
    $(function() {
        $("img.lazy").lazyload({skip_invisible: false, effect: "fadeIn"});
    });
</script>
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
				adaddr.innerText = ad[2].address;
				adprice.innerText = ad[2].price;
				adtime.innerText = ad[2].time;
			}
		</script>
</body>
</html>