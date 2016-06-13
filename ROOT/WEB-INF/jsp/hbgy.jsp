<%--
  User: donny
  Date: 1/17/16
  Time: 09:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>环保公益-爱收宝</title>
    <%@ include file="library/header.jsp" %>
</head>
<body>
<%@ include file="library/nav.jsp" %>
<div class="container">
    <div class="row">
        <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/gy/1huanbao.gif">
        <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/gy/2ai.gif">
        <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/gy/3zixun.gif">
        <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/gy/4zhichi.gif">
        <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/gy/5jigou.gif">
        <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/gy/6huodong.gif">
        <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/gy/7gongyi.gif">
        <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/gy/8jinji.gif">
        <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/gy/9huoban.gif">
    </div>
</div>

<%@ include file="library/footer.jsp" %>
<%@ include file="common/js.jsp"%>
<script src="${baseurl}res/js/jquery.lazyload.min.js"></script>
<script type="text/javascript" charset="utf-8">
    var baseurl = "${baseurl}";
    $(function() {
        $("img.lazy").lazyload({effect: "fadeIn"});
    });
</script>
</body>
</html>
