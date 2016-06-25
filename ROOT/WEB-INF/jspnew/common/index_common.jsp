<%--
  User: donny
  Date: 6/2/16
  Time: 15:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="mywrapper indexbg" style="height:694px;clear:both;">
	<div class="out_box">
		<!-- 轻松估价 -->
		<div class="title">
			<h6>RECYCLING VALUATION<br>回收估价</h6>
		</div>
		<div class="man_content">			
			<!--新的主页回收模块-->
			<div class="reclaim-box">
				<div class="pure-g">
					<div class="pure-u-1-1" style="padding-left: 5px;">
						<div class="pure-u-1-4 img-box" style="position: relative;height:266px;width: 283px;line-height: 266px;">
							<a class="" style="display: block; position: absolute;" href="">名包回收</a>
							<a href="${mybaseurl}/category/08d2d4cbf3974d8i8d56b26ba29266aa/0"><img class="pure-img" style="position: absolute;" src="${mybaseurl}/res/images/new/category/newreclaim_03.png" /></a>
						</div>
						<div class="pure-u-1-4 img-box" style="position: relative;height:266px;width: 282px;line-height: 266px;">
							<a class="" style="display: block; position: absolute;" href="">钻石回收</a>
							<a href="${mybaseurl}/product/diamond"><img class="pure-img" style="position: absolute;" src="${mybaseurl}/res/images/new/category/newreclaim_05.png" /></a>
						</div>
						<div class="pure-u-1-4 img-box" style="position: relative;height:266px;width: 283px;line-height: 266px;">
							<a class="" style="display: block; position: absolute;" href="">黄金回收</a>
							<a href="${mybaseurl}/product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold"><img class="pure-img" style="position: absolute;" src="${mybaseurl}/res/images/new/category/newreclaim_07.png" /></a>
						</div>
						<div class="pure-u-1-4 img-box" style="position: relative;height:266px;width: 283px;line-height: 266px;">
							<a class="" style="display: block; position: absolute;" href="">手机/数码回收</a>
							<a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0"><img class="pure-img" style="position: absolute;" src="${mybaseurl}/res/images/new/category/newreclaim_09.png" /></a>
						</div>					
					</div>
					<div class="pure-u-1-3">						
						<div class="pure-u-1  img-box" style="position: relative;height:143px;width: 387px; line-height: 143px;">
							<a class="" style="display: block; position: absolute;" href="">铂金回收</a>
							<a href="${mybaseurl}/product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt"><img class="pure-img" style="position: absolute;" src="${mybaseurl}/res/images/new/category/reclaim_12.png" /></a>
						</div>
						<div class="pure-u-1  img-box" style="position: relative;height:139px;width: 387px; line-height: 139px;">
							<a class="" style="display: block; position: absolute;" href="">钯金回收</a>
							<a href="${mybaseurl}/product/094c2f5308514105a862c6299f9d320b?ptype=gjs&goldType=palau"><img class="pure-img" style="position: absolute;" src="${mybaseurl}/res/images/new/category/reclaim_20.png" /></a>
						</div>					
					</div>
					<div class="pure-u-1-3">
						<div class="pure-u-1 img-box"style="position: relative;height:301px;width: 386px;line-height: 301px;">
								<a class="" style="display: block; position: absolute;" href="">名表回收</a>
								<a href="${mybaseurl}/category/08d2d4cbff6j48f08d56b26ba29266aa/0"><img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/newreclaim_16.png"/></a>
						</div>							
					</div>
					<div class="pure-u-1-3">
						<div class="pure-u-1  img-box" style="position: relative;height:143px;width: 387px; line-height: 139px;margin-bottom: 7px;">
							<a class="" style="display: block; position: absolute;" href="">白银回收</a>
							<a href="${mybaseurl}/product/5f67c6baca4b4167a4b49b6df510a3f1?ptype=gjs&goldType=sliver"><img class="pure-img" style="position: absolute;" src="${mybaseurl}/res/images/new/category/reclaim_16.png" /></a>
						</div>
						<div class="pure-u-1  img-box" style="position: relative;height:143px;width: 388px; line-height: 143px;">
							<a class="" style="display: block; position: absolute;" href="">K金回收</a>
							<a href="${mybaseurl}/product/bcf8086e4f4647fabcfc3409430baa60?ptype=gjs&goldType=k"><img class="pure-img" style="position: absolute;" src="${mybaseurl}/res/images/new/category/reclaim_21.png" /></a>
						</div>
					</div>
				</div>

			</div>
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
		<h6>BOOKING<br>代售</h6>
		<!--<small><a href = "${mybaseurl}/consignment/">详情</a></small>-->
	</div>
	<div class="man_content main_content_js">
		<!--<div class="t_nav t_nav_js" align="center">
			<ul class="t_nav_right tac">
				<li class="active"><a href="${mybaseurl}/consignment/"><span>平台代售</span></a></li>
			</ul>
		</div>-->
		<div class="t_content">
			<a href="${mybaseurl}/consignment/"><img src="${mybaseurl}/res/images/new/consignment/dspic_03.jpg" alt="" /></a>
			<!--<ul class="t_c_left" style="padding-left:20px;">
				<li class="active">
					<div class="pure-g mdjs">
						<div class="pure-u-1-2" style="width:694px;"><img class="lazy liu4" data-original="${mybaseurl}/res/images/v2/liu4.gif" /></div>
						<div class="pure-u-1-2" style="width:464px;">
							<div class="jsform">
								<form action="${baseurl}webintention/create" method="post" class="pure-form pure-form-stacked" name="jsform" id="jsform">
									<input type="hidden" name="type" value="1" />
									<fieldset>
										<legend>代售商品<br><small>请在这里填写相关信息</small></legend>
										<div class="pure-g">
											<div class="pure-u-1-2">
												<label for="goodsType">商品类别</label>
												<select id="goodsType" name="productType" class="pure-u-23-24" style="height: 35px;">
                                                    <option value="名包">名包</option>
                                                    <option value="名表">名表</option>
                                                    <option value="珠宝">珠宝</option>
                                                    <option value="手机">手机</option>
                                                    <option value="玉石">玉石</option>
                                                    <option value="其它">其它</option>
                                                </select>
											</div>

											<div class="pure-u-1-2">
												<label for="productBrand">品牌</label>
												<input id="productBrand" name="productBrand" class="pure-u-24-24" type="text">
											</div>

											<div class="pure-u-1-1">
												<label for="goodsName">商品名称</label>
												<input id="goodsName" name="productName" class="pure-u-24-24" type="text" maxlength="64" required>
											</div>
											<div class="pure-u-1-2">
												<label for="contactName">姓名</label>
												<input id="contactName" name="username" class="pure-u-23-24" type="text" maxlength="10" required>
											</div>

											<div class="pure-u-1-2">
												<label for="contactPhone">手机号</label>
												<input id="contactPhone" name="phone" class="pure-u-24-24" type="text" required>
											</div>
											<div class="pure-u-1-1">
												<label for="expectPrice">期望价格</label>
												<input id="expectPrice" name="productPrice" class="pure-u-24-24" type="text" maxlength="8" required>
											</div>
										</div>
										<button type="submit" id="save" class="pure-u-1-1 pure-button pure-button-primary mybutton">提交</button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
				</li>
			</ul> -->
		</div>
	</div>
</div>