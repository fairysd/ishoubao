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
    <title>爱收宝</title>
    <link rel="canonical" href="http://www.aishoubao.com/" />
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        @charset "utf-8";
        /* CSS Document */
        *{margin:0;padding:0;}
        img{vertical-align:middle;border:0px;}
        ul,ol,li{list-style:none;}
        a{color:#222;text-decoration:none;outline:none;cursor:pointer;}
        /*a:hover{text-decoration:underline;}*/

        a:link {text-decoration:none;}
        a:visited {text-decoration:none;}
        a:hover {text-decoration:none;filter:alpha(opacity=90);-moz-opacity:0.9;opacity:0.9;}
        a:active {star:expression(this.onFocus=this.blur());}


        .clear{clear:both;font-size:0;line-height:0;}
        .clear_both{clear:both;}
        .bg{background:#f1f1f1;}
        .wap{width:1200px;margin:0 auto;position:relative;}
        .fl{float:left;display:inline;}
        .fl_ie7{*float:left;display:inline;}
        .fr{float:right;display:inline;}
        .oh{overflow:hidden}
        .dib{display:inline-block;*zoom:1;*display:inline;}
        .db{display:block}
        .pr{position:relative;}
        .pa{position:absolute;}
        /*--color--*/
        .grey{color:#8d8d8d;}
        .grey_e{color:#eee;}
        .grey_a{color:#aaa;}
        .grey_f{color:#333;}
        .grey_d{color:#4d4d4d;}
        .violet{color:#576477;}
        .white{color:#fff;}
        .black{color:#000;}
        /*--background--*/
        .grey_b{background:#8d8d8d !important;}
        .grey_bf{background:#f1f1f1 !important;}
        .violet_b{background:#576477 !important;}
        .white_b{background-color:#fff !important;}
        .black_b{background:#282828 !important;}
        .grey_bc{background-color:#cacaca !important;}
        /*--frame--*/

        /*--text--*/

        .tac{text-align:center}

        /*--padding--*/
        .p10{padding:10px;}
        .ma{margin:0 auto;}
        /*警告*/
        .danger{color:#f00 !important;font-size:15px !important;}
        /*文本溢出省略不换行*/
        .whitespace{white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}

        .w44{width:20%;}
        .w60{width:60px;}

        .cursor{cursor:pointer;}
        /*divselect*/
        .divselect{width:132px;position:relative;vertical-align:bottom;cursor:pointer;}
        .divselect cite{width:108px;height:30px;line-height:30px;display:block;color:#807a62;font-style:normal;padding-left:4px;padding-right:20px;overflow:hidden;}
        .divselect ul{display:none;width:132px;border:1px solid #e7e7e7;background-color:#fff;position:absolute;z-index:99;display:none;max-height:250px;overflow-y:auto;top:30px;left:-1px;font-size:14px;border-top:none;}
        .divselect ul li{height:30px;line-height:25px;width:100%;text-align:center;}
        .divselect ul li a{display:block;height:25px;color:#333;text-decoration:none;padding-left:10px;padding-right:10px;overflow:hidden;}
        .divselect ul li a:hover{background-color:#576477;color:#ffffff;}

        .clearfix {
            *zoom:1;
        }
        .clearfix:after {
            content: '';
            display: block;
            height: 0;
            overflow: hidden;
            clear: both;
        }
        .consignment_order{height:65px;line-height:65px;text-align:center;padding:0px 30px 0px 30px;font-size:18px;}
        .consignment_style ul{width:300px;cursor:pointer;}
        .consignment_style ul li{float:left;width:150px;line-height:40px;}
        .consignment_information{padding:30px;}
        .consignment_information .fs14 em{color:#E99312;}
        .consignment_information .consignment_registration{width:570px;float:left;}
        .consignment_information .consignment_registration li{width:505px;height:39px;border:1px solid #e7e7e7;margin:30px;}
        .consignment_information .consignment_registration li label{width:118px;line-height:40px;background:#F1F1F1;display:inline-block;text-align:center;}
        .consignment_information .consignment_registration li select{width:132px;display:inline-block;height:40px;line-height:40px;border:0px;vertical-align:bottom;}
        .consignment_information .consignment_registration li input{width:366px;height:30px;line-height:40px;border:0px;vertical-align:bottom;padding-left:10px;}
        .consignment_information .consignment_registration li.selected input{width:116px;height:30px;line-height:40px;border:0px;vertical-align:bottom;padding-left:10px;}
        .consignment_information .consignment_registration li.label{height:50px;border:0px;text-align:center;margin:50px 30px 20px 30px;}
        .consignment_information .consignment_registration li.label a{display:inline-block;background:#E99312;color:#FFF;width:166px;height:50px;text-align:center;line-height:50px;font-size:18px;}
        .consignment_information .consignment_tips{width:500px;float:left;margin:30px;}
        .consignment_information .consignment_tips li{overflow:hidden;}
        .consignment_information .consignment_tips li em{width:43px;height:40px;float:left;margin:0 20px;text-align:center;color:#fff;padding-top:13px;background:url(${baseurl}res/images/new/bg.png) no-repeat -44px -193px;}
        .consignment_information .consignment_tips li dl{width:416px;float:right;}
        .consignment_information .consignment_tips li dl dt{line-height:40px;}
        .consignment_information .consignment_tips li dl dd{font-size:12px;color:#aaa;}
        .consignment_information .consignment_tips li em.help_information{color:#E99312;float:right;width:250px;vertical-align:middle;background:none;}
        .consignment_information .consignment_registration li.selected label{float:left;}
        .consignment_information .consignment_registration li.selected .divselect{float:left;}
        .consignment_information .consignment_registration li.selected .divselect cite{height:40px;line-height:40px;font-style:normal;background-position:113px -374px;}
        .consignment_information .consignment_registration li.selected .divselect ul{width:130px;border-color:#E7E7E7;max-height:400px;top:40px;}
        .consignment_information .consignment_registration li.selected .divselect ul.brand{width:250px;right:-1px;left:auto;}
        .consignment_information .consignment_registration li.selected .divselect ul li{margin:0px;border:0px;width:auto;height:24px;line-height:24px;}
        .consignment_information .consignment_store{display:none;}
        .consignment_information .consignment_store li{width:49%;line-height:40px;z-index:0;}
        .consignment_store li .province{width:60px;line-height:25px;cursor:pointer;}
        .consignment_store li .store>div{width:60px;line-height:40px;cursor:pointer;}
        .consignment_store li .store>div.on{background:url(${baseurl}res/images/new/consignment/arrow.png) no-repeat center bottom;}
        .consignment_store li .store .address{text-align:left;padding-left:10px;width:500px;left:0px;top:40px;display:none;z-index:99;cursor:pointer;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="bg p10">
    <div class="wap">
        <div class="grey_bs white_b mt15 mb15">
            <div class="consignment_order">寄售商品</div>
            <div class="consignment_style grey_bbs grey_bts">
                <ul class="ma oh tac">
                    <li class="violet_b white">网络寄售</li>
                    <li class="grey_bf black">店面寄售</li>
                </ul>
            </div>
            <div class="consignment_information">
                <!--网络寄售-->
                <div class="oh">
                    <form name="jsform" id="jsform" action="${baseurl}webintention/create" method="post">
                    <div class="fs14 lineheight tar">
                        <input type="hidden" name="type" value="1"/>
                    </div>
                    <ul class="consignment_registration">
                        <li class="selected">
                            <label>商品类型</label>
                            <div id="divGoodsType" class="divselect">
                                <input type="hidden" id="goodsType" name="productType"  />
                                <cite>请选择商品分类</cite>
                                <ul>
                                    <li><a title="名包" selectid="名包">名包</a></li>
                                    <li><a title="名表" selectid="名表">名表</a></li>
                                    <li><a title="珠宝" selectid="珠宝">珠宝</a></li>
                                    <li><a title="手机" selectid="手机">手机</a></li>
                                    <li><a title="玉石" selectid="玉石">玉石</a></li>
                                    <li><a title="其它" selectid="其它">其它</a></li>
                                </ul>
                            </div>
                            <label>品牌</label>
                                <input id="productBrand" name="productBrand" type="text" maxlength="64"  />
                        </li>
                        <li>
                            <label>商品名称</label>
                            <div style="padding-buttom:5px;float:right;height:38px;overflow:hidden;">
                                <input id="goodsName" name="productName" type="text" maxlength="64"  />
                            </div>
                        </li>
                        <li>
                            <label>姓名</label>
                            <div style="padding-buttom:5px;float:right;height:38px;overflow:hidden;">
                                <input id="contactName" name="username" type="text" maxlength="10" />
                            </div>
                        </li>
                        <li>
                            <label>手机</label>
                            <div style="padding-buttom:5px;float:right;height:38px;overflow:hidden;">
                                <input id="contactPhone" name="phone" type="text" maxlength="11" />
                            </div>
                        </li>
                        <li>
                            <label>期望价格</label>
                            <div style="padding-buttom:5px;float:right;height:38px;overflow:hidden;">
                                <input id="expectPrice" name="productPrice" type="text" maxlength="8" />
                            </div>
                        </li>
                        <li class="label" style="padding-left:160px;"><a id="save">提交</a></li>
                    </ul>
                    <ul class="consignment_tips">
                        <li><em>1</em>
                            <dl>
                                <dt>填写提交</dt>
                                <dd>在你填完了商品的基本信息后，我们的鉴定师会在24小时内联系您并了解您售卖的商品的完整信息。</dd>
                            </dl>
                        </li>
                        <li><em>2</em>
                            <dl>
                                <dt>正品审核</dt>
                                <dd>在我们的鉴定师对您的商品进行初步鉴定后，您将商品邮寄到我司，我司将对您的商品进行鉴定评级并 联系您确认商品的价格。</dd>
                            </dl>
                        </li>
                        <li><em>3</em>
                            <dl>
                                <dt>网上寄卖</dt>
                                <dd>我们将您的商品以最好的面貌在线展示给其他用户，并添加对应的商品描述，并且我们强大的销售团队 时刻跟踪您的商品及时售卖掉，在此期间并妥善保管您的商品。</dd>
                            </dl>
                        </li>
                        <li><em>4</em>
                            <dl>
                                <dt>交易成功</dt>
                                <dd>商品成功销售后，我们将向您的账户中自动冲入对应商品金额，您可以将其进行购买其他商品或进行提现。</dd>
                            </dl>
                        </li>
                        <li> <em class="help_information">如需帮助请致电贵宾专线400-086-1131</em> </li>
                    </ul>
                    </form>
                </div>
                <!--店面寄售-->
                <div class="consignment_store">
                    <ul>
                        <li class="dib">
                            <div class="province dib violet_b white tac">北京市</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    崇文门
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    阜成门
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">天津市</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    天津
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">河北省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    石家庄
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-67091893</p>
                                        <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                     </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">山西省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    太原
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">山东省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    青岛
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-67091893</p>
                                        <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                     </div> -->
                                </div>
                                <div class="dib tac">
                                    济南
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">上海市</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    闸北
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-67091893</p>
                                        <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                     </div> -->
                                </div>
                                <div class="dib tac">
                                    徐汇
                                    <!-- div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">江苏省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    南京
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-67091893</p>
                                        <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                     </div> -->
                                </div>
                                <div class="dib tac">
                                    苏州
                                    <div class="address pa p20 violet_b white">
                                        <p>电话：400-086-1131</p>
                                        <p>地址：苏州市园林路5—1号</p>
                                    </div>
                                </div>
                                <div class="dib tac">
                                    无锡
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    常州
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    淮安
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    金湖
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    扬州
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">浙江省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    杭州
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    宁波
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-58431636</p>
                                        <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                     </div> -->
                                </div>
                                <div class="dib tac">
                                    温州
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-58431636</p>
                                        <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                     </div> -->
                                </div>
                                <div class="dib tac">
                                    台州
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-58431636</p>
                                        <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                     </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">安徽省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    合肥
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    马鞍山
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">江西省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    南昌
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-67091893</p>
                                        <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                     </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">福建省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    厦门
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    福州
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">广东省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    深圳
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    广州
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">广西壮族</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    南宁
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">河南省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    郑州
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    信阳
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">湖北省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    武汉
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">湖南省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    长沙
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">辽宁省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    沈阳
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    大连
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">吉林省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    长春
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">黑龙江省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    哈尔滨
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">重庆市</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    重庆
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                                <!-- <div class="dib tac">
                                阜成门
                                <div class="address pa p20 violet_b white">
                                  <p>电话：010-58431636</p>
                                   <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                </div>
                                </div> -->
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">四川省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    成都
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-67091893</p>
                                        <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                     </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">贵州省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    贵阳
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-67091893</p>
                                        <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                     </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">云南省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    昆明
                                    <!--  <div class="address pa p20 violet_b white">
                                       <p>电话：010-67091893</p>
                                        <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                     </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">陕西省</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    西安
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                                <div class="dib tac">
                                    榆林
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-58431636</p>
                                       <p>地址：北京市西城区阜成门外大街2号万通新世界广场B座1015室</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                        <li class="dib">
                            <div class="province dib violet_b white tac">新疆</div>
                            <div class="store dib">
                                <div class="dib tac">
                                    乌鲁木齐
                                    <!-- <div class="address pa p20 violet_b white">
                                      <p>电话：010-67091893</p>
                                       <p>地址：北京市东城区崇文门外大街3号新世界中心写字楼A座917</p>
                                    </div> -->
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        </div>
    </div>
<%@ include file="../common/footer.jsp"%>
<script>
    $(document).ready(function(){
        $(".divselect").click(function() {
            $(this).find("ul").slideToggle();
            if($(this).find("ul li").length==0){
                alert("请选择商品类型");
            }
        });



        $("#divBarnd ul li a").on("click",function() {
            var txt = $(this).text();
            var selectid=$(this).attr("selectid");
            $(this).parent().parent().siblings("cite").html(txt);
            $("#brand").val(selectid);
            /*$(".divselect cite").html(txt);*/
            /*var value = $(this).attr("selectid");
             inputselect.val(value);*/
            $(".divselect ul").hide();
        });

        $(".divselect").mouseleave(function() {
            $(this).find("ul").hide();
        });

        $("#divGoodsType ul li a").on("click",function() {
            var txt = $(this).text();
            var selectid=$(this).attr("selectid");
            $(this).parent().parent().siblings("cite").html(txt);
            $("#goodsType").val(selectid);
            $(".divselect ul").hide();
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
                if(brand==""){
                    flag=false;
                    alert("请输入品牌");
                    return flag;
                }
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



    /*寄售切换*/
    $(document).ready(function() {
        $(".consignment_style ul li").mouseenter(function(){
            $(this).addClass("violet_b white").removeClass("grey_bf black").siblings().removeClass("violet_b white").addClass("grey_bf black");
            var index = $(this).index();
            $(".consignment_information>div").eq(index).show().siblings().hide();
        });
    });
    /*店面地址*/
    $(document).ready(function() {
        $(".store>div").on('mouseenter mouseleave',
                function(event) {
                    if (event.type == 'mouseenter') {
                        $(this).parent().parent().addClass("pr");
                        $(this).addClass("on").children(".address").show();
                    } else {
                        $(this).removeClass("on").children(".address").hide();
                        $(this).parent().parent().removeClass("pr");
                    }
                })
    });
</script>
</body>
</html>
