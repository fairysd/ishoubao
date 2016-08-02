<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 脚部 -->
<footer class = "Global_footer">
    <div class = "out_box footer_nav">
        <ul>
            <li>关于我们</li>
            <li><a href = "${baseurl}help/gsjj">走进爱收宝</a></li>
            <li><a href = "${baseurl}help/fzlc">我们一路走来</a></li>
            <li><a href = "${baseurl}help/lxwm">诚聘精英</a></li>
            <li><a href = "${baseurl}help/lxwm">联系我们</a></li>
        </ul>
        <ul>
            <li>新手指南</li>
            <li><a href = "${baseurl}help/zczh">注册新用户</a></li>
            <li><a href = "${baseurl}help/hszn">回收指南</a></li>
            <li><a href = "${baseurl}help/gmzd">购买指导</a></li>
        </ul>
        <ul>
            <li>配送服务</li>
            <li><a href = "${baseurl}help/shzn">收货指南</a></li>
            <li><a href = "${baseurl}help/ddzt">到店自提</a></li>
            <li><a href = "${baseurl}help/pswl">配送物流</a></li>
            <li><a href = "${baseurl}help/wlcx">物流查询</a></li>
        </ul>
        <ul>
            <li>售后服务</li>
            <li><a href = "${baseurl}help/wlth">48小时退货</a></li>
            <li><a href = "${baseurl}help/sqtk">如何申请退款</a></li>
            <li><a href = "${baseurl}help/bjsm">维修补件说明</a></li>
        </ul>
        <ul style="border-right: 1px solid #ddd;padding-right: 134px;margin-right:12px;">
            <li>购物保障</li>
            <li><a href = "${baseurl}help/zpbz">正品保障</a></li>
            <li><a href = "${baseurl}help/zcxy">注册协议</a></li>
            <li><a href = "${baseurl}help/bzys">保护隐私</a></li>
            <li><a href = "${baseurl}help/mzsm">免责声明</a></li>
        </ul>
        <div class = "serviceRx">
            <p style="text-align:left;"><span class="vip">服务热线:</span><span class = "red1">400-086-1131<br></span>
            <span class="vip">苏州服务热线:</span><span class = "red1">189-5113-9999<br></span>
            <span class="vip">服务时间:</span><span class = "red1">8：30-23：00<br></span>
                <img src = "${baseurl}res/images/v2/qrcode.jpg">
            </p>
        </div>
    </div>
    <div class = "footer_fix_1"></div>
    <div class="out_box friendlink">
        <ul>
            <li>友情链接:</li>
            <li><a href="${mybaseurl}/product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold">黄金回收</a></li>
            <li><a href="${mybaseurl}/product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt">贵金属回收</a></li>
            <li><a href="${mybaseurl}/product/diamond">钻石回收</a></li>
            <li><a href="${mybaseurl}/category/08d2d4cbf3974d8i8d56b26ba29266aa/0">名包回收</a></li>
            <li><a href="${mybaseurl}/category/08d2d4cbff6j48f08d56b26ba29266aa/0">名表回收</a></li>
            <li><a href="${mybaseurl}/">奢侈品回收</a></li>
            <li><a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0">手机回收</a></li>
            <li><a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0">数码回收</a></li>
            <li><a target="_blank" href="http://www.designt.cn/">上品工业设计</a></li>
        </ul>
    </div>
    <div class = "footer_fix_2">
        <div class="out_box">
            <div><img src = "${baseurl}res/images/new/down1.jpg"><img src = "${baseurl}res/images/new/down2.jpg"><img src = "${baseurl}res/images/new/down3.jpg"><img src = "${baseurl}res/images/new/down4.jpg"></div>
        </div>
        <div class="footer_copy">统一社会信用代码91320506MA1M96GQ9G ICP备案苏ICP备15052824号-1 Copyright ©2016 苏州爱收宝网络科技有限公司 版权所有</div>
    </div>
</footer>
<div id="gotop">
    <img id="gotopBtn" src="${mybaseurl}/res/images/v2/goTop.jpg"/><br>
    <a href="http://kefu.qycn.com/vclient/chat/?websiteid=113372" target="_blank"><img id="goKfBtn" src="${mybaseurl}/res/images/v2/goKf.png"/></a>
</div>
<script type="text/javascript" src="${baseurl}res/js/jquery-1.12.1.min.js"></script>
<script type="text/javascript" src="${baseurl}res/js/main.js"></script>

<script type="text/javascript">
    var userinfo;
    if (!$.support.leadingWhitespace) {
        $("#ietip").show();
    }
    function b(){
        h = $(window).height();
        t = $(document).scrollTop();
        if(t > 500){
            $('#gotop').show();
        }else{
            $('#gotop').hide();
        }
    }
    //    document.domain = 'aishoubao.com';
    $(document).ready(function(){
        $.ajax({
            url: "http://shop.aishoubao.com/userheader.php?ajax=1",
            dataType: "jsonp",
            jsonp:'callback',
            async: true,
            data: { },
            type: "GET",
            success: function(data) {
                userinfo = data;
                userinfo = JSON.stringify(userinfo);
                userinfo = $.parseJSON(userinfo);
                // console.log(userinfo);
                // console.log(userinfo.userId);
                if(data.userId) {
                    $('#loginUserInfo').html('<a href="http://shop.aishoubao.com/user.php" target="_top">'+data.userInfo.username+'</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://shop.aishoubao.com/user.php?act=logout&backurl=http://www.aishoubao.com" target="_top">退出</a>');
                } else {
                    $('#loginUserInfo').html('<a href="http://shop.aishoubao.com/user.php?backurl=http://www.aishoubao.com" target="_top">登录</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://shop.aishoubao.com/user.php?act=register&backurl=http://www.aishoubao.com" target="_top">注册</a>');
                }
            },
        });

    });
    $(document).ready(function(e) {
        b();
        $('#gotopBtn').click(function(){
            $(document).scrollTop(0);
        });


    });

    $(window).scroll(function(e){
        b();
    });
</script>
<script src="http://kefu.qycn.com/vclient/state.php?webid=113372" language="javascript" type="text/javascript"></script>
<script language="javascript">var qykf_userinfo_url='http://shop.aishoubao.com/userheader.php?kf=1&callback=?'</script><script>(function(){var c=document.createElement("script"),s=document.getElementsByTagName("script")[0];c.src="//kefu.qycn.com/vclient/state.php?webid=113372";s.parentNode.insertBefore(c,s);})();</script>
<script>(function(){var c=document.createElement("script"),s=document.getElementsByTagName("script")[0];c.src="//kefu.qycn.com/vclient/state.php?webid=113372";s.parentNode.insertBefore(c,s);})();</script>