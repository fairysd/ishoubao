<%--
  User: donny
  Date: 1/18/16
  Time: 21:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp" %>
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
        .product{border: 1px solid #eee;margin-bottom:10px;background-color: #fff;}
        .thumbnail{border:0px;}
        .productLeft{}
        .productRight{border-left:1px solid #eee;margin-left:-30px;padding:20px;}
        .productRight h5{font-weight: normal;}
        .productRight .price{font-size:24px;color: #f39d12;}
        .productRight p{color: gray;border-bottom: 1px solid #eee;padding-bottom:5px;}

        .productRight h4{color:gray;padding-top:10px;}
        .productRight ul li {border:1px solid #eee;min-width:95px;margin-right:20px;height: 50px;line-height: 50px;margin-top:5px;}
        .productRight ul li:hover{border:1px solid #f39d12;color:#000;cursor: pointer;}
        .productRight ul li.selected{border:1px solid #f39d12;background-image: url("${baseurl}res/images/item_sel.gif");background-repeat: no-repeat;background-position: right bottom}
        .btn-primary,.btn-primary:hover,.btn-primary:focus{margin-top:15px;width:300px;background-color: #f39d12;border-color:#f39d12;}
        #step0 input{margin-bottom:15px;}
    </style>
 </head> 
<body style="margin-top:-20px;"> 
<%@ include file="library/nav.jsp" %>
<%@ include file="library/search.jsp" %>
<div class="product container">
    <div class="row">
        <div class="col-md-4">
            <div class="productLeft">
                <div class="thumbnail">
                    <img src="http://7xonzf.com1.z0.glb.clouddn.com/product/20160121155156_9301.jpg" alt="钻石">
                    <div class="caption">
                        <h5 class="text-center">钻石</h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="productRight">
                <h2>钻石</h2>
                <p><span class="glyphicon glyphicon-info-sign myorange"></span> 请如实描述您的宝贝，以获最准确的报价。</p>
                <div id="property_list">
                    <div id="step0" class="step_detail">
                        <div class=""><input placeholder="请输入钻饰总重量(g)" id="totalWeight" class="inputbox form-control" type="number" name="totalWeight" value=""/></div>
                        <div class=""><input placeholder="请输入主钻重量(ct)" id="mainWeight" class="inputbox form-control" type="number" name="mainWeight" value=""/></div>
                        <div class=""><input placeholder="请输入辅钻重量(ct)" id="secWeight" class="inputbox form-control" type="number" name="secWeight" value=""/></div>

                    </div>
                    <div id="step1" class="step_detail">
                        <h4><span class="glyphicon glyphicon-th-list myorange"></span> 贵金属类型</h4>
                        <ul class="list-inline">
                            <li class="text-center" data-id="type:">无</li>
                            <li class="text-center" data-id="type:bcf8086e4f4647fabcfc3409430baa60|7f57ff6c77014bc6960f83e666793a81|9K金">9K金</li>
                            <li class="text-center" data-id="type:bcf8086e4f4647fabcfc3409430baa60|099eba3afd7643099eedab25ece8f074|12K金">12K金</li>
                            <li class="text-center" data-id="type:bcf8086e4f4647fabcfc3409430baa60|97c17f89f6f0460587515a216ac6d871|14K金">14K金</li>
                            <li class="text-center" data-id="type:bcf8086e4f4647fabcfc3409430baa60|85123727da334cb9b4cd5ad06e64f7b3|18K金">18K金</li>
                            <li class="text-center" data-id="type:bcf8086e4f4647fabcfc3409430baa60|31980152b1f84d69a28b5a2c044f61a5|22K金">22K金</li>
                            <li class="text-center" data-id="type:21577fd8a5324e62a416978d15367515|ffc6941bfbc640fcbf36bf3e2b03512c|铂金PT850">铂金PT850</li>
                            <li class="text-center" data-id="type:21577fd8a5324e62a416978d15367515|7c429788ee3a47039b822b027b82a98b|铂金PT900">铂金PT900</li>
                            <li class="text-center" data-id="type:21577fd8a5324e62a416978d15367515|a69dac3ec31c4eb3944f2cc6a40da2c3|铂金PT950">铂金PT950</li>
                            <li class="text-center" data-id="type:21577fd8a5324e62a416978d15367515|712d64020db64f36b9ddf71cc5b05847|铂金PT990">铂金PT990</li>
                            <li class="text-center" data-id="type:094c2f5308514105a862c6299f9d320b|ffc58a73230f42cf908feab5370a1f87|钯金PD900">钯金PD900</li>
                            <li class="text-center" data-id="type:094c2f5308514105a862c6299f9d320b|5246ce1aeb274f5a9ac8b8abfc48cfe1|钯金PD950">钯金PD950</li>
                            <li class="text-center" data-id="type:094c2f5308514105a862c6299f9d320b|7ca7e950c98d4921844ad23fb2758306|钯金PD990">钯金PD990</li>
                        </ul>
                        <h4><span class="glyphicon glyphicon-th-list myorange"></span> 颜色</h4>
                        <ul class="list-inline">
                            <li class="text-center" data-id="Color:D">D</li>
                            <li class="text-center" data-id="Color:E">E</li>
                            <li class="text-center" data-id="Color:F">F</li>
                            <li class="text-center" data-id="Color:G">G</li>
                            <li class="text-center" data-id="Color:H">H</li>
                            <li class="text-center" data-id="Color:I">I</li>
                            <li class="text-center" data-id="Color:J">J</li>
                            <li class="text-center" data-id="Color:K">K</li>
                            <li class="text-center" data-id="Color:L">L</li>
                            <li class="text-center" data-id="Color:M">M</li>
                            <li class="text-center" data-id="Color:N">N</li>
                        </ul>
                        <h4><span class="glyphicon glyphicon-th-list myorange"></span> 净度</h4>
                        <ul class="list-inline">    
                            <li class="text-center" data-id="Clarity:A">Fl</li>
                            <li class="text-center" data-id="Clarity:B">IF</li>
                            <li class="text-center" data-id="Clarity:C">VVS1</li>
                            <li class="text-center" data-id="Clarity:D">VVS2</li>
                            <li class="text-center" data-id="Clarity:E">VS1</li>
                            <li class="text-center" data-id="Clarity:F">VS2</li>
                            <li class="text-center" data-id="Clarity:G">SI1</li>
                            <li class="text-center" data-id="Clarity:H">SI2</li>
                        </ul>
                        <h4><span class="glyphicon glyphicon-th-list myorange"></span> 切工</h4>
                        <ul class="list-inline">
                            <li class="text-center" data-id="Cut:A">Ideal</li>
                            <li class="text-center" data-id="Cut:B">EX</li>
                            <li class="text-center" data-id="Cut:C">VG</li>
                            <li class="text-center" data-id="Cut:D">GD</li>
                            <li class="text-center" data-id="Cut:E">Fair</li>
                        </ul>
                        <h4><span class="glyphicon glyphicon-th-list myorange"></span> 抛光</h4>
                        <ul class="list-inline">
                            <li class="text-center" data-id="Polish:A">Ideal</li>
                            <li class="text-center" data-id="Polish:B">EX</li>
                            <li class="text-center" data-id="Polish:C">VG</li>
                            <li class="text-center" data-id="Polish:D">GD</li>
                            <li class="text-center" data-id="Polish:E">Fair</li>
                        </ul>
                        <h4><span class="glyphicon glyphicon-th-list myorange"></span> 对称</h4>
                        <ul class="list-inline">    
                            <li class="text-center" data-id="Symmetry:A">Ideal</li>
                            <li class="text-center" data-id="Symmetry:B">EX</li>
                            <li class="text-center" data-id="Symmetry:C">VG</li>
                            <li class="text-center" data-id="Symmetry:D">GD</li>
                            <li class="text-center" data-id="Symmetry:E">Fair</li>
                        </ul>
                        <h4><span class="glyphicon glyphicon-th-list myorange"></span> 荧光</h4>
                        <ul class="list-inline"> 
                            <li class="text-center" data-id="Fluor:A">None</li>
                            <li class="text-center" data-id="Fluor:B">Faint</li>
                            <li class="text-center" data-id="Fluor:C">Medium</li>
                            <li class="text-center" data-id="Fluor:D">Strong</li>
                            <li class="text-center" data-id="Fluor:E">Very Strong</li>
                        </ul>
                        <h4><span class="glyphicon glyphicon-th-list myorange"></span> 证书</h4>
                        <ul class="list-inline">
                            <li class="text-center" data-id="Cert:A">GIA</li>
                            <li class="text-center" data-id="Cert:B">HRD</li>
                            <li class="text-center" data-id="Cert:C">IGI</li>
                            <li class="text-center" data-id="Cert:D">国检</li>
                        </ul>
                    </div>
                </div>
                <div class="text-center">
                    <button type="button" id="estimateBtn" class="btn btn-primary btn-lg">免费估价</button>
                </div>
            </div>
        </div>
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
</form>
<%@ include file="library/footer.jsp" %>
<%@ include file="common/js.jsp" %>
<script>
    function bindClick(tt) {
        tt.on({
            click:function(){
                if ($(this).parents("ul").hasClass("checkbox")) return $(this).toggleClass("selected"),
                        !1;
                if ($(this).hasClass("selected")) return !1;
                $(this).siblings(".selected").removeClass("selected");
                $(this).addClass("selected").parent().addClass("done");
            }});
    }
    bindClick($("#step1 ul li"));

    $("#estimateBtn").on({
        click:function(){
            for (var u, f, e, o, i = [], r = $("#step1 ul"), t = 0; t < r.length; t++) if (!$(r[t]).hasClass("done") && !$(r[t]).hasClass("checkbox")) {
                $("body").removeClass("step_region_on");
                alert("还有选项没有选择!");
                return
            }
            var mainWeight = $("#mainWeight").val();
            if (!mainWeight || isNaN(mainWeight) || mainWeight <= 0) {
                alert("请输入正确的主钻重量!");
                $("#mainWeight").focus();
                return
            }
            var i = [];
            $("#step1 li.selected").each(function(n, t) {
                i.push($(t).data("id"))
            });
            u = $("#step2Check .checkbox");
            f = {};
            u.find("li").each(function(n, t) {
                var r = $(t).data("pid"), e;
//                console.log(r);
                f[r] || (e = u.find("li.selected[data-pid=" + $(t).data("pid") + "]"), i.push(e.length ? e.data("pid") : ""), f[r] = !0)
            });

            if(i[0].indexOf("channel-") == 0) {
                $("#channelId").attr("value", i[0].substr(8));
                i[0]="";
            }

            var iii = $.grep(i, function(n) {return $.trim(n).length > 0;});
//            console.log(iii);

            var diamondDesc = [];
            var totalWeight = $("#totalWeight").val();
            var mainWeight = $("#mainWeight").val();
            var secWeight = $("#secWeight").val();
            var gjsWeight = 0;
            var mainAvg = "";
            var secEstimatePrice = 0;
            var zsFlage = 0; //钻饰flage
            var numstr = ""; //重量描述
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

            var type = color = clarity = curt = cert = polish = symmetry = fluor = res = "";
            for (var i=0; i<iii.length; i++) {
                res = iii[i].split(":");
                switch (res[0]) {
                    case "type":
                        type = res[1];
                        if (res[2])
                            diamondDesc.push("贵金属类型:"+res[2]);
                        break;
                    case "Color":
                        color = res[1];
                        diamondDesc.push("颜色:"+color);
                        break;
                    case "Clarity":
                        clarity = res[1];
                        diamondDesc.push("净度:"+clarity);
                        break;
                    case "Cert":
                        cert = res[1];
                        diamondDesc.push("证书:"+cert);
                        break;
                    case "Curt":
                        curt = res[1];
                        diamondDesc.push("切工:"+cert);
                        break;
                    case "Polish":
                        polish = res[1];
                        diamondDesc.push("抛光:"+cert);
                        break;
                    case "Symmetry":
                        symmetry = res[1];
                        diamondDesc.push("对称:"+cert);
                        break;
                    case "Fluor":
                        fluor = res[1];
                        diamondDesc.push("荧光:"+cert);
                        break;
                }

            }
            //console.log(diamondDesc);
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

                    $("#pricerules").attr("value", type);
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
</script>
<script src="${baseurl}res/js/search.js"></script>
</body>
</html>
