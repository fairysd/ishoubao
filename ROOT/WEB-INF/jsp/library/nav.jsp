<%--
  User: donny
  Date: 1/17/16
  Time: 09:47
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="mytop container">
    <div class="row myblue">
        <div class="col-md-6">
            <ul class="list-inline text-left">
                <li>手机版&nbsp;&nbsp;|</li>
                <li><span class="glyphicon glyphicon-map-marker darkorange"></span> 苏州</li>
              <span><div class="dropdown" style="float: right; margin-right: 57%; ">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    更多城市
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="${baseurl}" style="color:#F39D12;">北京</a></li>
    <li><a href="${baseurl}" style="color:#F39D12;">上海</a></li>
  </ul>
</div></span>
            </ul>
        </div>
        <div class="col-md-6 text-right">
            <span class="glyphicon glyphicon-earphone darkorange" aria-hidden="true"></span> 客服热线 <span
                class="dark2orange bigfont">400 086 1131</span> 周一至周六 9:00-21:00
                <span style="margin-left: 4px; font-weight: bolder;" ><a href="http://shop.aishoubao.com/user.php">登录</a></span>
        </div>
    </div>
</div>
<div class="navbarWrapper">
    <div class="navbar" role="navigation">
        <div class="container">
            <div class="row">


            <div class="navbar-left">
                <a class="" href="${baseurl}#page-top"><img src="${baseurl}res/images/logo.png"></a>
            </div>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    <li class="hidden"><a href="#page-top"></a></li>
                    <li class="active"><a href="${baseurl}">首页</a></li>
                    <li><a class="dropdown-toggle" data-toggle="dropdown">我要卖</a>
                        <ul class="dropdown-menu dropdown-menu-left">
                            <li><a href="${baseurl}category/08d2d4cbf39748f08d56b26ba29266aa/0">手机</a></li>
                            <li><a href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs">黄金</a></li>
                            <li style="width:55px;"><a href="${baseurl}category/47f288756f1a4c5ebac0a2baf1f5ee80/0">贵金属</a></li>
                            <li><a href="${baseurl}category/08d2d4cbff6j48f08d56b26ba29266aa/0">名表</a></li>
                            <li><a href="${baseurl}category/08d2d4cbf3974d8i8d56b26ba29266aa/0">名包</a></li>
                            <li><a href="${baseurl}product/diamond">钻石</a></li>
                        </ul>
                    </li>
                    <li><a class="dropdown-toggle" data-toggle="dropdown">我要买</a>
                        <ul class="dropdown-menu dropdown-menu-left">
                            <li><a href="http://shop.aishoubao.com/category.php?id=341" target="_blank">手机</a></li>
                            <li><a href="http://shop.aishoubao.com/category.php?id=342" target="_blank">黄金</a></li>
                            <li style="width:55px;"><a href="http://shop.aishoubao.com/category.php?id=343" target="_blank">贵金属</a></li>
                            <li><a href="http://shop.aishoubao.com/category.php?id=344" target="_blank">名表</a></li>
                            <li><a href="http://shop.aishoubao.com/category.php?id=345" target="_blank">名包</a></li>
                            <li><a href="http://shop.aishoubao.com/category.php?id=346" target="_blank">钻石</a></li>
                        </ul>
                    </li>
                    <li><a id="wydyLink" href="#">我要抵押</a></li>
                    <li><a id="hbgyLink" href="${baseurl}hbgy">环保公益</a></li>
                    <li><a id="dkhLink" href="${baseurl}dkh">大客户合作</a></li>
                    <li><a href="http://shop.aishoubao.com/user.php" target="_blank">用户中心</a></li>

                </ul>
            </div>
            <style type="text/css">
            *{margin:0;padding:0;list-style-type:none;}
.side{position:fixed;width:54px;height:275px;right:0;top:88px;z-index:100;}
.side ul li{width:54px;height:54px;float:left;position:relative;}
.side ul li .sidebox{position:absolute;width:54px;height:54px;top:0;right:0;transition:all 0.3s;background:#000;opacity:0.8;filter:Alpha(opacity=80);color:#fff;font:14px/54px "微软雅黑";overflow:hidden;}
.side ul li .sidetop{width:54px;height:54px;line-height:54px;display:inline-block;background:#000;opacity:0.8;filter:Alpha(opacity=80);transition:all 0.3s;}
.side ul li .sidetop:hover{background:#ae1c1c;opacity:1;filter:Alpha(opacity=100);}
.side ul li img{float:left;}
            </style>

            <div class="side">
    <ul>
      <li><a href="http://wpa.qq.com/msgrd?v=3&uin=2153392316&site=qq&menu=yes" ><div class="sidebox"><img src="http://demo.lanrenzhijia.com/2014/service1108/side_icon04.png">QQ客服1</div></a></li>
      <li><a href="http://wpa.qq.com/msgrd?v=3&uin=2153392316&site=qq&menu=yes" ><div class="sidebox"><img src="http://demo.lanrenzhijia.com/2014/service1108/side_icon04.png">QQ客服2</div></a></li>
  </ul>
</div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade buildTipDig" tabindex="-1" >
    <div class="modal-dialog">
        <div class="modal-content" style="height: 140px;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">提示</h4>
            </div>
            <div class="modal-body">
               正在建设中.....
            </div>
        </div>
    </div>
</div>
