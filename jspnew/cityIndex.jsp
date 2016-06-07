<%--
  User: donny
  Date: 2/25/16
  Time: 12:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta content="zh-cn" http-equiv="content-language" />
    <meta name="keywords" content="" />
    <meta name="description" content=""/>
    <title>爱收宝</title>
    <link rel="canonical" href="http://www.aishoubao.com/" />
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/main.css">
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/root.css">
    <link type="text/css" rel="stylesheet" href="${mybaseurl}/res/css/unslider.css">
    <style>
        .quickEstimateBrand{height:150px;overflow-y:scroll;}
        .unslider-nav{padding:5px 0;}
        .unslider-nav ol {
            list-style: none;
            z-index: 20;
            position: absolute;
            top:493px;
        }
        .unslider-nav ol li {
            display: inline-block;
            width: 160px;
            text-align: center;
            overflow: hidden;
            cursor: pointer;
            height: 40px;
            line-height:40px;
            color:#fff;
            font-size:14px;
            border-right: 1px solid #9e9e9e;
            background: rgba(101,103,115,0.4);
        }
        .unslider-nav ol li:last-child{border-right: none;width:156px;}
        .unslider-nav ol li.unslider-active {
            color: #00a199;
            background: rgba(77,77,77,0.5);
        }
        .citybanner .banner-right{width: 380px; margin-left: 18px; border: 1px solid #e1e1e1; height: 375px;}
        .citybanner .banner-right .floor1{background: #56abe4;height:50px;line-height: 50px;font-size:18px;color:#fff;}
        .citybanner .banner-right .floor2{padding-top:30px;font-size:18px;}
        .citybanner .banner-right .floor2 p{padding-bottom:10px;}
        .tjnumber{font-size:28px;color:#56abe4;font-style: italic;padding-right:5px;}
        .citybanner .banner-right .floor3{border-top:1px solid #e1e1e1;border-bottom:1px solid #e1e1e1;height:90px;padding-top:35px;margin:0 20px;}
        .citybanner .banner-right .floor4 img{width:32px;height:32px;padding-top:20px;}

        .citystoreul li{background:none;color:#000;}
        .citystoreul li.active{background:none;color:#e1882a;}
        .citystoreul li:last-child{text-align: center;background:#FFB707;color:#fff;padding-left:0;width:140px;height: 30px;line-height: 30px;}
        .nostorepic{width:918px;}
        .citybtn img:hover{opacity: 0.9;}
    </style>
</head>
<body>
<%@ include file="common/header.jsp"%>
<!-- banner -->
<div class="myrow citybanner">
    <div class="pure-g">
        <div class="pure-u-3-4" style="width:800px;">
            <div class="my-slider">
                <ul>
                    <c:forEach items="${ads1}" var="ad">
                        <li data-nav="${ad.name}"><a href="${ad.url}"><img src="${ad.picurl}"/></a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="pure-u-1-4 banner-right">
            <div class="pure-g floor1 tac">
                <div class="pure-u-1-1">
                    专业的二手回收平台
                </div>
            </div>
            <div class="pure-g floor2 tac">
                <c:set var="shopTj" value="${fn:split(shoptj, ',')}"/>
                <div class="pure-u-1-3"><p><span class="tjnumber">${shopTj[0]}</span>家</p><p class="f14">全国门店</p></div>
                <div class="pure-u-1-3"><p><span class="tjnumber">${shopTj[1]}</span>人</p><p class="f14">鉴定专员</p></div>
                <div class="pure-u-1-3"><p><span class="tjnumber">${shopTj[2]}</span>个</p><p class="f14">订单成交量</p></div>
            </div>
            <div class="pure-g floor3 tac citybtn">
                <div class="pure-u-1-2"><a href="${mybaseurl}/category/first"><img src="${mybaseurl}/res/images/v2/ban_1.gif"/></a></div>
                <div class="pure-u-1-2"><a href="${mybaseurl}/mortgage/"><img src="${mybaseurl}/res/images/v2/ban_2.gif"/></a></div>
            </div>
            <div class="pure-g floor4 tac">
                <div class="pure-u-1-4"><img src="${mybaseurl}/res/images/v2/huanbao.gif"/><p>环保</p></div>
                <div class="pure-u-1-4"><img src="${mybaseurl}/res/images/v2/liansuo.gif"/><p>连锁</p></div>
                <div class="pure-u-1-4"><img src="${mybaseurl}/res/images/v2/gongdao.gif"/><p>公道</p></div>
                <div class="pure-u-1-4"><img src="${mybaseurl}/res/images/v2/jianding.gif"/><p>鉴定</p></div>
            </div>
        </div>
    </div>
</div>
<div class="out_box" style="margin-top: -13px;"><img src="${mybaseurl}/res/images/v2/citybanner.jpg"/></div>
<!-- 区域店推荐 -->
<div class="mywrapper mt10">
    <div class = "out_box">
        <div class = "title">
            <h6>REGIONAC STRORE IMAGE DISPLAY<br>区域店推荐</h6>
        </div>
        <div class = "man_content mystoretj" style="padding-bottom:30px;">
            <div class="pure-g">
                <div class="pure-u-1-5">
                    <div class = "t_nav">
                        <ul class = "t_nav_right citystoreul">
                            <c:forEach items="${areas}" var="area" varStatus="st">
                                <li class="mystoretj_li<c:if test="${st.first}"> active</c:if>" data-region-id = "${area.id}" data-index="${st.index}"><span>${area.name}(${area.storeCount})</span></li>
                            </c:forEach>
                            <li>V</li>
                        </ul>
                    </div>
                </div>
                <div class="pure-u-4-5">
                    <div class = "t_content">
                        <ul class = "t_c_left">
                            <c:forEach items="${areas}" var="area" varStatus="st">
                            <li class = "pb10 shoptjContent${st.index}<c:if test="${st.first}"> active</c:if>"></li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="common/index_common.jsp"%>

<%@ include file="common/footer.jsp"%>
<script src="${baseurl}res/js/jquery.lazyload.min.js"></script>
<script src="${mybaseurl}/res/js/unslider-min.js"></script>
<script>
    function getShopsByArea(areaId, index) {
//        console.log($(".shoptjContent"+index).html().length);
        var t = $(".shoptjContent"+index).html();
        if (t.length > 1) {
            return false;
        }
        $.ajax({
            url: "${baseurl}store/listByArea/"+areaId,
            dataType: "json",
            async: true,
            data: { },
            type: "GET",
            success: function(data) {
//                console.log(data);
                var u = data.body, len = u.length;
                var res ="";
                if(len > 0) {
                    for (var i = 0; i<len; i++) {
                        res += '<li data-value="'+u[i].id+'" data-longitude="'+u[i].longitude+'" data-latitude="'+u[i].latitude+'"><i></i>'+u[i].name+' &nbsp;&nbsp;'+u[i].address+'</li>';
                        res += '<div class="pure-g store_js"><div class="pure-u-1-3"><img style="width:260px;height:130px;" src="'+u[i].picurl+'"/></div><div class="pure-u-1-3 store-content"><p class="store_name">爱收宝网络科技-'+u[i].name+'</p><p><span class="store_label">业务范围：</span><span class="store_ywfw">'+u[i].jyfw+'</span></p><p class="store_hsdbb"><span class="store_label">回收的宝贝：</span><span class="store_hsdbb_content">'+u[i].hsyw+'</span></p></div><div class="pure-u-1-3 store-content"><p class="paddr" style="padding-top:39px;"><span class="store_label">地址：</span><span class="store_addr">'+u[i].address+'</span></p><p><span class="store_label">贵宾专线：</span><span class="store_phone">'+u[i].tel+'</span></p><p><span class="store_label">营业时间：</span><span class="store_time">'+u[i].yysj+'</span></p></div></div>';
                    }
////                            console.log(res);
                    $(".shoptjContent"+index).html(res);
                } else {
                    $(".shoptjContent"+index).html('<img class="nostorepic" src="${mybaseurl}/res/images/v2/cityIndex_nostore.jpg"/>');
                }
            }
        });
    }

    $(function(){
        getShopsByArea(${areas[0].id}, 0);

        $("img.lazy").lazyload({skip_invisible : false,effect: "fadeIn"});
        $('.my-slider').unslider({
            arrows:false,
            autoplay:true
        });

        $("li.mystoretj_li").on({
            "mouseenter":function(){
                var areaId = $(this).data("region-id");
                getShopsByArea(areaId, $(this).data("index"));
            }
        });

        $("#save").click(function(){
            var flag=true;
            var  goodsType=$("#goodsType").val();
            var  brand=$("#productBrand").val();
            var goodsName=$("#goodsName").val();
            var contactPhone=$("#contactPhone").val();
            var contactName=$("#contactName").val();
            var expectPrice=$("#expectPrice").val();

            if(goodsType==""){
                flag=false;
                alert("请选择商品类型");
                return flag;
            }
            if(brand==""){
                flag=false;
                alert("请输入品牌");
                return flag;
            }
            if(goodsName==""){
                flag=false;
                alert("请填写商品名称");
                return flag;
            }
            if(contactName==""){
                flag=false;
                alert("请填写联系人");
                return flag;
            }
            if(contactPhone==""){
                flag=false;
                alert("请填写联系人手机");
                return flag;
            }else if(!/^0?1([3,4,5,7,8]{1}[0-9]{1}){1}[0-9]{8}$/
                            .test(contactPhone)){
                flag=false;
                alert("请填写正确的手机号");
                return flag;
            }
            if(expectPrice==""){
                flag=false;
                alert("请填写期望价格");
                return flag;
            }else if(!/^[\d]*(.[\d]{1,2})?$/.test(expectPrice)){
                flag=false;
                alert("请填写正确的价格格式");
                return flag;
            }
            $("#jsform").submit();
        });
    });
</script>
</body>
</html>
