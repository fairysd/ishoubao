<%--
  User: donny
  Date: 2/25/16
  Time: 12:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp"%>
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
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        .zly_floor1{width: 1200px;margin:auto;height:320px;}
        .zly_f1_left{width:786px;float: left;border: 1px solid #CDCDCD;}
        .zly_f1_left img{width:100%;height:260px;}
        .zly_f1_right{width:390px;margin-left: 16px;float:right; border: 2px solid #CDCDCD;}
        .zly_f1l1{width:156px;height: 45px;float:left;border-top: 1px solid #CDCDCD;border-bottom: 1px solid #CDCDCD;border-left: 0px solid #CDCDCD;border-right: 1px solid #3F3F3F;background-color: #8A8A8A;text-align: center;margin-top: -5px;}
        .zly_f1l2{width:156px;height: 45px;float:left;border-top: 1px solid #CDCDCD;border-bottom: 1px solid #CDCDCD;border-left: 1px solid #CDCDCD;border-right: 1px solid #3F3F3F;background-color: #8A8A8A;text-align: center;margin-top: -5px;}
        .zly_f1l3{width:156px;height: 45px;float:left;border-top: 1px solid #CDCDCD;border-bottom: 1px solid #CDCDCD;border-left: 1px solid #CDCDCD;border-right: 1px solid #3F3F3F;background-color: #8A8A8A;text-align: center;margin-top: -5px;}
        .zly_f1l4{width:156px;height: 45px;float:left;border-top: 1px solid #CDCDCD;border-bottom: 1px solid #CDCDCD;border-left: 1px solid #CDCDCD;border-right: 1px solid #3F3F3F;background-color: #8A8A8A;text-align: center;margin-top: -5px;}
        .zly_f1l5{width:154px;height: 45px;float:left;border-top: 1px solid #CDCDCD;border-bottom: 1px solid #CDCDCD;border-left: 1px solid #CDCDCD;border-right: 0px solid #3F3F3F;background-color: #8A8A8A;text-align: center;margin-top: -5px;}
        .zly_f1_left a{color:#FFFFFF;}
        .zly_f1_left p{line-height: 45px;}
        .zly_f1ri1{width:100%;height:45px;background-color: #8A8A8A;text-align: center;}
        .zly_f1ri1 a{line-height: 45px;color:#FFFFFF;font-size: 20px;}
        .zly_f1ri2{width:370px;border-bottom: 2px solid #CDCDCD;margin:auto;text-align: center;}
        .zly_f1ri2 img{margin:20px;}
        .zly_f1ri3{width:370px;border-bottom: 2px solid #CDCDCD;margin:auto;text-align: center;}
        .zly_f1ri3 img{margin:20px;}
        .zly_f1ri4{width:100%;height:64px;text-align: center;}
        .zly_f1ri4 p{font-size: 12px;color:#CDCDCD;line-height: 20px;margin-top: 0;margin-bottom: 0;}
        .floor_2{width:1200px;height:430px;margin:25px auto; }
        .floor_2_top{width:1200px;height:45px;margin: auto; }
        .floor2_content1{width:325px;height:400px;float: left; }
        .floor2_content2{width:270px;height:370px;float: left;border:1px solid #98A3B1;border-top: 2px solid #606060;}
        .floor2_content2 ul li{text-align: center; margin-top: 18px;color: #000000;list-style:none;}
        .floor2_content3{width:270px;height:370px;float: left;margin-left: 29px;border:1px solid #98A3B1;border-top: 2px solid #606060;}
        .floor2_content3 ul li{text-align: center;margin-top: 18px;color: #000000;list-style:none;}
        .floor2_content4{width:270px;height:370px;margin-left: 29px;float: left;border:1px solid #98A3B1;border-top: 2px solid #606060;}
        .floor2_content4 ul li{text-align: center; margin-top: 18px;color: #000000;list-style:none;}
        .floor_8{width:1200px;height:500px;margin:auto;}
        .floor_8_content{width:1200px;height:460px;margin:auto;background-color: #EBEBEB;   border: 1px solid #FFFFFF;-moz-border-radius: 15px;
            -webkit-border-radius: 15px; border-radius:15px; }
        .floor_8_content1{width:1200px;height:30px;background-color: #F8F8F8; border-radius:10px 10px 0 0; padding-top: 10px;}
        .floor_8_content1 a{color:#000000; font-size: 15px;padding-left: 20px;}
        .floor_8_co2_1{width:1140px;height:370px;margin-top: 20px; color: #999999;margin:auto;}
        .co2_1{width:200px;height:170px;float:left;background-color: #F6F6F6;margin-left: 22px;margin-top: 26px;border-radius: 10px;}
        .co2_2{width:170px;height:140px;margin:15px auto;}
        .co2_1 img{width:100%;}
        .co_3 img{width:30px; float:right;}
        .zly_floor4{width:1198px;margin:auto;border: 1px solid #CDCDCD;}
        .zly_f4top{width:100%;height:50px;background-color: #F1F1F1;border-bottom: 1px solid #CDCDCD;}
        .zly_f4content{width:100%;height:120px;}
        @media all and (min-width:0) {
            .zly_f4content{margin-top:-30px;}
        }
        .zly_f4topc1,.zly_f4topc2,.zly_f4topc3,.zly_f4topc4{float:left; width:130px;height:100%;text-align:center;border-right: 1px solid #CDCDCD;background-color: #F1F1F1;}
        .zly_f4topc1 a,.zly_f4topc2 a,.zly_f4topc3 a,.zly_f4topc4 a{font-size: 20px;color:#A6A992;line-height: 50px;}
        #scrollobj {white-space:nowrap; overflow:hidden;width:100%;}
        #scrollobj img{border: 0px solid #CDCDCD;margin-left: 10px;}
    </style>
</head>
<body>
<%@ include file="common/city_header.jsp"%>
<div class="zly_floor1">
    <div class="zly_f1_left">
        <a class="city_img_href" href="http://www.aishoubao.com/category/08d2d4cbf39748f08d56b26ba29266aa/0"><img src="${baseurl}res/images/new/index/sub_2s.jpg" class="city_img" alt=""></a>
        <a href="http://www.aishoubao.com/category/08d2d4cbf39748f08d56b26ba29266aa/0"><div class="zly_f1l1">
            <p>回收</p>
        </div></a>
        <a href="http://www.aishoubao.com/consignment"><div class="zly_f1l2">
            <p>寄售</p>
        </div></a>
        <a href="http://www.aishoubao.com/mortgage"><div class="zly_f1l3">
            <p>抵押</p>
        </div></a>
        <a href="http://www.aishoubao.com/luxury"><div class="zly_f1l4">
            <p>护理</p>
        </div></a>
        <a href="http://shop.aishoubao.com"><div class="zly_f1l5">
            <p>二手优品</p>
        </div></a>
    </div>
    <div class="zly_f1_right">
        <div class="zly_f1ri1">
            <a>爱收宝${areainfo.name}门店</a>
        </div>
        <div class="zly_f1ri2">
            <img src="${baseurl}res/images/new/index/sub_2.png" alt="">
        </div>
        <div class="zly_f1ri3">
            <img src="${baseurl}res/images/new/index/sub_3.png" alt="">
        </div>
        <div class="zly_f1ri4">
            <p style="padding-top:15px;"> ${stores[0].name}：${stores[0].address}</p>
            <p>门店电话：${stores[0].tel}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全国热线：400-086-1131</p>
        </div>
    </div>
</div>
<div class="floor_2">
    <div class="floor_2_top">
        <img src="${baseurl}res/images/new/index/floor2_top1.png" alt="">
        <img src="${baseurl}res/images/new/index/floor2_top2.png" alt="" style="padding-left:133px;">
    </div>
    <div class="floor_2_content">
        <div class="floor2_content1">
            <img src="${baseurl}res/images/new/index/floor2_content1.png" alt="">
        </div>
        <div class="floor2_content2">
            <ul >
                <li style="color:#98A3B1;">LOUIS VUITTOON</li>
                <li >LV女包</li>
                <li  style="font-size:12px;">未经使用过，因陈列，存放产生的细小痕...</li>
                <li><span style="color:#E62B26;font-size:10px;">￥</span><span style="color:#E62B26;font-size:20px;">6980</span></li>
                <li><img src="${baseurl}res/images/new/index/floor2_content2.png"></li>
            </ul>
        </div>
        <div class="floor2_content3">
            <ul>
                <li style="color:#98A3B1;">LOUIS VUITTOON</li>
                <li >LV路易威登 老花贝..</li>
                <li style="font-size:12px;">有轻微使用痕迹，外观没有重大改变，...</li>
                <li><span style="color:#E62B26;font-size:10px;">￥</span><span style="color:#E62B26;font-size:20px;">5580</span></li>
                <li><img src="${baseurl}res/images/new/index/floor2_content3.png"></li>
            </ul>
        </div>
        <div class="floor2_content4">
            <ul>
                <li style="color:#98A3B1;">ROLEX</li>
                <li>劳力士ROOLEX-日志型..</li>
                <li style="font-size:12px;">有轻微使用痕迹，外观没有重大改变，...</li>
                <li><span style="color:#E62B26;font-size:10px;">￥</span><span style="color:#E62B26;font-size:20px;">38500</span></li>
                <li><img src="${baseurl}res/images/new/index/floor2_content4.png"></li>
            </ul>
        </div>
    </div>
</div>
<div class="floor_8">
    <div class="floor_8_content">
        <div class="floor_8_content1">
            <a>${areainfo.name}区域</a>
        </div>
        <div class="floor_8_content2">
            <div class="floor_8_co2_1">
                <c:forEach items="${stores}" var="store" varStatus="st">
                    <c:if test="${st.index < 10}">
                        <div class="co2_1">
                            <div class="co2_2">
                                <a href="${baseurl}store/${cityId}/${store.id}">
                                <img src="${store.picurl}" alt="" width="150" height="120">
                                <div style="margin-top:10px;" class="co_3">
                                    ${store.name}<span style="padding-top:5px;"><img src="${baseurl}res/images/new/index/right.png" alt=""></span>
                                </div>
                                </a>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
<div class="zly_floor4">
    <div class="zly_f4top">
        <div class="zly_f4topc1">
            <a>合作媒体</a>
        </div>
        <div class="zly_f4topc2">
            <a>合作银行</a>
        </div>
        <div class="zly_f4topc3">
            <a>城市分站</a>
        </div>
        <div class="zly_f4topc4">
            <a>友情链接</a>
        </div>
    </div>
    <div class="zly_f4content">
        <marquee behavior="scroll" contenteditable="true" onstart="this.firstChild.innerHTML+=this.firstChild.innerHTML;"  width="100"><span unselectable="on" ></span></marquee>
        <div id="scrollobj" >
            <span><img src="${baseurl}res/images/new/index/w1.jpg" alt=""></span>
            <span><img src="${baseurl}res/images/new/index/w2.jpg" alt=""></span>
            <span><img src="${baseurl}res/images/new/index/w3.jpg" alt=""></span>
            <span><img src="${baseurl}res/images/new/index/w4.jpg" alt=""></span>
            <span><img src="${baseurl}res/images/new/index/w5.jpg" alt=""></span>
            <span><img src="${baseurl}res/images/new/index/w6.jpg" alt=""></span>
        </div>
    </div>
</div>
<div class="mt20"></div>
<%@ include file="common/footer.jsp"%>
<script>
    $(".zly_f1l1").mouseover(function(){
        $(".city_img_href").attr("href","http://www.aishoubao.com/category/08d2d4cbf39748f08d56b26ba29266aa/0");
        $(".city_img").attr("src","${baseurl}res/images/new/index/sub_2s.jpg");
        $(".zly_f1l1").css("background","#F3F3F3");
        $(".zly_f1l1 p").css("color","#939393");
        $(".zly_f1l2").css("background","#8A8A8A");
        $(".zly_f1l2 p").css("color","#FFFFFF");
        $(".zly_f1l3").css("background","#8A8A8A");
        $(".zly_f1l3 p").css("color","#FFFFFF");
        $(".zly_f1l4").css("background","#8A8A8A");
        $(".zly_f1l4 p").css("color","#FFFFFF");
        $(".zly_f1l5").css("background","#8A8A8A");
        $(".zly_f1l5 p").css("color","#FFFFFF");
    });

    $(".zly_f1l2").mouseover(function(){
        $(".city_img_href").attr("href","http://www.aishoubao.com/consignment");
        $(".city_img").attr("src","${baseurl}res/images/new/index/sub_3s.jpg");
        $(".zly_f1l2").css("background","#F3F3F3");
        $(".zly_f1l2 p").css("color","#939393");
        $(".zly_f1l1").css("background","#8A8A8A");
        $(".zly_f1l1 p").css("color","#FFFFFF");
        $(".zly_f1l3").css("background","#8A8A8A");
        $(".zly_f1l3 p").css("color","#FFFFFF");
        $(".zly_f1l4").css("background","#8A8A8A");
        $(".zly_f1l4 p").css("color","#FFFFFF");
        $(".zly_f1l5").css("background","#8A8A8A");
        $(".zly_f1l5 p").css("color","#FFFFFF");
    });

    $(".zly_f1l3").mouseover(function(){
        $(".city_img_href").attr("href","http://www.aishoubao.com/mortgage");
        $(".city_img").attr("src","${baseurl}res/images/new/index/sub_4s.jpg");
        $(".zly_f1l3").css("background","#F3F3F3");
        $(".zly_f1l3 p").css("color","#939393");
        $(".zly_f1l2").css("background","#8A8A8A");
        $(".zly_f1l2 p").css("color","#FFFFFF");
        $(".zly_f1l1").css("background","#8A8A8A");
        $(".zly_f1l1 p").css("color","#FFFFFF");
        $(".zly_f1l4").css("background","#8A8A8A");
        $(".zly_f1l4 p").css("color","#FFFFFF");
        $(".zly_f1l5").css("background","#8A8A8A");
        $(".zly_f1l5 p").css("color","#FFFFFF");
    });

    $(".zly_f1l4").mouseover(function(){
        $(".city_img_href").attr("href","http://www.aishoubao.com/luxury");
        $(".city_img").attr("src","${baseurl}res/images/new/index/sub_5s.jpg");
        $(".zly_f1l4").css("background","#F3F3F3");
        $(".zly_f1l4 p").css("color","#939393");
        $(".zly_f1l2").css("background","#8A8A8A");
        $(".zly_f1l2 p").css("color","#FFFFFF");
        $(".zly_f1l3").css("background","#8A8A8A");
        $(".zly_f1l3 p").css("color","#FFFFFF");
        $(".zly_f1l1").css("background","#8A8A8A");
        $(".zly_f1l1 p").css("color","#FFFFFF");
        $(".zly_f1l5").css("background","#8A8A8A");
        $(".zly_f1l5 p").css("color","#FFFFFF");
    });

    $(".zly_f1l5").mouseover(function(){
        $(".city_img_href").attr("href","http://shop.aishoubao.com");
        $(".city_img").attr("src","${baseurl}res/images/new/index/sub_1s.jpg");
        $(".zly_f1l5").css("background","#F3F3F3");
        $(".zly_f1l5 p").css("color","#939393");
        $(".zly_f1l2").css("background","#8A8A8A");
        $(".zly_f1l2 p").css("color","#FFFFFF");
        $(".zly_f1l3").css("background","#8A8A8A");
        $(".zly_f1l3 p").css("color","#FFFFFF");
        $(".zly_f1l4").css("background","#8A8A8A");
        $(".zly_f1l4 p").css("color","#FFFFFF");
        $(".zly_f1l1").css("background","#8A8A8A");
        $(".zly_f1l1 p").css("color","#FFFFFF");
    });
    function scroll(obj) {
        var tmp = (obj.scrollLeft)++;
        //当滚动条到达右边顶端时
        if (obj.scrollLeft==tmp) obj.innerHTML += obj.innerHTML;
        //当滚动条滚动了初始内容的宽度时滚动条回到最左端
        if (obj.scrollLeft>=obj.firstChild.offsetWidth) obj.scrollLeft=0;
    }
    var speed=20;
    setInterval("scroll(document.getElementById('scrollobj'))",speed);
    $(".zly_f4topc1").mouseover(function(){
        $(".zly_f4topc1").css("background","#F6F6F6");
        $(".zly_f4topc1 a").css("color","#3D3B3A");
        $(".zly_f4topc2").css("background","#F1F1F1");
        $(".zly_f4topc2 a").css("color","#A6A992");
        $(".zly_f4topc3").css("background","#F1F1F1");
        $(".zly_f4topc3 a").css("color","#A6A992");
        $(".zly_f4topc4").css("background","#F1F1F1");
        $(".zly_f4topc4 a").css("color","#A6A992");
    });
    $(".zly_f4topc2").mouseover(function(){
        $(".zly_f4topc2").css("background","#F6F6F6");
        $(".zly_f4topc2 a").css("color","#3D3B3A");
        $(".zly_f4topc1").css("background","#F1F1F1");
        $(".zly_f4topc1 a").css("color","#A6A992");
        $(".zly_f4topc3").css("background","#F1F1F1");
        $(".zly_f4topc3 a").css("color","#A6A992");
        $(".zly_f4topc4").css("background","#F1F1F1");
        $(".zly_f4topc4 a").css("color","#A6A992");
    });
    $(".zly_f4topc3").mouseover(function(){
        $(".zly_f4topc3").css("background","#F6F6F6");
        $(".zly_f4topc3 a").css("color","#3D3B3A");
        $(".zly_f4topc1").css("background","#F1F1F1");
        $(".zly_f4topc1 a").css("color","#A6A992");
        $(".zly_f4topc2").css("background","#F1F1F1");
        $(".zly_f4topc2 a").css("color","#A6A992");
        $(".zly_f4topc4").css("background","#F1F1F1");
        $(".zly_f4topc4 a").css("color","#A6A992");
    });
    $(".zly_f4topc4").mouseover(function(){
        $(".zly_f4topc4").css("background","#F6F6F6");
        $(".zly_f4topc4 a").css("color","#3D3B3A");
        $(".zly_f4topc3").css("background","#F1F1F1");
        $(".zly_f4topc3 a").css("color","#A6A992");
        $(".zly_f4topc2").css("background","#F1F1F1");
        $(".zly_f4topc2 a").css("color","#A6A992");
        $(".zly_f4topc1").css("background","#F1F1F1");
        $(".zly_f4topc1 a").css("color","#A6A992");
    });
</script>
</body>
</html>
