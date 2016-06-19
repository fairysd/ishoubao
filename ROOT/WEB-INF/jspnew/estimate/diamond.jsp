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
    <title>钻石估价-钻石回收-爱收宝</title>
    <link rel="canonical" href="http://www.aishoubao.com/" />
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class = "out_box twoRow">
    <div class = "leftRow">
        <form name="estimateForm" id="estimateForm" action="${baseurl}product/bj/${product.id}" method="post">
        <input type="hidden" name="ptype" id="ptype" value="${ptype}"/>

        <dl class = "oneRow step">
            <dd>请如实描述您的宝贝，以获最准确的报价。</dd>
            <dt>
                <label><input placeholder="请输入钻饰总重量(g)" id="totalWeight" type="text" name="totalWeight" value=""/></label>
                <label><input placeholder="请输入主钻重量(ct)" id="mainWeight" type="text" name="mainWeight" value=""/></label>
                <label><input placeholder="请输入辅钻重量(ct)" id="secWeight" type="text" name="secWeight" value=""/></label>
            </dt>
        </dl>
        <dl class = "fourRow step">
            <dd>1.贵金属类型</dd>
            <dt>
            <label><input type="radio" name="gjsType" value="type:"><span>无</span></label>
            <label><input type="radio" name="gjsType" value="type:bcf8086e4f4647fabcfc3409430baa60|7f57ff6c77014bc6960f83e666793a81|9K金"><span>9K金</span></label>
            <label><input type="radio" name="gjsType" value="type:bcf8086e4f4647fabcfc3409430baa60|099eba3afd7643099eedab25ece8f074|12K金"><span>12K金</span></label>
            <label><input type="radio" name="gjsType" value="type:bcf8086e4f4647fabcfc3409430baa60|97c17f89f6f0460587515a216ac6d871|14K金"><span>14K金</span></label>
            <label><input type="radio" name="gjsType" value="type:bcf8086e4f4647fabcfc3409430baa60|85123727da334cb9b4cd5ad06e64f7b3|18K金"><span>18K金</span></label>
            <label><input type="radio" name="gjsType" value="type:bcf8086e4f4647fabcfc3409430baa60|31980152b1f84d69a28b5a2c044f61a5|22K金"><span>22K金</span></label>
            <label><input type="radio" name="gjsType" value="type:21577fd8a5324e62a416978d15367515|ffc6941bfbc640fcbf36bf3e2b03512c|铂金PT850"><span>铂金PT850</span></label>
            <label><input type="radio" name="gjsType" value="type:21577fd8a5324e62a416978d15367515|7c429788ee3a47039b822b027b82a98b|铂金PT900"><span>铂金PT900</span></label>
            <label><input type="radio" name="gjsType" value="type:21577fd8a5324e62a416978d15367515|a69dac3ec31c4eb3944f2cc6a40da2c3|铂金PT950"><span>铂金PT950</span></label>
            <label><input type="radio" name="gjsType" value="type:21577fd8a5324e62a416978d15367515|712d64020db64f36b9ddf71cc5b05847|铂金PT990"><span>铂金PT990</span></label>
            <label><input type="radio" name="gjsType" value="type:094c2f5308514105a862c6299f9d320b|ffc58a73230f42cf908feab5370a1f87|钯金PD900"><span>钯金PD900</span></label>
            <label><input type="radio" name="gjsType" value="type:094c2f5308514105a862c6299f9d320b|5246ce1aeb274f5a9ac8b8abfc48cfe1|钯金PD950"><span>钯金PD950</span></label>
            <label><input type="radio" name="gjsType" value="type:094c2f5308514105a862c6299f9d320b|7ca7e950c98d4921844ad23fb2758306|钯金PD990"><span>钯金PD990</span></label>
            </dt>
        </dl>
        <dl class = "fourRow step">
            <dd>2.颜色</dd>
            <dt>
                <label><input type="radio" name="color" value="D"><span>D</span></label>
                <label><input type="radio" name="color" value="E"><span>E</span></label>
                <label><input type="radio" name="color" value="F"><span>F</span></label>
                <label><input type="radio" name="color" value="G"><span>G</span></label>
                <label><input type="radio" name="color" value="H"><span>H</span></label>
                <label><input type="radio" name="color" value="I"><span>I</span></label>
                <label><input type="radio" name="color" value="J"><span>J</span></label>
                <label><input type="radio" name="color" value="K"><span>K</span></label>
                <label><input type="radio" name="color" value="L"><span>L</span></label>
                <label><input type="radio" name="color" value="M"><span>M</span></label>
                <label><input type="radio" name="color" value="N"><span>N</span></label>
            </dt>
        </dl>
        <dl class = "fourRow step">
            <dd>3.净度</dd>
            <dt>
                <label><input type="radio" name="clarity" value="A"><span>Fl</span></label>
                <label><input type="radio" name="clarity" value="B"><span>IF</span></label>
                <label><input type="radio" name="clarity" value="C"><span>VVS1</span></label>
                <label><input type="radio" name="clarity" value="D"><span>VVS2</span></label>
                <label><input type="radio" name="clarity" value="E"><span>VS1</span></label>
                <label><input type="radio" name="clarity" value="F"><span>VS2</span></label>
                <label><input type="radio" name="clarity" value="G"><span>SI1</span></label>
                <label><input type="radio" name="clarity" value="H"><span>SI2</span></label>
            </dt>
        </dl>
        <dl class = "fourRow step">
            <dd>4.切工</dd>
            <dt>
                <%--<label><input type="radio" name="curt" value=""><span>未知</span></label>--%>
                <label><input type="radio" name="curt" value="A"><span>Ideal</span></label>
                <label><input type="radio" name="curt" value="B"><span>EX</span></label>
                <label><input type="radio" name="curt" value="C"><span>VG</span></label>
                <label><input type="radio" name="curt" value="D"><span>GD</span></label>
                <label><input type="radio" name="curt" value="E"><span>Fair</span></label>
            </dt>
        </dl>
        <dl class = "fourRow step">
            <dd>5.抛光</dd>
            <dt>
                <%--<label><input type="radio" name="polish" value=""><span>未知</span></label>--%>
                <label><input type="radio" name="polish" value="A"><span>Ideal</span></label>
                <label><input type="radio" name="polish" value="B"><span>EX</span></label>
                <label><input type="radio" name="polish" value="C"><span>VG</span></label>
                <label><input type="radio" name="polish" value="D"><span>GD</span></label>
                <label><input type="radio" name="polish" value="E"><span>Fair</span></label>
            </dt>
        </dl>
        <dl class = "fourRow step">
            <dd>6.对称</dd>
            <dt>
                <%--<label><input type="radio" name="symmetry" value=""><span>未知</span></label>--%>
                <label><input type="radio" name="symmetry" value="A"><span>Ideal</span></label>
                <label><input type="radio" name="symmetry" value="B"><span>EX</span></label>
                <label><input type="radio" name="symmetry" value="C"><span>VG</span></label>
                <label><input type="radio" name="symmetry" value="D"><span>GD</span></label>
                <label><input type="radio" name="symmetry" value="E"><span>Fair</span></label>
            </dt>
        </dl>
        <dl class = "fourRow step">
            <dd>7.荧光</dd>
            <dt>
                <%--<label><input type="radio" name="fluor" value=""><span>未知</span></label>--%>
                <label><input type="radio" name="fluor" value="A"><span>None</span></label>
                <label><input type="radio" name="fluor" value="B"><span>Faint</span></label>
                <label><input type="radio" name="fluor" value="C"><span>Medium</span></label>
                <label><input type="radio" name="fluor" value="D"><span>Strong</span></label>
                <label><input type="radio" name="fluor" value="E"><span>Very Strong</span></label>
            </dt>
        </dl>
        <dl class = "fourRow step">
            <dd>8.证书</dd>
            <dt>
                <%--<label><input type="radio" name="cert" value=""><span>未知</span></label>--%>
                <label><input type="radio" name="cert" value="A"><span>GIA</span></label>
                <label><input type="radio" name="cert" value="B"><span>HRD</span></label>
                <label><input type="radio" name="cert" value="C"><span>IGI</span></label>
                <label><input type="radio" name="cert" value="D"><span>国检</span></label>
            </dt>
        </dl>
        </form>

        <div class = "property_nav ">
            <div class = "btn_next" id="estimatBtn">免费询价</div>
            <div class = "btn_pre"><a href="javascript:history.go(-1)">返回上一步</a></div>
        </div>
    </div>
    <!-- 右边 -->
    <div class = "rightRow">
        <div class = "pro_info">
            <div class = "pro_nav">

            </div>
            <div style = "overflow: hidden; width: 100%;">
                <ul class = "pro_content">
                    <li>
                        <div class = "pro_pic"><img src = "http://7xonzf.com1.z0.glb.clouddn.com/product/20160121155156_9301.jpg" alt = ""></div>
                        <div class = "pro_name">钻石</div>
                    </li>
                </ul>
            </div>
        </div>

        <div class = "price_img"><img src = "${baseurl}res/images/4c.gif" alt = ""></div>
    </div>
</div>
<form name="product" id="product" method="post" action="${baseurl}product/diamond/bj">
    <input type="hidden" name="productId" id="productId" value="f9f0bc057cca42109822b7a497de5b3d"/>
    <input type="hidden" name="pricerules" id="pricerules" value=""/>
    <input type="hidden" name="cityId" id="cityId" value="${cityId}"/>
    <input type="hidden" name="gjsWeight" id="gjsWeight" value=""/>
    <input type="hidden" name="mainAvg" id="mainAvg" value=""/>
    <input type="hidden" name="secPrice" id="secPrice" value=""/>
    <input type="hidden" name="zsFlage" id="zsFlage" value="0"/>
    <input type="hidden" name="num" id="num" value=""/>
    <input type="hidden" name="diamondDesc" id="diamondDesc" value=""/>
    <input type="hidden" name="ptype" value="diamond"/>
</form>
<%@ include file="../common/footer.jsp"%>
<script>
    String.prototype.startWith=function(str){
        if(str==null||str==""||this.length==0||str.length>this.length)
            return false;
        if(this.substr(0,str.length)==str)
            return true;
        else
            return false;
        return true;
    }
    String.prototype.endWith=function(str){
        if(str==null||str==""||this.length==0||str.length>this.length)
            return false;
        if(this.substring(this.length-str.length)==str)
            return true;
        else
            return false;
        return true;
    }
    $(function(){
        $("#estimatBtn").on({
            "click":function(){
                var mainWeight = $("#mainWeight").val();
                if (!mainWeight || isNaN(mainWeight) || mainWeight <= 0) {
                    alert("请输入正确的主钻重量!");
                    $("#mainWeight").focus();
                    return
                }
                var diamondDesc = [];
                var totalWeight = $("#totalWeight").val();
                var secWeight = $("#secWeight").val();
                var gjsWeight = 0;
                var mainAvg = "";
                var secEstimatePrice = 0;
                var zsFlage = 0; //钻饰flage
                var numstr = ""; //重量描述
                var type = gjsType = $("input[name='gjsType']:checked").val();
                var color = $("input[name='color']:checked").val();
                var clarity = $("input[name='clarity']:checked").val();
                var curt = $("input[name='curt']:checked").val();
                var polish = $("input[name='polish']:checked").val();
                var symmetry = $("input[name='symmetry']:checked").val();
                var fluor = $("input[name='fluor']:checked").val();
                var cert = $("input[name='cert']:checked").val();

                if (typeof(type)=="undefined" || type==="") {
                    alert("请选择贵金属类型!");
                    return
                }

                if (typeof(color)=="undefined" || color==="") {
                    alert("请选择主钻的颜色!");
                    return
                }
                if (typeof(clarity)=="undefined" || clarity==="") {
                    alert("请选择主钻的净度!");
                    return
                }

                if (typeof(curt)=="undefined") curt="";
                if (typeof(polish)=="undefined") polish="";
                if (typeof(symmetry)=="undefined") symmetry ="";
                if (typeof(fluor)=="undefined") fluor="";
                if (typeof(cert)=="undefined") cert="";

                var ttt = gjsType.split(":");
                var temp_rule = "";
                if (ttt.length==1) {
                    diamondDesc.push("贵金属类型:");
                } else {
                    temp_rule = ttt[1];
                    diamondDesc.push("贵金属类型:"+temp_rule.split("|")[2]);
                }

                diamondDesc.push("颜色:"+color);
                diamondDesc.push("净度:"+clarity);
                diamondDesc.push("证书:"+cert);
                diamondDesc.push("切工:"+curt);
                diamondDesc.push("抛光:"+polish);
                diamondDesc.push("对称:"+symmetry);
                diamondDesc.push("荧光:"+fluor);

//                console.log(diamondDesc);

                if (mainWeight)
                    diamondDesc.push("主钻重量:"+mainWeight+"ct");
                if (secWeight) {
                    diamondDesc.push("辅钻重量:"+secWeight+"ct");
                    secEstimatePrice = secWeight * 1500;
                }
                if (totalWeight && mainWeight && secWeight) {
                    gjsWeight = parseFloat(totalWeight) - (parseFloat(mainWeight)+parseFloat(secWeight))*0.2;
                    zsFlage = 1;
                    numstr = "总重:"+totalWeight+"克"+",主钻"+mainWeight+"克拉,辅钻"+secWeight+"克拉";
                    diamondDesc.push("贵金属重量:"+gjsWeight+"g");
                    diamondDesc.push("总重量:"+totalWeight+"g");
                } else {
                    numstr = mainWeight+"克拉";
                }

                // call diamond api
                $.ajax({
                    dataType: 'script',
                    url: 'http://api.513ex.com:8080/api.php?pagejsnum=5&act=showdiamonds&openid=4b05a2f856368207d937898ef8c9b038',
                    data: {
                        S_1: mainWeight,
                        S_2: mainWeight,
                        Color: color,
                        Clarity: clarity,
                        Shape: 'A', //圆形
                        Cert: cert,
                        Cut: curt,
                        Polish: polish,
                        Symmetry: symmetry,
                        Fluor: fluor,
                        actype: 'json',
                        param: Math.random()

                    },

                    success: function () {
                        //var a = [];
                        var sum = 0;
                        //console.log(jsondata);
                        var length = jsondata.length;
                        //alert(length);
                        if (length <= 1) {
                            alert("没有相关钻石数据!请联系客服!");
                            location.reload();
                            return ;
                        } else if (length > 5) {
                            length = 5;
                        }

                        for (var i = 1, len = length; i < len; i++) {
                            //a.push(parseInt(jsondata[i].Rate * 1.5));
                            sum += parseInt(jsondata[i].Rate);
                        }
                        mainAvg = parseInt(sum/length)*0.8;
                        mainAvg = mainAvg.toFixed(1);
                        //console.log("rule(type):"+type);
                        //console.log("mainAvg:"+mainAvg);
                        //console.log("secP:"+secEstimatePrice);
                        //console.log("gjsWeight:"+gjsWeight);

                        $("#pricerules").attr("value", temp_rule);
                        $("#mainAvg").attr("value", mainAvg);
                        $("#secPrice").attr("value", secEstimatePrice);
                        $("#gjsWeight").attr("value", gjsWeight);
                        $("#zsFlage").attr("value", zsFlage);
                        $("#num").attr("value", numstr);
                        $("#diamondDesc").attr("value", diamondDesc);
                        $("#product").submit();
                    }
                });
            }
        })
    });
</script>
</body>
</html>
