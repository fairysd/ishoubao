<%--
  User: donny
  Date: 2/25/16
  Time: 12:53
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/tag.jsp"%>
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
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/main.css">
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/root.css">
    <style>
        .quickEstimateBrand{height:150px;overflow-y:scroll;}
    </style>
</head>
<body>
<%@ include file="common/header.jsp"%>
<!-- banner -->
<div class = "banner_box">
    <div class = "leftBox">
        <i></i>

        <div class = "box">
            <ul>
                <li class = "active"><i></i>我要卖</li>
                <li><i></i>我要抵押</li>
            </ul>
            <ul>
                <li class = "active"><label class = "select"><span>宝贝品类</span><b>名包</b>
                    <ul class="quickEstimateUL">
                        <li data-value="08d2d4cbf3974d8i8d56b26ba29266aa" class="quickEstimateFirst">名包</li>
                        <li data-value="08d2d4cbff6j48f08d56b26ba29266aa">名表</li>
                        <li data-value="gold">黄金</li>
                        <li data-value="08d2d4cbf39748f08d56b26ba29266aa">手机</li>
                        <li data-value="47f288756f1a4c5ebac0a2baf1f5ee80">贵金属</li>
                        <li data-value="0">钻石</li>
                        <li data-value="-1">购物卡</li>
                        <li data-value="-1">二手车</li>
                    </ul>
                </label>
                    <label class = "select"><span>宝贝品种</span><b class="quickEstimateBrandB">爱马仕</b>
                        <ul class="quickEstimateBrand">
                        </ul>
                    </label>
                    <label class = "select"><span>回收方法</span><b>门店</b>
                        <ul>
                            <li>门店</li>
                            <li>快递</li>
                            <li>上门</li>
                        </ul>
                    </label>
                    <label>
                        <button id="quickEstimateBtn" data-url="">估价搜索</button>
                    </label>
                </li>
                <li>
                    <%--<form name="dyform" id="dyform" action="${baseurl}webintention/create" method="post">--%>
                        <input type="hidden" name="type" value="2"/>
                        <input type="hidden" name="productType" id="quickProductType" value="贵金属贷款"/>
                    <label class = "select"><span>抵押宝贝</span><b>贵金属贷款</b>
                    <ul class="quickProductTypeSelect">
                        <li data-value="贵金属贷款">贵金属贷款</li>
                        <li data-value="珠宝贷款">珠宝贷款</li>
                        <li data-value="名表贷款">名表贷款</li>
                        <li data-value="车辆贷款">车辆贷款</li>
                        <li data-value="民品贷款">民品贷款</li>
                    </ul>
                </label>
                    <label class = "select"><span>融资金额</span><b class = "no"><input type = "text" name="rzJe" id="quickrzJe">万元</b></label>
                    <label class = "select"><span>联系手机</span><b class = "no"><input type = "text" name="phone" id="quickPhone"></b></label>
                    <label>
                        <button id="indexKsdydksqBtn">快速抵押贷款申请</button>
                    </label>
                    <%--</form>--%>
                </li>
            </ul>
        </div>
    </div>
    <div class = "imgBox">
        <ul>
            <li class = "active">
                <div class = "out_box"><img src = "${baseurl}res/images/banner1.jpg"></div>
            </li>
            <li>
                <div class = "out_box"><img src = "${baseurl}res/images/banner2.jpg"></div>
            </li>
            <li>
                <div class = "out_box"><img src = "${baseurl}res/images/banner3.jpg"></div>
            </li>
            <li>
                <div class = "out_box"><img src = "${baseurl}res/images/banner4.jpg"></div>
            </li>
            <li>
                <div class = "out_box"><img src = "${baseurl}res/images/banner5.jpg"></div>
            </li>
        </ul>
    </div>
    <div class = "banner_nav"><span class = "active"></span><span></span><span></span><span></span><span></span></div>
</div>
<div class = "out_box">
    <!-- 轻松估价 -->
    <div class = "title">
        <h6>轻松估价<span>马上看看我的宝贝还能值多少</span></h6>
        <small><a href = "#">详情了解&nbsp;&rang;</a></small>
    </div>
    <div class = "man_content">
        <div class = "t_nav">
            <ul class = "t_nav_right">
                <li class = "active">手机数码回收</li>
                <li>黄金珠宝回收</li>
                <li>名包回收</li>
                <li>名表回收</li>
                <li>钻石回收</li>
                <li>购物卡回收</li>
            </ul>
        </div>
        <div class = "t_content">
            <ul class = "t_c_left">
                <li class = "active">
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hs_01.gif"></div>
                        <p><b>13549</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}category/08d2d4cbf39748f08d56b26ba29266aa/0">了解手机数码</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_01.jpg">

                        <div>手机数码回收<br>回收价格：市场实时价格<br>回收方式：门店、上门、快递<br>林经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
                </li>
                <li>
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hs_02.gif"></div>
                        <p><b>16374</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold">了解黄金珠宝</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_02.jpg">

                        <div>黄金珠宝回收<br>回收价格：市场实时价格<br>回收方式：门店、上门、快递<br>张经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
                </li>
                <li>
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hs_03.gif"></div>
                        <p><b>24351</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}category/08d2d4cbf3974d8i8d56b26ba29266aa/0">了解名包</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_03.jpg">

                        <div>名包回收<br>回收价格：市场实时价格<br>回收方式：门店、上门、快递<br>刘经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
                </li>
                <li>
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hs_05.gif"></div>
                        <p><b>62356</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}category/08d2d4cbff6j48f08d56b26ba29266aa/0">了解名表</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_04.jpg">

                        <div>名表回收<br>回收价格：市场实时价格<br>回收方式：门店、上门、快递<br>李经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
                </li>
                <li>
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hs_06.gif"></div>
                        <p><b>66326</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}product/diamond">了解钻石</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_05.jpg">

                        <div>钻石回收<br>回收价格：市场实时价格<br>回收方式：门店、上门、快递<br>王经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
                </li>
                <li>
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hs_04.gif"></div>
                        <p><b>44821</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}category/e/1">了解购物卡</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_06.jpg">

                        <div>购物卡回收<br>回收价格：市场实时价格<br>回收方式：门店、上门、快递<br>黄经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
                </li>
            </ul>
            <div class = "t_c_right w173">
                <section><img src = "${baseurl}res/images/hs_r.jpg"></section>
                <section><a href = "${baseurl}category/first"><img src = "${baseurl}res/images/hs_gj.jpg"></a>
                    <a href = "${baseurl}help/hszn"><img src = "${baseurl}res/images/hs_zn.jpg"></a></section>
            </div>
        </div>
    </div>
    <!-- 优惠 & 抢购 -->
    <div class = "benefit_c">
        <section class = "benifit_l">
            <h6 class = "b_title" style="width:200px;">爱收宝旗下商城</h6>

            <div><a href="http://shop.aishoubao.com" target="_blank"><img src = "${baseurl}res/images/youhui.jpg"></a></div>
        </section>
        <section class = "benifit_r">
            <div class = "benefit_t">
                <h6 class = "b_title">名品抢购</h6>
                <section><span>&lang;</span><span>&rang;</span></section>
            </div>
            <div class = "benefit_r_c">
                <ul>
                    <li>
                        <a href = "http://shop.aishoubao.com/category.php?id=350" target="_blank">
                            <div class = "com_l">LOUIS VUITTON</div>
                            <div class = "com_t">Louis Vuition/路易威登</div>
                            <div class = "com_des">
                                女士手提单肩包、棕色棋盘格、帆布/配皮
                            </div>
                            <div class = "com_price">¥5700</div>
                            <div class = "com_pic"><img src = "${baseurl}res/images/product_01.jpg"></div>
                        </a>
                    </li>
                    <li>
                        <a href = "http://shop.aishoubao.com/category.php?id=346" target="_blank">
                            <div class = "com_l">KELA</div>
                            <div class = "com_t">女戒</div>
                            <div class = "com_des">
                                PINK EMILY系列18K金皇冠戒指
                            </div>
                            <div class = "com_price">¥800</div>
                            <div class = "com_pic"><img src = "${baseurl}res/images/product_02.jpg"></div>
                        </a>
                    </li>
                    <li>
                        <a href = "http://shop.aishoubao.com/category.php?id=352" target="_blank">
                            <div class = "com_l">Longines</div>
                            <div class = "com_t">浪琴/longines</div>
                            <div class = "com_des">
                                名匠系列 L2.628.6.78.3 机械男表
                            </div>
                            <div class = "com_price">¥4600</div>
                            <div class = "com_pic"><img src = "${baseurl}res/images/product_03.jpg"></div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
    </div>
    <!-- 抵押贷款 -->
    <div class = "title">
        <a href = "${baseurl}mortgage/gjs"><h6>抵押贷款<span>快速贷款通道</span></h6></a>
        <small><a href = "#">详情了解&nbsp;&rang;</a></small>
    </div>
    <div class = "man_content">
        <div class = "t_nav">
            <b class = "t_nav_left">最快交款时间：30分钟</b>
            <ul class = "t_nav_right">
                <li class = "active">贵金属抵押贷款</li>
                <li>珠宝抵押贷款</li>
                <li>名表抵押贷款</li>
                <li>汽车抵押贷款</li>
                <li>民品抵押贷款</li>
            </ul>
        </div>
        <ul class = "t_content" style = "display: block">
            <li class="active">
            <div class = "t_c_right w381">
                <form name="dyform1" id="dyform1" action="${baseurl}webintention/create" method="post">
                    <input type="hidden" name="type" value="2"/>
                    <input type="hidden" name="productType" id="dy1productType" value="黄/铂金"/>
                <section>
                    <ul class = "w381_nav dy1ul">
                        <li class = "active" data-value="黄/铂金">黄/铂金</li>
                        <li data-value="K金">K金</li>
                        <li data-value="白银饰品及摆件">白银饰品及摆件</li>
                        <li data-value="投资金银条">投资金银条</li>
                        <li data-value="投资金银币">投资金银币</li>
                    </ul>
                    <ul class = "w381_con">
                        <li class = "active">
                            <label><span>融资期限</span><input type = "text" name="rzTime"></label>
                            <label><span>融资金额</span><input type = "text" name="rzJe"></label>
                            <label><span>联系手机</span><input type = "text" name="phone"></label></li>
                    </ul>
                </section>
                    <input type="submit" class = "grey_btn" value="快速申请" onclick="return check(this.form)">
                </form>
            </div>
            <div class = "t_c_left">
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hsl_01.gif"></div>
                        <p><b>14368</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}mortgage/gjs">了解贵金属抵押贷款</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_01.jpg">

                        <div>贵金属贷款<br>贷款金额：实物价值的9.5折<br>贷款方式：抵押<br>李经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
            </div>
            </li>
            <li>
                <div class = "t_c_right w381">
                    <form name="dyform2" id="dyform2" action="${baseurl}webintention/create" method="post">
                        <input type="hidden" name="type" value="2"/>
                        <input type="hidden" name="productType" id="dy2productType" value="翡翠"/>
                    <section>
                        <ul class = "w381_nav dy2ul">
                            <li class = "active">翡翠</li>
                            <li>白玉</li>
                            <li>钻石</li>
                            <li>宝石</li>
                        </ul>
                        <ul class = "w381_con">
                            <li class = "active">
                                <label><span>融资期限</span><input type = "text" name="rzTime"></label>
                                <label><span>融资金额</span><input type = "text" name="rzJe"></label>
                                <label><span>联系手机</span><input type = "text" name="phone"></label></li>
                        </ul>
                    </section>
                        <input type="submit" class = "grey_btn" value="快速申请" onclick="return check(this.form)">
                    </form>
                </div>
                <div class = "t_c_left">
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hsl_02.gif"></div>
                        <p><b>13549</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}mortgage/diamond">了解珠宝抵押</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_02.jpg">

                        <div>珠宝贷款<br>贷款金额：实物价值的3-8折<br>贷款方式：抵押<br>张经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
                </div>
            </li>
            <li>
                <div class = "t_c_right w381">
                    <form name="dyform3" id="dyform3" action="${baseurl}webintention/create" method="post">
                        <input type="hidden" name="type" value="2"/>
                        <input type="hidden" name="productType" id="dy3productType" value="高档腕表"/>
                    <section>
                        <ul class = "w381_nav dy3ul">
                            <li class = "active">高档腕表</li>
                            <li>古董钟</li>
                            <li>怀表</li>
                        </ul>
                        <ul class = "w381_con">
                            <li class = "active">
                                <label><span>融资期限</span><input type = "text" name="rzTime"></label>
                                <label><span>融资金额</span><input type = "text" name="rzJe"></label>
                                <label><span>联系手机</span><input type = "text" name="phone"></label></li>
                        </ul>
                    </section>
                        <input type="submit" class = "grey_btn" value="快速申请" onclick="return check(this.form)">
                    </form>
                </div>
                <div class = "t_c_left">
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hsl_03.gif"></div>
                        <p><b>13549</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}mortgage/clock">了解名表抵押</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_03.jpg">

                        <div>名表贷款<br>贷款金额：实物价值的3-8折<br>贷款方式：抵押<br>宋经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
                </div>
            </li>
            <li>
                <div class = "t_c_right w381">
                    <form name="dyform4" id="dyform4" action="${baseurl}webintention/create" method="post">
                        <input type="hidden" name="type" value="2"/>
                        <input type="hidden" name="productType" id="dy4productType" value="机动车"/>
                    <section>
                        <ul class = "w381_nav dy4ul">
                            <li class = "active">机动车</li>
                            <li>4S店商品车</li>
                            <li>摩托车</li>
                        </ul>
                        <ul class = "w381_con">
                            <li class = "active">
                                <label><span>融资期限</span><input type = "text" name="rzTime"></label>
                                <label><span>融资金额</span><input type = "text" name="rzJe"></label>
                                <label><span>联系手机</span><input type = "text" name="phone"></label></li>
                        </ul>
                    </section>
                    <input type="submit" class = "grey_btn" value="快速申请" onclick="return check(this.form)">
                    </form>
                </div>
                <div class = "t_c_left">
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hsl_04.gif"></div>
                        <p><b>13549</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}mortgage/car">了解汽车抵押</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_04.jpg">

                        <div>汽车贷款<br>贷款金额：实物价值的3-8折<br>贷款方式：抵押<br>王经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
                </div>
            </li>
            <li>
                <div class = "t_c_right w381">
                    <form name="dyform5" id="dyform5" action="${baseurl}webintention/create" method="post">
                        <input type="hidden" name="type" value="2"/>
                        <input type="hidden" name="productType" id="dy5productType" value="艺术品"/>
                    <section>
                        <ul class = "w381_nav dy5ul">
                            <li class = "active">艺术品</li>
                            <li>奢侈品牌箱包</li>
                            <li>饰品</li>
                            <li>高档数码产品</li>
                            <li>高档家电产品</li>
                                <li>其他</li>
                        </ul>
                        <ul class = "w381_con">
                            <li class = "active">
                                <label><span>融资期限</span><input type = "text" name="rzTime"></label>
                                <label><span>融资金额</span><input type = "text" name="rzJe"></label>
                                <label><span>联系手机</span><input type = "text" name="phone"></label></li>
                        </ul>
                    </section>
                    <input type="submit" class = "grey_btn" value="快速申请" onclick="return check(this.form)">
                    </form>
                </div>
                <div class = "t_c_left">
                    <section class = "t_c_first">
                        <div><img src = "${baseurl}res/images/hsl_05.gif"></div>
                        <p><b>13549</b>
                            <small>咨询人数</small>
                            <a href = "${baseurl}mortgage/mp">了解民品抵押</a></p>
                    </section>
                    <section class = "t_c_second">
                        <img src = "${baseurl}res/images/hsp_05.jpg">

                        <div>民品贷款<br>贷款金额：实物价值的3-8折<br>贷款方式：抵押<br>单经理</div>
                        <b>全国咨询热线：400-086-1131</b>
                    </section>
                </div>
            </li>
        </ul>
        <div style = "margin-top: 23px;"><img src = "${baseurl}res/images/grey_banner.gif"></div>
    </div>
    <!-- 轻松寄售 -->
    <div class = "title">
        <a href="${baseurl}consignment"><h6>轻松寄售<span>便捷4步 服务伴身</span></h6></a>
        <small style = "font-size: 16px; padding-top: 7px">&raquo;&nbsp;<a href = "${baseurl}consignment" style = "color: #ca0000">提交</a>
        </small>
    </div>
    <div class = "man_content" style = "text-align: center"><img src = "${baseurl}res/images/jsale.gif" alt = "轻松寄售 便捷4步 服务伴身"></div>
    <!-- 资讯中心 -->
    <div class = "title">
        <h6>资讯中心<span>Information Center</span></h6>
        <ul class = "title_nav">
            <li>爱收宝</li>
            <li>黄金投资</li>
            <li>外汇市场</li>
            <li>财经要闻</li>
            <li>腕表钟表</li>
            <li>名牌包袋</li>
            <li>玉器文玩</li>
            <li>钻石珠宝</li>
            <li>手机数码</li>
            <li>二手汽车</li>
        </ul>
        <small>更多&nbsp;&rang;</small>
    </div>
    <div class = "news_list">
        <ul>
            <li><a>爱收宝荣获“最具成长性‘互联网’+企业”称号...</a></li>
            <li><a>黄金回收的兴衰与金价紧密相关...</a></li>
            <li><a>黄金价格浮动大需警惕风险...</a></li>
            <li><a>黄金购买力波动  保值投资皆需谨慎...</a></li>
        </ul>
    </div>
    <!-- 实时指数 -->
    <h6 class = "shi_title">实时指数</h6>

    <div class = "zhi">
        <ul>
            <li><img src="http://photo.zhijinwang.com/cn/metals/gold/t24_au_cny_gram_180x114.gif" alt="纸黄金走势图" width="220" height="146" border="0" vspace="4"></li>
            <li><img src="http://photo.zhijinwang.com/cn/metals/silver/t24_ag_cny_gram_180x114.gif" alt="白银价格走势图" width="220" height="146" border="0"></li>
            <li><img src="http://photo.zhijinwang.com/cn/metals/platinum/t24_pt_cny_gram_180x114.gif" alt="铂金价格即时走势图" width="220" height="146" border="0"></li>
            <li><img src="http://photo.zhijinwang.com/cn/metals/palladium/t24_pd_cny_gram_180x114.gif" alt="钯金价格即时走势图" width="220" height="146" border="0"></li>
            <li><img src="http://photo.zhijinwang.com/cn/live_charts/t24_crude_182x116.gif" alt="美国原油即时走势图" width="220" height="146" border="0"></li>
        </ul>
    </div>
    <!-- 门店分布 -->
    <div class = "dian_map" style="margin-top:0px;">
        <div><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="468" height="60">
            <param name=movie value="${baseurl}res/images/ditu.swf">
            <param name=quality value=High>
            <param name="_cx" value="12383">
            <param name="_cy" value="1588">
            <param name="FlashVars" value="">
            <param name="Src" value="${baseurl}res/images/ditu.swf">
            <param name="WMode" value="Window">
            <param name="Play" value="-1">
            <param name="Loop" value="-1">
            <param name="SAlign" value="">
            <param name="Menu" value="-1">
            <param name="Base" value="">
            <param name="AllowScriptAccess" value="always">
            <param name="Scale" value="ShowAll">
            <param name="DeviceFont" value="0">
            <param name="EmbedMovie" value="0">
            <param name="BGColor" value="">
            <param name="SWRemote" value="">
            <param name="MovieData" value="">
            <embed src="${baseurl}res/images/ditu.swf" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="1200" height="1200">
            </embed></object></div>
    </div>
    <!-- 形象店展示 -->
    <div class = "title">
        <h6>形象店展示<span>带你进入o2o模式</span></h6>
        <small><a href = "${baseurl}store/list/${cityId}">详细了解&nbsp;&rang;</a></small>
    </div>
    <div class = "shop_box">
        <h6>苏州区域</h6>
        <ul class = "shop_list">
            <%--@elvariable id="stores" type="java.util.List"--%>
            <%--@elvariable id="store" type="cn.com.kpso.asb.model.Store"--%>
            <c:forEach items="${stores}" var="store" varStatus="st">
                <c:if test="${st.index < 10}">
                <li><a href = "${baseurl}store/${cityId}/${store.id}">
                    <div><img src = "${store.picurl}"></div>
                    <div><span>${store.name}</span><i></i></div>
                </a></li>
                </c:if>
            </c:forEach>
        </ul>
    </div>
    <!-- 战略合作伙伴 -->
    <div class = "partent_box">
        <h6>战略合作伙伴</h6>
        <ul class="partent_c">
            <li><img src = "${baseurl}res/images/hLogo01.jpg" alt = "上海黄金交易所"></li>
            <li><img src = "${baseurl}res/images/hLogo02.jpg" alt = "苏州东吴黄金"></li>
            <li><img src = "${baseurl}res/images/hLogo03.jpg" alt = "中国珠宝玉石首饰行业协会"></li>
            <li><img src = "${baseurl}res/images/hLogo04.jpg" alt = "中国奢侈品行业协会"></li>
            <li><img src = "${baseurl}res/images/hLogo05.jpg" alt = "搜狐网"></li>
            <li><img src = "${baseurl}res/images/hLogo06.jpg" alt = "新浪网"></li>
            <li><img src = "${baseurl}res/images/hLogo07.jpg" alt = "央视网"></li>
        </ul>
    </div>
</div>
<%@ include file="common/footer.jsp"%>
<script>
    function getCategoryByTop(id) {
        $.ajax({
            url: "${baseurl}category/json/"+id,    //请求的url地址
            dataType: "json",
            async: true,
            data: { },
            type: "GET",
            success: function(data) {
//                console.log(data);
                var u = data.body, len= u.length;
                var v = "";
                if (len>0) {
                    $(".quickEstimateBrandB").html(u[0].name);
                    $("#quickEstimateBtn").data("url", "${baseurl}category/"+id+"/"+u[0].id);
                    for(var i=0; i<len;i++) {
                        v += '<li data-value="'+u[i].id+'">'+u[i].name+'</li>';
                    }
                }
                $(".quickEstimateBrand").html(v);
                bindDhevent();
                $(".quickEstimateBrand li").on({
                    "click":function(){
                        $("#quickEstimateBtn").data("url", "${baseurl}category/"+id+"/"+$(this).data("value"));
                    }
                });
            }
        });
    }
    $(function(){
        //快速回收估价
        $(".quickEstimateUL li").on({
           "click":function(){
               $cid = $(this).data("value");
//               console.log($cid);
               switch ($cid) {
                   case -1:
                       alert("该产品频道正在建设中,请稍候访问!");
                       break;
                   case 0:
                       window.location.href="${baseurl}product/diamond";
                       break;
                   case "gold":
                       window.location.href="${baseurl}product/8fa078e445184f1f9041ea1be763a5e8?ptype=gjs&goldType=gold";
                       break;
                   case "47f288756f1a4c5ebac0a2baf1f5ee80": //gjs
                       $(".quickEstimateBrandB").html("铂金");
                       $("#quickEstimateBtn").data("url", "${baseurl}product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt");
                       $(".quickEstimateBrand").html('<li data-value="product/21577fd8a5324e62a416978d15367515?ptype=gjs&goldType=pt">铂金</li><li data-value="product/094c2f5308514105a862c6299f9d320b?ptype=gjs&goldType=palau">钯金</li><li data-value="product/bcf8086e4f4647fabcfc3409430baa60?ptype=gjs&goldType=k">K金</li><li data-value="product/5f67c6baca4b4167a4b49b6df510a3f1?ptype=gjs&goldType=sliver">白银</li>');
                       bindDhevent();
                       $(".quickEstimateBrand li").on({
                           "click":function(){
                                $("#quickEstimateBtn").data("url", "${baseurl}"+$(this).data("value"));
                           }
                       });
                       break;
                   case "08d2d4cbf3974d8i8d56b26ba29266aa": //bag
                   case "08d2d4cbff6j48f08d56b26ba29266aa": //clock
                   case "08d2d4cbf39748f08d56b26ba29266aa": //phone
                        getCategoryByTop($cid);
                        break;
               }
           }
        });

        $(".quickEstimateBrand li").on({
           "click":function(){
           }
        });

        $("#quickEstimateBtn").on({
           "click":function(){
               window.location.href=$(this).data("url");
           }
        });

        $(".quickProductTypeSelect li").on({
           "click":function() {
               $("#quickProductType").attr("value", $(this).data("value"));
           }
        });
       $("#indexKsdydksqBtn").on({
           "click":function(){
//                if ($("#quickrzJe").val()=="") {
//                    alert("请输入融资金额!");
//                    $("#quickrzJe").focus();
//                    return false;
//                } else {
//                    $("#quickrzJe").val($("#quickrzJe").val()+"万元");
//                }
//               if ($("#quickPhone").val()=="") {
//                   alert("请输入联系电话!");
//                   $("#quickPhone").focus();
//                   return false;
//               }
//               $("#dyform").submit();
               window.location.href="${baseurl}mortgage";
           }
       });
        $(".dy1ul li").on({
           "click":function(){
               $("#dy1productType").val($(this).data("value"));
           }
        });
        $(".dy2ul li").on({
            "click":function(){
                $("#dy2productType").val($(this).data("value"));
            }
        });
        $(".dy3ul li").on({
            "click":function(){
                $("#dy3productType").val($(this).data("value"));
            }
        });
        $(".dy4ul li").on({
            "click":function(){
                $("#dy4productType").val($(this).data("value"));
            }
        });
        $(".dy5ul li").on({
            "click":function(){
                $("#dy5productType").val($(this).data("value"));
            }
        });
    });
    $(document).ready(function () {
        $(".quickEstimateFirst").trigger("click");
    });

    function check(form) {
        if(form.rzTime.value=='' || !unsignedDoubleCheck(form.rzTime.value)){
            alert("请输入正确的融资期限!");
            form.rzTime.focus();
            return false;
        }
        if(form.rzJe.value=='' || !unsignedDoubleCheck(form.rzJe.value)){
            alert("请输入正确的融资金额!");
            form.rzJe.focus();
            return false;
        }
        if(form.phone.value=='' || !telRuleCheck2(form.phone.value)) {
            alert("请输入正确的手机号码!");
            form.phone.focus();
            return false;
        }
        return true;
    }
</script>
</body>
</html>
