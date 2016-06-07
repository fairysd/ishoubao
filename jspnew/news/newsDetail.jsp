<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit"/>
    <meta content="zh-cn" http-equiv="content-language"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <title>爱收宝</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        .news{padding: 30px 0;text-align: center;background-color: #FBFBFB;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="mywrapper news">
    <div class="out_box">
        <img src="${mybaseurl}/res/images/v2/news${id}.jpg"/>
    </div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>