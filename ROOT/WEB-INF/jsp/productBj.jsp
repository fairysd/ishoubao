<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp" %>
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
        body{margin-top:-20px;}
        .product{background-color: #fff;}
        .thumbnail{margin-top:10px;}
        .productRight{margin-left:-20px;margin-top:10px;}
        .service{height:80px;line-height: 80px;border:1px solid #DDDDDD;padding-left:20px;font-size:18px;}
        .quote{height:100px;line-height: 100px;border:1px solid #DDDDDD;padding-left:20px;font-size:30px;color: #f39d12;}
        .quote .price{font-size:48px;font-weight: bold;}
        .quote .pull-right{background-color: #f39d12;color:white;height:80px;line-height: 80px;margin-top:10px;margin-right:20px;width:260px;}
        .estimate:hover{cursor: pointer;}
        .helpinfo{padding:20px;}
        blockquote { border-left: 5px solid #F38D12; }
    </style>
</head>
<body> 
<%@ include file="library/nav.jsp" %>
<%@ include file="library/search.jsp"%>
<div class="product container">
    <div class="row">
        <div class="col-md-4">
            <div class="productLeft">
                <div class="thumbnail">
                    <img src="${product.picList[0]}" alt="${product.name}">
                    <div class="caption">
                        <h5 class="text-center">${product.name}</h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="productRight">
                <p class="quote">回收价: <span class="price">￥${quote}</span><span class="estimate pull-right text-center">马上去收钱</span></p>
                <div class="service">
                <ul class="list-inline">
                    <li>优质服务: </li>
                    <li><span class="glyphicon glyphicon-thumbs-up myorange"></span> 价格公道</li>
                    <li><span class="glyphicon glyphicon-time myorange"></span> 7天保价</li>
                    <li><span class="glyphicon glyphicon-search myorange"></span> 专业检测</li>
                    <li><span class="glyphicon glyphicon-ok myorange"></span> 隐私保护</li>
                    <li><span class="glyphicon glyphicon-flash myorange"></span> 闪电打款</li>
                </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<form name="productBjForm" id="productBjForm" method="post" action="${baseurl}estimate/">
    <input type="hidden" name="productId" id="productId" value="${productId}"/>
    <input type="hidden" name="modeId" id="modeId" value="${modeId}"/>
    <input type="hidden" name="estimatePrice" id="estimatePrice" value="${quote}"/>
    <input type="hidden" name="pricerules" id="pricerules" value="${pricerules}"/>
    <input type="hidden" name="cityId" id="cityId" value="${cityId}"/>
    <input type="hidden" name="num" id="num" value="${num}"/>
    <input type="hidden" name="diamondDesc" id="diamondDesc" value="${diamondDesc}"/>
</form>
<div class="info container fixbackground">
    <div class="helpinfo row">
        <c:if test="${ptype=='phone'}">
            <blockquote>
                <p>如何检测手机?</p>
            </blockquote>
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-1.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-2.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-3.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-4.png">
        </c:if>
        <c:if test="${ptype=='clock'}">
            <blockquote>
                <p>如何检测手表?</p>
            </blockquote>
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-1.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-2.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-3.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-4.png">
        </c:if>
        <c:if test="${ptype=='bag'}">
            <blockquote>
                <p>如何检测包?</p>
            </blockquote>
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-1.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-2.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-3.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-4.png">
        </c:if>
        <c:if test="${ptype=='gjs'}">
            <blockquote>
                <p>如何检测贵金属?</p>
            </blockquote>
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-1.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-2.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-3.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-4.png">
        </c:if>
        <c:if test="${ptype=='diamond'}">
            <blockquote>
                <p>如何检测钻石?</p>
            </blockquote>
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-1.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-2.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-3.png">
            <img class="lazy img-responsive" data-original="${baseurl}res/images/custom/phone-4.png">
        </c:if>

    </div>
</div>
<%@ include file="library/footer.jsp" %>
<%@ include file="common/js.jsp" %>
<script src="${baseurl}res/js/jquery.lazyload.min.js"></script>
 <script>
    $("img.lazy").lazyload({effect: "fadeIn"});
    $(".estimate").on({
        click:function(){
            $("#productBjForm").submit();
        }
    })
</script>
<script src="${baseurl}res/js/typeahead.bundle.js"></script>
<script src="${baseurl}res/js/search.js"></script>
</body>
 </html>
