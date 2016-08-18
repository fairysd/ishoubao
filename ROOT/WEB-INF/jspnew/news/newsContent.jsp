<%--@elvariable id="article" type="cn.com.kpso.asb.model.Article"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit"/>
    <meta content="zh-cn" http-equiv="content-language"/>
    <meta name="keywords" content="<c:choose><c:when test="${not empty article.seoKey}">${article.seoKey}</c:when><c:otherwise>${seoSetting["seo-common-key"]}</c:otherwise></c:choose>"/>
    <meta name="description" content="<c:choose><c:when test="${not empty article.seoDesc}">${article.seoDesc}</c:when><c:otherwise>${seoSetting["seo-common-desc"]}</c:otherwise></c:choose>"/>
    <title>${article.title} - 爱收宝</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        .news{padding: 30px 0;text-align: center;background-color: #FBFBFB;}
        .mywrapper.news h3{
            width: 1200px;
            margin:20px auto;
            text-align: left;
            font-size: 18px;
        }
        .mywrapper.news .out_box{
            font-size: 14px;
        }
    </style>
</head>
<%@ include file="../common/otherHeader.jsp"%>
<body>
<%@ include file="../common/header.jsp" %>
<div class="mywrapper news">
    <h3><a href="/">首页</a> >> ${article.catName}</h3>
    <div class="out_box">
        ${article.content}
    </div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>