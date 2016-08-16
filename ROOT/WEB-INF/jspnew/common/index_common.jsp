<%--
  User: donny
  Date: 6/2/16
  Time: 15:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="mywrapper indexbg" style="height:390px;clear:both;">
	<div class="out_box">
		<!-- 轻松估价 -->
		<div class="title">
			<h6>RECYCLING VALUATION<br>回收估价</h6>
		</div>
		<div class="man_content">			
			<!--新的主页回收模块-->
			<ul class="huishou-block">
				<li><div class="texiao-box">
                    <div class="mask"></div>
                    <img class="main-img" src="${mybaseurl}/res/images/new/index/huishou_03.jpg" alt="">
                    <a class="toggle-click" href=""><img src="${mybaseurl}/res/images/new/index/fuhao_06.png" alt=""></a>
                    </div>
                    <p class="class-title">贵金属回收</br><span>高价变现</span></p>
                </li>
				<li><div class="texiao-box">
                    <div class="mask"></div>
                    <img class="main-img" src="${mybaseurl}/res/images/new/index/huishou_05.jpg" alt="">
                    <a href="${mybaseurl}/product/diamond"><img src="${mybaseurl}/res/images/new/index/fuhao_06.png" alt=""></a>
                    </div>
                    <p class="class-title">钻石回收</br><span>专业质检</span></p>
                </li>
				<li><div class="texiao-box">
                    <div class="mask"></div>
                    <img class="main-img" src="${mybaseurl}/res/images/new/index/huishou_07.jpg" alt="">
                    <a href="${mybaseurl}/category/08d2d4cbff6j48f08d56b26ba29266aa/0"><img src="${mybaseurl}/res/images/new/index/fuhao_06.png" alt=""></a>
                    </div>
                    <p class="class-title">名表回收</br><span>让您的时间继续</span></p>
                </li>
				<li><div class="texiao-box">
                    <div class="mask"></div>
                    <img class="main-img" src="${mybaseurl}/res/images/new/index/huishou_09.jpg" alt="">
                   <a href="${mybaseurl}/category/08d2d4cbf3974d8i8d56b26ba29266aa/0"><img src="${mybaseurl}/res/images/new/index/fuhao_06.png" alt=""></a>
                    </div>
                    <p class="class-title">名包回收</br><span>闲置换新</span></p>
                </li>
				<li class="last-li"><div class="texiao-box">
                    <div class="mask"></div>
                    <img class="main-img" src="${mybaseurl}/res/images/new/index/huishou_11.jpg" alt="">
                   <a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0"><img src="${mybaseurl}/res/images/new/index/fuhao_06.png" alt=""></a>
                    </div>
                    <p class="class-title">手机数码回收</br><span>乐享低碳</span></p>
                </li>
			</ul>
            <ul class="noble-metal">
                <li><a href="${mybaseurl}/product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold"><img src="${mybaseurl}/res/images/new/index/metal_25.png" alt=""><p>黄金回收</p></a></li>
                <li><a href="${mybaseurl}/product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt"><img src="${mybaseurl}/res/images/new/index/metal_26.png" alt=""><p>铂金回收</p></a></li>
                <li><a href="${mybaseurl}/product/094c2f5308514105a862c6299f9d320b?ptype=gjs&goldType=palau"><img src="${mybaseurl}/res/images/new/index/metal_27.png" alt=""><p>钯金回收</p></a></li>
                <li><a href="${mybaseurl}/product/5f67c6baca4b4167a4b49b6df510a3f1?ptype=gjs&goldType=sliver"><img src="${mybaseurl}/res/images/new/index/metal_28.png" alt=""><p>白银回收</p></a></li>
                <li><a href="${mybaseurl}/product/bcf8086e4f4647fabcfc3409430baa60?ptype=gjs&goldType=k"><img src="${mybaseurl}/res/images/new/index/metal_29.png" alt=""><p>K金回收</p></a></li>
            </ul>
		</div>
	</div>
</div>


<!-- 寄卖 -->
<div class="out_box">
	<div class="title">
		<h6>CONSIGNMENT<br>寄卖</h6>
		<small><a href = "${mybaseurl}/mortgage/">详情</a></small>
	</div>
	<div class="man_content main_content_js" style="padding-bottom:0;">
		<div class="pure-g">
			<div class="pure-u-1-1" style="padding-top: 40px;background-color:#EFEFF5;">
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
	</div>
</div>
<!-- 代售 -->
<div class="out_box">
	<div class="title">
		<h6>BOOKING<br>代售<p style="text-align:right; display: inline-block; float: right;font-style:normal;font-family:微软雅黑;"><span style="font-size:18px;color:#323232;font-style:normal;font-family:微软雅黑;" class="vip">苏州服务热线:</span><span style="font-size:18px;color:#323232;" class = "red1">189-5113-9999</span></p></h6>		
	</div>
	<div class="man_content main_content_js">

		</div>-->
		<div class="t_content">
			<a href="${mybaseurl}/consignment/"><img src="${mybaseurl}/res/images/new/consignment/dspic_03.jpg" alt="" /></a>

		</div>
	</div>
</div>