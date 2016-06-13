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
        .zly_to{background-color: #FAFAFA;width:100%;height:auto;}
        .zly_lev2{width: 1200px;margin:auto;border-top: 2px solid #9A6600;padding-top: 10px;height: 40px;}
        .mar{margin-left:20px;}
        .zly_lev2co{width: 1200px;margin: auto;overflow: hidden;}
        .zly_lev2co img{width:100%;height:100%;position: relative;}
        .zly_pic1,.zly_pic2,.zly_pic3{float: left;}
        .zly_pic1{width:353.5px;height: 390px;}
        .zly_pic2{width:485px;height: 390px;margin-left: 4px;}
        .zly_pic3{width:353.5px;height: 390px;margin-left: 4px;}
        .zly_pic2_1{width:100%;height:193px;}
        .zly_pic2_2{width:100%;height:193px;margin-top: 4px;overflow:hidden;}
        .levpic_1{clear: both; width:312px;height:375px; margin-top: 4px;float:left;overflow:hidden;}
        .levpic_2{float:left;width:435px;height:280px;margin-top: 4px;margin-left: 4px;overflow:hidden;}
        .levpic_3{float:left;width:445px;height:280px;margin-top: 4px;margin-left: 4px;overflow:hidden;}
        .levpic_4{width:565px;height:91px;margin-left: 4px;margin-top:4px;float:left;overflow:hidden;}
        .levpic_5{width:312px;height:375px;margin-top: 4px;margin-left: 4px;float:left;overflow:hidden;}
        .levpic_6{width:445px;height:280px;margin-top: 773px;float:left;position: absolute;overflow:hidden;}
        .levpic_7{width:432px;height:280px;margin-top: 773px;margin-left:449px;position: absolute;overflow:hidden;}
        .levpic_8{width:1200px;margin:auto;}
        #zlt_z1{position: absolute;width: 120.5px; height:193px;background-color: rgba(0,0,0,0.5);display: none;}
        #zlt_z2{position: absolute;width: 120.5px; height:193px;background-color: rgba(0,0,0,0.5);display: none;margin-left: 121.5px;}
        #zlt_z3{position: absolute;width: 120.5px; height:193px;background-color: rgba(0,0,0,0.5);display: none;margin-left: 243px;}
        #zlt_z4{position: absolute;width: 120.5px; height:193px;background-color: rgba(0,0,0,0.5);display: none;margin-left: 364.5px;}
        .zly_pic2_1 p{color:#FFFFFF;width: 40px;margin-top: 70px;margin-left: 40px;font-size: 20px;font-weight: bold;}
        #zlt_z1:hover{background-color: rgba(0,0,0,0.8);}
        #zlt_z2:hover{background-color: rgba(0,0,0,0.8);}
        #zlt_z3:hover{background-color: rgba(0,0,0,0.8);}
        #zlt_z4:hover{background-color: rgba(0,0,0,0.8);}
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
<div class="zly_to">
   <div class="zly_lev2">
       <i class="iconfont" style="color:#9A6600;">&#xe609;</i><span class="mar"><a href="${baseurl}">首页</a></span><span class="mar">></span><span class="mar">宝贝回收估价</span>
    </div>
    <div class="zly_lev2co">
        <a href="${baseurl}category/08d2d4cbff6j48f08d56b26ba29266aa/0"> <div class="zly_pic1">
            <img src="${baseurl}res/images/new/lecpic_01.jpg" alt="">
        </div></a>
        <div class="zly_pic2">
            <div class="zly_pic2_1">
                <a href="${baseurl}product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt"><div class="zlt_zz1" id="zlt_z1">
                    <p>铂金回收</p>
                </div></a>
                <a href="${baseurl}product/094c2f5308514105a862c6299f9d320b?ptype=gjs&goldType=palau"><div class="zlt_zz1" id="zlt_z2">
                    <p>钯金回收</p>
                </div></a>
                <a href="${baseurl}product/bcf8086e4f4647fabcfc3409430baa60?ptype=gjs&goldType=k"><div class="zlt_zz1" id="zlt_z3">
                    <p>K<span style="margin-left: 5px;">金</span><br/>回收</p>
                </div></a>
                <a href="${baseurl}product/5f67c6baca4b4167a4b49b6df510a3f1?ptype=gjs&goldType=sliver"><div class="zlt_zz1" id="zlt_z4">
                    <p>白银回收</p>
                </div></a>
                <img src="${baseurl}res/images/new/lecpic_02.jpg" alt="">
            </div>
                <a href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold"> <div class="zly_pic2_2">
                <img src="${baseurl}res/images/new/lecpic_03.jpg" alt="">
            </div></a>
        </div>
            <a href="${baseurl}product/diamond"><div class="zly_pic3">
            <img src="${baseurl}res/images/new/lecpic_04.jpg" alt="">
        </div></a>
                <a href="${baseurl}category/e/4"> <div class="levpic_1">
            <img src="${baseurl}res/images/new/lecpic_05.jpg" alt="">
        </div></a>
        <a href="${baseurl}category/08d2d4cbf3974d8i8d56b26ba29266aa/0"> <div class="levpic_2">
            <img src="${baseurl}res/images/new/lecpic_06.jpg" alt="">
        </div></a>
                    <a href="${baseurl}category/08d2d4cbf39748f08d56b26ba29266aa/0"> <div class="levpic_3">
            <img src="${baseurl}res/images/new/lecpic_07.jpg" alt="">
        </div></a>
                        <a href="http://www.aishoubao.com/?cityId=856"> <div class="levpic_4">
            <img src="${baseurl}res/images/new/lecpic_08.jpg" alt="">
        </div></a>
                            <a href="${baseurl}category/e/5"> <div class="levpic_5">
            <img src="${baseurl}res/images/new/lecpic_11.jpg" alt="">
        </div></a>
                                <a href="${baseurl}category/e/2"> <div class="levpic_6">
            <img src="${baseurl}res/images/new/lecpic_09.jpg" alt="">
        </div></a>
                                    <a href="${baseurl}category/e/1"> <div class="levpic_7">
            <img src="${baseurl}res/images/new/lecpic_10.jpg" alt="">
        </div></a>
        <div class="levpic_8">
            <img src="${baseurl}res/images/new/lecpic_12.jpg" alt="">
        </div>
    </div>
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
    $(".zly_pic1").hover(function(){
        $(".zly_pic1 img").animate({
            bottom:'5px'
        });
    },function(){
        $(".zly_pic1 img").animate({
            bottom:'0px'
        });
    });
    $(".zly_pic2_1").hover(function(){
        $("#zlt_z1").css({"display":"block","z-index":"1"});
        $("#zlt_z2").css({"display":"block","z-index":"1"});
        $("#zlt_z3").css({"display":"block","z-index":"1"});
        $("#zlt_z4").css({"display":"block","z-index":"1"});
    },function(){
        $("#zlt_z1").css({"display":"none","z-index":"0"});
        $("#zlt_z2").css({"display":"none","z-index":"0"});
        $("#zlt_z3").css({"display":"none","z-index":"0"});
        $("#zlt_z4").css({"display":"none","z-index":"0"})
    });
    $(".zly_pic2_2").hover(function(){
        $(".zly_pic2_2 img").animate({
            bottom:'5px'
        });
    },function(){
        $(".zly_pic2_2 img").animate({
            bottom:'0px'
        });
    });
    $(".zly_pic3").hover(function(){
        $(".zly_pic3 img").animate({
            bottom:'5px'
        });
    },function(){
        $(".zly_pic3 img").animate({
            bottom:'0px'
        });
    });
    $(".levpic_1").hover(function(){
        $(".levpic_1 img").animate({
            bottom:'5px'
        });
    },function(){
        $(".levpic_1 img").animate({
            bottom:'0px'
        });
    });
    $(".levpic_2").hover(function(){
        $(".levpic_2 img").animate({
            bottom:'5px'
        });
    },function(){
        $(".levpic_2 img").animate({
            bottom:'0px'
        });
    });
    $(".levpic_3").hover(function(){
        $(".levpic_3 img").animate({
            bottom:'5px'
        });
    },function(){
        $(".levpic_3 img").animate({
            bottom:'0px'
        });
    });
    $(".levpic_4").hover(function(){
        $(".levpic_4 img").animate({
            bottom:'5px'
        });
    },function(){
        $(".levpic_4 img").animate({
            bottom:'0px'
        });
    });
    $(".levpic_5").hover(function(){
        $(".levpic_5 img").animate({
            bottom:'5px'
        });
    },function(){
        $(".levpic_5 img").animate({
            bottom:'0px'
        });
    });
    $(".levpic_6").hover(function(){
        $(".levpic_6 img").animate({
            bottom:'5px'
        });
    },function(){
        $(".levpic_6 img").animate({
            bottom:'0px'
        });
    });
    $(".levpic_7").hover(function(){
        $(".levpic_7 img").animate({
            bottom:'5px'
        });
    },function(){
        $(".levpic_7 img").animate({
            bottom:'0px'
        });
    });
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
