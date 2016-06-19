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
    <meta name="description" content=""/>
    <title>爱收宝回收</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    
    <style type="text/css">
    	.myhs{background-color: #FAFAFA;padding:30px 0;}
        .myhs ul li{margin:0;padding:0;list-style-type:none;line-height: 0;}
        .myhs ul li img:hover {
            -webkit-transform: scale(1.05);
            -ms-transform: scale(1.05);
            transform: scale(1.05);
            zoom: 1.05;
        }
			.container-reclaim *{
				text-decoration: none;
				color: #ffffff;
				font-size: 30px;
				font-family: "微软雅黑";	
			}
			.body-box{
				background-color: #fafafa;
				padding: 105px 0;
			}
			.img-box{
				border: #e9b17e 4px solid;
				margin-bottom: 10px;
			}
			.container{
				width: 1200px;
				margin:0  auto;	
			}
			.reclaim-box a{
				width: 100%;
				height: 100%;
				text-align: center;	
				background-color: rgb(148,202,238);
			}
			.reclaim-box img:hover{
				opacity: 0.15;
			}
			.img-box-static img:hover{
				opacity: 1;
			}
			.reclaim-box{
				margin-bottom: 45px;
			}

		</style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="body-box">			
		  <div class="container container-reclaim">
			<div class="reclaim-box">
				<div class="pure-g">
					<div class="pure-u-1-3">						
							<div class="pure-u-1 img-box"style="position: relative;height:287px;width: 387px;line-height: 287px;">
								<a class="" style="display: block; position: absolute;" href="">黄金/珠宝回收</a>
								<a href="${mybaseurl}/product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold"><img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/reclaim_03.jpg"/></a>
							</div>	
							<div class="pure-u-1 img-box"style="position: relative;height:144px;width: 387px; line-height: 144px;">
								<a class="" style="display: block; position: absolute;" href="">铂金回收</a>
								<a href="${mybaseurl}/product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt"><img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/reclaim_12.jpg"/></a>
							</div>							
							<div class="pure-u-1 img-box"style="position: relative;height:144px;width: 387px; line-height: 144px;">
								<a class="" style="display: block; position: absolute;" href="">钯金回收</a>
								<a href="${mybaseurl}/product/094c2f5308514105a862c6299f9d320b?ptype=gjs&goldType=palau"><img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/reclaim_20.jpg"/></a>
							</div>
							<div class="pure-u-1 img-box"style="position: relative;height:287px;width: 387px; line-height: 287px;">
								<a class="" style="display: block; position: absolute;" href="">名表回收</a>
								<a href="${mybaseurl}/category/08d2d4cbff6j48f08d56b26ba29266aa/0"><img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/reclaim_25.jpg"/></a>
							</div>
					</div>
					<div class="pure-u-1-3">
						<div class="pure-u-1 img-box"style="position: relative;height:287px;width: 387px;line-height: 287px;">
								<a class="" style="display: block; position: absolute;" href="">钻石回收</a>
								<a href="${mybaseurl}/product/diamond"><img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/reclaim_05.jpg"/></a>
						</div>	
						<div class="pure-u-1 img-box img-box-static"style="position: relative;height:611px;width: 387px; line-height: 611px;">								
								<img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/reclaim_14.jpg"/>
						</div>
					</div>
					<div class="pure-u-1-3">
						<div class="pure-u-1 img-box"style="position: relative;height:287px;width: 389px;line-height: 287px;">
								<a class="" style="display: block; position: absolute;" href="">名包回收</a>
								<a href="${mybaseurl}/category/08d2d4cbf3974d8i8d56b26ba29266aa/0"><img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/reclaim_07.jpg"/></a>
							</div>	
							<div class="pure-u-1 img-box"style="position: relative;height:144px;width: 389px; line-height: 144px;">
								<a class="" style="display: block; position: absolute;" href="">白银回收</a>
								<a href="${mybaseurl}/product/5f67c6baca4b4167a4b49b6df510a3f1?ptype=gjs&goldType=sliver"><img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/reclaim_16.jpg"/></a>
							</div>							
							<div class="pure-u-1 img-box"style="position: relative;height:144px;width: 389px; line-height: 144px;">
								<a class="" style="display: block; position: absolute;" href="">K金回收</a>
								<a href="${mybaseurl}/product/bcf8086e4f4647fabcfc3409430baa60?ptype=gjs&goldType=k"><img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/reclaim_21.jpg"/></a>
							</div>
							<div class="pure-u-1 img-box"style="position: relative;height:287px;width: 389px; line-height: 287px;">
								<a class="" style="display: block; position: absolute;" href="">手机/数码回收</a>
								<a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0"><img class="pure-img" style="position: absolute;"  src="${mybaseurl}/res/images/new/category/reclaim_27.jpg"/></a>
							</div>
					</div>
				</div>
				
			</div>
			<div class="pure-g">
				<img src="${mybaseurl}/res/images/new/category/streamline_03.jpg"/>
			</div>
		</div>
		
		</div>
<%@ include file="../common/footer.jsp"%>
</body>
</html>
