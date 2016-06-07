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
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/tradeinfo.css">
    <style>
        #change-city{z-index: 5;position: relative;}
        #change-city .active{border:1px solid #e7e7e7;border-bottom-color: #ffffff;}
        .changecity{cursor: pointer;}
        #areaname{width: 60px;display: inline-block;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class = "apply_out">
    <form name="productOrderForm" id="productOrderForm" method="post" action="${baseurl}estimate/order">
        <input type="hidden" name="productId" id="productId" value="${userEstimate.productId}"/>
        <input type="hidden" name="modeId" id="modeId" value="${userEstimate.modeId}"/>
        <input type="hidden" name="estimatePrice" id="estimatePrice" value="${userEstimate.estimatePrice}"/>
        <input type="hidden" name="pricerules" id="pricerules" value="${userEstimate.pricerules}"/>
        <input type="hidden" name="cityId" id="cityId" value="${cityId}"/>
        <input type="hidden" name="shopId" id="myshopId" value="${userEstimate.shopId}"/>
        <input type="hidden" name="username" id="myusername" value="${userEstimate.username}"/>
        <input type="hidden" name="phone" id="myphone" value="${userEstimate.phone}"/>
        <input type="hidden" name="num" id="num" value="${userEstimate.num}"/>
        <input type="hidden" name="diamondDesc" id="diamondDesc" value="${userEstimate.diamondDesc}"/>
        <input type="hidden" name="tradeType" id="tradeType" value="${userEstimate.tradeType}"/>
        <input type="hidden" name="payType" id="payType" value="${userEstimate.payType}"/>
        <input type="hidden" name="bankName" id="mybankName" value="${userEstimate.bankName}"/>
        <input type="hidden" name="accountName" id="myaccountName" value="${userEstimate.accountName}"/>
        <input type="hidden" name="bankCardno" id="mybankCardno" value="${userEstimate.bankCardno}"/>
        </form>
    <div id = "ectradeapply">
        <h2>交易方式<i></i><span id="areaname">${areainfo.name}</span>
            <span id="change-city"><small id = "js-change-city">切换城市</small></span>
            <div style="position: relative;">
            <div class = "region_pop1">
                <div class = "hot_region"><span>热门城市:</span>
                    <ul>
                        <li><a class="changecity" data-id="856" data-value="苏州市">苏州</a></li>
                        <li><a class="changecity" data-id="2" data-value="北京市">北京</a></li>
                        <li><a class="changecity" data-id="795" data-value="上海市">上海</a></li>
                        <li><a class="changecity" data-id="2287" data-value="成都市">成都</a></li>
                        <li><a class="changecity" data-id="814" data-value="南京市">南京</a></li>
                    </ul>
                </div>
                <ul class = "region_area1">
                    <li class = "active" data-value="1">华北</li>
                    <li data-value="2">华东</li>
                    <li data-value="3">华南</li>
                    <li data-value="4">华中</li>
                    <li data-value="5">东北</li>
                    <li data-value="6">西南</li>
                    <li data-value="7">西北</li>
                </ul>
                <ul class = "region_list eregion_list1">
                    <li><h6>北京市</h6><span><a class="changecity" data-id="2" data-value="北京市">北京</a></span></li>
                    <li><h6>天津市</h6><span><a class="changecity" data-id="20" data-value="天津市">天津</a></span></li>
                    <li><h6>河北省</h6><span><a class="changecity" data-id="38" data-value="石家庄">石家庄</a></span></li>
                    <li><h6>山西省</h6><span><a class="changecity" data-id="222" data-value="太原市">太原</a></span></li>
                    <li><h6>山东省</h6><span><a class="changecity" data-id="1361" data-value="济南市">济南</a></span></li>
                </ul>
                <ul class = "region_list eregion_list2" style="display: none;">
                    <li><h6>上海市</h6><span><a class="changecity" data-id="795" data-value="上海市">上海</a></span></li>
                    <li><h6>江苏省</h6><span><a class="changecity" data-id="856" data-value="苏州市">苏州</a></span><span><a class="changecity" data-id="814" data-value="南京市">南京</a></span></li>
                    <li><h6>浙江省</h6><span><a class="changecity" data-id="930" data-value="杭州市">杭州</a></span></li>
                    <li><h6>安徽省</h6><span><a class="changecity" data-id="1032" data-value="合肥市">合肥</a></span><span><a class="changecity" data-id="1051" data-value="蚌埠市">蚌埠</a></span></li>
                    <li><h6>江西省</h6><span><a class="changecity" data-id="1249" data-value="南昌市">南昌</a></span></li>
                </ul>
                <ul class = "region_list eregion_list3" style="display: none;">
                    <li><h6>福建省</h6><span><a class="changecity" data-id="1168" data-value="厦门市">厦门</a></span><span><a class="changecity" data-id="1154" data-value="福州市">福州</a></span></li>
                    <li><h6>广东省</h6><span><a class="changecity" data-id="1974" data-value="深圳市">深圳</a></span><span><a class="changecity" data-id="1950" data-value="广州市">广州</a></span></li>
                    <li><h6>广西壮族</h6><span><a class="changecity" data-id="2095" data-value="南宁市">南宁</a></span></li>
                </ul>
                <ul class = "region_list eregion_list4" style="display: none;">
                    <li><h6>河南省</h6><span><a class="changecity" data-id="1519" data-value="郑州市">郑州</a></span></li>
                    <li><h6>湖北省</h6><span><a class="changecity" data-id="1696" data-value="武汉市">武汉</a></span></li>
                    <li><h6>湖南省</h6><span><a class="changecity" data-id="1813" data-value="长沙市">长沙</a></span></li>
                </ul>
                <ul class = "region_list eregion_list5" style="display: none;">
                    <li><h6>辽宁省</h6><span><a class="changecity" data-id="468" data-value="沈阳市">沈阳</a></span></li>
                    <li><h6>吉林省</h6><span><a class="changecity" data-id="583" data-value="长春市">长春</a></span></li>
                    <li><h6>黑龙江省</h6><span><a class="changecity" data-id="653" data-value="哈尔滨">哈尔滨</a></span></li>
                </ul>
                <ul class = "region_list eregion_list6" style="display: none;">
                    <li><h6>重庆市</h6><span><a class="changecity" data-id="2247" data-value="重庆市">重庆</a></span></li>
                    <li><h6>四川省</h6><span><a class="changecity" data-id="2287" data-value="成都市">成都</a></span></li>
                    <li><h6>贵州省</h6><span><a class="changecity" data-id="2490" data-value="贵阳市">贵阳</a></span></li>
                    <li><h6>云南省</h6><span><a class="changecity" data-id="2588" data-value="昆明市">昆明</a></span></li>
                </ul>
                <ul class = "region_list eregion_list7" style="display: none;">
                    <li><h6>陕西省</h6><span><a class="changecity" data-id="2815" data-value="西安市">西安</a></span></li>
                    <li><h6>新疆</h6><span><a class="changecity" data-id="3115" data-value="乌鲁木齐">乌鲁木齐</a></span></li>
                </ul>
            </div>
            </div>
        </h2>
        <div class = "pickup-type" id = "js-pickup-type">
            <ul class = "pickup-nav">
                <li class = "active" data-trade="pickup-outlets">
                    <div class = "item">线下门店</div>
                </li>
                <%--<li data-trade="pickup-ondoor">--%>
                    <%--<div class = "item">当面交易</div>--%>
                <%--</li>--%>
                <li data-trade="pickup-express" style="margin-left:170px;">
                    <div class = "item">顺丰快递</div>
                    <div class="img-wrap">
                        <img class="nav-express-content" src="${baseurl}res/images/wuliu.jpg" style="margin-left:20px;width:550px;">
                    </div>
                </li>
            </ul>
            <!-- 交易具体信息 -->
            <div class = "pickup-content pickup-outlets">
                <!-- 线下门店 特有的内容 -->
                <div class = "pickup-outlets-only">
                    <div id = "js-select-outlets">
                        <h3 class = "pull-left">选择门店<i></i></h3>

                        <div class = "region">
                            <b>${areas[0].name}</b>
                            <ul class="myArea">
                                <c:forEach items="${areas}" var="area" varStatus="st">
                                <li data-region-id = "${area.id}" class = "<c:if test="${st.first}">active</c:if>">${area.name}</li>
                                </c:forEach>
                            </ul>
                        </div>
                        <ul class = "shop-list">
                        </ul>
                        <hr>
                    </div>
                    <div class="pickup-ondoor-map pickup-outlets-only">
                        <div class = "map" id="allmap"></div>
                    </div>
                </div>
                <!-- 收款 -->
                <h3>收款</h3>
                <div class="pickup-ondoor-map pickup-ondoor-only">
                    <div class = "map"></div>
                </div>
                <ul class = "collection">
                    <li>
                        <label>联系方式</label>
                        <ul class = "item-wrap clearfix">
                            <li class = "verify-username">
                                <div class = "item">
                                    <input type = "text" name="username" id="username" placeholder = "姓名" class = "placeholder">
                                </div>
                            </li>
                            <li class = "verify-mobile">
                                <div class = "item">
                                    <input type = "text" name="phone" id="phone" maxlength = "11" placeholder = "手机号码" class = "placeholder">
                                </div>
                                <p>用来接收订单提醒短信</p>
                            </li>
                        </ul>
                    </li>
                    <%--<li class = "pickup-ondoor-only">--%>
                        <%--<label>取货方式</label>--%>
                        <%--<ul class = "item-wrap clearfix" id = "js-pickup">--%>
                            <%--<li class = "metro-pickup pickup-ondoor-only" data-pickup-type = "4">--%>
                                <%--<div class = "item">地铁站取货</div>--%>
                                <%--<ul class = "metro-line payment-content">--%>
                                    <%--<li>地铁站取货</li>--%>
                                    <%--<li data-metro-line-id = "1">1号线</li>--%>
                                    <%--<li data-metro-line-id = "2">2号线</li>--%>
                                    <%--<li data-metro-line-id = "3">3号线</li>--%>
                                    <%--<li data-metro-line-id = "4">4号线</li>--%>
                                    <%--<li data-metro-line-id = "6">6号线</li>--%>
                                    <%--<li data-metro-line-id = "7">7号线</li>--%>
                                    <%--<li data-metro-line-id = "8">8号线</li>--%>
                                    <%--<li data-metro-line-id = "9">9号线</li>--%>
                                    <%--<li data-metro-line-id = "10">10号线</li>--%>
                                    <%--<li data-metro-line-id = "11">11号线</li>--%>
                                    <%--<li data-metro-line-id = "21">12号线</li>--%>
                                    <%--<li data-metro-line-id = "22">13号线</li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li class = "ondoor-pickup pickup-ondoor-only" data-pickup-type = "2">--%>
                                <%--<div class = "item">上门取货</div>--%>
                                <%--<div class = "ondoor-address payment-content clearfix">--%>
                                    <%--<div class = "select ondoor-region">--%>
                                        <%--<b>中环以内地区</b>--%>
                                        <%--<ul>--%>
                                            <%--<li data-value = "3">杨浦区</li>--%>
                                            <%--<li data-value = "4">闵行区</li>--%>
                                            <%--<li data-value = "5">徐汇区</li>--%>
                                            <%--<li data-value = "6">长宁区</li>--%>
                                            <%--<li data-value = "7">静安区</li>--%>
                                            <%--<li data-value = "8">卢湾区</li>--%>
                                            <%--<li data-value = "9">虹口区</li>--%>
                                            <%--<li data-value = "10">黄浦区</li>--%>
                                            <%--<li data-value = "11">浦东新区</li>--%>
                                            <%--<li data-value = "12">闸北区</li>--%>
                                            <%--<li data-value = "13">普陀区</li>--%>
                                            <%--<li data-value = "14">宝山区</li>--%>
                                            <%--<li data-value = "15">松江区</li>--%>
                                            <%--<li data-value = "16">嘉定区</li>--%>
                                            <%--<li data-value = "615">青浦区</li>--%>
                                            <%--<li data-value = "616">奉贤区</li>--%>
                                            <%--<li data-value = "617">南汇区</li>--%>
                                            <%--<li data-value = "618">崇明县</li>--%>
                                            <%--<li data-value = "619">金山区</li>--%>
                                        <%--</ul>--%>
                                    <%--</div>--%>
                                    <%--<div class = "select ondoor-addr">--%>
                                    <%--</div>--%>
                                    <%--<input class = "ondoor-detail-addr placeholder" type = "text"--%>
                                           <%--placeholder = "请输入详细地址">--%>
                                <%--</div>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                    <li>
                        <label>收款方式</label>
                        <ul class = "item-wrap clearfix" id = "js-payment">
                            <li class = "myPayment bank-payment" data-payment-type = "2">
                                <div class = "item">网银转账</div>
                                <div class = "bank-info payment-content clearfix">
                                    <div class = "select">
                                        <b>请选择收款银行</b>
                                        <ul class="bankType">
                                            <li data-value = "中国银行">中国银行</li>
                                            <li data-value = "中国农业银行">中国农业银行</li>
                                            <li data-value = "中国建设银行">中国建设银行</li>
                                            <li data-value = "招商银行">招商银行</li>
                                            <li data-value = "中国工商银行">中国工商银行</li>
                                            <li data-value = "上海浦东发展银行">上海浦东发展银行</li>
                                            <li data-value = "中国邮政储蓄银行">中国邮政储蓄银行</li>
                                            <li data-value = "中信银行">中信银行</li>
                                            <li data-value = "中国光大银行">中国光大银行</li>
                                            <li data-value = "华夏银行">华夏银行</li>
                                            <li data-value = "兴业银行">兴业银行</li>
                                        </ul>
                                    </div>
                                    <input class = "bank-username placeholder" name="accountName" id="accountName" type = "text" placeholder = "开户姓名">

                                    <div>
                                        <input class = "bank-card placeholder" name="bankCardno" id="bankCardno" type = "text" maxlength = "19"
                                               placeholder = "请输入详细卡号">

                                        <p>暂不支持信用卡，请填借记卡号</p>
                                    </div>
                                </div>
                            </li>
                            <li class = "myPayment cash-payment pickup-outlets-only pickup-ondoor-only active" data-payment-type = "1">
                                <div class = "item ">现金收款</div>
                            </li>
                            <li class = "myPayment wechat-payment" data-payment-type = "4">
                                <div class = "item">微信收款</div>
                                <p class="weixinTip" style="display:none;">请填写正确的手机号码,用于微信收款!</p>
                            </li>
                        </ul>
                    </li>
                    <%--<li class = "pickup-ondoor-only" id = "js-trade-time-wrap">--%>
                        <%--<label>交易时间</label>--%>
                        <%--<ul class = "item-wrap clearfix">--%>
                            <%--<li class = "trade-time">--%>
                                <%--<div class = "item">--%>
                                    <%--<span data-date = "2016-03-02">03-02 (星期三)</span>--%>
                                    <%--<ol>--%>
                                        <%--<li class = "active" data-date = "2016-03-02">03-02 (星期三)</li>--%>
                                        <%--<li data-date = "2016-03-03">03-03 (星期四)</li>--%>
                                        <%--<li data-date = "2016-03-04">03-04 (星期五)</li>--%>
                                        <%--<li data-date = "2016-03-05">03-05 (星期六)</li>--%>
                                        <%--<li data-date = "2016-03-06">03-06 (星期日)</li>--%>
                                        <%--<li data-date = "2016-03-07">03-07 (星期一)</li>--%>
                                        <%--<li data-date = "2016-03-08">03-08 (星期二)</li>--%>
                                    <%--</ol>--%>
                                <%--</div>--%>
                                <%--<p style = "right: -300px;">7天内有效</p>--%>
                            <%--</li>--%>
                        <%--</ul>--%>
                    <%--</li>--%>
                </ul>
            </div>
        </div>
        <!-- 回收清单 -->
        <h2 class = "cart-list-title">回收清单<span>同一个型号机器在5天内不可交易超过5台以上</span></h2>
        <table class = "cart-list">
            <thead>
            <tr>
                <th>物品名称</th>
                <th>最高报价</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${product.name}</td>
                <td class = "mark">￥${userEstimate.estimatePrice}</td>
            </tr>
            </tbody>
        </table>
        <div class = "summary">
            <div class = "footer">
                <p>点击“确认结账”即表示您同意<a href = "${baseurl}estimate/service" target = "_blank">爱收宝服务条款</a></p>
                <span class = "submit" id = "js-submit">确认结账</span>
            </div>
        </div>
    </div>
</div>
<div class="mt20"></div>
<div id="regWin" style="display: none;text-align:center;padding:10px;">
    <p>您还没有注册并绑定手机号!<br>请使用微信扫描下方二维码进行操作.</p>
    <p style="color:red;font-weight:bold;">请您注册完成后,提交订单!</p>
    <p><img src="${baseurl}res/images/new/regCode.png" width="150" height="150"/></p>
</div>
<%@ include file="../common/footer.jsp"%>
<script type="text/javascript" src="${baseurl}res/js/layer/layer.js"></script>
<script>
    var longitude = "";
    var latitude = "";
    function getShopsByArea(areaId) {
        $.ajax({
            url: "${baseurl}store/listByArea/"+areaId,
            dataType: "json",
            async: true,
            data: { },
            type: "GET",
            success: function(data) {
//                console.log(data);
                var u = data.body, len = u.length;
                var res ="";
                if(len > 0) {
                    for (var i = 0; i<len; i++) {
                        res += '<li data-value="'+u[i].id+'" data-longitude="'+u[i].longitude+'" data-latitude="'+u[i].latitude+'"><i></i>'+u[i].name+' &nbsp;&nbsp;'+u[i].address+'</li>';
                    }
//                            console.log(res);
                    $(".shop-list").html(res);
                    $('.shop-list li').on('click', function () {
                        $(this).activeClass();
                        $("#myshopId").attr("value", $(this).data("value"));
                        longitude = $(this).data("longitude");
                        latitude = $(this).data("latitude");
                        initMap(longitude, latitude);
                    });
                } else {
                    $(".shop-list").html('暂时无门店,请选择其它区域!');
                    $("#myshopId").attr("value", "");
                }
            }
        });
    }

    function checkMobile() {
        var res = false;
        var phone = $("#phone").val();
        if ($("#phone").val()=="" || !telRuleCheck2($("#phone").val())) {
            alert("请输入正确的手机号码!");
            $("#phone").focus();
            return false;
        }
        $.ajax({
            url: '${baseurl}user/checkmobile/'+phone,
            dataType: "json",
            async: false,
            data: { },
            type: "GET",
            success: function(data) {
//                console.log(data);
                if(data.success) {
                    // registed
                    res = true;

                } else {
                    layer.open({
                        type: 1,
                        title:'提示',
                        area: ['360px', '280px'],
                        shadeClose: true, //点击遮罩关闭
                        content: $('#regWin')
                    });
                }
            }
        });

        return res;
    }

    $(function(){
        getShopsByArea(${areas[0].id});
        var paymentType = "1";
        var bankName = "";



        $(".wechat-payment").on({
           "click":function(){
               $(".weixinTip").show();
               $("#phone").focus();
           }
        });

        $(".bank-payment").on({
            "click":function(){
                $(".weixinTip").hide();
            }
        });

        <c:if test="${empty userEstimate.payType}">$("#payType").attr("value", "1");</c:if>

        $(".myPayment").on({
           "click":function(){
               paymentType = $(this).data("payment-type");
//               console.log(paymentType);
               $("#payType").attr("value", paymentType);
           }
        });

        $(".bankType li").on({
            "click":function(){
                bankName = $(this).data("value");
//                console.log(bankName);
                $("#mybankName").attr("value", bankName);
            }
        });

        $(".myArea li").on({
            "click":function(){
                var areaId = $(this).data("region-id");
//                console.log(areaId);
                getShopsByArea(areaId);
                $('.region').find('ul').hide();
            }
        });

        $('#phone').on({
           "blur":function(){
//               checkMobile();
           }
        });

       $("#js-submit").on({
           "click":function(){
               if ($("#username").val()=="" || !nameRuleCheck2($("#username").val())) {
                   alert("请输入正确的姓名!");
                   $("#username").focus();
                   return;
               }
               if ($("#phone").val()=="" || !telRuleCheck2($("#phone").val())) {
                   alert("请输入正确的手机号码!");
                   $("#phone").focus();
                   return;
               }
//               if(!checkMobile()) return;

               switch (parseInt(paymentType)) {
                   case 1: //现金
                       break;
                   case 2: //银行转账
                           if(bankName==""||typeof(bankName)=="undefined") {
                               alert("请选择银行!")
                               return ;
                           }
                       var pAccountName = $("#accountName");
                       var pBankCardno = $("#bankCardno");
                       if (pAccountName.val()!="" && nameRuleCheck2(pAccountName.val())) {
                           $("#myaccountName").attr("value", pAccountName.val());
                       } else {
                           alert("请输入正确的账户名称!");
                           pAccountName.focus();
                           return ;
                       }
                       if (pBankCardno.val()!="" && cardNoRuleCheck2(pBankCardno.val())) {
                           $("#mybankCardno").attr("value", pBankCardno.val());
                       } else {
                           alert("请输入正确的银行卡号!")
                           pBankCardno.focus();
                           return ;
                       }
                       break;
                   case 4:
                       if ($("#phone").val()=="") {
                           alert("请输入微信帐号手机号码!")
                           $("#phone").focus();
                           return;
                       } else {
                           $("#myaccountName").attr("value", $("#phone").val());
                       }
                       break;
               }

               var tt = $(".pickup-nav li.active").data("trade");
               var tradeType = "";
               if (tt=="pickup-outlets") {
                   // 门店
                   tradeType = "1";
                   if ($("#myshopId").val()=="") {
                       alert("请选择门店!")
                       return;
                   }
               } else if(tt == "pickup-express") {
                   // 快递
                   tradeType = "2";
                   if (parseInt(paymentType)==1) {
                       alert("请选择支付方式!")
                       return ;
                   }
               }
               $("#tradeType").attr("value", tradeType);
//               console.log("交易方式:"+tradeType);
//               console.log("支付方式:"+paymentType);
//               console.log("银行:"+bankName);
               $("#payType").attr("value", $(".payType:checked").val());
               $("#myusername").attr("value", $("#username").val());
               $("#myphone").attr("value", $("#phone").val());
               var data = $("#productOrderForm").serialize();
//               console.log(data);

               $("#productOrderForm").submit();
           }
       });

        function getByteLen(str) {
            var cArr = str.match(/[^\x00-\xff]/ig);
            return str.length + (cArr == null ? 0 : cArr.length);
        }

        $(".changecity").on({
            "click":function(){
                var cityid = $(this).data("id");
                var cityname = $(this).data("value");
                if(getByteLen(cityname)>6) {
                    $("#areaname").width(80);
                    $(".region_pop1").css("left", "196px");
                } else {
                    $("#areaname").width(60);
                    $(".region_pop1").css("left", "176px");
                }
                $("#areaname").html(cityname);
                $("#cityId").val(cityid);

                $.ajax({
                    url: "${baseurl}area/getareasByCityid/"+cityid,
                    dataType: "json",
                    async: true,
                    data: { },
                    type: "GET",
                    success: function(data) {
//                console.log(data);
                        var u = data.body, len = u.length;
                        var res ="";
                        var className = "";
                        if(len > 0) {
                            for (var i = 0; i<len; i++) {
                                if(i==0) {
                                    className = "active";
                                    $(".region b").html(u[0].name);
                                    getShopsByArea(u[0].id);
                                } else {
                                    className = "";
                                }
                                res += '<li data-region-id="'+u[i].id+'" class="'+className+'">'+u[i].name+'</li>';
                            }
//                            console.log(res);
                            $(".myArea").html(res);
                            $(".myArea li").on({
                                "click":function(){
                                    var areaId = $(this).data("region-id");
                                    getShopsByArea(areaId);
                                    $('.region').find('ul').hide();
                                }
                            });

                        } else {
                        }
                    }
                });


            }
        });

    });
</script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=DeQszKLbgZNzVKY4ZflHkDbX"></script>
<script type="text/javascript">
    function initMap(longitude, latitude) {
        // 百度地图API功能
        var map = new BMap.Map("allmap");
        var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
        var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
        var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL});
        map.addControl(top_left_control);
        map.addControl(top_left_navigation);
        map.addControl(top_right_navigation);
        if (longitude=="" || latitude =="") {
            var point = new BMap.Point(0,0);
            map.centerAndZoom(point, 18);
        } else {
            var point = new BMap.Point(longitude,latitude);
            map.centerAndZoom(point,18);
        }
        map.enableScrollWheelZoom(true);
        var marker = new BMap.Marker(point);  // 创建标注
        map.addOverlay(marker);               // 将标注添加到地图中
        marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
    }
</script>
</body>
</html>
