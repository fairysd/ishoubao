<%--
  User: donny
  Date: 1/15/16
  Time: 10:16
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--@elvariable id="store" type="cn.com.kpso.asb.model.Store"--%>
<%--@elvariable id="area" type="cn.com.kpso.asb.model.Area"--%>
<%--@elvariable id="p" type="cn.com.kpso.asb.model.Product"--%>
<%--@elvariable id="c" type="cn.com.kpso.asb.model.Category"--%>
<%@ include file="common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>爱收宝</title>
    <%@ include file="library/header.jsp" %>
    <style>
        /* mynva */
        #mynav {
            position: relative;
            margin-top: -240px;
        }

        #fourYS {
            margin-top: 180px;
        }

        @media screen and (min-width: 1280px) {
            #mynav {
                position: relative;
                margin-top: -500px;
            }

            #fourYS {
                margin-top: 46px;
            }
        }

        @media screen and (min-width: 1440px) {
            #mynav {
                position: relative;
            }

            #fourYS {
                margin-top: 26.4%;
            }
        }

        .mynav {
            width: 500px;
            background-color: #AAB4D9;
            position: absolute;
            top: 0px;
            left: 0px;
            height: 240px;
            border-radius: 8px;
        }

        .mynav .row .navleft {
            padding-left: 10px;
            padding-top: 5px;
        }

        .mynav .row .navleft ul li {
            margin-top: -7px;
            height: 46px;
        }

        .mynav .row .navleft ul li span {
            vertical-align: bottom;
        }

        .mynav .nav-tabs {
            border: none;
            padding-top: 20px;
        }

        .mynav .nav-tabs > li a {
            color: #fff;
            background-color: #0F2E4A !important;
        }

        .mynav .nav-tabs > li.active a {
            color: #fff;
            border: none;
            background-color: #f39d12 !important;
        }

        .mynav .navright .tab-pane {
            margin-right: 15px;
            margin-left: -10px;
            margin-top: 10px;
            background-color: #CFE6EB;
            height: 220px;
            padding: 10px;
        }

        /* search */
        #search {
            width: 100%;
            height: 231px;
            margin: 0 auto;
            background-color: #F38D12;
            margin-top: 5px;
        }

        #search .container {
            background: url("${baseurl}res/images/search.jpg") no-repeat;
            background-size: 100% 100%;
            height: 231px;
        }

        #search .container h1 {
            padding-top: 50px;
            padding-bottom: 10px;
        }

        #search input {
            height: 50px;
        }

        #search .btn {
            height: 50px;
            background-color: #d35400;
            border: none;
        }

        #search p {
            padding-top: 15px;
        }

        #fourYS {
            padding-top: 40px;
            padding-bottom: 0px;
        }

        .fourYS1 {
            width: 136px;
            height: 150px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: 0px 0px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        .fourYS2 {
            width: 136px;
            height: 150px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: -145px 0px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        .fourYS3 {
            width: 136px;
            height: 150px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: -295px 0px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        .fourYS4 {
            width: 136px;
            height: 150px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: -440px 0px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        #fourYS .thumbnail {
            border: none;
        }

        #fourYS h3 {
            color: #d35400;
        }

        #fourYS p {
            color: #0F2E4A;
            font-weight: bold;
        }

        p {
            white-space: normal;
            word-break: break-all;
            word-wrap: break-word;
        }

        .general_header {
            background-color: #f39d12;
            height: 50px;
            line-height: 50px;
            font-size: 24px;
            color: #fff;
            font-weight: bold;
        }

        /* 热门回收 */
        #rmhs .nav-tabs {
            border-bottom: 1px solid #f39d12;
        }

        #rmhs .nav-tabs li {
            /*width: 200px;*/
        }

        #rmhs .nav-tabs > li > a {
            /*border: medium none;*/
            border-radius: 0;
        }

        #rmhs .nav-tabs > li > a:hover {
            /*background-color: #303136 !important;*/
            /*border: medium none;*/
            /*border-radius: 0;*/
            /*color:#fff;*/
        }

        #rmhs .nav-tabs > li.active > a,
        #rmhs .nav-tabs > li.active > a:focus,
        #rmhs .nav-tabs > li.active > a:hover {
            /*background-color: #303136 !important;*/
            border-left: 1px solid #f39d12;
            border-right: 1px solid #f39d12;
        }

        #rmhs .tab-content {
            padding-top: 15px;
        }

        #rmhs .tab-content .brand {
            padding-bottom: 10px;
            border-bottom: 1px solid #cacaca;
        }

        #rmhs .tab-content .product {
            padding-top: 10px;
            padding-bottom: 0px;
        }

        #rmhs .tab-content .brand img {
            /*-webkit-filter: grayscale(100%);*/
            /*-moz-filter: grayscale(100%);*/
            /*-ms-filter: grayscale(100%);*/
            /*-o-filter: grayscale(100%);*/
            /*filter: grayscale(100%);*/
        }

        #rmhs .tab-content .thumbnail {
            border: none;
        }

        #rmhs .tab-content .thumbnail .price {
            font-size: 18px;
            color: red;
        }

        /* 地区专享服务 */
        #area .row {
            padding: 20px;
        }

        #area .row .caption {
            border-bottom: 1px solid #aaa;
        }

        #area .nav-tabs {
            border: none;
        }

        #area .nav-tabs > li > a {
            color: #000;
            height: 30px;
        }

        #area .nav-tabs > li.active > a,
        #area .nav-tabs > li.active > a:focus,
        #area .nav-tabs > li.active > a:hover {
            border: none;
            border-bottom: 1px solid #F38D12;
            color: #F38D12;
        }

        #area .tab-content {
            padding-top: 10px;
        }

        #area .tab-content li {
            width: 150px;
            line-height: 30px;
        }

        /* 选择我们 */
        #chosenUs .row {
            padding-top: 20px;
            padding-bottom: 20px;
        }

        #chosenUs .good {
            color: #f39d12;
        }

        #adShop {
            margin: 0;
            background-image: url("${baseurl}res/images/indexbottom.png");
            background-size: cover;
            padding: 20px;
        }

        #adShop .row {
            color: #fff;
        }

        #adShop .btn {
            border: 2px solid #F38D12;
        }

        a.btn.btn-lg:hover {
            color: #fff;
        }

        .col-lg-2dot4 a:hover {
            text-decoration: none;
        }

        #rmhs .tabphone {
            width: 120px;
            height: 100px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: 15px -183.7px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        #rmhs .active .tabphone {
            width: 120px;
            height: 100px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: 3px -282.7px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        #rmhs .tabgjs {
            width: 120px;
            height: 100px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: -106px -183.7px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        #rmhs .active .tabgjs {
            width: 120px;
            height: 100px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: -116px -282.7px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        #rmhs .tabbag {
            width: 120px;
            height: 100px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: -328px -183.7px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        #rmhs .active .tabbag {
            width: 120px;
            height: 100px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: -339px -282.7px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        #rmhs .tabclock {
            width: 120px;
            height: 100px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: -218px -183.7px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        #rmhs .active .tabclock {
            width: 120px;
            height: 100px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: -230px -282.7px;
            background-size: 606px 606px;
            margin-left: auto;
            margin-right: auto;
        }

        .vs {
            margin-top: -40px;
            margin-left: 45px;
            width: 200px;
            height: 100px;
            background-repeat: no-repeat;
            background-image: url("${baseurl}res/images/asbicons.png");
            background-position: -451.3px -170.7px;
            background-size: 606px 606px;
        }
        .gogj{margin-top:65px;}
        .btn-danger{font-size:14px;}
        .goproduct{overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
        .btn-default{color: #333;background-color: #EDE7E1;border-color: #CCC;}
        .list-inline > li {display: inline-block;padding-right: 5px;padding-left: 5px;padding-top: 5px;

}
    </style>
    <link rel="stylesheet" href="${baseurl}res/css/search.css">
</head>
<body>
<%@ include file="library/nav.jsp" %>
<div class="container-fluid fixpadding">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="/res/images/hou1.jpg" alt="">
            </div>
            <div class="item">
                <img src="/res/images/hou2.jpg" alt="">
            </div>
             <div class="item">
                <img src="/res/images/hou3.jpg" alt="">
            </div>
        </div>

    </div>
    <!-- search -->
<div id="search">
    <div class="container">
        <h1 class="white text-center">搜一下,看一看你的闲置还值多少钱!</h1>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <div class="input-group">
                    <input id="psearch" type="text" class="form-control typeahead"/>
            <span class="input-group-btn">
                <button class="btn btn-default" type="button" id="searchBtn">
                    <span class="glyphicon glyphicon-search white" style="font-size: 20px" aria-hidden="true"></span></button>
            </span>
                </div><!-- /input-group -->
            </div><!-- /.col-lg-4 -->
        </div><!-- /.row -->
        <p class="white text-center">热门搜索: iphoe6s 红米2s 红米2s 红米2s 红米2s</p>
    </div>
</div>

</div>
<div id="mynav" class="container">
    <div class="mynav">
        <div class="row">
            <div class="navleft col-md-5">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs tabs-left" role="tablist">
                    <li role="presentation" class="active"><a href="#navPhone" aria-controls="navPhone" role="tab"
                                                              data-toggle="tab"><span class="glyphicon glyphicon-phone" style="font-size:20px;"></span> 手机</a></li>
                    <li role="presentation"><a href="#navGold" aria-controls="navGold"
                                               role="tab"
                                               data-toggle="tab"><span class="glyphicon glyphicon-yen" style="font-size:20px;"></span> 黄金</a></li>
                    <li role="presentation"><a href="#navBag" aria-controls="navBag" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-briefcase"
                                                                                                                        style="font-size:20px;"></span> 名包</a></li>
                    <li role="presentation"><a href="#navClock" aria-controls="navClock" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-time"
                                                                                                                            style="font-size:20px;"></span> 名表</a>
                    </li>
                    <li role="presentation"><a href="#navDy" aria-controls="navDy" role="tab" data-toggle="tab"><span class="glyphicon glyphicon-heart-empty"
                                                                                                                      style="font-size:20px;"></span> 钻石</a></li>
                </ul>
            </div>
            <div class="navright col-md-7">
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="navPhone">
                        <p><a data-toggle="popover" id="phoneCSel" data-cid="" data-tipId=".tipPhoneCSel" data-title="品牌列表" class="btn btn-lg btn-danger btn-block" role="button" >选择品牌</a></p>
                        <p class="goproduct"><a data-toggle="popover" id="phonePSel" data-id="" data-tipId=".tipPhonePSel" data-title="产品列表" class="btn btn-lg btn-danger btn-block disabled" role="button" >选择产品</a></p>
                        <p class="gogj"><a id="goEstimate" class="btn btn-lg btn-danger btn-block disabled" role="button" >立即估价</a></p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="navGold">
                        <p><input placeholder="请输入重量（单位：克）" id="inputnum" class="inputbox form-control" type="number" name="inputnum" value=""/></p>
                        <p><select class="form-control" id="goldType">
                            <option value="212bc2d31b514d8f8a56ceb75a636909" selected>足金999饰品</option>
                            <option value="a2f4b3540d264ea08fcaf3dfb96ebf90">足金99饰品</option>
                            <option value="bb50f39fef8f4224a0234e88d35325d3">金条9999</option>
                            <option value="0d6486fbc6f0411cbf1846938aae53e8">足金9999饰品</option>
                            <option value="3ae09e3ece014da591cc49abf0228e56">金丝</option>
                            <option value="f403e05ec5244decb71c81485e00cb7e">金摆件</option>
                            <option value="1ada29dd684e4f26acbb11391cdc4b76">金币9999</option>
                        </select></p>
                        <p class="gogj"><a id="gogoldEstimate" class="btn btn-lg btn-danger btn-block" role="button" >立即估价</a></p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="navBag">
                        <p><a data-toggle="popover" id="bagCSel" data-cid="" data-tipId=".tipPhoneCSel" data-title="品牌列表" class="btn btn-lg btn-danger btn-block" role="button" >选择品牌</a></p>
                        <p class="goproduct"><a data-toggle="popover" id="bagPSel" data-id="" data-tipId=".tipPhonePSel" data-title="产品列表" class="btn btn-lg btn-danger btn-block disabled" role="button" >选择产品</a></p>
                        <p class="gogj"><a id="gobagEstimate" class="btn btn-lg btn-danger btn-block disabled" role="button" >立即估价</a></p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="navClock">
                        <p><a data-toggle="popover" id="clockCSel" data-cid="" data-tipId=".tipPhoneCSel" data-title="品牌列表" class="btn btn-lg btn-danger btn-block" role="button" >选择品牌</a></p>
                        <p class="goproduct"><a data-toggle="popover" id="clockPSel" data-id="" data-tipId=".tipPhonePSel" data-title="产品列表" class="btn btn-lg btn-danger btn-block disabled" role="button" >选择产品</a></p>
                        <p class="gogj"><a id="goclockEstimate" class="btn btn-lg btn-danger btn-block disabled" role="button" >立即估价</a></p>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="navDy">
                        <p class="text-center"><img src="${baseurl}res/images/diamond.png" width="180" height="140"></p>
                        <p class="gogj" style="margin-top:5px;"><a id="" href="${baseurl}product/diamond?ptype=diamond" class="btn btn-lg btn-danger btn-block" role="button" >立即估价</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="hidden">
    <div class="tipPhoneCSel">
        <%--<ul class="list-inline">--%>
            <%--<c:forEach items="${phoneCategories}" var="c">--%>
                <%--<li class="col-md-2"><a href="javascript:getBrand('${c.id}', '${c.name}')">${c.name}</a></li>--%>
            <%--</c:forEach>--%>
        <%--</ul>--%>
    </div>
    <div class="tipPhonePSel">
    </div>
</div>

<div id="fourYS" class="container fixbackground">
    <div class="row">
        <div class="col-md-3 text-center">
            <div class="thumbnail">
                <div class="fourYS1"></div>
                <div class="caption">
                    <h3>安全有保障</h3>
                    <p class="text-left">回收预先垫付支付宝,优品保证二手原装,抵押全国利率最低</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 text-center">
            <div class="thumbnail">
                <div class="fourYS2"></div>
                <div class="caption">
                    <h3>专业的平台</h3>
                    <p class="text-left">全国31200家门店,每天63700+笔成交记录,每天14万人在线评估自己的宝贝</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 text-center">
            <div class="thumbnail">
                <div class="fourYS3"></div>
                <div class="caption">
                    <h3>出售最优品</h3>
                    <p class="text-left">优品出售纯二手机,全国超20家权威检测机构,确保原装交易</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 text-center">
            <div class="thumbnail">
                <div class="fourYS4"></div>
                <div class="caption">
                    <h3>2小时放款</h3>
                    <p class="text-left">无需信用记录、流水、个人房产,只要有实物,即可操作寄售或抵押,承诺2小时放款,上限200Ｗ</p>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- 轻松4步回收 -->
<div class="container fixbackground fixpadding">
    <img class="carousel-inner img-responsive" src="${baseurl}res/images/4bhs.png">
</div>

<!-- 热门回收 -->
<div id="rmhs" class="container fixbackground fixpadding">
    <div class="general_header text-center">热门回收</div>
    <div>
        <!-- Nav tabs -->
        <ul class="nav nav-tabs text-center" role="tablist">
            <li role="presentation" class="active col-md-3 text-center"><a href="#phone" aria-controls="phone" role="tab" data-toggle="tab">
                <div class="tabphone"></div>
                手机</a></li>
            <li role="presentation" class="col-md-3"><a href="#gjs" aria-controls="gjs" role="tab" data-toggle="tab">
                <div class="tabgjs"></div>
                贵金属</a></li>
            <li role="presentation" class="col-md-3"><a href="#clock" aria-controls="messages" role="tab" data-toggle="tab">
                <div class="tabclock"></div>
                名表</a></li>
            <li role="presentation" class="col-md-3"><a href="#bag" aria-controls="settings" role="tab" data-toggle="tab">
                <div class="tabbag"></div>
                名包</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="phone">
                <%--<div class="row brand text-center">--%>
                <%--<div class="col-md-1"><a href="#"><img class="img-responsive" style="height:30px;" src="http://7xonzf.com1.z0.glb.clouddn.com/product/20160105155836_8079.jpg"></a>--%>
                <%--</div>--%>
                <%--</div>--%>
                <div class="row product text-center">
                    <c:forEach items="${products}" var="p" varStatus="st">
                        <div class="col-lg-2dot4 col-md-2">
                            <a href="${baseurl}product/${p.id}">
                                <div class="thumbnail">
                                    <img class="lazy img-responsive" data-original="${p.picList[0]}" alt="${p.name}">
                                    <div class="caption">
                                        <h5 class="text-center">${p.name}</h5>
                                        <p>回收价: <span class="price">￥${p.maxPrice}</span></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="gjs">
                <div class="row product text-center">
                    <a href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8">
                        <div class="col-lg-2dot4 col-md-2">
                            <div class="thumbnail">
                                <img class="lazy img-responsive" data-original="http://7xonzf.com1.z0.glb.clouddn.com/product/20160106115201_8860.jpg" alt="黄金">
                                <div class="caption">
                                    <h5 class="text-center">黄金</h5>
                                </div>
                            </div>
                        </div>
                    </a>

                    <a href="${baseurl}product/5f67c6baca4b4167a4b49b6df510a3f1">
                        <div class="col-lg-2dot4 col-md-2">
                            <div class="thumbnail">
                                <img class="lazy img-responsive" data-original="http://7xonzf.com1.z0.glb.clouddn.com/product/20160106104910_1045.png" alt="白银">
                                <div class="caption">
                                    <h5 class="text-center">白银</h5>
                                </div>
                            </div>
                        </div>
                    </a>

                    <a href="${baseurl}product/bcf8086e4f4647fabcfc3409430baa60">
                        <div class="col-lg-2dot4 col-md-2">
                            <div class="thumbnail">
                                <img class="lazy img-responsive" data-original="http://7xonzf.com1.z0.glb.clouddn.com/product/20160106105616_4914.jpg" alt="K金">
                                <div class="caption">
                                    <h5 class="text-center">K金</h5>
                                </div>
                            </div>
                        </div>
                    </a>

                    <a href="${baseurl}product/21577fd8a5324e62a416978d15367515">
                        <div class="col-lg-2dot4 col-md-2">
                            <div class="thumbnail">
                                <img class="lazy img-responsive" data-original="http://7xonzf.com1.z0.glb.clouddn.com/product/20160106105939_8233.jpg" alt="铂金">
                                <div class="caption">
                                    <h5 class="text-center">铂金</h5>
                                </div>
                            </div>
                        </div>
                    </a>

                    <a href="${baseurl}product/094c2f5308514105a862c6299f9d320b">
                        <div class="col-lg-2dot4 col-md-2">
                            <div class="thumbnail">
                                <img class="lazy img-responsive" data-original="http://7xonzf.com1.z0.glb.clouddn.com/product/20160106110142_6293.jpg" alt="钯金">
                                <div class="caption">
                                    <h5 class="text-center">钯金</h5>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="clock">
                <div class="row product text-center">
                    <c:forEach items="${clockProducts}" var="p">
                        <a href="${baseurl}product/${p.id}">
                            <div class="col-lg-2dot4 col-md-2">
                                <div class="thumbnail">
                                    <img class="lazy img-responsive" data-original="${p.picList[0]}" alt="${p.name}">
                                    <div class="caption">
                                        <h5 class="text-left">${p.name}</h5>
                                        <p>回收价: <span class="price">￥${p.maxPrice}</span></p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="bag">
                <div class="row product text-center">
                    <c:forEach items="${bagProducts}" var="p">
                        <a href="${baseurl}product/${p.id}">
                            <div class="col-lg-2dot4 col-md-2">
                                <div class="thumbnail">
                                    <img class="lazy img-responsive" data-original="${p.picList[0]}" alt="${p.name}">
                                    <div class="caption">
                                        <h5 class="text-center">${p.name}</h5>
                                        <p>回收价: <span class="price">￥${p.maxPrice}</span></p>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 地区专享服务 -->
<div id="area">
    <div class="container fixbackground fixpadding">
        <div class="general_header text-center">苏州地区专享服务</div>
        <div class="row">
            <div class="col-md-9">
                <div class="caption">
                    <h5 class="myorange">您身边的爱收宝服务站</h5>
                    <p class="text-left">线上下单，门店交易！完爆传统路边回收小店，用户用过都说好。查看苏州地区门店分布 </p>
                </div>
                <div>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#area1" aria-controls="home" role="tab" data-toggle="tab">全部</a></li>
                        <c:forEach items="${areas}" var="area">
                            <li
                                    role="presentation"><a href="#area1" aria-controls="area1" data-areaid="${area.id}" role="tab"
                                                           data-toggle="tab">${area.name}</a></li>
                        </c:forEach>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="area1">
                            <ul id="areaShop" class="list-inline">
                                <c:forEach items="${stores}" var="store">
                                <li data-areaid="${store.areaId}"><span class="glyphicon glyphicon-map-marker darkorange"></span> ${store.name}</li>
                                </c:forEach>
                                <%--<p><a href="#">查看</a></p>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="caption">
                    <h5 class="myorange">便捷免费的上门服务</h5>
                    <p class="text-left">享受专业的上门质检服务。</p>
                    <img class="lazy img-responsive" data-original="${baseurl}res/images/smhs.jpg">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 选择我们 -->
<div id="chosenUs">
    <div class="container fixpadding fixbackground">
        <div class="general_header text-center">为什么6000万用户选择我们</div>
        <div class="row">
            <div class="col-md-5 bad text-right">
                <ul class="list-inline">
                    <li><span class="glyphicon glyphicon-thumbs-down" style="font-size:30px;"></span></li>
                    <li><b>线下手机市场</b><br>会遇到各种坏老板,价格一不留神就亏了</li>
                </ul>
            </div>
            <div class="col-md-2 text-center">
                <div class="vs"></div>
            </div>
            <div class="col-md-5 good">
                <ul class="list-inline">
                    <li><b>专业回收平台</b><br>诚信合作,价格公开透明</li>
                    <li><span class="glyphicon glyphicon-thumbs-up" style="font-size:30px;"></span></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5 bad text-right">
                <ul class="list-inline">
                    <li><span class="glyphicon glyphicon-thumbs-down" style="font-size:30px;"></span></li>
                    <li><b>业余回收网站</b><br>回收价格报收,成交的概率较低费时间</li>
                </ul>
            </div>
            <div class="col-md-2 text-center">
                <div class="vs"></div>
            </div>
            <div class="col-md-5 good">
                <ul class="list-inline">
                    <li><b>第三方检验快速放款</b><br>所有机器由专业工程师检验,完成后放款</li>
                    <li><span class="glyphicon glyphicon-thumbs-up" style="font-size:30px;"></span></li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5 bad text-right">
                <ul class="list-inline">
                    <li><span class="glyphicon glyphicon-thumbs-down" style="font-size:30px;"></span></li>
                    <li><b>卖给网络陌生人</b><br>不知道和谁交易,有一定的交易风险</li>
                </ul>
            </div>
            <div class="col-md-2 text-center">
                <div class="vs"></div>
            </div>
            <div class="col-md-5 good">
                <ul class="list-inline">
                    <li><b>顺丰快递上门回收</b><br>安心在家不用出门,家门口快递手机坐等收钱</li>
                    <li><span class="glyphicon glyphicon-thumbs-up" style="font-size:30px;"></span></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- adShop -->
<div id="adShop" class="jumbotron">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3>除了回收, 您还能买超值二手良品</h3>
                <h1>创业团队测试机采购<br>我们帮您省钱
                    <a class="btn btn-lg" href="http://shop.aishoubao.com/category.php?id=249" target="_blank" role="button">点击进入 ></a>
                </h1>
            </div>
        </div>
    </div>
</div>

<form name="searchForm" id="searchForm" action="${baseurl}product/searchq" method="get">
    <input type="hidden" name="q" id="q" value="">
</form>
<%@ include file="library/footer.jsp" %>
<%@ include file="common/js.jsp" %>
<script src="${baseurl}res/js/jquery.lazyload.min.js"></script>
<script src="${baseurl}res/js/typeahead.bundle.js"></script>
<script>
$(function(){
    $(".side ul li").hover(function(){
        $(this).find(".sidebox").stop().animate({"width":"124px"},200).css({"opacity":"1","filter":"Alpha(opacity=100)","background":"#81CBEE"})    
    },function(){
        $(this).find(".sidebox").stop().animate({"width":"54px"},200).css({"opacity":"0.8","filter":"Alpha(opacity=80)","background":"#000"})   
    });
});
    var baseurl ="${baseurl}";
    function getContent(id, cseltype, pseltype, cid){
        if (cid) {
            $("#"+pseltype).popover("hide");
        $.getJSON("${baseurl}category/json/"+cid, {}, function(r) {
            r = eval("("+r+")");
//            console.log(r);
            var u = r.body, i= u.length, v="";
//            console.log($(".tipPhonePSel").find("ul").length);
            if(r.success && i > 0) {
                v += '<ul class="list-inline">';
                for(var ii=0; ii<i; ii++) {
                    v += '<li class="col-md-3"><a href="javascript:getBrand(\''+cseltype+'\', \''+u[ii].id+'\', \''+u[ii].name+'\')">' + u[ii].name + '</a></li>';
                }
                v += '</ul>';
//                console.log(v);
                $(".tipPhoneCSel").html(v);
                var popoverObj = $('#'+cseltype).data('bs.popover');
                popoverObj.options.content = v;
            }

        });
        } else {
            $("#"+cseltype).popover("hide");
        }
        return $(id).html();
    }
    function getBrand(t, id, name) {
//        alert(id);
        $('#'+t).popover('hide');
        $('#'+t).html(name);
        $("#"+t).data("id", id);
        $("#"+t).trigger("click");
        var subT = t.replace("CSel", "PSel");
        $('#'+subT).html("选择产品");

        $('#'+subT).html("正在加载中...");
        $.getJSON("${baseurl}product/json/"+id, {}, function(r) {
            r = eval("("+r+")");
//            console.log(r);
            var u = r.body.rows, i= u.length, v="";
//            console.log($(".tipPhonePSel").find("ul").length);
            if(r.success && i > 0) {
                v += '<ul class="list-inline">';
                for(var ii=0; ii<i; ii++) {
                    v += '<li class="col-md-3"><a href="javascript:getProduct(\''+subT+'\', \''+u[ii].id+'\', \''+u[ii].name+'\')">' + u[ii].name + '</a></li>';
                }
                v += '</ul>';
//                console.log(v);
                $(".tipPhonePSel").html(v);
                var popoverObj = $('#'+subT).data('bs.popover');
            popoverObj.options.content = v;
                $('#'+subT).html("选择产品");
                $('#'+subT).removeClass("disabled");
                popoverObj.options.title="产品列表<span class='pull-right'><a href='"+getMoreProductUrl(subT)+id+"'>更多产品</a></span>";
            } else {
                $('#'+subT).html("暂时无产品");
                $('#'+subT).addClass("disabled");
                changeStateGoBtn(subT, "off");
            }

        });
    }

    function getProduct(subT, id, name) {
        $('#'+subT).popover('hide');
        $('#'+subT).html(name);
        $('#'+subT).data("id", id);
        $('#'+subT).trigger("click");
        changeStateGoBtn(subT, "on");
    }

    function changeStateGoBtn(subT, state) {
        if (subT.indexOf("phone") >= 0){
            if (state==="on") {
                $("#goEstimate").removeClass("disabled");
            } else if(state==="off") {
                $("#goEstimate").addClass("disabled");
            }
        }
        if (subT.indexOf("bag") >= 0){
            if (state==="on") {
                $("#gobagEstimate").removeClass("disabled");
            } else if(state==="off") {
                $("#gobagEstimate").addClass("disabled");
            }
        }
        if (subT.indexOf("clock") >= 0){
            if (state==="on") {
                $("#goclockEstimate").removeClass("disabled");
            } else if(state==="off") {
                $("#goclockEstimate").addClass("disabled");
            }
        }
    }

    function getMoreProductUrl(subT) {
        var url = "${baseurl}category/";
        if (subT.indexOf("phone") >= 0){
            url += "08d2d4cbf39748f08d56b26ba29266aa/"
        }
        if (subT.indexOf("bag") >= 0){
            url += "08d2d4cbf3974d8i8d56b26ba29266aa/"
        }
        if (subT.indexOf("clock") >= 0){
            url += "08d2d4cbff6j48f08d56b26ba29266aa/"
        }
        return url;
    }

    $("#goEstimate").click(function(){
       window.location.href="${baseurl}product/"+$("#phonePSel").data("id")+"?ptype=phone";
    });
    $("#gobagEstimate").click(function(){
        window.location.href="${baseurl}product/"+$("#bagPSel").data("id")+"?ptype=bag";
    });
    $("#goclockEstimate").click(function(){
        window.location.href="${baseurl}product/"+$("#clockPSel").data("id")+"?ptype=clock";
    });
    $("#gogoldEstimate").click(function(){
        var num = $("#inputnum").val();
        var goldType = $("#goldType").val();
        if (!num || isNaN(num) || num <= 0 || num > 10000) {
            alert("请输入正确的重量(不超过10000克)!");
            return;
        }
        window.location.href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&num="+num+"&goldType="+goldType;
    });

    jQuery(function ($) {
        $("img.lazy").lazyload({effect: "fadeIn", event: "sporty"});
        $(window).bind("load", function () {
            var timeout = setTimeout(function () {
                $("img").trigger("sporty")
            }, 1000);
        });
        $(document).ready(function () {
            $('.navbarWrapper').stickUp();
            $('.nav-tabs > li > a').hover(function () {
                $(this).tab('show');
            });

            var w = $("#areaShop").children();
            $('#area .nav-tabs > li > a').hover(function () {
                var areaid = $(this).data("areaid");
                areaid === undefined ? w.show() : w.each(function (u, f) {
                    $(f).data("areaid") === areaid ? $(f).show() : $(f).hide();
                });
            });
        });

        var ctipid = $("#phoneCSel").data('tipid');
        var ptipid = $("#phonePSel").data('tipid');
        $("#phoneCSel").popover({
            trigger: 'click',
            html: 'true',
            placement: 'right',
            content: getContent(ctipid, "phoneCSel", "phonePSel", "08d2d4cbf39748f08d56b26ba29266aa"),
        }).on("click", function () {
            $("#phonePSel").popover("hide");
        });
        $("#phonePSel").popover({
            trigger: 'click',
            html: 'true',
            placement: 'right',
            content: getContent(ptipid, "phoneCSel", "phonePSel"),
        }).on("click", function () {
//            alert($("#phoneCSel").data("id"));
            if(typeof($("#phoneCSel").data("id"))==="undefined") {
//                $("#phonePSel").popover("hide");
            }
            $("#phoneCSel").popover("hide");
        });
        $("#bagCSel").popover({
            trigger: 'click',
            html: 'true',
            placement: 'right',
            content: getContent(ctipid, "bagCSel", "bagPSel", "08d2d4cbf3974d8i8d56b26ba29266aa"),
        }).on("click", function () {
            $("#bagPSel").popover("hide");
        });
        $("#bagPSel").popover({
            trigger: 'click',
            html: 'true',
            placement: 'right',
            content: getContent(ptipid, "bagCSel", "bagPSel"),
        }).on("click", function () {
            $("#bagCSel").popover("hide");
        });
        $("#clockCSel").popover({
            trigger: 'click',
            html: 'true',
            placement: 'right',
            content: getContent(ctipid, "clockCSel", "clockPSel", "08d2d4cbff6j48f08d56b26ba29266aa"),
        }).on("click", function () {
            $("#clockPSel").popover("hide");
        });
        $("#clockPSel").popover({
            trigger: 'click',
            html: 'true',
            placement: 'right',
            content: getContent(ptipid, "clockCSel", "clockPSel"),
        }).on("click", function () {
            $("#clockCSel").popover("hide");
        });

//        $('[data-toggle="popover"]').each(function () {
//            var element = $(this);
//            var tipId = element.data('tipid');
////            alert(tipId);
//            element.popover({
//                trigger: 'click',
//                title:'aaa',
//                html: 'true',
//                placement:'right',
//                content: getContent(tipId),
//            }).on("click", function () {
//                var _this = this;
//                $(this).siblings(".popover").on("mouseleave", function () {
//                    $(_this).popover('hide');
//                });
//                        $(this).popover("show");
//            })
//                    .on("mouseleave", function () {
//                var _this = this;
//                setTimeout(function () {
//                    if (!$(".popover:hover").length) {
//                        $(_this).popover("hide")
//                    }
//                }, 100);
//            });
//        });
    });
</script>
<style>
    .popover{
        max-width: 2000px;
        min-width:600px;
    }
</style>
<script src="${baseurl}res/js/search.js"></script>
</body>
</html>
