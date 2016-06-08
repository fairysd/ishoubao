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
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        #allmap{width:100%;height:400px;}/*百度地图*/
        .zly_total{width: 100%;background-color: #FBFBFB;overflow: hidden;}
        .zly_content{width:1200px;margin:auto;}
        .zltco_left{width:844px;border: 2px solid #DCDCDC;float: left;background-color: #FFFFFF;}
        .zly_lef1{width:100%;height: 90px;background-color: #e1882a;overflow:hidden;}
        .lef1_1{height:60px;border-right: 1px solid #FFFFFF;margin-top: 15px;margin-left: 30px;float:left;padding-right:10px;}
        .zly_lef1 img{margin-right: 30px;margin-top: 18px; float:right;}
        .lef1_1 p{color:#FFFFFF;margin-top: 0;margin-bottom: 0;}
        .zly_lef2{width:100%;margin-top: 30px;border-top: 2px solid #DCDCDC;}
        .zlylef2_1{width:280px;height:42px;line-height:42px;float:left;text-align: center;border-right: 2px solid #DCDCDC;border-bottom: 2px solid #DCDCDC;}
        .zlylef2_1s{width:280px;height:42px;line-height:42px;float:left;text-align: center;border-bottom: 2px solid #DCDCDC;}
        .zlylef2_1 a,.zlylef2_1s a{line-height: 42px;color:#545454;text-decoration:none;}
        .zlylef2_2{width:760px;margin:auto;}
        .zlylef2_2 img{width:760px;height:120px;margin-top: 30px;}
        .zlylef2_3{width:760px;margin:30px auto;}
        .zlylef2_4{width:760px;margin:30px auto;}
        .zlylef4_1,.zlylef4_2,.zlylef4_3{width:243.1px;height:221px; float:left;}

        .zlylef4_1{background-image: url("${baseurl}res/images/new/estimate/asb1.jpg");}
        <c:choose>
        <c:when test="${ptype=='gjs'}">
        .zlylef4_2{background-image: url("${baseurl}res/images/new/estimate/asb2.jpg");}
        .zlylef4_3{background-image: url("${baseurl}res/images/new/estimate/asb3.jpg");}
        </c:when>
        <c:when test="${ptype=='bag'}">
        .zlylef4_2{background-image: url("${baseurl}res/images/new/estimate/bag2.jpg");}
        .zlylef4_3{background-image: url("${baseurl}res/images/new/estimate/bag3.jpg");}
        </c:when>
        <c:when test="${ptype=='clock'}">
        .zlylef4_2{background-image: url("${baseurl}res/images/new/estimate/clock2.jpg");}
        .zlylef4_3{background-image: url("${baseurl}res/images/new/estimate/clock3.jpg");}
        </c:when>
        <c:when test="${ptype=='phone'}">
        .zlylef4_2{background-image: url("${baseurl}res/images/new/estimate/phone2.jpg");}
        .zlylef4_3{background-image: url("${baseurl}res/images/new/estimate/phone3.jpg");}
        </c:when>
        <c:when test="${ptype=='diamond'}">
        .zlylef4_2{background-image: url("${baseurl}res/images/new/estimate/diamond2.jpg");}
        .zlylef4_3{background-image: url("${baseurl}res/images/new/estimate/diamond3.jpg");}
        </c:when>
        </c:choose>
        .zly_shop{width:100%;height:30px; background: rgba(0, 0, 0, 0.5); margin-top:191px;text-align: center;}
        .zly_shop a{line-height: 30px;color:#FFFFFF;font-size: 12px;}
        .zlylef2_5{width:760px;margin:auto;}
        .zlylef2_5 img{width:760px;height:130px;margin-top: 30px;}
        .zlylef2_6{width:760px;margin:30px auto;}
        .zlylef6_1,.zlylef6_2,.zlylef6_3{width:243.1px;height:221px; float:left;}
        .zlylef6_1{background-image: url("${baseurl}res/images/new/estimate/asb4.jpg");}
        .zlylef6_2{background-image: url("${baseurl}res/images/new/estimate/asb5.jpg");}
        .zlylef6_3{background-image: url("${baseurl}res/images/new/estimate/asb6.jpg");}
        .zlylef2_7{width:760px;margin:auto;}
        .zlylef2_7 img{width:760px;height:130px;margin-top: 30px;}
        .zlylef2_8{width:760px;height:40px;margin:auto;border-bottom: 1px solid #DCDCDC;border-top: 1px solid #DCDCDC;margin-top: 30px;}
        .zlylef8_1{width:253.1px;height:40px;float:left;text-align: center;}
        .zlylef8_1 a{line-height: 40px;font-size: 12px;}
        .zlylef2_9{width:760px;height:180px;margin:auto;}
        .zlylef2_9 img{float: left;width: 253.3px;margin-top: 20px;}
        .zlylef2_10{width:760px;height:100px;margin:30px auto 0 auto;border: 1px solid #DCDCDC;}
        .zlylef2_10 p{margin-top: 0;margin-bottom: 0;font-size: 12px;margin-top: 20px;margin-left: 30px;}
        .zlylef2_10 ul{padding-left: 18px;padding-top: 20px;}
        .zlylef2_10 ul li{float:left;width:120px;height:30px;list-style:none;text-align: center;margin-left: 10px;background-color: #F5F5F5;}
        .zlylef2_10 ul li a{font-size: 12px;line-height: 30px;}
        .zlylef2_11{width:840px;height:70px;margin:auto;border-bottom: 1px solid #DCDCDC;border-top: 1px solid #DCDCDC;margin:auto;border-left: 5px solid #e1882a;margin-top: 30px;}
        .zlylef11_1{width:700px;height:70px;float:left;}
        .zlylef11_1 p{margin-top: 0;margin-bottom: 0;font-size: 20px;line-height: 70px;margin-left: 20px;}
        .zlylef11_2{width:80px;height:25px;float:left;background-color: #e1882a;border-radius:5px;border: 1px solid #e1882a;text-align: center;margin-left: 15px;margin-top: 22px;}
        .zlylef11_2 a{font-size: 12px;text-decoration:none;color:#fff;line-height: 25px;}
        .zlylef2_12{width:760px;margin:40px auto;}
        .zlylef2_12 p{margin-top: 5px;margin-bottom: 0;font-size: 12px;}
        .radio{border-radius:9px;background-color: #e1882a;font-size: 16px;color:#FFFFFF;padding-left: 3px;padding-right: 3px;}
        .radio_con{margin-left: 10px;font-weight: bold;}
        .radio1{border-radius:9px;background-color: #BBBBBB;font-size: 16px;color:#FFFFFF;padding-left: 4px;padding-right: 4px;}
        .radio_con1{margin-left: 10px;}
        .zltco_right{width:330px;margin-left: 20px;float:left;}
        .zly_ritop{border: 1px solid #DCDCDC;background-color: #FFFFFF;}
        .zlyri_f1{width:100%;height:50px;margin-top: 20px;}
        .zlyri_f1 p{margin-top: 0;margin-bottom: 0;margin-left: 20px;}
        .zlyri_f2{width:290px;margin:auto;height:122px;border-top: 1px solid #DCDCDC;}
        .zlyri_f2 p{margin-top: 0;margin-bottom: 0;color:#9A9A9A;font-size: 12px;}
        .zly_lj{width:250px;height:50px;background-color: #ED3F3F;margin:auto;text-align: center;margin-bottom: 20px;}
        .zly_lj a{color:#FFFFFF;line-height: 50px;font-weight: bold;text-decoration:none;}
        .zlt_rido{width:100%;height:70px;margin-top: 50px;background-color: #FFFFFF;overflow:hidden;border: 1px solid #DCDCDC;}
        .zlt_rido1{width:40px;height:40px;background-color: #e1882a;text-align: center;margin-top: 15px;margin-left: 15px;float:left;}
        .zlt_rido1 a{line-height: 40px;font-size: 30px;color:#FFFFFF;}
        .zlt_rido2{width:200px;height:40px;float:left;margin-top: 15px;margin-left: 12px;}
        .zlt_rido2 p{line-height: 20px;font-size: 12px;margin-top: 0;margin-bottom: 0;}
        .zlylef2_13{width:840px;height:70px;margin:auto;border-bottom: 1px solid #DCDCDC;border-top: 1px solid #DCDCDC;margin:auto;border-left: 5px solid #e1882a;margin-top: 30px;}
        .zlylef13_1{width:798px;height:70px;float:left;}
        .zlylef13_1 p{margin-top: 0;margin-bottom: 0;font-size: 20px;line-height: 70px;margin-left: 20px;}
        .zlylef2_14{width:760px;margin:40px auto;height:216px;}
        .zlylef14_1,.zlylef14_2,.zlylef14_3,.zlylef14_4{width:175px;height:220px;float:left;border-bottom: 4px solid #e1882a;}
        .zlylef14_1{background-image: url("${baseurl}res/images/new/estimate/sp_3.png");}

        .zlylef14_2{background-image: url("${baseurl}res/images/new/estimate/sp_3.png");}
        .zlylef14_3{background-image: url("${baseurl}res/images/new/estimate/sp_3.png");}

        .zlylef14_4{background-image: url("${baseurl}res/images/new/estimate/sp_3.png");}
        .zly_shop1{width:100%;height:30px; background: rgba(0, 0, 0, 0.5); margin-top:190px;text-align: center;}
        .zly_shop1 a{line-height: 30px;color:#FFFFFF;font-size: 12px;}
        .zlylef2_15{width:760px;margin:40px auto;height:120px;border: 1px solid #DCDCDC;}
        .zlylef15_1{width:100px;height:62px; float:left;margin-top: 30px;margin-left: 30px;}
        .zlylef15_1 img{height:62px;width:100px;}
        .zlylef15_2{width:570px;height:62px; float:left;margin-top: 30px;margin-left: 20px;}
        .zlylef15_2 p{margin-top: 0;margin-bottom: 0;font-size: 12px;color:#676767;}
        .zlyri_f2 a{color:#df3d3e;border: 1px solid  #df3d3e;border-radius: 5px;margin: auto 0;display: block;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="zly_total">
    <div class="zly_content">
        <div class="zltco_left">
            <div class="zly_lef1">
                <div class="lef1_1">
                    <p style="font-size:30px;">￥${quote}</p>
                    <p style="font-size:12px;margin-left:10px;">回收商最高报价</p>
                </div>
                <img src="${baseurl}res/images/new/estimate/sp_1.png" alt="">
            </div>
            <div class="zly_lef2">
                <a href="#zly_jyfs">
                <div class="zlylef2_1" >
                    交易方式
                </div>
                </a>
                <a href="#zly_ysbh">
                <div class="zlylef2_1" >
                    隐私保护
                </div>
                </a>
                <a href="#zly_cjwt">
                <div class="zlylef2_1s">
                    常见问题
                </div>
                </a>
                <div class="zlylef2_2">
                    <a name="zly_jyfs"></a>
                    <img src="${baseurl}res/images/new/estimate/sp_2.png" alt="">
                </div>
                <div class="zlylef2_3" >
                    <div id="allmap"></div>
                </div>
                <div class="zlylef2_4" >
                    <div class="zlylef4_1">
                        <div class="zly_shop">
                            <a>-西城永捷店-</a>
                        </div>
                    </div>
                    <div class="zlylef4_2" style="margin-left:15px;">
                        <div class="zly_shop">
                            <c:choose>
                                <c:when test="${ptype=='phone'}">
                                <a>-园区天虹店-</a>
                                </c:when>
                                <c:when test="${ptype=='clock'}">
                                    <a>-苏州专营店-</a>
                                </c:when>
                                <c:when test="${ptype=='gjs'}">
                                    <a>-苏州银楼-</a>
                                </c:when>
                                <c:when test="${ptype=='diamond' or ptype=='bag'}">
                                    <a>-苏州旗舰店-</a>
                                </c:when>
                            </c:choose>
                        </div>
                    </div>
                    <div class="zlylef4_3" style="margin-left:15px;">
                        <div class="zly_shop">
                            <c:choose>
                                <c:when test="${ptype=='phone'}">
                                    <a>-园林路本店-</a>
                                </c:when>
                                <c:when test="${ptype=='clock'}">
                                    <a>-深圳旗舰店-</a>
                                </c:when>
                                <c:when test="${ptype=='gjs'}">
                                    <a>-龙凤珠宝-</a>
                                </c:when>
                                <c:when test="${ptype=='diamond' or ptype=='bag'}">
                                    <a>-上海旗舰店-</a>
                                </c:when>
                            </c:choose>
                        </div>
                    </div>
                </div>
                <div class="zlylef2_5" >
                    <img src="${baseurl}res/images/new/estimate/sp_4.png" alt="">
                </div>
                <div class="zlylef2_6" >
                    <div class="zlylef6_1">
                        <div class="zly_shop">
                            <a>-爱收宝专员-</a>
                        </div>
                    </div>
                    <div class="zlylef6_2" style="margin-left:15px;">
                        <div class="zly_shop">
                            <a>-爱收宝专员-</a>
                        </div>
                    </div>
                    <div class="zlylef6_3" style="margin-left:15px;">
                        <div class="zly_shop">
                            <a>-爱收宝专员-</a>
                        </div>
                    </div>
                </div>
                <div class="zlylef2_7" >
                    <img src="${baseurl}res/images/new/estimate/sp_5.png" alt="">
                </div>
                <div class="zlylef2_8" >
                    <div class="zlylef8_1">
                        <a>第一步：机器智能入库</a>
                    </div>
                    <div class="zlylef8_1">
                        <a>第二步：全程摄像头拍摄检测</a>
                    </div>
                    <div class="zlylef8_1">
                        <a>第三步：保护隐私数据</a>
                    </div>
                </div>
                <div class="zlylef2_9" >
                    <img src="${baseurl}res/images/new/estimate/asb7.jpg" alt="">
                    <img src="${baseurl}res/images/new/estimate/asb8.jpg" alt="">
                    <img src="${baseurl}res/images/new/estimate/asb9.jpg" alt="">
                </div>
                <div class="zlylef2_10" >
                    <p>退货说明与流程：我们质检完成后，如果实际价格没有达到您的预期，可以取消交易免费将您的手表快递寄回</p>
                    <ul>
                        <li><a>取消交易</a></li>
                        <li><a>客服确认寄回地址</a></li>
                        <li><a>爱收宝联系快递</a></li>
                        <li><a>联系顺风上门取货</a></li>
                        <li><a>用户确认收货</a></li>
                    </ul>
                </div>
                <c:if test="${ptype=='phone'}">
                <%--<div class="zlylef2_13" >--%>
                    <%--<div class="zlylef13_1">--%>
                        <%--<p><a name="zly_ysbh">隐私保护</a><span style="font-size:12px;float:right;color:#999999">所有机器都会使用360安全卫士，删除您的私人数据</span></p>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="zlylef2_14" >--%>
                    <%--<div class="zlylef14_1">--%>
                        <%--<div class="zly_shop1">--%>
                            <%--<a>360安全卫士隐私粉碎</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="zlylef14_2" style="margin-left:20px;">--%>
                        <%--<div class="zly_shop1">--%>
                            <%--<a>自动粉碎隐私</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="zlylef14_3" style="margin-left:20px;">--%>
                        <%--<div class="zly_shop1">--%>
                            <%--<a>彻底清除隐私信息</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="zlylef14_4" style="margin-left:20px;">--%>
                        <%--<div class="zly_shop1">--%>
                            <%--<a>自动粉碎隐私照片</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="zlylef2_15">--%>
                    <%--<div class="zlylef15_1">--%>
                        <%--<img src="${baseurl}res/images/new/estimate/sp_7.png" alt="">--%>
                    <%--</div>--%>
                    <%--<div class="zlylef15_2">--%>
                        <%--<p style="color:#000000;font-weight:bold;">如果你的旧手机银行卡被盗刷，爱收宝理赔10000元</p>--%>
                        <%--<p style="margin-top:14px;">我们针对所有的手机，都会经过严格的数据删除操作，保障用户的合法权利不受侵害，</p>--%>
                        <%--<p>为用户解决后顾之忧</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
                </c:if>
                <div class="zlylef2_11" >
                    <div class="zlylef11_1">
                        <p><a name="zly_cjwt">常见问题</a><span style="font-size:12px;float:right;color:#999999">回收前有任何担忧或者不解，请向客服咨询</span></p>
                    </div>
                    <div class="zlylef11_2">
                        <a href="http://kefu.qycn.com/vclient/chat/?websiteid=113372" target="_blank">联系客服</a>
                    </div>
                </div>
                <div class="zlylef2_12" >
                    <p><span class="radio">Q</span><span class="radio_con">提交订单的价格是不是成交价?</span></p>
                    <p style="margin-top:10px;"><span class="radio1">A</span><span class="radio_con1">物件实际情况和提交信息一致，则会按照订单提交价格和您交易，目前我们97%的订单都是原价交易。</span></p>
                    <p style="margin-left:29px;">如果检测结果有差异，价格会有一定浮动，我们会主动联系您确认价格，若您不接受价格，爱收宝会为您退回物件，</p>
                    <p style="margin-left:29px;">并承担所有的快递费用。</p>
                    <p style="margin-left:29px;">同时网站为用户提供了一项贴心的服务：退回的物件网站免费提供顺丰保价。请您当着快递的面进行物品签收，若由</p>
                    <p style="margin-left:29px;">于运输途中导致物件损坏请及时拍照拒收此包裹并联系顺丰客服和爱收宝客服。</p>
                    <p style="margin-top:30px;"><span class="radio">Q</span><span class="radio_con">提交订单后我该做什么？</span></p>
                    <p style="margin-top:10px;"><span class="radio1">A</span><span class="radio_con1">上门回收：请保持电话畅通，携带好本人身份证，等待爱收宝小哥上门回收。</span></p>
                    <p style="margin-left:29px;">门店交易：手机保持正常开机携带好本人身份证，3天内去门店质检完成交易。</p>
                    <p style="margin-left:29px;">物流交易：请在24小时内选择顺丰到付，把您的手表快递给我们，在订单中心填入您的快递单号。我们收到您的物件</p>
                    <p style="margin-left:29px;">后会进行质检，质检完成会给您放款。</p>
                    <p style="margin-top:30px;"><span class="radio">Q</span><span class="radio_con">快递费是谁承担，标准是什么？</span></p>
                    <p style="margin-top:10px;"><span class="radio1">A</span><span class="radio_con1">手表：爱收宝江浙沪承担12元，除江浙沪以外承担22元；高仿的、山寨的、保价费等其他费用用户自费
。</span></p>
                    <p style="margin-top:30px;"><span class="radio">Q</span><span class="radio_con">订单提交后我从哪里可以查看到交易进度？</span></p>
                    <p style="margin-top:10px;"><span class="radio1">A</span><span class="radio_con1">登录订单中心或者关注爱收宝微信账号，随时查看处理进度，我们会及时更新订单状态。</span></p>
                    <c:if test="${ptype=='phone'}"><p style="margin-top:40px;"><a href="${baseurl}estimate/moreHelp" target="_blank" style="color:#000000;text-decoration:none;">查看更多帮助说明>></a></p></c:if>
                </div>
            </div>
        </div>
        <div class="zltco_right">
            <div class="zly_ritop">
                <div class="zlyri_f1">
                    <p>${product.name}</p>
                </div>
                <div class="zlyri_f2">
                    <p style="margin-top:16px;margin-bottom:16px;"><span style="color:#FF6700;font-size:35px;">￥${quote}</span><span style="float: right;margin-top:25px;"><a href="javascript:window.location.href = document.referrer;">重新询价</a></span></p>
                    <p>服务承诺：<span id="areaname"></span>&nbsp;&nbsp;最快明天可以完成交易</p>
                    <p>交易方式：门店回收&nbsp;&nbsp;上门回收&nbsp;&nbsp;快递回收</p>
                </div>
                <div class="zly_lj">
                    <a href="#" id="estimate">立即回收</a>
                </div>
                <div class="zly_lj">
                    <a href="#" id="goMortgage">立即抵押</a>
                </div>
                <div>

                </div>
            </div>
            <div class="zlt_rido">
                <div class="zlt_rido1">
                    <a>保</a>
                </div>
                <div class="zlt_rido2">
                    <p>放心回收，保障有我</p>
                    <p>千万保障金保驾护航一路无忧</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="mt20"></div>
<form name="productBjForm" id="productBjForm" method="post" action="${baseurl}estimate/">
    <input type="hidden" name="productId" id="productId" value="${productId}"/>
    <input type="hidden" name="modeId" id="modeId" value="${modeId}"/>
    <input type="hidden" name="estimatePrice" id="estimatePrice" value="${quote}"/>
    <input type="hidden" name="pricerules" id="pricerules" value="${pricerules}"/>
    <input type="hidden" name="cityId" id="cityId" value="${cityId}"/>
    <input type="hidden" name="num" id="num" value="${num}"/>
    <input type="hidden" name="diamondDesc" id="diamondDesc" value="${diamondDesc}"/>
    <input type="hidden" name="isMortgage" id="isMortgage" value=""/>
</form>
<%@ include file="../common/footer.jsp"%>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=DeQszKLbgZNzVKY4ZflHkDbX"></script>
<script>
    $(document).ready(function(){
        if (navigator.userAgent.indexOf('Firefox') >= 0){
            $(" .zlylef2_1s").css("width","280.8px");
        }
    });
</script>
<script>
//    $("img.lazy").lazyload({effect: "fadeIn"});
    $("#estimate").on({
        click:function(){
            $("#productBjForm").submit();
        }
    });

    $("#goMortgage").on({
       click:function(){
           $("#isMortgage").attr("value", "1");
           $("#productBjForm").submit();
       }
    });

// 百度地图API功能
    var map = new BMap.Map("allmap");
    var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
    var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
    var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL});
    map.addControl(top_left_control);
    map.addControl(top_left_navigation);
    map.addControl(top_right_navigation);

<c:if test="${stores.size()<1}">
var point = new BMap.Point(0,0);
var marker = new BMap.Marker(point);  // 创建标注
map.addOverlay(marker);               // 将标注添加到地图中
</c:if>
    <c:forEach items="${stores}" var="store">
    <c:if test="${not empty store.longitude and not empty store.latitude}">
    var point = new BMap.Point(${store.longitude},${store.latitude});
    var marker = new BMap.Marker(point);  // 创建标注
    map.addOverlay(marker);               // 将标注添加到地图中
    </c:if>
    </c:forEach>
    map.centerAndZoom(point,15);
    map.enableScrollWheelZoom(true);

$(document).ready(function() {
    $.ajax({
        url: "${baseurl}area/"+${cityId},
        dataType: "json",
        async: true,
        data: { },
        type: "GET",
        success: function(data) {
//                console.log(data);
            var u = data.body, len = u.length;
            var res ="";
            var className = "";
            if(data.success) {
                $("#areaname").html(u.name);
            } else {
            }
        }
    });
});
</script>
</body>
</html>
