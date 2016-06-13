<%--
  User: donny
  Date: 1/17/16
  Time: 09:52
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp" %>
<%--@elvariable id="c" type="cn.com.kpso.asb.model.Category"--%>
<%--@elvariable id="p" type="cn.com.kpso.asb.model.Product"--%>
<%--@elvariable id="product" type="cn.com.kpso.asb.model.Product"--%>
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
        .productList {
            padding-top: 20px;
            background-color: #fff;
        }

        .leftnav span {
            vertical-align: sub;
        }

        .leftnav .list-group-item {
            height: 50px;
            line-height: 30px;
        }

        .leftnav .list-group .active {
            background-color: #f39d12;
            color: #fff;
            border-color: #f39d12;
        }

        .leftnav a {
            background-color: #0F2E4A;
            color: #fff;
            border-color: #0F2E4A;
        }

        .leftnav a:hover,
        .leftnav a:active,
        .leftnav a:focus {
            background-color: #f39d12;
            color: #fff;
            border-color: #f39d12;
        }

        .table > tbody > tr > td.active {
            background-color: #0F2E4A;
        }

        .table > tbody > tr > td.active a {
            color: #fff;
        }
        .table .more{display: none;}

        a {
            color: #0F2E4A;
            text-decoration: none;
        }

        a:hover, a:focus, a:visited {
            text-decoration: none;
        }
        .product .title{height:40px;line-height: 40px;background-color: #f39d12;color:white;margin-left:0px;margin-right:0px;}
        .product .title .col-md-10{font-size:18px;}
        .product .title .num{font-size: 16px;}

        .productList .thumbnail {
            border: none;
            height:295px;
        }

        .productList .thumbnail:hover {
            border: 1px solid #f39d12;
        }
        .productList .thumbnail h5{height:30px;overflow:hidden;text-overflow:ellipsis;}

        .productList .thumbnail p {
            background-color: #f39d12;
            height: 25px;
            line-height: 25px;
            color: #fff;
        }

        .productList .thumbnail .price {
            font-size: 16px;
            font-weight: bold;
        }

        .pagination > .active > a, .pagination > .active > a:focus, .pagination > .active > a:hover, .pagination > .active > span, .pagination > .active > span:focus, .pagination > .active > span:hover {
            border-color: #f39d12;
            background-color: #f39d12;
        }

    </style>
</head>
<body>
<%@ include file="library/nav.jsp" %>
<%@ include file="library/search.jsp"%>
<div class="container productList">
    <ul class="row">
        <div class="leftnav col-md-2">
            <div class="list-group">
                <a href="${baseurl}category/08d2d4cbf39748f08d56b26ba29266aa/0" class='list-group-item<c:if test="${pid=='08d2d4cbf39748f08d56b26ba29266aa'}"> active</c:if>'> <span class="glyphicon glyphicon-phone" style="font-size:20px;"></span> 手机<span class="pull-right">></span></a>
                <a href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs" class="list-group-item"><span class="glyphicon glyphicon-yen" style="font-size: 20px;"></span> 黄金<span class="pull-right">></span></a>
                <a href="${baseurl}category/47f288756f1a4c5ebac0a2baf1f5ee80/0" class="list-group-item"><span class="glyphicon glyphicon-king" style="font-size: 20px;"></span> 贵金属<span class="pull-right">></span></a>
                <a href="${baseurl}category/08d2d4cbff6j48f08d56b26ba29266aa/0" class='list-group-item<c:if test="${pid=='08d2d4cbff6j48f08d56b26ba29266aa'}"> active</c:if>'><span class="glyphicon glyphicon-time" style="font-size: 20px;"></span> 名表<span class="pull-right">></span></a>
                <a href="${baseurl}category/08d2d4cbf3974d8i8d56b26ba29266aa/0" class='list-group-item<c:if test="${pid=='08d2d4cbf3974d8i8d56b26ba29266aa'}"> active</c:if>'><span class="glyphicon glyphicon-briefcase" style="font-size: 20px;"></span> 名包<span class="pull-right">></span></a>
                <a href="${baseurl}product/diamond" class="list-group-item"><span class="glyphicon glyphicon-heart-empty" style="font-size: 20px;"></span> 钻石<span class="pull-right">></span></a>
            </div>
        </div>
        <ul class="col-md-10 rightcontent">
            <ol class="breadcrumb">
                <li><a href="${baseurl}">首页</a></li>
                <li class="acive">产品回收</li>
            </ol>
            <c:if test="${ptype!='gjs' and empty q}">
            <div class="panel panel-default">
                <div class="panel-body">
                    <table class="table table-bordered text-center">
                        <c:forEach items="${subCategories}" var="c" varStatus="st">
                            <c:if test="${st.count%8==1}"><tr<c:if test="${st.index>=16}"> class="more"</c:if>></c:if>
                            <td class="<c:if test="${c.id==curId}">active</c:if>"><a href="${baseurl}category/${pid}/${c.id}"> ${c.name}</a></td>
                            <c:if test="${st.count%8==0}"></tr></c:if>
                        </c:forEach>
                    </table>
                    <a href="#" class="dismore pull-right">显示更多<span class="caret"></span></a>
                </div>
            </div>
            </c:if>
            <div class="product text-center">
                <div class="title row">
                    <div class="col-md-10 text-left">产品列表</div>
                    <div class="col-md-2 text-right">共<span class="num">${total}</span>个产品</div>
                </div>
                <div class="row mt10">
                    <c:if test="${products.size() == 0}">
                        <p>亲，找不到您要找的宝贝信息哦，详情可以咨询客服：400-086-1131.</p>
                    </c:if>
                    <c:forEach items="${products}" var="p">
                        <div class="col-md-3">
                            <a href="${baseurl}product/${p.id}<c:if test="${not empty ptype}">?ptype=${ptype}</c:if>">
                            <div class="thumbnail"<c:if test="${ptype=='gjs'}"> style="height:195px;" </c:if></div>
                                <img class="lazy" data-original="${p.picList[0]}" alt="${p.name}">
                                <div class="caption">
                                    <h5>${p.name}</h5>
                                    <c:if test="${ptype!='gjs'}"><p>最新回收价: <span class="price">￥<fmt:formatNumber value="${p.maxPrice}" pattern="#"/> </span></p></c:if>
                                </div>
                            </div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <nav class="text-right">
                <ul id="page"></ul>
            </nav>
        </div>
    </div>
</div>

<%@ include file="library/footer.jsp" %>
<%@ include file="common/js.jsp"%>
<script src="${baseurl}res/js/jquery.lazyload.min.js"></script>
<script src="${baseurl}res/js/bootstrap-paginator.min.js"></script>
<script src="${baseurl}res/js/typeahead.bundle.js"></script>
<script type="text/javascript" charset="utf-8">
    var baseurl = "${baseurl}";
    $(function() {
        $("img.lazy").lazyload({effect: "fadeIn"});
        var rowNum = $(".table tr td.active").parent().index();
        if (rowNum >= 2) {
            $(".more").show();
        }
        $(".dismore").click(function(){
            $(".more").toggle("fast");
        });
    });

    var options = {
        bootstrapMajorVersion:3,
        currentPage: ${curPage},
        numberOfPages:10,
        itemTexts: function (type, page, current) {
            switch (type) {
                case "first":
                    return "首页";
                case "prev":
                    return "上一页";
                case "next":
                    return "下一页";
                case "last":
                    return "末页";
                case "page":
                    return page;
            }
        },
        pageUrl: function(type, page, current){
            <c:if test="${not empty q}">
            return "${baseurl}product/searchq?q=${q}&pageNo="+page;
            </c:if>
            <c:if test="${empty q}">
            return "${baseurl}category/${pid}/${sid}?pageNo="+page;
            </c:if>

        },
        totalPages: ${pageCount}
    };

    $('#page').bootstrapPaginator(options);
</script>
<script src="${baseurl}res/js/search.js"></script>
</body>
</html>
