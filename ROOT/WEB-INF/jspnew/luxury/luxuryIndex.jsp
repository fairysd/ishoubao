<%--
  User: donny
  Date: 2/25/16
  Time: 12:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
		<meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
		<meta name="renderer" content="webkit" />
		<meta content="zh-cn" http-equiv="content-language" />
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<title>爱收宝护理</title>
        <link type="text/css" rel="stylesheet" href="${baseurl}res/css/idangerous.swiper.css">
		<link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
		<style>
			.zly_top {
				width: 100%;
				height: 30px;
				background-color: #000000;
			}
			
			.zly_topcon {
				width: 1200px;
				margin: auto
			}
			
			.zly_topcon ul li {
				color: #FFFFFF;
				float: left;
				list-style: none;
				font-size: 12px;
				line-height: 30px;
			}
			
			.zly_topcon ul li a {
				color: #FFFFFF;
				text-decoration: none;
				font-size: 14px;
			}
			
			.zly_floor1 {
				position: relative;
				width: 100%;
				height: 500px;
				/*left: -50%;*/
				overflow: hidden;
			}
			.zly_floor1  img{
					width: 1920px;
					position: relative;
					left: 50%;
				  margin-left: -960px;
				  height: 500px;
				  overflow: hidden;
			}
			
			.zly_f1co {
				width: 100%;
				height: 5px;
				background-color: #D4D4D4;
			}
			
			.zly_floor2 {
				width: 100%;
				background-color: #F6F6F6;
				overflow: hidden;
				border-bottom: 1px solid #E8E6E7;
			}
			
			.zly_f2co {
				width: 1200px;
				margin: auto;
			}
			
			.zly_f2co1,
			.zly_f2co2,
			.zly_f2co3 {
				width: 310px;
				height: 370px;
				float: left;
				text-align: center;
				background-color: #FFFFFF;
				margin-bottom: 50px;
				color: #9E9E9E;
			}
			
			.zly_f2co2 {
				margin-left: 135px;
			}
			
			.zly_f2co3 {
				margin-left: 135px;
			}
			
			.zly_floor3 {
				width: 100%;
				background-color: #F6F6F6;
				overflow: hidden;
				margin-top: 1px;
				padding-bottom: 20px;
			}
			
			.zly_f3co {
				width: 1200px;
				margin: auto;
			}
			
			.zly_f3co img {
				margin-top: 50px;
				margin-bottom: 50px;
				margin-left: 50px;
			}
			
			.pro-slide {
				position: relative;
				height: 140px;
				width: 1107px;
				margin-left: 47px;
			}
			
			.border-dash {
				height: 1px;
				width: 98%;
				border-bottom: 1px dashed #f3d2a6;
				position: absolute;
				top: 72px;
				left: 0;
				z-index: 0;
			}
			
			.pro-slide ul {
				padding-top: 30px;
				margin-left: -71px;
				position: absolute;
				z-index: 2;
				width: 1200px;
			}
			
			.pro-slide ul li {
				float: left;
				width: 71px;
				height: 72px;
				margin-left: 66px;
				position: relative;
			}
			
			.pro-slide ul li.act {
				margin-right: -10px;
			}
			
			.pro-slide ul li b {
				position: absolute;
				left: -29px;
				top: 37px;
				z-index: 5;
				display: inline-block;
				width: 10px;
				height: 11px;
				background:url(${mybaseurl}/res/images/v2/yh_tit.png) no-repeat;
				background-position: 0 -236px;
			}
			
			.pro-slide .JText {
				width: 297px;
				border: 1px solid #f3941f;
				border-radius: 2px;
				background-color: #fff;
				padding: 10px;
				line-height: 16px;
				color: #666;
				display: none;
				overflow: hidden;
				position: absolute;
				right: 0;
				top: 8px;
				font-size: 12px;
			}
			
			.pro-slide .JText:first-child,
			.pro-slide .JText:last-child {
				top: 3px;
			}
			
			.skSmallStyle .JText {
				width: 216px;
			}
			
			.pro-slide ul li.act .JText {
				/* display:block*/
			}
			
			.Jicon {
				width: 92px;
				height: 130px;
				text-align: center;
				font-family: "微软雅黑";
				margin: 6px 0 0;
				color: #666;
				font-weight: bold;
			}
			
			.Jicon em {
				width: 71px;
				height: 72px;
				margin-bottom: 1px;
				display: inline-block;
				background: url(${mybaseurl}/res/images/v2/yh_tit.png) no-repeat;
				margin-right: 8px;
			}
			
			.Jicon em.Jicon01 {
				background-position: 0 -72px;
			}
			
			.Jicon em.Jicon02 {
				background-position: -72px -72px;
			}
			
			.Jicon em.Jicon03 {
				background-position: -144px -72px;
			}
			
			.Jicon em.Jicon04 {
				background-position: -0 -144px;
			}
			
			.Jicon em.Jicon05 {
				background-position: -72px -144px;
			}
			
			.Jicon em.Jicon06 {
				background-position: -144px -144px;
			}
			
			.clearfix:after {
				visibility: hidden;
				display: block;
				font-size: 0;
				content: " ";
				clear: both;
				height: 0
			}
			
			* html .clearfix {
				zoom: 1
			}
			
			*:first-child+html .clearfix {
				zoom: 1
			}
            .zly_top{width: 100%;height:30px; background-color: #000000;}
        .zly_topcon {width:1200px; margin:auto}
        .zly_topcon ul li{color:#FFFFFF;float: left;list-style:none;font-size: 12px;line-height: 30px;}
        .zly_topcon ul li a{color:#FFFFFF;text-decoration:none;}
        .zly_total{width:100%; background-color: #F6F6F6;overflow: hidden;}
        .zly_content{width: 1200px;margin:auto;}
        .zly_floor1{width:100%;margin:auto;}
        .zly_f1_left{width:680px;float:left;margin-top: 40px;}
        .zly_f1_right{width:480px;float:left;}
        .zly_f1_left p{margin-top: 5px;margin-bottom: 5px;line-height: 25px;font-size:14px;}
        .zly_f1_left h3{
                margin: 21px 0;
                text-align: center;
                font-size: 16px;
                color: #f23d1e;
        }
        .zly_f1_left h3 span{
            font-size: 26px;
        }
        .zly_f1_img{width:416px; background-color: #FFFFFF;text-align: center;margin-left: 40px;margin-top: 90px;margin-bottom: 60px; border: 1px solid #E0E0E0;}
        .zly_f1_img img{width:400px;margin-top: 8px;margin-bottom: 4px;}
        .zly_line1{width:100%;height:1px;background-color: #DFDFDF;}
        .zly_line2{width:100%;height:1px;background-color: #FFFFFF;}
        .zly_floor2{width:100%;margin:auto;}
        .zly_f2_1{width:33.3%;float:left;}
        .zly_f2_1{color:#e1882a;}
        .zly_f2_1 ul{padding-left: 15px;}
        .zly_f2_1 ul li{font-size: 12px;}
        .zly_f2_1{margin-bottom: 50px;}
        .zly_lifirst{color:#666666;font-size: 12px;margin-top: 5px;margin-bottom: 5px;margin-left: 5px;}
        .zly_f3_left{width:440px;float:left;}
        .zly_f3_right{width:440px;float:left; margin-left: 200px;}
        .zly_f3_right img{margin-bottom: 60px;}
        .zly_f3_left p{font-size: 12px;color:#666666;}
        .zly_f3_left h3 span, .zly_f3_right h3 span{
            display: inline-block;
            width: 50%;
            text-align: center;
            color: #999;

        }
        .zly_f3_right p{font-size: 12px;color:#666666;}
        .zly_f4_left{width:500px;float:left;}
        .zly_f4_right{width:520px;float:left;margin-top: 20px;margin-left: 100px;}
        .zly_f4{float:left; width:200px;border-left: 1px solid #999999;padding-left: 30px;}
        .zly_f5{float:left; width:200px;border-left: 1px solid #999999;padding-left: 30px;margin-top: 40px;}
        .zly_f4 p,.zly_f5 p{margin-top: 5px;margin-bottom: 5px;font-size: 12px;color:#666666;}
        .swiper-bag{
            height: 210px;
            overflow: hidden;
        }
        .swiper-watch{
            height: 210px;
            overflow: hidden;
        }
		</style>
		<%@ include file="../common/otherHeader.jsp"%>
	</head>
	<body>
		<%@ include file="../common/header.jsp"%>
		<div class="zly_top">
			<div class="zly_topcon">
				<ul>
					<li><a style="color:#e1882a;font-size:14px;">奢侈品养护频道</a></li>
					<li style="margin-left:10px;"><a style="color:#e1882a;">Luxury maintenance</a></li>
					<li style="margin-left:450px;"><a href="${baseurl}luxury">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;养护首页</a></li>
					<li style="margin-left:15px;"><a href="#about">丨&nbsp;&nbsp;&nbsp;&nbsp;爱收宝奢护</a></li>
					<li style="margin-left:15px;"><a href="#service">丨&nbsp;&nbsp;&nbsp;&nbsp;我要养护</a></li>
					<li style="margin-left:15px;"><a href="#maintenance">丨&nbsp;&nbsp;&nbsp;&nbsp;养护流程</a></li>
					<li style="margin-left:15px;"><a href="#lxwm">丨&nbsp;&nbsp;&nbsp;&nbsp;联系我们</a></li>
				</ul>
			</div>
		</div>
		<div class="zly_floor1">
			<img src="${mybaseurl}/res/images/v2/hlTop.jpg" alt="">
		</div>
		<div class="zly_floor2">
			<div class="zly_f2co">
				<p style="color:#717171;font-size:20px;margin-top:50px;margin-bottom: 45px;">
					<a name="wyyh"></a>我要养护&nbsp;/&nbsp;CONSERVE<span style="float:right;font-size:12px;"><a href="" style="color:#717171;text-decoration:none;">更多套餐>></a></span></p>
				<div class="zly_f2co1">
					<img src="${baseurl}res/images/new/luxury/lux_2.png" alt="" style="margin-top:20px;">
					<p style="margin-right:65px;margin-top:25px;">奢侈品皮具基础清洗养护套餐</p>
					<p style="margin-top:10px;"><span style="float: left;margin-left:30px;">￥280</span><span style="float: right;margin-right:35px;"><s>￥600</s></span></p>
				</div>
				<div class="zly_f2co2">
					<img src="${baseurl}res/images/new/luxury/lux_3.png" alt="" style="margin-top:20px;">
					<p style="margin-right:90px;margin-top:25px;">&nbsp;珠宝养护&nbsp;专业珠宝清洗</p>
					<p style="margin-top:10px;"><span style="float: left;margin-left:30px;">￥125</span><span style="float: right;margin-right:35px;"><s>￥325</s></span></p>
				</div>
				<div class="zly_f2co3">
					<img src="${baseurl}res/images/new/luxury/lux_4.png" alt="" style="margin-top:20px;">
					<p style="margin-right:50px;margin-top:25px;">SECOO&nbsp;腕表打磨翻新服务&nbsp;钢款</p>
					<p style="margin-top:10px;"><span style="float: left;margin-left:30px;">￥296</span><span style="float: right;margin-right:35px;"><s>￥700</s></span></p>
				</div>
			</div>
		</div>
        <a name="about"></a>
        <div class="zly_total">
    <div class="zly_content">
        <div class="zly_floor3" id="asbsh">
            <div class="zly_f1_left">
                <p><span style="font-size:43px;color:#f19108;">ABOUT</span><span style="color:#f19108;font-size:21px;margin-left:20px;">爱收宝护理</span></p>
                <p style="font-weight:bold;margin-top:20px;">相信每一件奢侈品都是有灵魂的，我们所做的就是悉心呵护，让美延续!</p>
                <p style="color:#999999;">爱收宝奢护是爱收宝网的奢侈品养护品牌，致力于高档箱包、高端腕表、珠宝玉石、高档配饰等奢侈品的修复养护工作。2015
                    年建成具备多元化、高规格、专业化服务于一体的奢侈品养护工厂，位于苏州姑苏区园林路，占地2000平米，可为100多个品牌
                    做全套基础及深度养护服务，其高、精、尖的技术达国际专业水准。</p>
                <p style="font-weight:bold;margin-top:20px;">品牌理念</p>
                <p style="color:#999999;">爱收宝奢护以提升消费者售后服务意识、树立奢侈品养护市场规范、统一服务标准、确保消费者权益为企业社会责任；以强大的
                    技术团队为核心、以高精尖专业设备为保障、以专业真挚的态度为每一位高端消费者提供服务。</p>
                    <h3>如您需要护理服务，请先咨询客服 <span>&nbsp;400-086-1131</span></h3>
            </div>

            <div class="zly_f1_right">
                <div class="zly_f1_img">
                    <img src="${mybaseurl}/res/images/new/luxury/Luxury_1.png" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="zly_line1"></div>
<div class="zly_line2"></div>
<a name="service"></a>
<div class="zly_total">
    <div class="zly_content">
        <div class="zly_floor4"  id="fwfw">
            <p style="margin-top:60px;margin-bottom:20px;"><span style="font-size:43px;color:#f19108;">SERVICE</span><span
                    style="color:#f19108;font-size:21px;margin-left:20px;">服务范围</span></p>
            <div class="zly_f2_1">
                <p class="zly_lifirst">名表维修</p>
                <ul>
                    <li><span style="color:#666666;">测试走时精度</span></li>
                    <li><span style="color:#666666;">调节表带、更换电池</span></li>
                    <li><span style="color:#666666;">外观清洗、打磨修复</span></li>
                </ul>
                <img src="${baseurl}res/images/new/luxury/Luxury_2.png" alt="" style="margin-top:15px;">
            </div>
            <div class="zly_f2_1">
                <p class="zly_lifirst">皮具养护</p>
                <ul>
                    <li><span style="color:#666666;">真皮箱包、皮革服装洗护、修复及保养</span></li>
                    <li><span style="color:#666666;">真皮沙发及高级轿车真皮座垫清洗养护</span></li>
                    <li><span style="color:#666666;">名贵鞋履的维护与养护</span></li>
                    <li><span style="color:#666666;">游艇、私人飞机真皮内饰养护</span></li>
                </ul>
                <img src="${baseurl}res/images/new/luxury/Luxury_3.png" alt="">
            </div>
            <div class="zly_f2_1">
                <p class="zly_lifirst">珠宝养护</p>
                <ul>
                    <li><span style="color:#666666;">专业珠宝清洗</span></li>
                    <li><span style="color:#666666;">珠宝配件镶补</span></li>
                    <li><span style="color:#666666;">断链修补</span></li>
                </ul>
                <img src="${baseurl}res/images/new/luxury/Luxury_4.png" alt="" style="margin-top:15px;">
            </div>
        </div>
    </div>
</div>
<div class="zly_line1"></div>
<div class="zly_line2"></div>

<div class="zly_total">
    <div class="zly_content">
        <div class="zly_floor5" id="jdal">
            <p style="margin-top:60px;margin-bottom:20px;"><span style="font-size:43px;color:#f19108;">CASE</span><span
                    style="color:#f19108;font-size:21px;margin-left:20px;">经典案例</span></p>
            <div class="zly_f3_left">
                <p style="color:#666666;font-weight:bold;margin-bottom:5px;">皮具养护</p>
                <p style="margin-bottom:30px; color#999;">皮具养护事业部。采用专业测色、调色仪、蒸汽去污机、日本进口手动缝制工具等先进设备，解决深层清洁、喷色且保留原先等多种难度大的问题，达到“还原性”养护效果</p>
                <div class="swiper-bag">
                  <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="${baseurl}res/images/new/luxury/0706 (1).jpg" alt=""></div>     
                    <div class="swiper-slide"><img src="${baseurl}res/images/new/luxury/0706 (2).jpg" alt=""></div> 
                    <div class="swiper-slide"><img src="${baseurl}res/images/new/luxury/0706 (3).jpg" alt=""></div> 
                    <div class="swiper-slide"><img src="${baseurl}res/images/new/luxury/0706 (4).jpg" alt=""></div> 
                    <div class="swiper-slide"><img src="${baseurl}res/images/new/luxury/0706 (5).jpg" alt=""></div>                
                  </div>
                  <div class="pagination"></div>
                </div>
                <h3><span>养护前</span><span>养护后</span></h3>              
            </div>
            <div class="zly_f3_right">
                <p style="color:#666666;font-weight:bold;margin-bottom:5px;">名表维护</p>
                <p style="margin-bottom:30px;color#999;">名表维修事业部，引进瑞士、日本、德国等高端精密仪器（包括潜水表测试仪、防磁实验仪、防震实验仪、pc500校表仪等进口设备），全封闭无尘恒温恒湿车间，为高端腕表提供完全或者专项维修服务。</p>
                <div class="swiper-watch">
                  <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="${baseurl}res/images/new/luxury/0707 (1).jpg" alt=""></div>     
                    <div class="swiper-slide"><img src="${baseurl}res/images/new/luxury/0707 (2).jpg" alt=""></div> 
                    <div class="swiper-slide"><img src="${baseurl}res/images/new/luxury/0707 (3).jpg" alt=""></div> 
                    <div class="swiper-slide"><img src="${baseurl}res/images/new/luxury/0707 (4).jpg" alt=""></div> 
                    <div class="swiper-slide"><img src="${baseurl}res/images/new/luxury/0707 (5).jpg" alt=""></div> 
                  </div>
                  <div class="pagination"></div>
                </div> 
                <h3><span>养护前</span><span>养护后</span></h3>               
            </div>
        </div>
    </div>
</div>
<a name="maintenance"></a>
		<div class="zly_floor3">
			<div class="zly_f3co">
				<p style="color:#717171;font-size:20px;margin-top:50px;">
					<a name="yhlc"></a>
					</a>养护流程 / MAINTENANCE PROCESS</p>
				<div class="pro-slide">
					<ul class="clearfix">
						<li class="" style="">
							<div class="Jicon fl">
								<em class="Jicon01"></em> 前台接收
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
							<div class="Jicon fl"><em class="Jicon05"></em>质检消毒</div>
							<div class="JText fr">
								<p>5、质检消毒</p>
								货品养护后由专业质检人员进行严格质量检查，再次消毒、包装后由专业物流送出工厂
							</div>
							<b></b>
						</li>
						<li class="">
							<div class="Jicon fl"><em class="Jicon06"></em>顾客取货</div>
							<div class="JText fr">
								<p>6、顾客取货</p>
								完成养护后，养护服务系统会自动发送物品养护完成的通知短信，顾客可选择到就近的养护中心提取自己的货品或者拨打养护中心服务电话选择快递送货上门（快递费用顾客自行支付）。
							</div>
							<b></b>
						</li>
					</ul>
					<div class="border-dash"></div>
				</div>
			</div>
		</div>
		<a name="lxwm"></a>
		<%@ include file="../common/footer.jsp"%>
        <script type="text/javascript" src="${baseurl}res/js/idangerous.swiper.js"></script>
		<script>
        var bagSwiper = new Swiper('.swiper-bag',{
            pagination: '.pagination',
            autoplay:2000,
            loop:true,
            speed:1000,
            grabCursor: true,
            autoplayDisableOnInteraction : false,
            paginationClickable: true
          })
        var watchSwiper = new Swiper('.swiper-watch',{
            pagination: '.pagination',
            autoplay:2000,
            loop:true,
            speed:1000,
            grabCursor: true,
            autoplayDisableOnInteraction : false,
            paginationClickable: true
          })
			$(function() {
				$(".pro-slide li").hover(function() {
					var _th = $(this),
						index = $(".pro-slide li").index(this);
					if (!_th.hasClass('act')) {
						_th.addClass("act").siblings().removeClass('act');
						$(".pro-slide li").css({
							width: '71px'
						}).find('.JText').hide();
						$(".pro-slide li").css('overflow', 'visible');
						if ($('body').hasClass('skSmallStyle')) {
							_th.css({
								width: '320px'
							}).find('.JText').stop().fadeIn();
						} else {
							_th.css({
								width: '404px'
							}).find('.JText').stop().fadeIn();
						}
					}
				}).eq(0).trigger('mouseover');
			})
		</script>
	</body>

</html>