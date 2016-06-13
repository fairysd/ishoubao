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
    <title>注册账户 - 帮助中心 - 爱收宝</title>
    <%@ include file="helpHeader.jsp" %>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="total">
    <div class="content">
        <%@ include file="helpLeft.jsp" %>
        <div class="content_2">
            <div class="content_2top">
                <a>首页>注册账户</a>
            </div>
            <div class="content_2co">
                <div class="content_2co1">
                    <a>注册账户</a>
                </div>
                <div class="content_2co2">
                    <div class="co2_content">
                        <p>通过首页注册，点击页面右上角的注册按钮免费注册</p>
                        <img src="${baseurl}res/images/new/help/zczh01.jpg" alt="" style="margin-left:120px;">
                        <p>您可通过提示信息进行注册，按照提示填写准确信息，点击提交“立即注册”。</p>
                        <img src="${baseurl}res/images/new/help/zczh02.jpg" alt="" style="margin-left:120px;">
                        <p>用户名注册格式要求：英文，数字，下划线(其它格式符号不能注册)</p>
                        <p>密码：密码和确认密码要一致</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
