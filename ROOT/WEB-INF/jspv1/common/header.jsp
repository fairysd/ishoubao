<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 头部 -->
<header class = "Global_header">
    <div id="ietip" style="background: #DDDDDD;text-align: center;display:none;">您的IE版本太低,为了获得更好的体验效果,请尽快升级!</div>
    <div class = "tool_bar">
        <div class = "out_box">
            <span class = "phoneNum">400-086-1131</span>
            <ul id = "top_nav">
                <li><a href = "http://shop.aishoubao.com/user.php">登录</a></li>
                <li><a href = "http://shop.aishoubao.com/user.php?act=register">注册</a></li>
                <li><a href = "http://shop.aishoubao.com/user.php?act=estimate_list">我的订单</a></li>
                <li><a href = "#">微博 v</a>
                    <div class = "weibo"><img src = "${baseurl}res/images/new/weibo.jpg"></div>
                </li>
                <li><a href = "#">微信 v</a>
                    <div class = "weibo"><img src = "${baseurl}res/images/new/wechat.jpg"></div>
                </li>
                <li><a href = "http://kefu.qycn.com/vclient/chat/?websiteid=113372" target="_blank">在线客服</a></li>
            </ul>
        </div>
    </div>
    <div class = "out_box header_nav">
        <h1 class = "logo"><a href="${baseurl}"><img src = "${baseurl}res/images/new/logo.png" alt = "爱收宝"></a></h1>

        <div class = "city_box">
            <div class = "city_select">门店 [<span>全国</span>]</div>
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
                    <li><h6>江苏省</h6><span><a href="${baseurl}selcity/856">苏州</a></span><span><a href="${baseurl}selcity/814">南京</a></span></li>
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
        <div class = "smp"><img src = "${baseurl}res/images/new/2smpjypt.png"></div>
        <ul class = "main_nav">
            <li>
                <a href = "${baseurl}">首页</a>
            </li>
            <li>
                <a href = "${baseurl}category/first">宝贝回收</a>

                <div class = "nav_content">
                    <div>
                        <h5>爱收宝 收天下宝</h5>

                        <div class = "nav_send"><a href = "#">上门回收</a><a href = "#">门店回收</a><a href = "#">快递回收</a></div>
                        <h6>宝贝回收</h6>

                        <div class = "sale_list">
                            <ul>
                                <li>
                                    <a href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold"><span>贵金属回收</span></a>
                                    足金/铂金/K金/白银...<a href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold">立即回收</a>
                                </li>
                                <li>
                                    <a href="${baseurl}category/08d2d4cbf3974d8i8d56b26ba29266aa/0"><span>名包回收</span></a>
                                    爱马仕/香奈儿/LV/普拉达...<a href="${baseurl}category/08d2d4cbf3974d8i8d56b26ba29266aa/0">立即回收</a>
                                </li>
                                <li>
                                    <a href="${baseurl}category/08d2d4cbff6j48f08d56b26ba29266aa/0"><span>名表回收</span></a>
                                    百达翡丽/劳力士/欧米茄/卡地亚...<a href="${baseurl}category/08d2d4cbff6j48f08d56b26ba29266aa/0">立即回收</a>
                                </li>
                                <li>
                                    <a href="${baseurl}product/diamond"><span>钻石回收</span></a>
                                    <a href="${baseurl}product/diamond">立即回收</a>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <a href="${baseurl}category/08d2d4cbf39748f08d56b26ba29266aa/0"><span>手机数码回收</span></a>
                                    三星/苹果/小米/魅族...<a href="${baseurl}category/08d2d4cbf39748f08d56b26ba29266aa/0">立即回收</a>
                                </li>
                                <li>
                                    <a href="${baseurl}category/e/1"><span>购物卡回收</span></a>
                                    大润发/乐天玛特/沃尔玛/家乐福...<a href="${baseurl}category/e/1">立即回收</a>
                                </li>
                                <li>
                                    <a href="${baseurl}category/e/2"><span>礼品虫草回收</span></a>
                                    高档礼品/虫草...<a href="${baseurl}category/e/2">立即回收</a>
                                </li>
                                <li>
                                    <a href="${baseurl}category/e/4"><span>玉石文玩回收</span></a>
                                    和田玉/南阳玉/绿松石/蓝田玉...<a href="${baseurl}category/e/4">立即回收</a>
                                </li>
                                <li>
                                    <a href="${baseurl}category/e/5"><span>银元钱币回收</span></a>
                                    袁大头八年/孙小头/鹰洋/23年帆船...<a href="${baseurl}category/e/5">立即回收</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div><img src = "${baseurl}res/images/new/nav_3.jpg"></div>
                </div>
            </li>
            <li>
                <a href = "http://shop.aishoubao.com">商城</a>

                <div class = "nav_content">
                    <div>
                        <h5>爱收宝 卖天下宝</h5>

                        <div class = "nav_send"><a href = "#">线上商城 &rang;</a><a href = "#">线下门店 &rang;</a></div>
                        <h6>宝贝销售</h6>

                        <div class = "sale_list">
                            <ul>
                                <li>
                                    <span>珠宝首饰</span>
                                    钻戒/项链/手镯/耳坠...立即购买
                                </li>
                                <li>
                                    <span>名包</span>
                                    爱马仕/香奈儿/LV/普拉达...立即购买
                                </li>
                                <li>
                                    <span>名表</span>
                                    百达翡丽/劳力士/欧米茄/卡地亚...立即购买
                                </li>
                                <li>
                                    <span>玉石文玩</span>
                                    和田玉/南阳玉/绿松石/蓝田玉...立即购买
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <span>手机数码销售</span>
                                    三星/苹果/小米/魅族...立即购买
                                </li>
                                <li>
                                    <span>购物卡销售</span>
                                    大润发/乐天玛特/沃尔玛/家乐福...立即购买
                                </li>
                                <li>
                                    <span>礼品虫草销售</span>
                                    高档礼品/虫草...立即购买
                                </li>
                                <li>
                                    <span>银元钱币销售</span>
                                    袁大头八年/孙小头/鹰洋/23年帆船...立即购买
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div><img src = "${baseurl}res/images/new/nav_4.jpg"></div>
                </div>
            </li>
            <li>
                <a href = "${baseurl}mortgage">抵押</a>

                <div class = "nav_content">
                    <div>
                        <h5>爱收宝 押天下宝</h5>

                        <div class = "nav_send"><a href = "#">线上申请</a><a href = "#">线下交易</a></div>
                        <h6>宝贝抵押</h6>

                        <div class = "sale_list">
                                <ul>
                                    <li>
                                        <a href="${baseurl}mortgage/diamond"><span>黄金珠宝抵押</span></a>
                                        黄金/钻戒/钯金/白银...<a href="${baseurl}mortgage/diamond">立即抵押</a>
                                    </li>
                                    <li>
                                        <span>玉石文玩抵押</span>
                                        青金石/绿松石/和田玉/古董...立即抵押
                                    </li>
                                    <li>
                                        <a href="${baseurl}mortgage/clock"><span>名表抵押</span></a>
                                        百达翡丽/劳力士/欧米茄/卡地亚...<a href="${baseurl}mortgage/clock">立即抵押</a>
                                    </li>
                                    <li>
                                        <a href="${baseurl}mortgage/mp"><span>民品抵押</span></a>
                                        手机/数码/名包/电器...<a href="${baseurl}mortgage/mp">立即抵押</a>
                                    </li>
                                </ul>
                                <ul>
                                    <li>
                                        <a><span>其它抵押</span></a>
                                        有价物品/无形资产...立即抵押
                                    </li>
                                </ul>
                        </div>
                    </div>
                    <div><img src = "${baseurl}res/images/new/nav_5.jpg"></div>
                </div>
            </li>
            <li>
                <a href = "${baseurl}consignment">寄售</a>

                <div class = "nav_content">
                    <div>
                        <h5>爱收宝 寄售天下宝</h5>

                        <div class = "nav_send"><a href = "#">门店寄售</a><a href = "#">网上寄售</a></div>
                        <h6>宝贝寄售</h6>

                        <div class = "sale_list">
                            <ul>
                                <li>
                                    <a href="${baseurl}consignment"><span>黄金寄售</span></a>
                                    戒指/项链/手镯/耳坠...<a href="${baseurl}consignment">立即寄售</a>
                                </li>
                                <li>
                                    <a href="${baseurl}consignment"><span>名包寄售</span></a>
                                    爱马仕/普拉达/古驰/香奈儿...<a href="${baseurl}consignment">立即寄售</a>
                                </li>
                                <li>
                                    <a href="${baseurl}consignment"><span>名表寄售</span></a>
                                    百达翡丽/劳力士/欧米茄/卡地亚...<a href="${baseurl}consignment">立即寄售</a>
                                </li>
                                <li>
                                    <a href="${baseurl}consignment"><span>玉石文玩寄售</span></a>
                                    和田玉/南阳玉/绿松石/蓝田玉...<a href="${baseurl}consignment">立即寄售</a>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <a href="${baseurl}consignment"><span>银元钱币寄售</span></a>
                                    袁大头八年/孙小头/鹰洋/23年帆船...<a href="${baseurl}consignment">立即寄售</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div><img src = "${baseurl}res/images/new/nav_1.jpg"></div>
                </div>
            </li>
            <li>
                <a href = "${baseurl}help/zsjm">加盟</a>

                <div class = "nav_content">
                    <div>
                        <h5>爱收宝 全国招商加盟</h5>

                        <div class = "nav_send"><a href = "#">企业加盟 </a><a href = "#">个人加盟 </a></div>
                        <h6>开放部分加盟区域</h6>

                        <div class = "sale_list">
                            <ul>
                                <li>
                                    <a href="${baseurl}help/zsjm"><span>华北地区</span></a>
                                    北京市/天津市/河北省/山西省...<a href="${baseurl}help/zsjm">立即加盟</a>
                                </li>
                                <li>
                                    <a href="${baseurl}help/zsjm"><span>东北地区</span></a>
                                    辽宁省/吉林省/黑龙江省/内蒙古自治区...<a href="${baseurl}help/zsjm">立即加盟</a>
                                </li>
                                <li>
                                    <a href="${baseurl}help/zsjm"><span>华东地区</span></a>
                                    上海市/江苏省/安徽省/福建省...<a href="${baseurl}help/zsjm">立即加盟</a>
                                </li>
                                <li>
                                    <a href="${baseurl}help/zsjm"><span>中南地区</span></a>
                                    河南省/湖北省/湖南省/广东省...<a href="${baseurl}help/zsjm">立即加盟</a>
                                </li>
                                <li>
                                    <a href="${baseurl}help/zsjm"><span>西南地区</span></a>
                                    重庆市/四川省/贵州省/云南省...<a href="${baseurl}help/zsjm">立即加盟</a>
                                </li>
                            </ul>
                            <ul>
                                <li>
                                    <a href="${baseurl}help/zsjm"><span>西北地区</span></a>
                                    陕西省/甘肃省/青海省/宁夏回族自治区...<a href="${baseurl}help/zsjm">立即加盟</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div><img src = "${baseurl}res/images/new/nav_2.jpg"></div>
                </div>
            </li>
        </ul>
        <div class = "search_box">
            <form action = "${baseurl}product/searchq" method = "post"><input type = "text" name = "q" id = "">
                <button type = "submit" onclick="return validateSearchForm(this.form)">搜索</button>
            </form>
        </div>
    </div>
</header>
