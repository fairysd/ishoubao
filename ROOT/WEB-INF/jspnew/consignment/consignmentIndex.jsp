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
        .jsform{padding-top:70px;}
        .pure-form label {color:#969696;}
        .pure-form legend {border-bottom: none;font-size:16px;}
        .pure-form legend small{color:#969696;font-size:14px;}
        .pure-form legend { padding: 0; margin-bottom: 0; }
        .mybutton{margin-top:15px;background-color: #e1882a;}
        .ds_jdzj{margin-top:40px;padding:80px 35px;border:1px solid #F8F8F8;}
        .ds_jdzj div div:last-child{background-color: #E18729;}
        .ds_jdzj div div:last-child p{font-size:18px;color:#fff;padding-top:86px;}
        .ds_jdzj div div:last-child p:first-child{font-size:28px;font-weight: bold;}
        .ds_jdzj div div:last-child p:last-child{width:180px;margin:0 auto;color:#E2D0BE;padding-bottom:40px;}
        .ds_left{float:left;width: 750px;}
        .ds_right{float:left;width:450px;}
        .dsnav{background-color: #FAFAFA;height:524px;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="mywrapper dsnav">
    <div class="out_box">
        <div class="ds_left">
            <img src="${mybaseurl}/res/images/v2/ds_left.jpg"/>
        </div>
        <div class="ds_right">
            <div class="jsform">
                <form action="${baseurl}webintention/create" method="post" class="pure-form pure-form-stacked" name="jsform" id="jsform">
                    <input type="hidden" name="type" value="1"/>
                    <fieldset>
                        <legend><small>请在这里填写相关信息</small></legend>

                        <div class="pure-g">
                            <div class="pure-u-1-2">
                                <label for="goodsType">商品类别</label>
                                <select id="goodsType" name="productType" class="pure-u-23-24" style="height: 35px;">
                                    <option value="名包">名包</option>
                                    <option value="名表">名表</option>
                                    <option value="珠宝">珠宝</option>
                                    <option value="手机">手机</option>
                                    <option value="玉石">玉石</option>
                                    <option value="其它">其它</option>
                                </select>
                            </div>

                            <div class="pure-u-1-2">
                                <label for="productBrand">品牌</label>
                                <input id="productBrand" name="productBrand" class="pure-u-24-24" type="text">
                            </div>

                            <div class="pure-u-1-1">
                                <label for="goodsName">商品名称</label>
                                <input id="goodsName" name="productName" class="pure-u-24-24" type="text" maxlength="64" required>
                            </div>
                            <div class="pure-u-1-2">
                                <label for="contactName">姓名</label>
                                <input id="contactName" name="username" class="pure-u-23-24" type="text" maxlength="10" required>
                            </div>

                            <div class="pure-u-1-2">
                                <label for="contactPhone">手机号</label>
                                <input id="contactPhone" name="phone" class="pure-u-24-24" type="text" required>
                            </div>
                            <div class="pure-u-1-1">
                                <label for="expectPrice">期望价格</label>
                                <input id="expectPrice" name="productPrice" class="pure-u-24-24" type="text" maxlength="8" required>
                            </div>
                        </div>

                        <button type="submit" id="save" class="pure-u-1-1 pure-button pure-button-primary mybutton">提交</button>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="out_box" style="clear:both;">
<div class="pure-g">
    <div class="pure-u-1-1">
        <img class="lazy" data-original="${mybaseurl}/res/images/v2/ds_lc.jpg"/>
    </div>
</div>
</div>
<div class="out_box mt50">
    <div class="pure-g tac">
        <div class="pure-u-1-1">
            <img class="lazy" data-original="${mybaseurl}/res/images/v2/ds_jdzj.jpg"/>
        </div>
    </div>
    <div class="pure-g tac ds_jdzj">
        <div class="pure-u-1-4 jdzj">
            <div><img class="lazy" data-original="${mybaseurl}/res/images/v2/ds_zj00.jpg"/><br><br><span class="">梁群</span></div>
            <div style="display: none;height: 321px;">
                <p>梁群</p>
                <p>从事黄金珠宝行业二十余年, 奢侈品领域领军人物。</p>
            </div>
        </div>
        <div class="pure-u-1-4 jdzj">
            <div><img class="lazy" data-original="${mybaseurl}/res/images/v2/ds_zj01.jpg"/><br><br><span class="">曹登明</span></div>
            <div style="display: none;height: 321px;">
                <p>曹登明</p>
                <p>专业的珠宝鉴定师，从事珠宝行业8年</p>
            </div>
        </div>
        <div class="pure-u-1-4 jdzj">
            <div><img class="lazy" data-original="${mybaseurl}/res/images/v2/ds_zj02.jpg"/><br><br><span class="">单禹号</span></div>
            <div style="display: none;height: 321px;">
                <p>单禹号</p>
                <p>专业的珠宝鉴定师，从事珠宝行业8年</p>
            </div>
        </div>
        <div class="pure-u-1-4 jdzj">
            <div><img class="lazy" data-original="${mybaseurl}/res/images/v2/ds_zj03.jpg"/><br><br><span class="">于明明</span></div>
            <div style="display: none;height: 321px;">
                <p>于明明</p>
                <p>专业的珠宝鉴定师，从事珠宝行业8年</p>
            </div>
        </div>
    </div>
</div>
<div class="out_box mt30">
    <div class="pure-g">
        <div class="pure-u-1-1">
            <img class="lazy" data-original="${mybaseurl}/res/images/v2/ds_footer.jpg"/>
        </div>
    </div>
</div>
<%@ include file="../common/footer.jsp"%>
<script src="${baseurl}res/js/jquery.lazyload.min.js"></script>
<script>
    $(document).ready(function(){
        $("img.lazy").lazyload({skip_invisible: false, effect: "fadeIn"});
        $('.jdzj').on({
            mouseover:function () {
                $(this).children().first().hide();
                $(this).children().last().show();
            },
            mouseout:function () {
                $(this).children().first().show();
                $(this).children().last().hide();
            }
        })

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
//                if(brand==""){
//                    flag=false;
//                    alert("请输入品牌");
//                    return flag;
//                }
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
