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
    <title>爱收宝</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        .succ_1{width:100%;height:74px;background:#F6F6F6;}
        .succ_1 img{width:100%;}
        .succ_2{width:100%;height:351px;background: #283051;}
        .succ_2 img{width:100%;}
        .succ_3{width:1200px;height:300px;margin:auto;margin-top: 100px;}
        .succ_3_content{width:800px;height:300px;margin:auto;}
        .succ_3_cotop1{width:800px;height:50px;}
        .succ_3_cotop2{width:800px;height:250px;float:left;}
        .succ_3_ctop2_1{width:245px;height:215px;float:left;background-color:#F6F6F6;}
        .succ_3_ctop2_2{width:245px;height:215px;float:left;background-color: #FFF4D8;margin-left: 32.5px;}
        .succ_3_ctop2_2 a{color:#fff;}
        .succ_3_ctop2_3{width:245px;height:215px;float:left;background-color: #F6F6F6;margin-left: 32.5px;}
        .succ_3a{margin-top: 40px;text-align: center;padding-left: 20px;padding-right: 20px;height: 120px;}
        .succ_3a a{color:#000000;font-weight: bold;text-decoration: none;}
        .succ_3a_button1{margin-top:15px;border:none;background:#EC571D;width:100px;height:30px;color:#FFFFFF;border-radius: 9px;}
        .succ_3a_button2{margin-top:15px;border:none;background:#EC571D;width:100px;height:30px;color:#FFFFFF;border-radius: 9px;}
        .succ_3a_button3{margin-top:15px;border:none;background:#EC571D;width:100px;height:30px;color:#FFFFFF;border-radius: 9px;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="succ_1">
    <div class="out_box">
    <c:if test="${type=='1'}">
        <img src="${baseurl}res/images/new/success/success3Js.jpg" alt="" style="height:74px;">
    </c:if>
    <c:if test="${type=='2'}">
        <img src="${baseurl}res/images/new/success/success3Dy.jpg" alt="" style="height:74px;">
    </c:if>
    </div>
</div>
<div class="succ_2">
    <div class="out_box">
    <img src="${baseurl}res/images/new/success/3page_focuspic.jpg" alt="" style="height:400px;">
    </div>
</div>
<div class="succ_3">
    <div class="succ_3_content">
        <div class="succ_3_cotop1" style="text-align: center;">
<c:if test="${type != '1'}"><img src="${baseurl}res/images/new/success/mjdp.png" alt="" style=""></c:if>
            <img src="${baseurl}res/images/new/success/zxzx.png" alt="" style="margin-left:<c:if test="${type == '1'}"> 0px;</c:if><c:if test="${type != '1'}"> 220px;</c:if>">
<c:if test="${type != '1'}"><img src="${baseurl}res/images/new/success/scwm.png" alt="" style="margin-left:220px;"></c:if>
        </div>
        <div class="succ_3_cotop2" style="text-align: center;">
            <c:if test="${type != '1'}">
            <div class="succ_3_ctop2_1">
                <div class="succ_3a">
                    <a>千家抵押贷款行绝当品特卖中 真品！低价！</a><br/>
                    <a style="color:#DBDBDB;">THOUSANDS OF PAWNSHOP UNIQUE WHEN PINTER SELL GENUINE! LOW PRICE</a>
                </div>
                <button id="shop" class="succ_3a_button1" onmouseover="button_on(this);" onmouseout="button_out(this);">买绝当品</button>
            </div>
            </c:if>
            <div class="succ_3_ctop2_2"<c:if test="${type == '1'}"> style="margin-left:278px;"</c:if>>
                <div class="succ_3a">
                    <a>工作时间工作人员可解答您的任何问题</a><br/><br/>
                    <a style="color:#DBDBDB;">WORKING TIME</a><br/>
                    <a style="color:#DBDBDB;"> STAFF CAN ANSWER YOUR QUESTIONS</a>
                </div >
                <button id="onlineZx" class="succ_3a_button2" onmouseover="button_on(this);" onmouseout="button_out(this);"><a href="http://kefu.qycn.com/vclient/chat/?websiteid=113372" target="_blank">在线咨询</a></button>
            </div>
            <c:if test="${type != '1'}">
            <div class="succ_3_ctop2_3">
                <div class="succ_3a">
                    <a>你想贷款或买绝当宝贝时，记得再来爱收宝哦！</a><br/><br/>
                    <a style="color:#DBDBDB;">REMEMBER TO COME TO AISHOUBAO AGAIN OH!</a>
                </div >
                <button id="scwm" class="succ_3a_button3"  onmouseover="button_on(this);" onmouseout="button_out(this);">收藏我们</button>
            </div>
            </c:if>
        </div>
    </div>
</div>
<%@ include file="../common/footer.jsp"%>
<script>
    function button_on(msg){
        var me=$(msg).attr("class");
        $("."+me+"").css("background-color","#FF4A03");
    }
    function button_out(msg){
        var me=$(msg).attr("class");
        $("."+me+"").css("background-color","#EC571D");
    }
    $(function () {
        $("#shop").click(function() {
            window.location.href = "http://shop.aishoubao.com";
        });
        $("#scwm").click(function(){
            var url = "http://www.aishoubao.com";
            var title = "爱收宝"
            try {
                window.external.addFavorite(url, title);
            }
            catch (e) {
                try {
                    window.sidebar.addPanel(title, url, "");
                }
                catch (e) {
                    alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加");
                }
            }
        });

        $("#onlineZx").click(function(){

        });

    });
</script>
</body>
</html>
