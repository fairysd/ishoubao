<%--
  User: donny
  Date: 2/25/16
  Time: 12:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta content="zh-cn" http-equiv="content-language" />
    <meta name="keywords" content="" />
    <meta name="description" content=""/>
    <title>产品分类 - 爱收宝</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style type="text/css">
        @font-face {
            font-family: 'iconfont';
            src: url('http://at.alicdn.com/t/font_1456796825_9367523.eot'); /* IE9*/
            src: url('http://at.alicdn.com/t/font_1456796825_9367523.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
            url('http://at.alicdn.com/t/font_1456796825_9367523.woff') format('woff'), /* chrome、firefox */
            url('http://at.alicdn.com/t/font_1456796825_9367523.ttf') format('truetype'), /* chrome、firefox、opera、Safari, Android, iOS 4.2+*/
            url('http://at.alicdn.com/t/font_1456796825_9367523.svg#iconfont') format('svg'); /* iOS 4.1- */
        }

        .iconfont{
            font-family:"iconfont" !important;
            font-size:16px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;}

        li{list-style:none;}
        a{text-decoration:none;}
        .co2_2 p{padding-top:10px;padding-bottom:10px;}
        .sj1_ri input{border:dotted #FFFFFF;}
        .content1{width: 100%;height: 140px;background-color: #FAFAFA;overflow:hidden;}
        .con1_1{width:1200px;height:85px;margin:auto;margin-top: 40px;}
        .con1_1_1{width:600px;height:60px;background-color: #9A6600;overflow: hidden;float: left;}
        .sj_1{width:580px;height:40px;margin:10px auto;}
        .sj_le{background-color: #FFFFFF;width:460px;height:42px;float: left;}
        .sj_ri{background-color: #FFFFFF;width:100px;height:40px;float: left;margin-left: 20px;}
        .sj1_le{width:60px;height:40px;float: left;text-align: center;padding-top: 5px;}
        .sj1_ri{width:400px;height:40px;float: left;}
        .input_{width:400px;height:34px;font-size:14px;}
        .con1_1_2{width:600px;height:60px;float: left;}
        .content2{width:1200px;margin:20px auto;}
        .co2_1{width:140px;height:385px;float:left;}
        .zly_a{width:138px;height:35px;border-left: 1px solid #EAEAEA;border-right: 1px solid #EAEAEA;border-bottom: 1px solid #EAEAEA;}
        .co2_1cos{width:138px;height:35px;border-top: 2px solid #9A6600;background-color: #FAFAFA;border-left: 1px solid #EAEAEA;border-right: 1px solid #EAEAEA;}
        .co2_1cos a{line-height: 35px;margin-left: 20px;color:#000000;}
        .zly_a a{line-height: 35px;margin-left: 20px;color:#444343;font-size: 14px;}
        .co2_2{width:1040px; margin-left: 20px;float:left;border-top: 2px solid #9A6600;}
        .gjs{position:absolute;width:120px; height:140px;margin-top: 107.5px;margin-left: 129px;display: none;}
        .gjs ul li{border-top: 1px solid #A3A3A3;border-left: 1px solid #A3A3A3;border-right: 1px solid #A3A3A3;height:35px;line-height:35px;background-color: #F0EFEB;text-align: center;}
        .gjs ul li.last{border-bottom:1px solid #A3A3A3;}
        .gjs ul li:hover{background-color:#4C4C4C;color:#FFFFFF;}
        .gjs ul li a:hover{color:#FFFFFF;}
        .co2_content{height:140px; border:1px solid #EAEAEA;text-align: center;}
        .content3{width:100%; background-color: #FAFAFA;float:left;margin-top:30px;}
        .co2_content ul{padding-left: 0; width:1000px;margin-top: 20px;margin-left: 20px;}
        .co2_content li{height:50px;line-height: 50px;width:130px;float:left;border:1px solid #EAEAEA;}
        .co2_content li.active{background-color: #9A6600;}
        .co2_content li.active a{color:#ffffff;}
        .phone_d_top{width:100%; height:50px;background-color: #FBFBFA;margin-top: 20px;border:1px solid #EBEBEB;}
        .phone_d_top ul{padding-left: 25px;}
        .phone_d_top ul li{float:left;line-height: 50px;font-size: 12px;}
        .phone_d{margin-top: 30px;}
        .phone_d ul{padding-left: 0;}
        .phone_d ul li{float:left;width:173px;height:250px;text-align: center;padding-top: 10px;overflow:hidden;}
        .phone_d ul li a{line-height: 30px;color:#666666;font-size: 14px;}
        .phone_d img{width:173px;height:173px;}
        .toggleShow{display:none;}
        .tcdPageCode{clear:both;float:right;padding: 15px 20px;text-align: left;color: #ccc;}
        .tcdPageCode a{display: inline-block;color: #9A9A9A;display: inline-block;height: 25px;	line-height: 25px;	padding: 0 10px;border: 1px solid #ddd;	margin: 0 2px;border-radius: 4px;vertical-align: middle;}
        .tcdPageCode a:hover{text-decoration: none;border: 1px solid #9A6600;}
        .tcdPageCode span.current{display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;color: #fff;background-color: #9A6600;	border: 1px solid #428bca;border-radius: 4px;vertical-align: middle;}
        .tcdPageCode span.disabled{	display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;	color: #bfbfbf;background: #f2f2f2;border: 1px solid #bfbfbf;border-radius: 4px;vertical-align: middle;}
        .productName{width:150px;margin:0 auto;}
        .page_total{color:#9B9B9B;}

    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="content1">
    <div class="con1_1">
        <div class="con1_1_1">
            <div class="sj_1">
                <form name="searchForm" id="searchForm" action="${baseurl}product/searchq" method="post">
                <div class="sj_le">
                    <div class="sj1_le">
                        <i class="iconfont" style="color:#E8E8E8;font-size:25px;">&#xe606;</i>
                    </div>
                    <div class="sj1_ri">
                            <input type="text" class="input_" name="q" placeholder="在这里搜索物品型号"/>
                    </div>
                </div>
                <div class="sj_ri">
                    <input type="submit" style="width:100%;height:100%;background-color:#FFFFFF;color:#9A6600;font-size: 18px;" value="搜索" onclick="return validateForm(this.form)">
                </div>
                </form>
            </div>
        </div>
        <div class="con1_1_2">
            <img src="${baseurl}res/images/new/sj_hs1.png" alt="" style="padding-left: 62px;height:120px;margin-top:-30px;">
        </div>
    </div>
</div>
<div class="content2">
    <div class="co2_1">
        <div class="co2_1cos">
            <a >全部产品列表</a>
        </div>
        <div id="" class="zly_a co2_1co1"><a href="${baseurl}category/08d2d4cbf39748f08d56b26ba29266aa/0">手机<span style="margin-left:60px;"><i class="iconfont" style="color:#444343;">&#xe648;</i></span></a></div>
        <div class="zly_a co2_1co2"><a href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold">黄金<span style="margin-left:60px;"><i class="iconfont" style="color:#444343;">&#xe648;</i></span></a></div>
        <div class="zly_a co2_1co3 navGjs"><a href="#">贵金属<span style="margin-left:45px;"><i class="iconfont" style="color:#444343;">&#xe648;</i></span></a></div>
        <div class="zly_a co2_1co4"><a href="${baseurl}category/08d2d4cbff6j48f08d56b26ba29266aa/0">名表<span style="margin-left:60px;"><i class="iconfont" style="color:#444343;">&#xe648;</i></span></a></div>
        <div class="zly_a co2_1co5"><a href="${baseurl}category/08d2d4cbf3974d8i8d56b26ba29266aa/0">名包<span style="margin-left:60px;"><i class="iconfont" style="color:#444343;">&#xe648;</i></span></a></div>
        <div class="zly_a co2_1co6"><a href="${baseurl}product/diamond">钻石<span style="margin-left:60px;"><i class="iconfont" style="color:#444343;">&#xe648;</i></span></a></div>
        <div class="zly_a co2_1co7"><a href="${baseurl}category/e/1">购物卡<span style="margin-left:45px;"><i class="iconfont" style="color:#444343;">&#xe648;</i></span></a></div>
        <div class="zly_a co2_1co8"><a href="${baseurl}category/e/2">礼品虫草<span style="margin-left:30px;"><i class="iconfont" style="color:#444343;">&#xe648;</i></span></a></div>
        <div class="zly_a co2_1co10"><a href="${baseurl}category/e/4">玉石文玩<span style="margin-left:30px;"><i class="iconfont" style="color:#444343;">&#xe648;</i></span></a></div>
        <div class="zly_a co2_1co10"><a href="${baseurl}category/e/5">银元钱币<span style="margin-left:30px;"><i class="iconfont" style="color:#444343;">&#xe648;</i></span></a></div>
    </div>
    <div class="gjs">
        <ul>
            <a href="${baseurl}product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt"><li>铂金</li></a>
            <a href="${baseurl}product/094c2f5308514105a862c6299f9d320b?ptype=gjs&goldType=palau"><li>钯金</li></a>
            <a href="${baseurl}product/bcf8086e4f4647fabcfc3409430baa60?ptype=gjs&goldType=k"><li>K金</li></a>
            <a href="${baseurl}product/5f67c6baca4b4167a4b49b6df510a3f1?ptype=gjs&goldType=sliver"><li class="last">白银</li></a>
        </ul>
    </div>
    <div class="co2_2">
        <p ><span style="margin-left:20px;"><i class="iconfont" style="color:#9A6600;">&#xe609;</i></span><span style="margin-left:10px;color:#444343;"><a href="${baseurl}">首页</a></span><span><i class="iconfont" style="color:#444343;margin-left:15px;">&#xe648;</i></span><span style="margin-left:20px;color:#444343;">
            <c:choose>
                <c:when test="${curId == '1'}">购物卡估价</c:when>
                <c:when test="${curId == '2'}">礼品虫草估价</c:when>
                <c:when test="${curId == '4'}">玉石文玩估价</c:when>
                <c:when test="${curId == '5'}">银元钱币估价</c:when>
                <c:when test="${ptype == 'phone'}">手机估价</c:when>
                <c:when test="${ptype == 'gjs'}">贵金属估价</c:when>
                <c:when test="${ptype == 'clock'}">名表估价</c:when>
                <c:when test="${ptype == 'bag'}">名包估价</c:when>
                <c:when test="${not empty q}">搜索${q}的结果</c:when>
            </c:choose></span></p>
        <c:if test="${not empty emptyFg}">
            <div style="height:354px;text-align:center;border:1px solid #ddd;margin-bottom:20px;"><img src="${baseurl}res/images/new/sj_hs_1.png"></div>
        </c:if>
        <c:if test="${empty emptyFg}">
            <c:if test="${empty q}">
        <div class="co2_content">
            <ul>
                <c:forEach items="${subCategories}" var="c" varStatus="st">
                    <li class="<c:if test="${c.id==curId}"> active</c:if><c:if test="${st.index >= 14}"> moreShow toggleShow</c:if>"><a href="${baseurl}category/${pid}/${c.id}"> ${c.name}</a></li>
                </c:forEach>
            </ul>
            <a style="color:#9A6600;" id="showMore" href="#">更多<span><i class="iconfont" style="color:#444343;margin-left:10px;">&#xe610;</i></span></a>
        </div>
            </c:if>
        <div  class="phone_d_top">
            <ul>
                <li>当您找不到和您的宝贝相同的款式，请联系<a href="http://kefu.qycn.com/vclient/chat/?websiteid=113372" target="_blank"><span style="color:red;">在线客服</span></a></li>
                <li style="margin-left:470px;"><a style="color:red;">共<span class="phone_total">${total}</span>个商品</a></li>
                <li ><i class="iconfont" style="font-size:30px;color:#C6C5E8;">&#xe654;</i></li>
                <li><a><span class="page_num" style="color:red;">${curPage}</span><span class="page_total" >/${pageCount}</span></a></li>
                <c:if test="${empty q}">
                    <a href="${baseurl}category/${pid}/${sid}?pageNo=${prevPage}"><li style="background-color:<c:if test="${curPage=='1'}">#F3F3F3</c:if><c:if test="${curPage!='1'}">#E9E9E9</c:if>;width:30px;height:30px;margin-left:30px;margin-top:11px;line-height:30px;text-align: center"><i class="iconfont"<c:if test="${curPage=='1'}"> style="color:#DEDEDF" </c:if><c:if test="${curPage!='1'}"> style="color:#A0A0A0"</c:if>>&#xe617;</i></li></a>
                    <a href="${baseurl}category/${pid}/${sid}?pageNo=${nextPage}"><li style="background-color:#E9E9E9;width:30px;height:30px;margin-left:20px;margin-top:11px;line-height:30px;text-align: center"><i class="iconfont" style="color:#A0A0A0">&#xe619;</i></li></a>
                </c:if>
                <c:if test="${not empty q}">
                    <a href="${baseurl}product/searchq?q=${q}&pageNo=${prevPage}"><li style="background-color:#E9E9E9;width:30px;height:30px;margin-left:30px;margin-top:11px;line-height:30px;text-align: center"><i class="iconfont"<c:if test="${curPage=='1'}"> style="color:#DEDEDF" </c:if><c:if test="${curPage!='1'}"> style="color:#A0A0A0"</c:if>>&#xe617;</i></li></a>
                    <a href="${baseurl}product/searchq?q=${q}&pageNo=${nextPage}"><li style="background-color:#E9E9E9;width:30px;height:30px;margin-left:20px;margin-top:11px;line-height:30px;text-align: center"><i class="iconfont" style="color:#A0A0A0">&#xe619;</i></li></a>
                </c:if>

            </ul>
        </div>
        <div class="phone_d">
            <c:if test="${products.size() == 0}">
                <p>亲，找不到您要找的宝贝信息哦，详情可以咨询客服：400-086-1131.</p>
            </c:if>
            <ul>
            <c:forEach items="${products}" var="p">
                <li>
                    <a href="${baseurl}product/${p.id}<c:if test="${not empty ptype}">?ptype=${ptype}</c:if>"><img class="lazy" data-original="${p.picList[0]}" alt="${p.name}"><div class="productName">${p.name}</div></a>
                </li>
    </c:forEach>
    </ul>
        </div>
            <div class="tcdPageCode"></div>
        </c:if>
    </div>
</div>
<div class="content3">

</div>
<%@ include file="../common/footer.jsp"%>
<script src="${baseurl}res/js/jquery.lazyload.min.js"></script>
<script src="${baseurl}res/js/page.js"></script>
<script>
    $(".tcdPageCode").createPage({
        pageCount:${pageCount},
        current:${curPage},
        backFn:function(p){
            <c:if test="${empty q}">window.location.href="${baseurl}category/${pid}/${sid}?pageNo="+p;</c:if>
            <c:if test="${not empty q}">window.location.href="${baseurl}product/searchq?q=${q}&pageNo="+p;</c:if>
        }
    });
</script>
<script>
    function validateForm(form) {
        if (form.q.value =="") {
            alert("请输入要查询的产品名称!");
            return false;
        }
    }
    $(function() {
        $(".navGjs").mouseenter(function(){
            $(".gjs").show();
        }).mouseleave(function(){
            $(".gjs").hide();
        });
        $(".gjs").mouseleave(function () {
            $(this).hide();
        }).mouseenter(function(){
            $(this).show();
        });
        var height = Number(${brandRowsNumber})*60;
        $("#showMore").on("click", function(){
            $(".moreShow").toggleClass("toggleShow");
            var co2_content = $(".co2_content");
            if (parseInt(co2_content.height()) != 140) {
                $(".co2_content").height(140);
            } else if (co2_content.height() >= 140){
                $(".co2_content").height(height);
            }
        });

        $("img.lazy").lazyload({effect: "fadeIn"});
//        var rowNum = $(".table tr td.active").parent().index();
//        if (rowNum >= 2) {
//            $(".more").show();
//        }
//        $(".dismore").click(function(){
//            $(".more").toggle("fast");
//        });
    });
</script>

</body>
</html>
