<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<%@ taglib prefix="asb" uri="/cmstag" %>
<c:forEach items="${cats}" var="cat">
    <c:if test="${curId == cat.id}">
        <c:set var="seoTitle" value="${cat.seoTitle}"/>
        <c:set var="seoKey" value="${cat.seoKey}"/>
        <c:set var="seoDesc" value="${cat.seoDesc}"/>
    </c:if>
</c:forEach>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit"/>
    <meta content="zh-cn" http-equiv="content-language"/>
    <meta name="keywords" content="<c:choose><c:when test="${not empty seoKey}">${seoKey}</c:when><c:otherwise>爱收宝，爱收宝资讯，爱收宝最新消息，爱收宝相关，爱收宝新闻</c:otherwise></c:choose>"/>
    <meta name="description" content="<c:choose><c:when test="${not empty seoDesc}">${seoDesc}</c:when><c:otherwise></c:otherwise></c:choose>"/>
    <title><c:choose><c:when test="${not empty seoTitle}">${seoTitle}</c:when><c:otherwise>爱收宝资讯</c:otherwise></c:choose></title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?0c974c3c7bb75a06befe38a2fc0293fe";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
    <style tepe="text/css">
    .container_newslist{
        background-color: #fafafa;
    }
    .newslist{        
        width: 1200px;
        margin: auto;
        height: 584px;
        padding: 68px 0;
    }
        .newslist>div{
            float: left;
        }
        .newslist .left{
            width: 20%;
            margin-right: 5%;
        }
        .newslist .right{
            width:75%;
        }
        .newslist .left h3{
            background-color: #dcdcdc; 
            font-size: 16px;
            font-family: 微软雅黑;
            font-color:#000;
            line-height: 40px;
            border-top: 2px solid #007af5;
            text-indent: 1em;
        }
        .newslist .left ul{
            margin-top: 15px;
        }
        .newslist .left ul li{
            font-size: 16px;
            font-family: 微软雅黑;
            font-color:#000;
            line-height: 40px;            
            text-indent: 2em;
        }
        .newslist .right h3{            
            font-size: 16px;
            font-family: 微软雅黑;
            font-color:#000;
            line-height: 40px;
            border-top: 2px solid #007af5;
            text-indent: 1em;
        }
        .newslist .right ul{
            background-color: #ffffff;
            height: 555px;
            padding-top: 10px;
        }
        .newslist .right ul li{
            font-size: 16px;
            font-family: 微软雅黑;
            font-color:#000;
            line-height: 40px;            
            text-indent: 0em;
            list-style: disc inside;
            border-bottom: 1px #d1d1d1 dotted;
            margin: 0 30px;
        }
        .newslist .right ul li span{
            float: right;
            padding-right: 15px;
        }
        .newslist .tcdPageCode{
            margin: 40px 0 0 30px;
        }
    </style>

</head>
    <body>
        <%@ include file="../common/header.jsp" %>
        <div class="container_newslist">
            <div class="newslist body">
                <div class="left">
                    <h3>咨询中心</h3>
                    <ul class="newsclass">
                        <%--@elvariable id="cat" type="cn.com.kpso.asb.model.CmsCategory"--%>
                        <c:forEach items="${cats}" var="cat">
                        <li><a href="${mybaseurl}/news/cat/${cat.id}" class="<c:if test="${curId == cat.id}">current</c:if>">${cat.name}</a></li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="right">
                    <h3>&nbsp;首页&nbsp;>&nbsp;新闻中心</h3>
                    
                    <ul class="news-list">
                    <c:if test="${empty curId}">
                        <asb:articlePos posId="1" count="10" res="testres">
                         <c:forEach items="${testres}" var="article">
                        <li><a href="${mybaseurl}/news/article/${article.id}">${article.title}<span></span></a></li>
                        </c:forEach>
                        </asb:articlePos>
                    </c:if>
                        <%--@elvariable id="article" type="cn.com.kpso.asb.model.CmsArticle"--%>

                        <c:if test="${not empty curId and articles.size() > 0}">
                        <c:forEach items="${articles}" var="article">
                        <li><a href="${mybaseurl}/news/article/${article.id}">${article.title}<span><fmt:formatDate value="${article.publishTime}" type="date" dateStyle="long"/>
                                </span></a></li>
                        </c:forEach>
                            <div class="tcdPageCode"></div>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
             
        <%@ include file="../common/footer.jsp" %>
        <script src="${baseurl}res/js/page.js"></script>
        <script>
            $(".tcdPageCode").createPage({
                pageCount:${pageCount},
                current:${curPage},
                backFn:function(p){
                    window.location.href="${mybaseurl}/news/cat/${curId}?pageNo="+p;
                }
            });
        </script>
    </body>
</html>