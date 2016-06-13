<%--
  User: donny
  Date: 1/17/16
  Time: 09:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp" %>
<%--@elvariable id="product" type="cn.com.kpso.asb.model.Product"--%>
<%--@elvariable id="userEstimate" type="cn.com.kpso.asb.model.UserEstimate"--%>
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
        p {border-bottom:1px solid #ddd;padding-bottom: 10px;}
        .estimate {
            background-color: #fff;
            padding: 30px;
        }
        .nav{border:none;}

        .nav-tabs li {
        }

        .form-inline .form-control {
            width: 300px;
        }
        .bank{margin-top:20px;}
        .tab-pane{padding-top:20px;}
        .product .row{font-size:16px;}
        .price{color:#f39d12;font-size:26px;}
        p.service{cursor: pointer;}
         .nav-tabs {
            /*border-bottom:1px solid #f39d12;*/
        }

         .nav-tabs li {
            /*width: 200px;*/
        }

         .nav-tabs > li > a {
             color:#000;
             border:1px solid #dadada;
        }

         .nav-tabs > li > a:hover {
             background-color: #f5f5f5;
             border:1px solid #F38D12;;
            /*border: medium none;*/
            /*border-radius: 0;*/
            color:#000;
        }

         .nav-tabs > li.active > a,
         .nav-tabs > li.active > a:focus,
         .nav-tabs > li.active > a:hover {
            background-color: #fff !important;
            color:#F39D12;
             border:1px solid #f39d12;
        }
        .estimate .infotitle{font-size:14px;color:#0F2E4A;font-weight: bold;padding-top:20px;}
        #mdjy{padding-left:15px;}
    </style>
</head>
<body>
<%@ include file="library/nav.jsp" %>
<div class="estimate container">
    <div class="row">
        <div class="">
            <p class="infotitle">交易方式 | 苏州 </p>
            <div>
                <!-- Nav tabs -->
                <ul class="nav nav-tabs text-center" role="tablist">
                    <li role="presentation" class="active col-md-3"><a href="#mdjy" data-type="1" aria-controls="mdjy" role="tab" data-toggle="tab">门店交易</a></li>
                    <li class="col-md-3" role="presentation"><a href="#sfkd" aria-controls="sfkd" data-type="2" role="tab" data-toggle="tab">顺丰快递（包邮）</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="mdjy">
                        <p class="infotitle">选择门店</p>
                        <div class="" id="">
                            <form class="form-inline">
                            <select class="form-control" id="area">
                                <option>请选择区域</option>
                                <c:forEach items="${areas}" var="area">
                                    <option value="${area.id}">${area.name}</option>
                                </c:forEach>
                            </select>
                            <select class="form-control " id="shopId"><option>请选择门店</option></select>
                            </form>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="sfkd">
                        <img src="${baseurl}res/images/sfkd.jpg">
                    </div>
                </div>
            </div>
            <div>
                <p class="infotitle">联系方式</p>
                <form class="contact form-inline">
                    <div class="form-group">
                        <label class="sr-only" for="username">姓名</label>
                        <input type="text" class="form-control" id="username" placeholder="姓名">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="phone">手机号码</label>
                        <input type="text" class="form-control" id="phone" placeholder="手机号码,用来接收订单短信提醒">
                    </div>
                </form>
            </div>
            <div>
                <p class="infotitle">收款方式</p>
                <label class="radio-inline">
                    <input type="radio" class="payType" name="payType" value="1" checked> 现金支付
                </label>
                <label class="radio-inline">
                    <input type="radio" class="payType" name="payType" value="2"> 银行转账
                </label>
                <label class="radio-inline">
                    <input type="radio" class="payType" name="payType" value="3"> 支付宝
                </label>
                <label class="radio-inline">
                    <input type="radio" class="payType" name="payType" value="4"> 微信支付
                </label>
            </div>
            <div id="payTypeInfo" class="hide">
                <p class="infotitle">转账信息</p>
                <label class="sr-only" for="accountName">账户名</label>
                <input type="text" class="form-control" id="accountName" placeholder="账户名">
                <div class="bank">
                    <form id="bankinfo" class="contact form-inline">
                        <div class="form-group">
                            <label class="sr-only" for="bankName">选择银行</label>
                            <select class="form-control" id="bankName">
                                <option value="中国银行" selected>中国银行</option>
                                <option value="中国农业银行">中国农业银行</option>
                                <option value="中国建设银行">中国建设银行</option>
                                <option value="中国工商银行">中国工商银行</option>
                                <option value="招商银行">招商银行</option>
                                <option value="上海浦东发展银行">上海浦东发展银行</option>
                                <option value="中国邮政储蓄银行">中国邮政储蓄银行</option>
                                <option value="中国光大银行">中国光大银行</option>
                                <option value="中信银行">中信银行</option>
                                <option value="华夏银行">华夏银行</option>
                                <option value="兴业银行">兴业银行</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="bankCardno">银行卡号</label>
                            <input type="text" class="form-control" id="bankCardno" placeholder="请输入详细卡号,暂不支持信用卡!">
                        </div>
                    </form>
                </div>
            </div>
            <div class="product">
                <p class="infotitle">回收清单</p>
                <div class="row">
                    <div class="col-md-8"><p>物品名称</p><p>${product.name}</p></div>
                    <div class="col-md-4 text-right"><p>回收价格</p><p class="price">￥${userEstimate.estimatePrice}</p></div>
                </div>
                <p class="service"><input type="checkbox" id="fwtk" checked/> 我已接受“《爱收宝服务条款》"</p>
                <div class="text-center"><button type="button" class="btn btn-warning btn-lg btn-block" id="submitBtn">提交订单</button></div>
            </div>

        </div>
    </div>
</div>
<div class="modal fade serviceinfo">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">爱收宝服务条款</h4>
            </div>
            <div class="modal-body">
                <dl>
                <dt>1、服务条款的确认和接纳</dt>
                <dd>
                    <p> www.aishoubao.com（以下简称“爱收宝网”）服务的所有权、运作权和相关知识产权归苏州爱收宝网络科技有限公司所有。考虑到爱收宝网产品服务的重要性，注册爱收宝网的用户同意:<br>（1）提供及时、详尽及准确的个人资料。<br>（2 ）不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。</p>
                    <p>如果用户提供的资料不准确，不真实，不合法有效，爱收宝网保留结束用户使用爱收宝网各项服务的权利。用户在享用爱收宝网各项服务的同时，同意接爱收宝网提供的各类信息服务。</p>
                </dd>
                <dt>2、服务修订</dt>
                <dd><p>爱收宝网保留随时修改或中断服务而不需通知用户的权利。用户接受爱收宝网行使修改或中断服务的权利，爱收宝网不需对用户或第三方负责。</p></dd>

                <dt>3、温馨提示</dt>
                <dd>
                    <p>爱收宝网为保证您有一个愉快的售机体验，特做以下温馨提示：</p>
                    <p>（1）若您选择快递交易方式，江浙沪地区爱收宝网对手机数码平板类物品至多承担20元运费，对笔记本类物品至多承担40元运费，超出额度或需额外的保价与包装费用需由您承担。</p>
                    <p>（2）您的物品最终成交价格以专业质检后的结果为准，质检评估权归爱收宝网所有，若您不认可，快递交易方式的爱收宝网会为您免费安排退回。</p>
                    <p>（3）为保障您的权益同时避免不必要的纠纷，提示您可在将机器寄出前录制开机状态下伴随IMEI号的360度视频，认可要求：成像结果需清晰、视频中伴随录像时间、每拍摄角度至少保持5s、物品屏幕需在纯白背景下多角度拍摄。</p>
                    <p>（4）机器最终报价与您询价一致，或不一致但在您认同下交易并支付成功，将无法做支付与支付方式或支付类型的跟换与撤回处理。 </p>
                </dd>
                </dl>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
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
<%@ include file="library/footer.jsp" %>
<%@ include file="common/js.jsp" %>
<script>
    function payTypeChange(val) {
        switch (val) {
            case '1':
                $("#payTypeInfo").attr("class", "hide");
                $("#bankinfo").attr("class", "hide");
                break;
            case '2':
                $("#payTypeInfo").attr("class", "show");
                $("#bankinfo").attr("class", "show");
                break;
            case '3':
            case '4':
                $("#payTypeInfo").attr("class", "show");
                $("#bankinfo").attr("class", "hide");
                break;
        }
    }
    jQuery(function ($) {
        $(document).ready(function () {
            payTypeChange($(".payType:checked").val());
        });
    });
    $(".service").on({
       click:function() {
           $(".serviceinfo").modal();
       }
    });
    $('.nav-tabs > li > a').hover(function () {
//        console.log($(this).data("type"));
        $("#tradeType").attr("value", $(this).data("type"));
    });
    $(".payType").on({
        click:function(){
//            alert($(this).val());
            payTypeChange($(this).val());
            $("#payType").attr("value", $(this).val());
        }
    });
    $("#fwtk").on({
       click:function(){
           if (!$(this).is(':checked')){
               $("#submitBtn").attr("disabled",true);
           } else {
               $("#submitBtn").attr("disabled",false);
           }
       }
    });

    $("#area").on({
       change:function(){
           var areid = $(this).val();
           $.ajax({
               type:'get',
               url:"${baseurl}store/area/"+areid,
               dataType:'json',
               success: function(r) {
                   r = eval("(" + r + ")");
                   var u = r.body, y = u.length;
                   var t = "";
//                   console.log(r);
                   if (r.success && y) {
                       for (var w = 0; w < y; w++) {
                           var x = u[w];
                           t += '<option value="' + x.id + '">' + x.name + '</option>';
                       }
                       $("#shopId").html(t);
                   } else {
                       $("#shopId").html('<option>请选择门店</option>');
                   }
               }
           });
       }
    });
    $("#submitBtn").on({
       click:function(){
           var pt = $("#payType").val();
           var pAccountName = $("#accountName");
           var pBankName = $("#bankName");
           var pBankCardno = $("#bankCardno");
           var pTT = $("#tradeType");
           if (pt=="") pt=1;
           if (pTT.val()=="") {
               pTT.attr("value", "1");
           }
           if (pTT.val()=="1") {
               if ($("#shopId").val()=="请选择门店") {
                   alert("请选择门店!");
                   $("#shopId").focus();
                   return ;
               } else {
                   $("#myshopId").attr("value", $("#shopId").val());
               }
           }

           switch (pt) {
               case '1':
                   break;
               case '2':
                   if (pAccountName.val()!="") {
                       $("#myaccountName").attr("value", pAccountName.val());
                   } else {
                       alert("请输入账户名称!");
                       pAccountName.focus();
                       return ;
                   }
                   if(pBankName.val()!="") {
                       $("#mybankName").attr("value", pBankName.val());
                   } else {
                       alert("请选择银行!")
                       return ;
                   }
                   if (pBankCardno.val()!="") {
                       $("#mybankCardno").attr("value", pBankCardno.val());
                   } else {
                       alert("请输入正确的银行卡号!")
                       pBankCardno.focus();
                       return ;
                   }
                   break;
               case '3':
                   if (pAccountName.val()!="") {
                       $("#myaccountName").attr("value", pAccountName.val());
                   } else {
                       alert("请输入账户名称!");
                       pAccountName.focus();
                       return ;
                   }
                   break;
               case '4':
                   if (pAccountName.val()!="") {
                       $("#myaccountName").attr("value", pAccountName.val());
                   } else {
                       alert("请输入账户名称!");
                       pAccountName.focus();
                       return ;
                   }
                   break;
           }
           if ($("#username").val()=="") {
               alert("请输入姓名!")
               $("#username").focus();
               return;
           }
           if ($("#phone").val()=="") {
               alert("请输入手机号码!")
               $("#phone").focus();
               return;
           }
           $("#payType").attr("value", $(".payType:checked").val());
           $("#myusername").attr("value", $("#username").val());
           $("#myphone").attr("value", $("#phone").val());
           $("#productOrderForm").submit();
       }
    });
</script>

</body>
</html>
