<%--
  User: donny
  Date: 1/17/16
  Time: 09:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp" %>
<%--@elvariable id="c" type="cn.com.kpso.asb.model.Category"--%>
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
        .orderinfo{padding:20px;}
        .orderinfo h3{color:#f39d12;}
        .orderinfo ul li{font-size:18px;padding-left:20px;}
        .orderinfo .trade_summary{padding:20px;}
    </style>
</head>
<body>
<%@ include file="library/nav.jsp" %>
<div class="orderinfo container fixbackground">
    <div class="row">
        <c:if test="${empty estimate.id}">
            <h3 class="text-center">请不要重复提交订单！</h3>
        </c:if>
        <c:if test="${not empty estimate.id}">
        <h3 class="text-center">订单提交成功!
        <c:if test="${estimate.tradeType=='1' or estimate.tradeType==''}">
            请在<span class="highlight">3</span>天之内去门店进行交易
        </c:if>
        <c:if test="${estimate.tradeType=='2'}">
        请将您的产品使用顺丰快递<strong>(到付)</strong>邮寄给我们!
        </c:if>
        </h3>
        <c:if test="${estimate.tradeType=='2'}">
        <ul class="list-unstyled">
            <li>收件人: 苏州爱收宝网络科技有限公司</li>
            <li>联系电话: 400-086-1131</li>
            <li>地址: 江苏省苏州市姑苏区园林路5-1号2楼</li>
        </ul>
        </c:if>
        </c:if>
    </div>
    <c:if test="${not empty estimate.id}">
    <div class="row">
        <div class="trade_summary">
            <table class="summary_table">
                <tr>
                    <th>订单编号：</th>
                    <td>${estimate.tradeNo}</td>
                </tr>
                <tr>
                    <th>订单金额：</th>
                    <td>&yen;${estimate.estimatePrice}</td>
                </tr>
                <c:if test="${estimate.tradeType=='1' or estimate.tradeType==''}">
                    <tr>
                        <th>门店交易：</th>
                        <td>${estimate.orgName}</td>
                    </tr>
                </c:if>
            </table>
            <c:if test="${estimate.tradeType=='1' or estimate.tradeType==''}">
            <div class="summary_extra">
                ${estimate.orgAddress}
            </div>
            </c:if>
            <div>
                <br><p>接下来您可以： <a href="${baseurl}">继续回收</a> | <a href="http://shop.aishoubao.com/user.php?act=estimate_list" target="_blank">查看我的订单</a></p>
            </div>
        </div>
    </div>
    </c:if>
</div>
<%@ include file="library/footer.jsp" %>
<%@ include file="common/js.jsp"%>
</body>
</html>
