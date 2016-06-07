<%--
  User: donny
  Date: 2/29/16
  Time: 09:59
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit"/>
    <meta content="zh-cn" http-equiv="content-language"/>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <title>奢侈品养护频道 - 爱收宝</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style type="text/css" media="screen">
        .zly_top{width: 100%;height:30px; background-color: #000000;}
        .zly_topcon {width:1200px; margin:auto}
        .zly_topcon ul li{color:#FFFFFF;float: left;list-style:none;font-size: 12px;line-height: 30px;}
        .zly_topcon ul li a{color:#FFFFFF;text-decoration:none;}
        .zly_total{width:100%; background-color: #F6F6F6;overflow: hidden;}
        .zly_content{width: 1200px;margin:auto;}
        .zly_floor1{width:100%;margin:auto;}
        .zly_f1_left{width:680px;float:left;margin-top: 40px;}
        .zly_f1_right{width:480px;float:left;}
        .zly_f1_left p{margin-top: 5px;margin-bottom: 5px;line-height: 25px;font-size:12px;}
        .zly_f1_img{width:416px; background-color: #FFFFFF;text-align: center;margin-left: 40px;margin-top: 90px;margin-bottom: 60px; border: 1px solid #E0E0E0;}
        .zly_f1_img img{width:400px;margin-top: 8px;margin-bottom: 4px;}
        .zly_line1{width:100%;height:1px;background-color: #DFDFDF;}
        .zly_line2{width:100%;height:1px;background-color: #FFFFFF;}
        .zly_floor2{width:100%;margin:auto;}
        .zly_f2_1{width:33.3%;float:left;}
        .zly_f2_1{color:#e1882a;}
        .zly_f2_1 ul{padding-left: 15px;}
        .zly_f2_1 ul li{font-size: 12px;}
        .zly_f2_1{margin-bottom: 50px;}
        .zly_lifirst{color:#666666;font-size: 12px;margin-top: 5px;margin-bottom: 5px;margin-left: 5px;}
        .zly_f3_left{width:440px;float:left;}
        .zly_f3_right{width:440px;float:left; margin-left: 200px;}
        .zly_f3_right img{margin-bottom: 60px;}
        .zly_f3_left p{font-size: 12px;color:#666666;}
        .zly_f3_right p{font-size: 12px;color:#666666;}
        .zly_f4_left{width:500px;float:left;}
        .zly_f4_right{width:520px;float:left;margin-top: 20px;margin-left: 100px;}
        .zly_f4{float:left; width:200px;border-left: 1px solid #999999;padding-left: 30px;}
        .zly_f5{float:left; width:200px;border-left: 1px solid #999999;padding-left: 30px;margin-top: 40px;}
        .zly_f4 p,.zly_f5 p{margin-top: 5px;margin-bottom: 5px;font-size: 12px;color:#666666;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="zly_top">
    <div class="zly_topcon">
        <ul>
            <li><a style="color:#e1882a;font-size:14px;">奢侈品养护频道</a></li>
            <li style="margin-left:10px;"><a style="color:#e1882a;">Luxury maintenance</a></li>
            <li style="margin-left:533px;"><a href="${baseurl}luxury">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;养护首页</a></li>
            <li style="margin-left:15px;"><a href="${baseurl}luxury/maintenance">丨&nbsp;&nbsp;&nbsp;&nbsp;爱收宝奢护</a></li>
            <li style="margin-left:15px;"><a href="#" onclick="document.getElementById('fwfw').scrollIntoView(true);return false;">丨&nbsp;&nbsp;&nbsp;&nbsp;服务范围</a></li>
            <li style="margin-left:15px;"><a href="#" onclick="document.getElementById('jdal').scrollIntoView(true);return false;">丨&nbsp;&nbsp;&nbsp;&nbsp;经典案例</a></li>
            <li style="margin-left:15px;"><a href="#" onclick="document.getElementById('lxwm').scrollIntoView(true);return false;">丨&nbsp;&nbsp;&nbsp;&nbsp;联系我们</a></li>
        </ul>
    </div>
</div>
<div class="zly_total">
    <div class="zly_content">
        <div class="zly_floor1" id="asbsh">
            <div class="zly_f1_left">
                <p><span style="font-size:30px;color:#e1882a;">ABOUT</span><span style="color:#e1882a;font-size:18px;margin-left:20px;">爱收宝护理</span></p>
                <p style="font-weight:bold;margin-top:20px;">相信每一件奢侈品都是有灵魂的，我们所做的就是悉心呵护，让美延续!</p>
                <p style="color:#999999;">爱收宝奢护是爱收宝网的奢侈品养护品牌，致力于高档箱包、高端腕表、珠宝玉石、高档配饰等奢侈品的修复养护工作。2015
                    年建成具备多元化、高规格、专业化服务于一体的奢侈品养护工厂，位于苏州姑苏区园林路，占地2000平米，可为100多个品牌
                    做全套基础及深度养护服务，其高、精、尖的技术达国际专业水准。</p>
                <p style="font-weight:bold;margin-top:20px;">品牌理念</p>
                <p style="color:#999999;">爱收宝奢护以提升消费者售后服务意识、树立奢侈品养护市场规范、统一服务标准、确保消费者权益为企业社会责任；以强大的
                    技术团队为核心、以高精尖专业设备为保障、以专业真挚的态度为每一位高端消费者提供服务。</p>
            </div>
            <div class="zly_f1_right">
                <div class="zly_f1_img">
                    <img src="${mybaseurl}/res/images/new/luxury/Luxury_1.png" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="zly_line1"></div>
<div class="zly_line2"></div>
<div class="zly_total">
    <div class="zly_content">
        <div class="zly_floor2"  id="fwfw">
            <p style="margin-top:60px;"><span style="font-size:30px;color:#e1882a;">SERVICE</span><span
                    style="color:#e1882a;font-size:18px;margin-left:20px;">服务范围</span></p>
            <div class="zly_f2_1">
                <p class="zly_lifirst">名表维修</p>
                <ul>
                    <li><span style="color:#666666;">测试走时精度</span></li>
                    <li><span style="color:#666666;">调节表带、更换电池</span></li>
                    <li><span style="color:#666666;">外观清洗、打磨修复</span></li>
                </ul>
                <img src="${baseurl}res/images/new/luxury/Luxury_2.png" alt="" style="margin-top:15px;">
            </div>
            <div class="zly_f2_1">
                <p class="zly_lifirst">皮具养护</p>
                <ul>
                    <li><span style="color:#666666;">真皮箱包、皮革服装洗护、修复及保养</span></li>
                    <li><span style="color:#666666;">真皮沙发及高级轿车真皮座垫清洗养护</span></li>
                    <li><span style="color:#666666;">名贵鞋履的维护与养护</span></li>
                    <li><span style="color:#666666;">游艇、私人飞机真皮内饰养护</span></li>
                </ul>
                <img src="${baseurl}res/images/new/luxury/Luxury_3.png" alt="">
            </div>
            <div class="zly_f2_1">
                <p class="zly_lifirst">珠宝养护</p>
                <ul>
                    <li><span style="color:#666666;">专业珠宝清洗</span></li>
                    <li><span style="color:#666666;">珠宝配件镶补</span></li>
                    <li><span style="color:#666666;">断链修补</span></li>
                </ul>
                <img src="${baseurl}res/images/new/luxury/Luxury_4.png" alt="" style="margin-top:15px;">
            </div>
        </div>
    </div>
</div>
<div class="zly_line1"></div>
<div class="zly_line2"></div>
<div class="zly_total">
    <div class="zly_content">
        <div class="zly_floor3" id="jdal">
            <p style="margin-top:60px;"><span style="font-size:30px;color:#e1882a;">CASE</span><span
                    style="color:#e1882a;font-size:18px;margin-left:20px;">经典案例</span></p>
            <div class="zly_f3_left">
                <p style="color:#666666;font-weight:bold;">皮具养护</p>
                <p>皮具养护事业部。采用专业测色、调色仪、蒸汽去污机、日本进口手动缝制工具等先进设备，解决深层清洁、喷色且保留原先等多种难度大的问题，达到“还原性”养护效果</p>
                <img src="${baseurl}res/images/new/luxury/Luxury_5.png" alt="">
            </div>
            <div class="zly_f3_right">
                <p style="color:#666666;font-weight:bold;">皮具养护</p>
                <p>皮具养护事业部。采用专业测色、调色仪、蒸汽去污机、日本进口手动缝制工具等先进设备，解决深层清洁、喷色且保留原先等多种难度大的问题，达到“还原性”养护效果</p>
                <img src="${baseurl}res/images/new/luxury/Luxury_6.png" alt="">
            </div>
        </div>
    </div>
</div>
<div class="zly_line1"></div>
<div class="zly_line2"></div>
<div class="zly_total">
    <div class="zly_content">
        <div class="zly_floor4" id="lxwm">
            <p style="margin-top:60px;"><span style="font-size:30px;color:#e1882a;">CONTACT US</span><span style="color:#e1882a;font-size:18px;margin-left:20px;">联系我们</span>
            </p>
            <div class="zly_f4_left">
                <img src="${baseurl}res/images/new/luxury/Luxury_7.png" alt="">
                <p style="color:#e1882a;font-size:18px;margin-left:250px;margin-top:30px;"></p>
            </div>
            <div class="zly_f4_right">
                <div class="zly_f4">
                    <p style="font-weight:bold;">木渎天虹店</p>
                    <p>苏州木渎金山路39号天虹商场一楼</p>
                    <p>电话：0512-65630163</p>
                </div>
                <div class="zly_f4">
                    <p style="font-weight:bold;">西城永捷店</p>
                    <p>苏州西城永捷生活广场广济南路19号</p>
                    <p>电话：0512-65583853</p>
                </div>
                <div class="zly_f5">
                    <p style="font-weight:bold;">新区泉屋店</p>
                    <p>苏州新区长江路211号泉屋百货一楼</p>
                    <p>电话：0512-62538891</p>
                </div>
                <div class="zly_f5">
                    <p style="font-weight:bold;">园林路店</p>
                    <p>苏州姑苏区园林路5-2号</p>
                    <p>电话：0512-67272063</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div style="margin-top:20px;"></div>
<%@ include file="../common/footer.jsp"%>
</body>
</html>
