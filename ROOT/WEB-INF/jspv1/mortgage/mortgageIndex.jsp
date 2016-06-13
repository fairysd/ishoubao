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
    <title>爱收宝抵押</title>
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        .mortgageXJDK{margin-top: 35px;}
        .myContainer {width:1200px;margin:0 auto;}
        .mortgageLeft{float:left;width:800px;margin-right:20px;margin-top:10px;}
        .mortgageRight{float:left;width:380px;}
        .mortgageKstd{background-color: #FAFAFA;height:350px;padding:10px;margin-top: 30px;}
        .mortgageTitle{font-size:18px;border-bottom:2px solid #CDCDCD;padding-bottom:10px;clear: both;padding-top: 20px;}
        .mortgageTitle1{font-size:18px;border-bottom:2px solid #A96D2D;padding-bottom:10px;}
        .mortgageTitleLeft{border-bottom:2px solid #A96D2D;padding-bottom:10px;}
        .mortgageTitleLeft1{padding-bottom:10px;}
        .myNew{color:#CECECE}
        .myNew1{color:#CECECE;font-size: 12px;}
        .myMore{color:#CECECE;float:right;font-size:14px;}
        .myTable{margin-top: 20px;}
        .myTableHeader li{list-style: none;float:left;width: 15%;font-size:16px;text-align: center;background-color: #F4F0E4;height:50px;line-height:50px;color:#AB886C;}
        .myTableRow {width:800px;height:900px; overflow:hidden;margin:0 auto;}
        .myTableRow ul li{height:48px;}
        .myTableRow .rowContent li{overflow:hidden;list-style: none;float:left;width: 15%;font-size:14px;text-align: center;height:30px;line-height:30px;padding-top:5px;padding-bottom:4px;border-bottom:1px solid #EFEFEF;}
        .dydkxz{margin-top:20px;}
        .dydkxzContent{padding:10px;}
        .dydkxzContent p{line-height:25px;}
        .bordercolor{border-color:#A96D2D}
        .styled-select select {
            /*background: transparent;*/
            width: 323px;
            padding: 5px;
            font-size: 16px;
            border: 1px solid #ccc;
            height: 34px;
            /*-webkit-appearance: none; !*for chrome*!*/
        }
        .myInput{height:30px;border:1px solid #cacaca;width:250px;font-size:16px;padding-left:6px;}
        form p{height:45px;}
        .mybutton{height:50px;color:#FFFFFF;background-color: #9A6604;font-size:18px;width:250px;}
        .ksdydksq{padding-top:15px;padding-left:65px;}
        .top_img{width: 100%;height: 110px;background: url("${baseurl}res/images/new/top_img2.jpg");background-size:100% 110px;}
        .top_imgco{width: 1200px;margin:auto;height: 110px;}
        .top_imgco img{width: 100%;height: 100%;}
        .morgageimg_1,.morgageimg_2,.morgageimg_3,.morgageimg_4,.morgageimg_5,.morgageimg_6,.morgageimg_7,.morgageimg_8,.morgageimg_9{
            width: 264px;height: 110px; float: left;
        }
        .morgageimg_2 img,.morgageimg_3 img,.morgageimg_4 img,.morgageimg_5 img,.morgageimg_6 img,.morgageimg_7 img,.morgageimg_8 img,.morgageimg_9 img{
            width: 100%; height: 100%;;
        }
        .morgageimg_1 img{position: absolute;width: 264px;height: 110px;}
        #zlt_z1{position: absolute;width: 64.5px; height:110px;background-color: rgba(0,0,0,0.5);display: none;}
        #zlt_z2{position: absolute;width: 64.5px; height:110px;background-color: rgba(0,0,0,0.5);display: none;margin-left: 66.5px;}
        #zlt_z3{position: absolute;width: 64.5px; height:110px;background-color: rgba(0,0,0,0.5);display: none;margin-left: 133px;}
        #zlt_z4{position: absolute;width: 64.5px; height:110px;background-color: rgba(0,0,0,0.5);display: none;margin-left: 199.5px;}
        #zlt_z1:hover{background-color: rgba(0,0,0,0.8);}
        #zlt_z2:hover{background-color: rgba(0,0,0,0.8);}
        #zlt_z3:hover{background-color: rgba(0,0,0,0.8);}
        #zlt_z4:hover{background-color: rgba(0,0,0,0.8);}
        .morgageimg_1 p{color:#FFFFFF;width: 40px;margin-top: 35px;margin-left: 16px;font-size: 15px;font-weight: bold;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="top_img">
    <div class="top_imgco">
       <img src="${baseurl}res/images/new/top_img1.jpg">
    </div>

</div>
<div class="myContainer">
    <div class="mortgageLeft">
        <div class="mortgageXJDK">
            <div class="mortgageTitle1"><span class="mortgageTitleLeft1">贷款分类 <span class="myNew1">classification</span></span></div>
               <div class="morgageimg_1"><img src="${baseurl}res/images/new/mort_1.jpg">
                    <a href="${baseurl}product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt"><div class="zlt_zz1" id="zlt_z1">
                        <p>铂金抵押</p>
                    </div></a>
                    <a href="${baseurl}product/094c2f5308514105a862c6299f9d320b?ptype=gjs&goldType=palau"><div class="zlt_zz1" id="zlt_z2">
                        <p>钯金抵押</p>
                    </div></a>
                    <a href="${baseurl}product/bcf8086e4f4647fabcfc3409430baa60?ptype=gjs&goldType=k"><div class="zlt_zz1" id="zlt_z3">
                        <p>K<span style="margin-left: 5px;font-weight: bold;">金</span><br/>抵押</p>
                    </div></a>
                    <a href="${baseurl}product/5f67c6baca4b4167a4b49b6df510a3f1?ptype=gjs&goldType=sliver"><div class="zlt_zz1" id="zlt_z4">
                        <p>白银抵押</p>
                    </div></a>
                </div>
            <a href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold"><div class="morgageimg_9" style="margin-left: 4px;"><img src="${baseurl}res/images/new/mort_2.jpg"></div></a>
            <a href="${baseurl}category/08d2d4cbff6j48f08d56b26ba29266aa/0"><div class="morgageimg_2" style="margin-left: 4px;"><img src="${baseurl}res/images/new/mort_3.jpg"></div></a>

            <a href="${baseurl}category/08d2d4cbf3974d8i8d56b26ba29266aa/0"><div class="morgageimg_3" style="margin-top: 4px;"><img src="${baseurl}res/images/new/mort_4.jpg"></div></a>
            <a href="${baseurl}category/08d2d4cbf39748f08d56b26ba29266aa/0"><div class="morgageimg_4" style="margin-top: 4px;margin-left: 4px;"><img src="${baseurl}res/images/new/mort_5.jpg"></div></a>
            <a href="${baseurl}category/e/4"><div class="morgageimg_5" style="margin-left: 4px;margin-top: 4px;"><img src="${baseurl}res/images/new/mort_6.jpg"></div></a>
            <a href="${baseurl}product/diamond"><div class="morgageimg_6" style="margin-top: 4px;"><img src="${baseurl}res/images/new/mort_7.jpg"></div></a>
            <a href=""><div class="morgageimg_7" style="margin-top: 4px;margin-left: 4px;"><img src="${baseurl}res/images/new/mort_8.jpg"></div></a>
            <a href="${baseurl}category/e/3"><div class="morgageimg_8" style="margin-left: 4px;margin-top: 4px;"><img src="${baseurl}res/images/new/mort_9.jpg"></div></a>
            <div class="mortgageTitle"><span class="mortgageTitleLeft">新近贷款 <span class="myNew">NEW</span></span></div>
            <div class="myTable">
                <div class="myTableHeader">
                    <ul>
                        <li>贷款总类</li>
                        <li>抵押用户</li>
                        <li style="width: 25%;">抵押物品</li>
                        <li>贷款期限</li>
                        <li>贷款金额</li>
                        <li>贷款地区</li>
                    </ul>
                </div>
                <div class="myTableRow">
                    <ul>
                        <%--@elvariable id="datas" type="java.util.List"--%>
                        <%--@elvariable id="dkjsj" type="cn.com.kpso.asb.model.Dkjsj"--%>
                        <c:forEach items="${datas}" var="dkjsj" >
                            <li>
                                <ul class="rowContent">
                                    <li>${dkjsj.dkzl}</li>
                                    <li>${dkjsj.dyyh}</li>
                                    <li style="width: 25%;">${dkjsj.dywp}</li>
                                    <li>${dkjsj.dkqx}</li>
                                    <li>${dkjsj.dkje}</li>
                                    <li>${dkjsj.dkdq}</li>
                                </ul>
                            </li>
                        </c:forEach>
                    </ul>

                </div>
            </div>

        </div>
    </div>
    <div class="mortgageRight">
        <div class="mortgageKstd">
            <p class="mortgageTitle bordercolor">贷款快速通道</p>
            <form name="dyform" id="dyform" action="${baseurl}webintention/create" method="post" onSubmit="return mycheck();">
                <input type="hidden" name="type" value="2"/>
                <p class="mt20 styled-select">
                    <label>
                        <select name="productType">
                            <option value="车辆贷款" <c:if test="${category=='car'}">selected</c:if>>车辆贷款</option>
                            <option value="贵金属贷款" <c:if test="${category=='gjs'}">selected</c:if>>贵金属贷款</option>
                            <option value="民品贷款" <c:if test="${category=='mp'}">selected</c:if>>民品贷款</option>
                            <option value="名表贷款" <c:if test="${category=='clock'}">selected</c:if>>名表贷款</option>
                            <option value="珠宝贷款" <c:if test="${category=='diamond'}">selected</c:if>>珠宝贷款</option>
                        </select>
                    </label>
                </p>
                <p class="mt20"><label>融资期限: <input type="text" name="rzTimeinput" id="rzTimeinput" class="myInput" placeholder="请输入融资期限,单位个月"></label></p>
                <p><label>融资金额: <input type="text" name="rzJeinput" id="rzJeinput" class="myInput" placeholder="请输入融资金额,单位万元"></label></p>
                <p><label>联系手机: <input type="text" name="phone" class="myInput"placeholder="请输入正确的手机号码"></label></p>
                <p class="ksdydksq"><input type="submit" value="快速抵押贷款申请" class="mybutton"/> </p>
                <input type="hidden" id="rzTime" name="rzTime"/>
                <input type="hidden" id="rzJe" name="rzJe"/>
            </form>
        </div>
        <div class="dydkxz">
            <div class="mortgageTitle"><span class="mortgageTitleLeft">抵押贷款须知</span></div>
            <div class="dydkxzContent">
                <c:choose>
                <c:when test="${category=='car'}">
                <p>【申请条件】</p>
                <P>申请要求：需要抵押物、不需要信用、条件不符者勿扰； 不在贷款范围类：拖拉机、摩托车、面包车车类； 个人、企业名下的机动车辆，包括乘用车、工程车及 4S店名下的批量商品车（如：小轿车 越野车SUV 商务车MPV 跑车 客车 货车工程车）。</P>
                <p>【借款额度】</p>
                <p>不超过评估价的95%。</p>
                <p>【办理流程】<br> 1、评估机动车价值；<br>2、签署典当合同及当票；<br>3、办理相关登记；<br>4、放款。</p>
                <p>【放款优势】<br>
                    1、最快1小时放款<br>
                    2、拥有经验丰富的机动车评估团队，为您量身定制融资方案<br>
                    3、借款额度最高可达机动车评估价值的90%</p>
                <p>【所需材料】<br>
                    个人名下机动车典当;机动车登记证、行驶证、身份
                    证、购车发票、购置税等；<br>
                    企业名下机动车典当：企业组织机构代码证、营业执
                    照、公司章程、股东会决议等；<br>
                    4S店批量商品车典当：公司资质、车辆合格证、车辆
                    进项票。</p>
                </c:when>
                <c:when test="${category=='gjs'}">
                    <p>【申请条件】</p>
                    <p>申请要求：需要质押贷款物、不需要信用、条件不符者勿扰；<br>贵金属类：黄铂金、K金饰品及摆件、投资金银条（币）；<br>不在贷款范围类；白银首饰类。</p>
                    <p>【质押贷款额度】</p>
                    <p>不超过评估价的95%。</p>
                    <p>【办理流程】<br>
                        1、鉴定评估物品质押贷款价值；<br>
                        2、双方协商 签署当票；<br>
                        3、成交。</p>
                    <p>【质押贷款优势】<br>
                        1、即时成交；<br>
                        2、拥有一批经验丰富的专业鉴定评估团队；<br>
                        3、质押贷款金额高，最高可达评估价的90%。</p>
                    <p>【所需材料】<br>
                        1、质押贷款人身份证；<br>
                        2、当物的货物来源证明 （如发票、证书等）。</p>
                </c:when>
                <c:when test="${category=='mp'}">
                <p>【申请条件】</p>
                <p>申请要求：需要质押贷款物、不需要信用、条件不符者勿扰；<br>设备物资的质押、艺术品、奢侈品、高档数码家电、饰品、收藏品等均可质押货款；<br>信用要求：无；<br>负债要求：无。</p>
                <p>【质押贷款额度】</p>
                <p>不超过评估价的95%。</p>
                <p>【办理流程】<br>
                    1、鉴定评估物品质押贷款价值；<br>
                    2、双方协商 签署当票；<br>
                    3、成交。</p>
                <p>【质押贷款优势】<br>
                    1、即时成交；<br>
                    2、拥有一批经验丰富的专业鉴定评估团队；<br>
                    3、质押贷款金额高，最高可达评估价的90%。</p>
                <p>【所需材料】<br>
                    1、质押贷款人身份证；<br>
                    2、当物的货物来源证明 （如发票、证书等）。</p>
                </c:when>
                <c:when test="${category=='clock'}">
                    <p>【申请条件】</p>
                    <p>申请要求：需要质押贷款物、不需要信用、条件不符者勿扰；<br>
                        名表类；百达翡丽、江诗丹顿、劳力士、卡地亚、万国、欧米茄、浪琴以及天梭等瑞士、德国高档腕表，古董钟、怀表等。</p>
                    <p>【质押贷款额度】</p>
                    <p>不超过评估价的95%。</p>
                    <p>【办理流程】<br>
                        1、鉴定评估物品质押贷款价值；<br>
                        2、双方协商 签署当票；<br>
                        3、成交。</p>
                    <p>【质押贷款优势】<br>
                        1、即时成交；<br>
                        2、拥有一批经验丰富的专业鉴定评估团队；<br>
                        3、质押贷款金额高，最高可达评估价的90%。</p>
                    <p>【所需材料】<br>
                        1、质押贷款人身份证；<br>
                        2、当物的货物来源证明 （如发票、证书等）。</p>
                </c:when>
                <c:when test="${category=='diamond'}">
                    <p>【申请条件】</p>
                    <p>申请要求：需要质押贷款物、不需要信用、条件不符者勿扰；<br>
                        珠宝玉石类：翡翠、白玉等高档玉石及钻石、红蓝宝等高档宝石。</p>
                    <p>【质押贷款额度】</p>
                    <p>不超过评估价的95%。</p>
                    <p>【办理流程】<br>
                        1、鉴定评估物品质押贷款价值；<br>
                        2、双方协商 签署当票；<br>
                        3、成交。</p>
                    <p>【质押贷款优势】<br>
                        1、即时成交；<br>
                        2、拥有一批经验丰富的专业鉴定评估团队；<br>
                        3、质押贷款金额高，最高可达评估价的90%。</p>
                    <p>【所需材料】<br>
                        1、质押贷款人身份证；<br>
                        2、当物的货物来源证明 （如发票、证书等）。</p>
                </c:when>
                </c:choose>
            </div>
        </div>
    </div>
</div>
<div style="clear:both;height: 30px;"></div>
<%@ include file="../common/footer.jsp" %>
<script type="text/javascript" src="${baseurl}res/js/scroll.js"></script>
<script type="text/javascript">
    $(function(){
        $('.myTableRow').kxbdSuperMarquee({
            isMarquee:true,
            isEqual:true,
            scrollDelay:20,
            controlBtn:{up:'#goUM',down:'#goDM'},
            direction:'up'
        });
    });
    $(".morgageimg_1").hover(function(){
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
    function mycheck() {
        var form = document.dyform;
        if(form.rzTimeinput.value=='' || !unsignedDoubleCheck(form.rzTimeinput.value)){
            alert("请输入正确的融资期限!");
            form.rzTimeinput.focus();
            return false;
        } else {
//            form.rzTime.value += "个月";
            $("#rzTime").val(form.rzTimeinput.value + "个月");
        }

        if(form.rzJeinput.value=='' || !unsignedDoubleCheck(form.rzJeinput.value)){
            alert("请输入正确的融资金额!");
            form.rzJeinput.focus();
            return false;
        } else {
//            form.rzJe.value += "万元";
            $("#rzJe").val(form.rzJeinput.value + "万元");
        }

        if(form.phone.value=='' || !telRuleCheck2(form.phone.value)) {
            alert("请输入正确的手机号码!");
            return false;
        }
        return true;
    }
</script>
</body>
</html>