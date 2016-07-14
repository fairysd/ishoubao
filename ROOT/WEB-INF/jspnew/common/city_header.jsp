<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 头部 -->
<header class = "Global_header">
    <div id="ietip" style="background: #DDDDDD;text-align: center;display:none;">您的IE版本太低,为了获得更好的体验效果,请尽快升级!</div>
    <div class="mywrapper toolbar">
       <div class="myrow">
           <div class = "city_box">
               <div class = "city_select">选择城市 [<span><c:if test="${not empty areainfo.name and sessionScope.subpage == '1'}">${areainfo.name}</c:if><c:if test="${not(not empty areainfo.name and sessionScope.subpage == '1')}">苏州市</c:if></span>]</div>
               <div class = "region_pop">
                   <div class = "hot_region"><span>热门城市:</span>
                       <ul>
                           <li><a href="${baseurl}selcity/856">苏州</a></li>
                           <li><a href="${baseurl}selcity/2">北京</a></li>
                           <li><a href="${baseurl}selcity/795">上海</a></li>
                           <li><a href="${baseurl}selcity/2287">成都</a></li>
                           <li><a href="${baseurl}selcity/814">南京</a></li>
                       </ul>
                   </div>
                   <ul class = "region_area">
                       <li class = "active" data-value="1">华北</li>
                       <li data-value="2">华东</li>
                       <li data-value="3">华南</li>
                       <li data-value="4">华中</li>
                       <li data-value="5">东北</li>
                       <li data-value="6">西南</li>
                       <li data-value="7">西北</li>
                   </ul>
                   <ul class = "region_list region_list1">
                       <li><h6>北京市</h6><span><a href="${baseurl}selcity/2">北京</a></span></li>
                       <li><h6>天津市</h6><span><a href="${baseurl}selcity/20">天津</a></span></li>
                       <li><h6>河北省</h6><span><a href="${baseurl}selcity/38">石家庄</a></span></li>
                       <li><h6>山西省</h6><span><a href="${baseurl}selcity/222">太原</a></span></li>
                       <li><h6>山东省</h6><span><a href="${baseurl}selcity/1361">济南</a></span></li>
                   </ul>
                   <ul class = "region_list region_list2" style="display: none;">
                       <li><h6>上海市</h6><span><a href="${baseurl}selcity/795">上海</a></span></li>
                       <li><h6>江苏省</h6><span><a href="${baseurl}selcity/856">苏州</a></span><span><a href="${baseurl}selcity/814">南京</a></span><span><a href="${baseurl}selcity/892">盐城</a></span></li>
                       <li><h6>浙江省</h6><span><a href="${baseurl}selcity/930">杭州</a></span></li>
                       <li><h6>安徽省</h6><span><a href="${baseurl}selcity/1032">合肥</a></span><span><a href="${baseurl}selcity/1051">蚌埠</a></span></li>
                       <li><h6>江西省</h6><span><a href="${baseurl}selcity/1249">南昌</a></span></li>
                   </ul>
                   <ul class = "region_list region_list3" style="display: none;">
                       <li><h6>福建省</h6><span><a href="${baseurl}selcity/1168">厦门</a></span><span><a href="${baseurl}selcity/1154">福州</a></span></li>
                       <li><h6>广东省</h6><span><a href="${baseurl}selcity/1974">深圳</a></span><span><a href="${baseurl}selcity/1950">广州</a></span></li>
                       <li><h6>广西壮族</h6><span><a href="${baseurl}selcity/2095">南宁</a></span></li>
                   </ul>
                   <ul class = "region_list region_list4" style="display: none;">
                       <li><h6>河南省</h6><span><a href="${baseurl}selcity/1519">郑州</a></span></li>
                       <li><h6>湖北省</h6><span><a href="${baseurl}selcity/1696">武汉</a></span></li>
                       <li><h6>湖南省</h6><span><a href="${baseurl}selcity/1813">长沙</a></span></li>
                   </ul>
                   <ul class = "region_list region_list5" style="display: none;">
                       <li><h6>辽宁省</h6><span><a href="${baseurl}selcity/468">沈阳</a></span></li>
                       <li><h6>吉林省</h6><span><a href="${baseurl}selcity/583">长春</a></span></li>
                       <li><h6>黑龙江省</h6><span><a href="${baseurl}selcity/653">哈尔滨</a></span></li>
                   </ul>
                   <ul class = "region_list region_list6" style="display: none;">
                       <li><h6>重庆市</h6><span><a href="${baseurl}selcity/2247">重庆</a></span></li>
                       <li><h6>四川省</h6><span><a href="${baseurl}selcity/2287">成都</a></span></li>
                       <li><h6>贵州省</h6><span><a href="${baseurl}selcity/2490">贵阳</a></span></li>
                       <li><h6>云南省</h6><span><a href="${baseurl}selcity/2588">昆明</a></span></li>
                   </ul>
                   <ul class = "region_list region_list7" style="display: none;">
                       <li><h6>陕西省</h6><span><a href="${baseurl}selcity/2815">西安</a></span></li>
                       <li><h6>新疆</h6><span><a href="${baseurl}selcity/3115">乌鲁木齐</a></span></li>
                   </ul>
               </div>
           </div>
           <div class = "tool_bar">
                   <!-- &nbsp;&nbsp;&nbsp;&nbsp;服务热线: <span class = "phoneNum">400-086-1131</span> -->
                   <ul id = "top_nav">
                       <li id="loginUserInfo"></li>
                       <li><a href = "#"><img class="myicon" src="${mybaseurl}/res/images/v2/icon_phone.png"/>手机版</a>
                           <div class = "weibo"><img src = "${baseurl}res/images/v2/top_mobile.png"></div>
                       </li>
                       <li><a href = "${mybaseurl}/help/gsjj">帮助中心</a></li>
                       <li><a href = "#"><img class="myicon" src="${mybaseurl}/res/images/v2/icon_list.png"/>网页导航<i class="iconfont maincolor">&#xe60b;</i></a>
                           <div class = "topdh">
                               <ul>
                                   <li>基础服务</li>
                                   <li><a href="${mybaseurl}/category/first">回收</a></li>
                                   <li><a href="${mybaseurl}/mortgage/">寄卖</a></li>
                                   <li><a href="${mybaseurl}/luxury/">护理</a></li>
                                   <li><a href="http://shop.aishoubao.com" target="_blank">商城</a></li>
                               </ul>
                               <ul>
                                   <li>回收的宝贝</li>
                                   <li><a href="${mybaseurl}/product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold">黄金</a> <a href="${mybaseurl}/product/diamond">珠宝</a></li>
                                   <li><a href="${mybaseurl}/product/diamond">钻石</a></li>
                                   <li><a href="${mybaseurl}/category/08d2d4cbf3974d8i8d56b26ba29266aa/0">名包</a> <a href="${mybaseurl}/category/08d2d4cbff6j48f08d56b26ba29266aa/0">名表</a></li>
                                   <li><a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0">手机</a> <a href="${mybaseurl}/category/08d2d4cbf39748f08d56b26ba29266aa/0">数码</a></li>
                               </ul>
                               <ul>
                                   <li>选择我们</li>
                                   <li><a href="${mybaseurl}/help/zsjm">招商加盟</a></li>
                                   <li><a href="">诚聘精英</a></li>
                               </ul>
                               <ul>
                                   <li>卖家服务</li>
                                   <li><a href="${mybaseurl}/category/first">免费鉴定</a></li>
                                   <li><a href="${mybaseurl}/category/first">轻松估价</a></li>
                                   <li><a href="${mybaseurl}/luxury/">日常护理</a></li>
                               </ul>
                               <ul>
                                   <li>交易保障</li>
                                   <li><a href="${mybaseurl}/help/zpbz">正品保障</a></li>
                                   <li><a href="${mybaseurl}/help/zcxy">注册协议</a></li>
                                   <li><a href="${mybaseurl}/help/bzys">保护隐私</a></li>
                                   <li><a href="${mybaseurl}/help/mzsm">免责声明</a></li>
                               </ul>
                           </div>
                       </li>
                   </ul>
               </div>
       </div>


    </div>

    <div class = "out_box header_nav">
        <h1 class = "logo">
            <a href="${baseurl}?curpage=page_index&cityId=2"><img src = "${baseurl}res/images/v2/logo.png" alt = "爱收宝"></a>
            <img class="smp" src="${mybaseurl}/res/images/new/2smpjypt.png"/>
            <span class="service-number">服务热线：400-086-1131</span>
        </h1>
        <div class = "search_box">
            <form action = "${baseurl}product/searchq" method = "post"><input type = "text" name = "q" id = "searchInput" placeholder="回收的宝贝">
                <button type = "submit" onclick="return validateSearchForm(this.form)">搜索</button>
            </form>
        </div>
    </div>
    <div class="out_box mymenu pure-menu pure-menu-horizontal">
        <ul class="pure-menu-list">
            <li class="pure-menu-item w150 tac<c:if test="${curpage == 'page_index'}"> pure-menu-selected</c:if>"><a href="${mybaseurl}/" class="pure-menu-link">首页</a></li>
            <li class="pure-menu-item w150 tac<c:if test="${curpage == 'page_huishou'}"> pure-menu-selected</c:if>"><a href="${mybaseurl}/category/first" class="pure-menu-link">回收</a></li>
            <li class="pure-menu-item w150 tac<c:if test="${curpage == 'page_jimai'}"> pure-menu-selected</c:if>"><a href="${mybaseurl}/mortgage/" class="pure-menu-link">寄卖</a></li>
            <li class="pure-menu-item w150 tac<c:if test="${curpage == 'page_daishou'}"> pure-menu-selected</c:if>"><a href="${mybaseurl}/consignment/" class="pure-menu-link">代售</a></li>
            <li class="pure-menu-item w150 tac<c:if test="${curpage == 'page_huli'}"> pure-menu-selected</c:if>"><a href="${mybaseurl}/luxury" class="pure-menu-link">护理</a></li>
            <li class="pure-menu-item w150 tac"><a href="http://shop.aishoubao.com" target="_blank" class="pure-menu-link">商城</a><span class="shopHot"></span></li>
            <li class="pure-menu-item w275 tar"><sapn class="fontb">服务热线: 400-086-1131</sapn></li>
        </ul>
    </div>
</header>
