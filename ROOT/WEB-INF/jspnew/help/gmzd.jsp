<%--
  User: donny
  Date: 2/29/16
  Time: 09:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1"/>
    <meta name="renderer" content="webkit"/>
    <meta content="zh-cn" http-equiv="content-language"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <title>购买指导 - 帮助中心 - 爱收宝</title>
    <%@ include file="helpHeader.jsp" %>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="total">
    <div class="content">
        <%@ include file="helpLeft.jsp" %>
        <div class="content_2">
            <div class="content_2top">
                <a>首页>购买指导</a>
            </div>
            <div class="content_2co">
                <div class="content_2co1">
                    <a>购买指导</a>
                </div>
                <div class="content_2co2">
                    <div class="co2_content">
                        <h5>一、挑选商品</h5>
                        <p>您可以通过搜索功能输入关键字的方法查找您想要购买的商品, 还可以通过分类导航查看商品分类并找到您想要购买的商品。</p>
                        <img src="${baseurl}res/images/new/help/gmzd01.jpg" alt="" style="">
                        <h5>二、加入购物车</h5>
                        <p>在您想要购买的详情页点击“加入购物车”，商品会添加到您的购物车中，您可以继续挑选商品。您也可以点击“立即购买”，马上结算。</p>
                        <img src="${baseurl}res/images/new/help/gmzd03.jpg" alt="" style="margin-left:120px;">
                        <h5>三、确认购买</h5>
                        <p>当您挑选好需购买的商品后，点击购物车图标或者“结算”按钮跳转至订单信息页面。</p>
                        <img src="${baseurl}res/images/new/help/gmzd04.jpg" alt="" style="margin-left:120px;">
                        <h5>四、填写订单信息</h5>
                        <p>1.填写收货人信息：收货人姓名，地址及电话等信息，并点击确认收货地址。</p>
                        <p>2.请填写正确完整的收货人姓名、收货人联系方式、详细的收货地址和邮编，否则将会影响到您的订单处理或配送。</p>
                        <img src="${baseurl}res/images/new/help/gmzd05.jpg" alt="" style="margin-left:250px;">
                        <h5>五、提交订单</h5>
                        <P>1.以上信息核实无误后，请点击“提交订单”，系统生成一个订单号，提示您已经成功提交订单。</P>
                        <p>2.订单提交成功后，您可以登陆“我的订单“管理或查询订单信息。</P>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
