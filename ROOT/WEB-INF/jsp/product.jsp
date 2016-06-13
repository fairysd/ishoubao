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
        .product{border: 1px solid #eee;margin-bottom: 20px;background-color: #fff;}
        .thumbnail{border:0px;}
        .productLeft{}
        .productRight{border-left:1px solid #eee;margin-left:-30px;padding:20px;}
        .productRight h5{font-weight: normal;}
        .productRight .price{font-size:24px;color: #f39d12;}
        .productRight p{color: gray;border-bottom: 1px solid #eee;padding-bottom:5px;}

        .productRight h4{color:gray;padding-top:10px;}
        .productRight ul li {border:1px solid #eee;min-width:120px;margin-right:20px;height: 50px;line-height: 50px;margin-top:5px;}
        .productRight ul li:hover{border:1px solid #f39d12;color:#000;cursor: pointer;}
        .productRight ul li.selected{border:1px solid #f39d12;background-image: url("${baseurl}res/images/item_sel.gif");background-repeat: no-repeat;background-position: right bottom}
        .btn-primary,.btn-primary:hover,.btn-primary:focus{margin-top:15px;width:300px;background-color: #f39d12;border-color:#f39d12;}
        .modal-content{height: 50px;line-height: 50px;}
    </style>
</head>
<body>
<%@ include file="library/nav.jsp"%>
<%@ include file="library/search.jsp"%>
<div class="product container">
    <div class="row">
        <div class="col-md-4">
            <div class="productLeft">
                <div class="thumbnail">
                    <img src="${product.picList[0]}" alt="${product.name}">
                    <div class="caption">
                        <h5 class="text-center">${product.name}</h5>
                        <c:if test="${ptype!='gjs'}">
                        <div class="row">
                            <div class="col-md-6">本月回收次数: ${intentionNum}</div>
                            <div class="col-md-6 text-right">本月回收均价: </div>
                        </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="productRight">
                <h2>${product.name}</h2>
                <h5>最高回收价: <span class="price">￥<fmt:formatNumber value="${product.maxPrice}" pattern="#"/></span></h5>
                <p><span class="glyphicon glyphicon-info-sign myorange"></span> 请如实描述您的宝贝，以获最准确的报价。</p>
                <c:if test="${product.virtualList.size() > 0}">
                <div class="virtualList">
                    <h4><span class="glyphicon glyphicon-th-list myorange"></span> 购买渠道</h4>
                    <ul class="list-inline">
                        <c:forEach items="${product.virtualList}" var="v">
                            <li data-id="${v.id}" class="text-center">${v.name}</li>
                        </c:forEach>
                    </ul>
                </div>
                </c:if>
                <div id="step1" class="">
                    <c:if test="${ptype=='gjs'}">
                        <input placeholder="请输入重量（单位：克）" id="inputnum" class="inputbox form-control" type="number" name="inputnum" value="${num}"/>
                    </c:if>
                    <c:if test="${product.channelList.size()>0}">
                        <h4><span class="glyphicon glyphicon-th-list myorange"></span> 购买渠道</h4>
                        <ul class="list-inline">
                        <c:forEach items="${product.channelList}" var="c">
                            <li data-id="channel-${c.channelId}" class="text-center">${c.channelName}</li>
                        </c:forEach>
                        </ul>
                    </c:if>
                    <c:forEach items="${productProperty}" var="p">
                        <c:if test="${p.required==1}">
                            <h4><span class="glyphicon glyphicon-th-list myorange"></span> ${p.name}</h4>
                            <ul class="list-inline">
                                <c:forEach items="${p.optionList}" var="option">
                                    <li data-id="${option.id}" class="text-center">${option.name}</li>
                                </c:forEach>
                            </ul>
                        </c:if>
                    </c:forEach>
                </div>
                <div id="step2Check" class="">
                    <h4><c:if test="${productProperty.size()>0}"><span class="glyphicon glyphicon-th-list myorange"></span>
                        <c:choose>
                            <c:when test="${ptype=='bag' or ptype=='clock'}">缺失的配件</c:when>
                            <c:when test="${ptype=='gjs'}">有无票据?</c:when>
                            <c:otherwise>还有其它问题吗?</c:otherwise>
                        </c:choose> （可多选）</c:if></h4>
                    <ul id="step2" class="list-inline checkbox">
                        <c:forEach items="${productProperty}" var="p">
                            <c:if test="${p.required==0}">
                                <c:forEach items="${p.optionList}" var="option">
                                    <li data-pid="${option.id}" class="text-center">${option.name}</li>
                                </c:forEach>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
                <div class="text-center">
                    <button type="button" id="estimateBtn" class="btn btn-primary btn-lg">免费估价</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade loadingDia bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog modal-sm">
        <div class="modal-content text-center">
            正在加载中,请稍候!
        </div>
    </div>
</div>
<form name="product" id="product" method="post" action="${baseurl}product/bj/${product.id}">
    <input type="hidden" name="pricerules" id="pricerules" value=""/>
    <input type="hidden" name="cityId" id="cityId" value="${cityId}"/>
    <input type="hidden" name="channelId" id="channelId" value=""/>
    <input type="hidden" name="num" id="num" value="${num}"/>
    <input type="hidden" name="virtualPid" id="virtualPid" value=""/>
    <input type="hidden" name="ptype" id="ptype" value="${ptype}"/>
</form>
<%@ include file="library/footer.jsp"%>
<%@ include file="common/js.jsp"%>
<script>
    <c:if test="${not empty goldType}">
    var p = $('[data-id="${goldType}"]');
    p.addClass("selected");
    p.addClass("selected").parent().addClass("done");
    </c:if>
    if (typeof String.prototype.startsWith != 'function') {
        String.prototype.startsWith = function (prefix){
            return this.slice(0, prefix.length) === prefix;
        };
    }
    $("#inputnum").on({
        blur:function(){
            if($(this).val().startsWith('0') && !$(this).val().startsWith("0.")) {
                var nv = ~~$(this).val();
                $(this).val(nv);
            }
        }
    });
    function bindClick(tt) {
//        var tt = $("#step1 ul li");
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
    $("#step2Check .checkbox li").bind("click",
    function() {
        $(this).hasClass("selected") || $("#property_list dl.checkbox li[data-pid=" + $(this).data("pid") + "]").not($(this)).removeClass("selected");
        $(this).toggleClass("selected")
    });


    $(".virtualList ul li").on({
        click:function(){
            if ($(this).parents("ul").hasClass("checkbox")) return $(this).toggleClass("selected"),
                    !1;
            if ($(this).hasClass("selected")) return !1;
            $(this).siblings(".selected").removeClass("selected");
            $(this).addClass("selected").parent().addClass("done");
            var vpid = $(this).data("id");
            $('.loadingDia').modal();
            $.ajax({
                type:'get',
                url:"${baseurl}product/property/"+vpid,
                dataType:'json',
                success: function(r) {
                    r = eval("("+r+")");
                    var u = r.body,
                            y = u.length,
                            v = "";
                    var notRequired = "";
                    var options = optionsLen = vv = "";
                    if (r.success && y) {
                        for (var w = 0; w < y; w++) {
                            var x = u[w];
                            options = x.optionList;
                            optionsLen = options.length;
                            if (x.required) {

                                //v += '<li><a href="${baseurl}product/' + x.id + '"><span>' + (n * (s - 1) + w + 1) + "</span>" + x.name + "</a></li>"
                                v += '<div class="step1"><h4><span class="glyphicon glyphicon-th-list myorange"></span> '+ x.name +'</h4><ul class="list-inline">';

                                for (var ww = 0; ww < optionsLen; ww++) {
                                    var t = options[ww];
                                    v += '<li data-id="' + t.id + '" class="text-center">'+ t.name + '</li>';
                                }
                                v += '</ul></div>';
                            } else {
                                $("#step2Check h4").html('<span class="glyphicon glyphicon-th-list myorange"></span> 还有其它问题吗?（可多选）');
                                for (var ww = 0; ww < optionsLen; ww++) {
                                    var t = options[ww];
                                    notRequired += '<li data-pid="' + t.id + '" class="text-center">' + t.name + '</li>';
                                }
                            }
                        }
                        $("#step1").html(v);
                        bindClick($("#step1 ul li"));
                        $("#step2").html(notRequired);
                        $("#step2Check .checkbox li").bind("click",
                                function() {
                                    $(this).hasClass("selected") || $("#property_list dl.checkbox li[data-pid=" + $(this).data("pid") + "]").not($(this)).removeClass("selected");
                                    $(this).toggleClass("selected")
                                });
                        $('.loadingDia').modal('hide');
                    }
                    //console.log(r);
                    }});
    }});

    /* estimate */
    $("#estimateBtn").on({
        click:function(){
            if ($(".virtualList")) {
                for(var r = $(".virtualList ul"),t = 0; t < r.length; t++) if (!$(r[t]).hasClass("done") && !$(r[t]).hasClass("checkbox")) {
                    $("body").removeClass("step_region_on");
                    alert("还没有选择购买渠道!");
                    return
                }
            }
            for (var u, f, e, o, i = [], r = $("#step1 ul"), t = 0; t < r.length; t++) if (!$(r[t]).hasClass("done") && !$(r[t]).hasClass("checkbox")) {
                $("body").removeClass("step_region_on");
                alert("还有选项没有选择!");
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

            $("#pricerules").attr("value", iii.join(","));
            $("#virtualPid").attr("value", $(".virtualList ul li.selected").data("id"));
            <c:if test="${ptype=='gjs'}">
            var num = $("#inputnum").val();
            if (!num || isNaN(num) || num <= 0 || num > 10000) {
                alert("请输入正确的重量(不超过10000克)!");
                return ;
            }
            $("#num").attr("value", num);
            </c:if>
            $("#product").submit();

        }
    })
</script>
<script src="${baseurl}res/js/typeahead.bundle.js"></script>
<script src="${baseurl}res/js/search.js"></script>
</body>
</html>