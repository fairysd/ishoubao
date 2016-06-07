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
    <link rel="canonical" href="http://www.aishoubao.com/" />
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style>
        .clockRound{height: 25px; line-height: 25px; border: 1px solid #aaa; width:auto;padding-left:0;padding-right:8px;border-radius: 5px;}
    </style>
</head>
<body>
<c:choose>
    <c:when test="${goldType=='gold'}"><c:set var="gjsName" value="黄金"/><c:set var="gjsPic" value="http://7xonzf.com1.z0.glb.clouddn.com/product/20160119140653_0553.jpg"/><c:set var="gjs24Pic" value="http://photo.zhijinwang.com/cn/live_charts/goldcny.gif?rnd=0.6190421138890088"/></c:when>
    <c:when test="${goldType=='k'}"><c:set var="gjsName" value="K金"/><c:set var="gjsPic" value="http://7xonzf.com1.z0.glb.clouddn.com/product/20160109212448_1078.jpg"/><c:set var="gjs24Pic" value="http://photo.zhijinwang.com/cn/live_charts/goldcny.gif?rnd=0.6190421138890088"/></c:when>
    <c:when test="${goldType=='pt'}"><c:set var="gjsName" value="铂金"/><c:set var="gjsPic" value="http://7xonzf.com1.z0.glb.clouddn.com/product/20160109212504_8586.jpg"/><c:set var="gjs24Pic" value="http://photo.zhijinwang.com/cn/live_charts/platicny.gif?rnd=0.8730580462142825"/></c:when>
    <c:when test="${goldType=='palau'}"><c:set var="gjsName" value="钯金"/><c:set var="gjsPic" value="http://7xonzf.com1.z0.glb.clouddn.com/product/20160109212518_4736.jpg"/><c:set var="gjs24Pic" value="http://photo.zhijinwang.com/cn/live_charts/pladcny.gif?rnd=0.40317971305921674"/></c:when>
    <c:when test="${goldType=='sliver'}"><c:set var="gjsName" value="白银"/><c:set var="gjsPic" value="http://7xonzf.com1.z0.glb.clouddn.com/product/20160109212349_5844.png"/><c:set var="gjs24Pic" value="http://photo.zhijinwang.com/cn/live_charts/silvercny.gif?rnd=0.6687535485252738"/></c:when>
</c:choose>
<%@ include file="../common/header.jsp"%>
<c:set var="requiredCount" value="0"/>
<div class = "out_box twoRow">
    <div class = "leftRow">
        <form name="estimateForm" id="estimateForm" action="${baseurl}product/bj/${product.id}" method="post">
        <input type="hidden" name="pricerules" id="pricerules" value=""/>
        <input type="hidden" name="cityId" id="cityId" value="${cityId}"/>
        <input type="hidden" name="channelId" id="channelId" value=""/>
        <input type="hidden" name="virtualPid" id="virtualPid" value=""/>
        <input type="hidden" name="ptype" id="ptype" value="${ptype}"/>

        <c:if test="${ptype=='gjs'}">
        <dl class = "oneRow step">
            <dd>请如实描述您的宝贝，以获最准确的报价。</dd>
            <dt>
                <label><input type = "text" name="num" id="num" value="${num}" placeholder = "请输入总重量（g）"></label>
            </dt>
        </dl>
        </c:if>
        <dl class = "fourRow step">
            <c:if test="${ptype=='phone'}">
                <c:if test="${product.virtualList.size()>0}">
                    <c:set var="requiredCount" value="${requiredCount+1}"/>
                <dd>1.购买渠道</dd>
                <dt>
                <c:forEach items="${product.virtualList}" var="v" varStatus="st">
                    <%--<li data-id="${v.id}" class="text-center">${v.name}</li>--%>
                    <label><input type = "radio" class="<c:if test="${st.first}">virtualFirst</c:if>" name = "virtualId" data-value="${v.id}" value="${v.id}"><span>${v.name}</span></label>
                </c:forEach>
                </dt>
                </c:if>
            </c:if>

            <c:if test="${ptype!='phone'}">
            <c:if test="${product.channelList.size()>0}">
                <c:set var="requiredCount" value="${requiredCount+1}"/>
                <dd>1.购买渠道</dd>
                <dt>
                <c:forEach items="${product.channelList}" var="c" varStatus="st">
                    <label><input type = "radio" name = "c0" id="channelIdInput" value="${c.channelId}"><span>${c.channelName}</span></label>
                </c:forEach>
                </dt>
            </c:if>
            </c:if>

            <c:set var="xuhao" value="0"/>
            <c:forEach items="${productProperty}" var="p" varStatus="st">
                <c:if test="${p.required==1}">
                    <c:set var="requiredCount" value="${requiredCount+1}"/>
                    <dd><c:if test="${product.channelList.size()>0}">${xuhao+2}</c:if><c:if test="${product.channelList.size()<=0}">${xuhao+1}</c:if>.${p.name}</dd>
                    <dt>
                    <c:forEach items="${p.optionList}" var="option">
                        <%--<li data-id="${option.id}" class="text-center">${option.name}</li>--%>
                        <label><input type = "radio" name = "c1[${st.index}]" value="${option.id}"><span>${option.name}</span></label>
                    </c:forEach>
                    </dt>
                    <c:set var="xuhao" value="${xuhao+1}"/>
                </c:if>
            </c:forEach>
        </dl>
            <c:if test="${ptype=='phone'}">
            <dl class = "fourRow step phoneRequired">
            </dl>
            <dl class = "fourRow step phoneNotRequired">
                <dd>还有其它问题吗?（可多选）</dd>
                <dt>
                </dt>
            </dl>
            </c:if>
        <dl class = "threeRow step">
            <c:if test="${ptype!='phone'}">
            <dd><c:if test="${productProperty.size()>0}">
                <c:choose>
                    <c:when test="${ptype=='bag' or ptype=='clock'}">缺失的配件</c:when>
                    <c:when test="${ptype=='gjs'}">有无票据?</c:when>
                    <c:otherwise>还有其它问题吗?</c:otherwise>
                </c:choose> （可多选）</c:if></dd>
                <dt>
                <c:forEach items="${productProperty}" var="p" varStatus="st">
                    <c:if test="${p.required==0}">
                        <c:forEach items="${p.optionList}" var="option" varStatus="subSt">
                            <%--<li data-pid="${option.id}" class="text-center">${option.name}</li>--%>
                            <label><input type = "checkbox" name = "c2[${subSt.index}]" value="${option.id}"><span>${option.name}</span></label>
                        </c:forEach>
                    </c:if>
                </c:forEach>
                </dt>
            </c:if>
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
                <c:choose>
                    <c:when test="${ptype=='bag'}">
                        <span style="padding-top: 70px;">&lang;</span>
                        <span style="padding-top: 70px;">&rang;</span>
                    </c:when>
                    <c:when test="${ptype=='clock'}">
                        <span style="padding-top: 50px;">&lang;</span>
                        <span style="padding-top: 50px;">&rang;</span>
                    </c:when>
                    <c:otherwise>
                        <span>&lang;</span>
                        <span>&rang;</span>
                    </c:otherwise>
                </c:choose>
            </div>
            <div style = "overflow: hidden; width: 100%;">
                <ul class = "pro_content">
                    <c:if test="${ptype == 'gjs'}">
                    <li>
                        <div class = "pro_pic"><img src = "${gjsPic}" alt = ""></div>
                        <div class = "pro_name">${gjsName}</div>
                    </li>
                    </c:if>
                    <c:if test="${ptype == 'bag' or ptype == 'clock' or ptype=='phone'}">
                    <c:forEach items="${product.picList}" var="pic">
                    <li>
                        <div class = "pro_pic"><img src = "${pic}" alt = ""></div>
                        <div class = "pro_name">${product.name}</div>
                        <c:if test="${ptype == 'bag'}"><div class = "pro_price"><span>中国专柜价</span><span>${product.maxPrice}(元)</span></div></c:if>
                        <c:if test="${ptype == 'clock'}"><%--@elvariable id="product" type="cn.com.kpso.asb.model.Product"--%>
                        <ul class = "sales_stats2">
                            <li>
                                <div class = "num<c:if test="${empty product.channelList[0].maxPrice}"> noPrice</c:if>"><c:if test="${empty product.channelList[0].maxPrice}">暂无价格</c:if><c:if test="${not empty product.channelList[0].maxPrice}">${product.channelList[0].maxPrice}</c:if></div>
                                <span>￥中国大陆售价</span></li>
                            <li>
                                <div class = "num<c:if test="${empty product.channelList[1].maxPrice}"> noPrice</c:if>"><c:if test="${empty product.channelList[1].maxPrice}">暂无价格</c:if><c:if test="${not empty product.channelList[1].maxPrice}">${product.channelList[1].maxPrice}</c:if></div>
                                <span>HK 香港售价</span></li>
                            <li>
                                <div class = "num<c:if test="${empty product.channelList[2].maxPrice}"> noPrice</c:if>"><c:if test="${empty product.channelList[2].maxPrice}">暂无价格</c:if><c:if test="${not empty product.channelList[2].maxPrice}">${product.channelList[2].maxPrice}</c:if></div>
                                <span>$ 美国售价</span></li>
                        </ul>
                        </c:if>
                    </li>
                    </c:forEach>
                    </c:if>
                </ul>
            </div>
        </div>
        <c:if test="${ptype=='phone'}">
        <ul class = "sales_stats">
            <li>
                <div class = "num curMonthNum">暂无</div>
                <span class = "text">本月回收次数</span></li>
            <li>
                <div class = "num curMonthPriceNum">暂无</div>
                <span class = "text">回收均价/元</span></li>
        </ul>
        </c:if>
        <c:if test="${ptype=='bag'}">
        <div class = "pro_detail bag_detail">
        </div>
        </c:if>
        <c:if test="${ptype=='clock'}">
        <div class = "pro_detail clock_detail">
        </div>
        </c:if>
        <c:if test="${ptype=='phone'}">
        <div class = "price_trend_chart">
            <div id = "price_chart">
                <%--<img src = "${baseurl}res/images/1.jpg" alt = "">--%>
            </div>

            <div class = "predicted_trend">
                预计下月跌幅<i class = "down"></i><i class = "up"></i><span> ¥89</span>
            </div>
        </div>
        </c:if>
        <c:if test="${ptype=='gjs'}">
        <div class = "price_now">
            <h4>${gjsName}实时价格</h4>
            <div class = "price_img"><img src = "${gjs24Pic}" width="290" alt = ""></div>
        </div>
        </c:if>
        <%--<div class = "price_img"><img src = "${baseurl}res/images/4c.gif" alt = ""></div>--%>
    </div>
</div>
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
    };
    String.prototype.endWith=function(str){
        if(str==null||str==""||this.length==0||str.length>this.length)
            return false;
        if(this.substring(this.length-str.length)==str)
            return true;
        else
            return false;
        return true;
    };

    $(document).ready(function () {
        <c:if test="${ptype=='phone'}">
            getRecycleTimes("${id}");
            getRecycleAvgPrice("${id}");
            $(".virtualFirst").trigger("click");

        </c:if>
        <c:if test="${ptype=='bag' or ptype=='clock'}">
        getProductDetail("${id}");
        </c:if>
    });

    var baseurl = "${baseurl}";
    var ruleMap = {};
    <c:forEach items="${ruleMap}" var="rule">
    ruleMap['${rule.key}'] = eval('(' + '${rule.value}' + ')');
    </c:forEach>
    var requiredCount = 0;
    requiredCount = ${requiredCount};
    var selectedCount = 0;
    //    console.log(ruleMap);
    var phoneRequiredCount = 0;
    var doOnce = 0;

    $("input[name='virtualId']").on({
       "click":function() {
           if(!doOnce) {
               selectedCount++;
               doOnce = 1;
           }
           requiredCount -= phoneRequiredCount;
           var vpid = $(this).data("value");
           getRecycleTimes(vpid);
           getRecycleAvgPrice(vpid);
//           alert(vpid);
           $("#virtualPid").attr("value", vpid);
           var u = ruleMap[vpid].body;
           var y = u.length,
                   v = "";
           var notRequired = "";
           var options = optionsLen = vv = "";
           if(y<=0) {
               alert("产品正在维护中,请稍候再试!");
               productNoRules = 1;
               return ;
           } else {
               productNoRules = 0;
           }

           var i = 0;
           phoneRequiredCount = 0;
           for (var w = 0; w < y; w++) {
               var x = u[w];
               options = x.optionList;
               optionsLen = options.length;
               if (x.required) {
                   <%--<c:set var="requiredCount" value="${requiredCount+1}"/>--%>
                   phoneRequiredCount++;
                   v += '<dd>'+ eval(i+2) + '.' + x.name+'</dd><dt>';
                   i++;

                   for (var ww = 0; ww < optionsLen; ww++) {
                       var t = options[ww];
                       v += '<label><input type = "radio" name = "c1['+ w +']" value="'+ t.id+'"><span>'+ t.name+'</span></label>';

                   }
                   v += '</dt>';
               } else {
                   for (var ww = 0; ww < optionsLen; ww++) {
                       var t = options[ww];
//                       notRequired += '<li data-pid="' + t.id + '"><div class="value_text">'+ t.name + '<span class="gou"></span></div></li>';
                       notRequired += '<label><input type = "checkbox" name = "c2['+w+']" value="'+ t.id+'"><span>'+ t.name+'</span></label>';
                   }
               }
           }
           requiredCount = eval(requiredCount + phoneRequiredCount);
//           console.log(v);
           $(".phoneRequired").html(v);
           $(".phoneNotRequired dt").html(notRequired);
       }

    });

    $(function(){
        $("#estimatBtn").on({
            "click":function(){
                var data = $("#estimateForm").serializeArray();
                var ruleArray = Array();
                var selectedFg = false;
                var oldSelectCount = selectedCount;
                for (var i = 0; i<data.length; i++) {
                    if (data[i].name.startWith("c1") || data[i].name.startWith("c0")) {
                        selectedFg = true;
                        selectedCount++;
                    }
                    if (data[i].name.startWith("c1") || data[i].name.startWith("c2")) {
                        ruleArray.push(data[i].value);
                    }
                }
//                console.log(ruleArray.join(","));
                $("#pricerules").attr("value", ruleArray.join(","));

                if($("#channelIdInput").val()) {
                    $("#channelId").attr("value", $("#channelIdInput").val());
                }

                <c:if test="${ptype=='gjs'}">
                var num = $("#num").val();
                if (!num || isNaN(num) || num <= 0 || num > 500000) {
                    alert("请输入正确的重量(不超过500000克)!");
                    selectedCount = oldSelectCount;
                    return ;
                }
                $("#num").attr("value", num);
                </c:if>
//                console.log("requiredCount:"+requiredCount);
//                console.log("selectedCount:"+selectedCount);
                if (selectedCount < requiredCount) {
                    alert("您还有"+(requiredCount-selectedCount)+"选项没有选择!");
                    selectedCount = oldSelectCount;
                    return ;
                }
                selectedCount = oldSelectCount;

                $("#estimateForm").submit();
            }
        })
    });
    <c:if test="${ptype=='phone'}">
    function getRecycleAvgPrice(id) {
        $.ajax({
            url: "${baseurl}product/json/recycleAvgPrice/"+id,    //请求的url地址
            dataType: "json",
            async: true,
            data: { },
            type: "GET",
            success: function(data) {
                console.log(data);
                var u = data.body, len = u.length;
                var res ="";
                var prevMonthPrice = prev2MonthPrice = currentMonthPrice = "";
                if(len > 0) {
                    prev2MonthPrice = u[0];
                    prevMonthPrice = u[1];
                    currentMonthPrice = u[2];
                    if (currentMonthPrice) {
                        $(".curMonthPriceNum").html(currentMonthPrice);
                    } else {
                        $(".curMonthPriceNum").html("暂无");
                    }
                } else {
                }
            }
        });
    }
    function getRecycleTimes(id) {
        $.ajax({
            url: "${baseurl}product/json/recycleTimes/"+id,    //请求的url地址
            dataType: "json",
            async: true,
            data: { },
            type: "GET",
            success: function(data) {
                console.log(data);
                var u = "";
                if(data.success) {
                    u = data.body;
                    if (u>0) {
                        $(".curMonthNum").html(u);
                    } else {
                        $(".curMonthNum").html("暂无");
                    }
                } else {
                }
            }
        });
    }
    </c:if>
    <c:if test="${ptype == 'clock' or ptype == 'bag'}">
    function getProductDetail(id) {
        $.ajax({
            url: "http://www.aishoubao.com/abc/"+id+".json",    //请求的url地址
            dataType: "json",
            async: true,
            data: { },
            type: "GET",
            success: function(data) {
//                console.log(data);
                var baginfo ="";
                var u = data.body, len= u.length;
                if(len==1) {
                    baginfo = "<h4>商品详情</h4><ul>";

                    for (var i=0;i< u[0].content.length;i++) {
                        baginfo += '<li><span>'+ u[0].content[i].mykey+'：</span><span>'+ u[0].content[i].myvalue+'</span></li>';
                    }

                    baginfo += "</ul>";
                    $(".bag_detail").html(baginfo);


                } else if(len>1){
                    var clockinfo = "";
                    for (var i=0; i<len;i++) {
                        clockinfo += '<h5>'+u[i].title+'</h5><ul class = "oneToThree">';
                        if (u[i].displayType=="2") {
                            clockinfo +="<li>";
                        }
                        for (var t=0;t< u[i].content.length;t++) {
                            if (u[i].displayType=="1") {
                                clockinfo += '<li><span>'+ u[i].content[t].mykey+'：</span><span>'+ u[i].content[t].myvalue+'</span></li>';
                            } else {
                                clockinfo += '<span class="clockRound" style="width:auto;">'+ u[i].content[t].mykey+'</span>';
                            }
                        }
                        if (u[i].displayType=="2") {
                            clockinfo +="</li>";
                        }
                        clockinfo += '</ul>';
                    }
                    $(".clock_detail").html(clockinfo);
                }

            }
        });
    }
    </c:if>
</script>

</body>
</html>
