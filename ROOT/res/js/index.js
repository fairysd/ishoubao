/*
 *作者：xukai
 *date:2015-03-16
 *头部导航菜单交互功能
 */
(function () {
    var headMenu = {
        nav: $(".mod_head_menu li"),
        fn: function () {
            this.nav.each(function (index) {
                $(this).bind('mouseenter', function (event) {
                    if (index !== 0) {
                        var currNav = $(this).children('div'), currNavAd = currNav.find(".submenu_b");
                        $(this).find('h2').addClass('curr');
                        currNav.show();
                        /*if(currNav.hasClass("nav_insurance")){
                         navOpen1=false;
                         }
                         if(currNav.hasClass("nav_bank")){
                         navOpen2=false;
                         }
                         if(currNav.hasClass("nav_trust")){
                         navOpen3=false;
                         }
                         if(currNav.hasClass("nav_lifeServ")){
                         navOpen4=false;
                         }*/
                    }
                });
                $(this).bind('mouseleave', function (event) {
                    if (index !== 0) {
                        $(this).find('h2').removeClass('curr');
                        $(this).children('div').hide();
                    }
                });
            });
        },
        init: function () { //执行入口
            this.fn();
        }
    };
    headMenu.init();
})();
/*
 *作者：xukai
 *date:2015-04-15
 *模块说明：移动端触屏事件
 */
(function ($) {
    var isNotPc;
    if (/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent)) || /Android|Windows Phone|webOS|iPhone|iPod|BlackBerry|iPad/i.test(navigator.userAgent)) {
        isNotPc = true;
    }
    else {
        isNotPc = false;
    }
    if (isNotPc) {
        var options, Events, Touch;
        Events = ['swipe', 'swipeLeft', 'swipeRight', 'swipeUp', 'swipeDown', 'tap', 'longTap', 'drag'];
        //Events.forEach(function(eventName) {
        Events.forEach(function (eventName) {
            $.fn[eventName] = function () {
                var touch = new Touch($(this), eventName);
                options = arguments[1] || {
                        x: 100,
                        y: 100
                    };
                touch.start();
                return this.on(eventName, arguments[0]);
            }
        });
        Touch = function () {
            var status, ts, tm, te;
            this.target = arguments[0];
            this.e = arguments[1]
        };
        Touch.prototype.framework = function (e) {
            if (e.changedTouches) return e.changedTouches[0];
            else return e.originalEvent.touches[0];
        };
        Touch.prototype.common = function () {
            arguments[0].preventDefault();
            return {
                t: this.framework(arguments[0]),
                d: new Date()
            }
        };
        Touch.prototype.start = function () {
            var self = this;
            self.target.on("touchstart", function (event) {
                var temp = self.common(event);
                self.ts = {
                    x: temp.t.pageX,
                    y: temp.t.pageY,
                    d: temp.d.getTime()
                }
            });
            self.target.on("touchmove", function (event) {
                var temp = self.common(event);
                self.tm = {
                    x: temp.t.pageX,
                    y: temp.t.pageY,
                    xs: self.ts.x,
                    ys: self.ts.y
                };
                if (self.e == "drag") {
                    self.target.trigger(self.e, self.tm);
                    return;
                }
            });
            self.target.on("touchend", function (event) {
                var temp = self.common(event);
                self.tm = self.tm || self.ts;
                self.te = {
                    x: self.tm.x - self.ts.x,
                    y: self.tm.y - self.ts.y,
                    d: (temp.d.getTime() - self.ts.d)
                };
                self.tm = undefined;
                self.factory();
            })
        };
        Touch.prototype.factory = function () {
            var x = Math.abs(this.te.x);
            var y = Math.abs(this.te.y);
            var t = this.te.d;
            var s = this.status;
            if (x < 5 && y < 5) {
                if (t < 300) s = "tap";
                else s = "longTap";
            } else if (x < options.x && y > options.y) {
                if (t < 250) {
                    if (this.te.y > 0) s = "swipeDown";
                    else s = "swipeUp";
                } else s = "swipe";
            } else if (y < options.y && x > options.x) {
                if (t < 250) {
                    if (this.te.x > 0) s = "swipeRight";
                    else s = "swipeLeft";
                } else s = "swipe";
            }
            if (s == this.e) {
                this.target.trigger(this.e);
                return;
            }
        }
    }
})(window.jQuery);

/*
 *作者：Zlj
 *date:2015-03-13
 *模块说明：宽屏优先，如果是窄屏就显示窄屏的样式
 */
//(function () {
//    var isWidescreen = screen.width >= 1280;
//    var domBody = document.getElementsByTagName("body")[0];
//    if (!isWidescreen) {
//        domBody.className = "w1000";
//        //$("#jsClose").css("marginRight",0);
//    }
//    var narrow = function () {
//        if (window.screen.width <= 1220 || $(window).width() <= 1220) {
//            domBody.className = "w1000";
//        } else {
//            domBody.className = "";
//        }
//    };
//    narrow();
//
//
//    $(window).on('resize', function () {
//        narrow();
//    })
//})();
/*
 *anthor：Zlj
 *date:2015-03-06
 *模块说明：1.顶部通栏粘性导航 2.totop 满意度调查切换效果
 */
(function () {
    var menu = $(".mod_head_menu");
    var scrollposi = $(window).scrollTop();
    var scroll = function () {
        scrollposi = $(window).scrollTop();
        var posiBnr = $(".mod_banner").offset().top;
        if (scrollposi > 114) {
            menu.addClass("paTopNav").removeClass("visiTrue");
        }
        if (scrollposi < 114) {
            menu.addClass("visiTrue").show().removeClass("paTopNav");
        }
    };
    $(window).scroll(scroll);

    //-------2.totop 满意度调查---------//
    var paMobile = $(".pa_mobile"),
        jsload01 = $("#jsload01"),
        jsload02 = $("#jsload02"),
        wxQrcode = $(".weixin"),
        dropWx = $(".weixin .dropDown"),
        mod_loginTop = $(".mod_loginTop"),
        pa_yztTop = $(".pa_yztTop"),
        top_inneryzt = $(".top_inneryzt"),
        yztQRBtn = $(".qr_code"),
        yztcodeimg = $(".qr_codeimg"),
        logCode = $("#ewmTaba"),
        rLoginQRimg = $(".rhLoginewmimga"),
        rhTabLogina = $("#rhTabLogina"),
        rhLoginewma = $("#rhLoginewma"),
        open = true,
        opencode = true,
        qrcode = true,
        qrcodeWx = true;

    var top_weixin = $(".top_weixin"),
        top_weibo = $(".top_weibo");

    //-------顶部微信---------------//
    top_weixin.bind('mouseenter', function () {
        $(this).find(".dropDown").show();
    });
    top_weixin.bind('mouseleave', function () {
        $(this).find(".dropDown").hide();
    });

    //-------顶部微博---------------//
    top_weibo .bind('mouseenter', function () {
        $(this).find(".dropDown").show();
    });
    top_weibo .bind('mouseleave', function () {
        $(this).find(".dropDown").hide();
    });


    //-------3.顶部移动平安---------//
    paMobile.bind('mouseenter', function () {
        $(this).find(".dropDown").show();
        if (open) {
            jsload01.append('<img src="http://img2.pingan.com/app_images/pingan/pa_v4/yztapp.jpg" alt="一账通App二维码">');
            jsload02.append('<img src="http://img2.pingan.com/app_images/pingan/pa_v4/mpingan.jpg" alt="平安移动官网二维码">');
            open = false;
        } else {
        }
        $(this).find(".mobileLink").addClass('mobileLink_hover');
    });
    paMobile.bind('mouseleave', function () {
        $(this).find(".dropDown").hide();
        $(this).find(".mobileLink").removeClass('mobileLink_hover');
    });

    //-------4.顶部微信二维码---------//

    wxQrcode.bind('mouseenter', function () {
        dropWx.show();
        if (qrcodeWx) {
            dropWx.find('p').append('<img src="http://img2.pingan.com/app_images/pingan/pa_v4/weixin.jpg" alt="中国平安微信" />');
            qrcodeWx = false;
        }

    });
    wxQrcode.bind('mouseleave', function () {
        wxQrcode.find(".dropDown").hide();
    });

    //-------6.totop 一账通APP二维码---------//

    yztQRBtn.bind('mouseenter', function () {
        yztcodeimg.show();
        if (opencode) {
            yztcodeimg.append('<img src="/app_images/pingan/pa_v4/qrcode.png" alt="一账通App二维码">');
            opencode = false;
        }
    });
    yztQRBtn.bind('mouseleave', function () {
        yztcodeimg.hide();
    });
    //----7.登录窗一账通APP二维码 QRcode----//

    logCode.on('click', function (event) {
        $(this).hide();
        if (qrcode) {
            rLoginQRimg.append('<img src="/app_images/pingan/pa_v4/rightsmlogin20150323.jpg" alt="一账通App二维码">');
            qrcode = false;
        }
        rhTabLogina.show();
        rhLoginewma.show();
    });
    rhTabLogina.on('click', function (event) {
        $(this).hide();
        logCode.show();
        rhLoginewma.hide();
    })

})();


/*
 *作者：xukai
 *date:2015-03-18
 *模块说明：轮播功能的插件
 *参数格式：
 $.bannerSilder({//调用方法
 tab: $(".mod_service_group .tab"),//TAB最外层盒子,JQ对象，也可是原生对象 [必填]
 cont:  $(".mod_service_group .tab_cont"),//内容最外层盒子,JQ对象，也可是原生对象 [必填]
 autoShow: true,//是否随机显示，默认为false，不填时为false [可不填]
 time:3000,//自动轮播时间，为空、为false或不填时不自动轮播 [可不填]
 animate:true, //淡入淡出的动画开关，默认是false关闭
 btnLeft: ,
 btnRight:,
 touch: false //设置是否支持touch 默认是false不支持,
 btnShow: false //是否默认隐藏按钮，默认是false隐藏,鼠标触上去显示。设置true时一直显示
 });
 */
$(function(){
	$.bannerSlider = function (data) {
    var bannerSilder = {
        tabs: data.tab.children(),
        contBox: data.cont,
        conts: data.cont.children(),
        extendShow: function (currNun) {//TAB切换函数
            if (data.animate) {
                bannerSilder.tabs.eq(currNun).addClass("curr").siblings().removeClass("curr");
                bannerSilder.conts.eq(currNun).fadeIn(400).siblings().fadeOut(400);
            }
            else {
                bannerSilder.tabs.eq(currNun).addClass("curr").siblings().removeClass("curr");
                bannerSilder.conts.eq(currNun).show().siblings().hide();
            }
        },
        autoShow: function () {//轮播初始化随机显示
            if (data.autoShow && data.autoShow == true) {//在设置自动轮播时，初始化显示
                var k = bannerSilder.tabs.length;
                var index = parseInt(Math.random() * k);//随机数
                bannerSilder.tabs.eq(index).addClass('curr').siblings().removeClass('curr');
                bannerSilder.conts.eq(index).show().siblings().hide();
            }
            else {//否则默认显示第一条内容
                bannerSilder.tabs.eq(0).addClass('curr').siblings().removeClass('curr');
                bannerSilder.conts.eq(0).show().siblings().hide();
            }
        },
        silider: function (n) {//手动切换
            bannerSilder.tabs.each(function (i) {
                var timer;//设置延迟时间，放置鼠标乱划的时候变化太多
                $(this).bind("mouseenter", function () {
                    var $this = $(this);
                    clearTimeout(timer);
                    function silid() {
                        if (data.animate) {
                            $this.addClass("curr").siblings().removeClass("curr");
                            bannerSilder.conts.eq(i).fadeIn(400).siblings().fadeOut(400);
                        }
                        else {
                            $this.addClass("curr").siblings().removeClass("curr");
                            bannerSilder.conts.eq(i).show().siblings().hide();
                        }
                    }

                    timer = setTimeout(silid, 150);
                });
                $(this).bind('mouseleave', function (event) {
                    clearTimeout(timer);
                });
            });
        },
        autoSlide: function () {//自动轮播功能
            if (data.time && typeof(data.time) == "number") {
                var tabsNum = bannerSilder.tabs.length;
                var currNun = 0;
                bannerSilder.tabs.each(function (index) {
                    if ($(this).hasClass('curr')) {
                        currNun = index;
                    }
                });
                function show() {
                    currNun += 1;
                    if (currNun == tabsNum) {
                        currNun = 0;
                    }
                    bannerSilder.extendShow(currNun);
                }

                var timer = setInterval(show, data.time);
                $(data.tab).bind('mouseenter', function (event) {
                    clearInterval(timer);
                });
                $(data.cont).bind('mouseenter', function (event) {
                    clearInterval(timer);
                });
                $(data.tab).bind('mouseleave', function (event) {
                    timer = setInterval(show, data.time);
                });
                $(data.cont).bind('mouseleave', function (event) {
                    timer = setInterval(show, data.time);
                });
                $(data.btnRight).bind('mouseenter', function (event) {
                    clearInterval(timer);
                });
                $(data.btnLeft).bind('mouseenter', function (event) {
                    clearInterval(timer);
                });
            }
            else {
                return false;
            }
        },
        turnPage: function () {//左右翻页功能
            if (data.btnRight && data.btnRight) {
                var tabsNum = bannerSilder.tabs.length;
                var currNun = 0;

                function getCurr() {
                    bannerSilder.tabs.each(function (index) {
                        if ($(this).hasClass('curr')) {
                            currNun = index;
                        }
                    });
                }

                var turnLeft = function () {
                    getCurr.call(this);
                    currNun -= 1;
                    if (currNun == -1) {
                        currNun = tabsNum - 1;
                    }
                    bannerSilder.extendShow(currNun);
                };
                var turnRight = function () {
                    getCurr.call(this);
                    currNun += 1;
                    if (currNun == tabsNum) {
                        currNun = 0;
                    }
                    bannerSilder.extendShow(currNun);
                };
                $(data.btnRight).bind('click', function (event) {
                    turnRight();
                });
                $(data.btnLeft).bind('click', function (event) {
                    turnLeft();
                });
            }
            //判断是否是移动端设备
            var isNotPc;
            if (/AppleWebKit.*Mobile/i.test(navigator.userAgent) || (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/.test(navigator.userAgent)) || /Android|Windows Phone|webOS|iPhone|iPod|BlackBerry|iPad/i.test(navigator.userAgent)) {
                isNotPc = true;
            }
            else {
                isNotPc = false;
            }
            //增加触屏事件，兼容移动端
            if (data.cont && data.touch && isNotPc) {
                var cBox = bannerSilder.contBox;
                //触碰事件，打开当前链接，因为触屏事件无法触发打开链接URL
                $(cBox).tap(function () {
                    getCurr();
                    var url = $(this).find("a").eq(currNun).attr("href");
                    window.open(url);
                    return false;
                });
                //触屏左滑动
                $(cBox).swipeLeft(function () {
                    turnRight();
                });
                //触屏右滑动
                $(cBox).swipeRight(function () {
                    turnLeft();
                });
            }
        },
        showBtn: function () {
            //是否设置按钮，是否设置按钮一直显示
            if (data.btnRight && data.btnRight && !data.btnShow) {
                var timer;
                //初始化按钮隐藏
                $(data.btnRight).hide();
                //初始化按钮隐藏
                $(data.btnLeft).hide();
                $(data.cont).bind('mouseover', function () {
                    clearTimeout(timer);
                    if ($(data.btnRight).is(':hidden')) {
                        $(data.btnRight).show();
                        $(data.btnLeft).show();
                    }
                });
                $(data.cont).bind('mouseout', function () {
                    clearTimeout(timer);
                    timer = setTimeout(function () {
                        if ($(data.btnRight).is(':visible')) {
                            $(data.btnRight).hide();
                            $(data.btnLeft).hide();
                        }
                    }, 300);
                });
                $(data.btnRight).bind('mouseover', function () {
                    clearTimeout(timer);
                });
                $(data.btnLeft).bind('mouseover', function () {
                    clearTimeout(timer);
                });
            }
            else {
                //初始化按钮隐藏
                $(data.btnRight).show();
                //初始化按钮隐藏
                $(data.btnLeft).show();
            }
        },
        init: function () {
            this.autoShow();
            this.silider();
            this.autoSlide();
            this.turnPage();
            this.showBtn();
        }
    };
    bannerSilder.init();
};

$.bannerSlider({
    tab: $(".mod_service_group .tab"),//TAB最外层盒子,JQ对象，也可是原生对象 [必填]
    cont: $(".mod_service_group .tab_cont"),//内容最外层盒子,JQ对象，也可是原生对象 [必填]
    autoShow: true,//是否随机显示，默认为false，不填时为false [可不填]
    time: 5000,//自动轮播时间，为空、为false或不填时不自动轮播 [可不填]
    animate: true
});

$.bannerSlider({
    tab: $(".mod_banner_tab .tab_point"),//TAB最外层盒子,JQ对象，也可是原生对象 [必填]
    cont: $(".mod_banner .banner_pic"),//内容最外层盒子,JQ对象，也可是原生对象 [必填]
    autoShow: false,//是否随机显示，默认为false，不填时为false [可不填]
    time: 5000,//自动轮播时间，为空、为false或不填时不自动轮播 [可不填]
    animate: true,
    btnLeft: $(".mod_banner .btn_up"),
    btnRight: $(".mod_banner .btn_down"),
    touch: true,
    btnShow: true
});


$.bannerSlider({
    tab: $(".mod_login .tab_box"),//TAB最外层盒子,JQ对象，也可是原生对象 [必填]
    cont: $(".mod_login .tab_info_box"),//内容最外层盒子,JQ对象，也可是原生对象 [必填]
    autoShow: true//是否随机显示，默认为false，不填时为false [可不填]
});

$.bannerSlider({
    tab: $(".mod_pa_today .tabs"),//TAB最外层盒子,JQ对象，也可是原生对象 [必填]
    cont: $(".mod_pa_today .tab_cont")//内容最外层盒子,JQ对象，也可是原生对象 [必填]
});

$.bannerSlider({
    tab: $(".mod_service_group .slide .tab_point"),//TAB最外层盒子,JQ对象，也可是原生对象 [必填]
    cont: $(".mod_service_group .slide .list"),//内容最外层盒子,JQ对象，也可是原生对象 [必填]
    time: 5000,
    animate: true,
    btnLeft: $(".mod_service_group .ad_btn .btn_up"),
    btnRight: $(".mod_service_group .ad_btn .btn_down"),
    touch: true
});
	
})



/*
 *作者：xukai
 *date:2015-03-18
 *模块说明：针对输入框placeholder功能的插件，使IE678也支持placeholder
 *参数：ID字符串，带双引号
 *调用示例：$.placeholder("idName");
 */
$.placeholder = function (selector) { //输入框默认提示文字切换功能
    var $input = $(selector);
    var $txt = $input.attr('placeholder');
    if ($.browser.msie && ($.browser.version == "5.0" || $.browser.version == "6.0" || $.browser.version == "7.0" || $.browser.version == "8.0")) {
        //ie5,6,7,8下执行该区域代码，其他浏览器在Input上加placeholder="请输入关键字"可自动实现
        //alert($txt);
        $input.val($txt);
        if ($.trim($input.val()) == $txt) {//初始化颜色
            $input.css('color', '#999');
        }
        $input.on("focus", function () {
            if ($.trim($input.val()) == $txt) {
                $input.val("");
                $input.css('color', '#333');
            }
        });
        $input.on("blur", function () {
            if ($.trim($input.val()) == "") {
                $input.val($txt);
                $input.css('color', '#999');
            }
        });

    }
    else {
        $input.on("focus", function () {
            $input.attr('placeholder', '');
            // if ($.trim($input.val()) == $txt || $.trim($input.val())=='' ) {
            //     $input.val("");
            //     $input.attr('placeholder','');
            //     $input.css('color', '#333');
            // }
        });
        $input.on("blur", function () {
            $input.attr('placeholder', $txt);
        });
    }

};

/*
 *作者：xukai
 *date:2015-03-17
 *头部搜索功能
 */
(function () {
    var searchHeader = {
        domInput: $("#jsInputSearch"), //搜索输入框
        domBtn: $("#jsBtnSearch"), //搜索提交按钮
        placeholder: $("#jsInputSearch").attr('placeholder'),
        searchPost: function (data) {//提交搜索请求,查询字符串传参数给data
            var $input = this.domInput;
            var $txt = this.placeholder;
            var keyword = $.trim(data);
            if (keyword == "" || keyword == $txt) {
                $.placeholder("#jsInputSearch");
                window.open("http://search.pingan.com/list_search.jsp?type=&keyword=" + encodeURIComponent($txt), "_blank");
            } else {
                var url = "http://search.pingan.com/search/s";
                var fullUrl = url + '?keyword=' + encodeURIComponent(keyword);
                window.open(fullUrl, "_blank");
            }
        },
        fnSubmit: function () { //搜索提交关键词功能
            var $btn = this.domBtn;
            var $input = this.domInput;
            var $txt = this.placeholder;
            $btn.click(function (event) { //点按钮提交搜索
                var word = $.trim($input.val());
                searchHeader.searchPost(word);
            });
            $input.keydown(function (e) { //按下回车键搜索
                if (e.keyCode == 13) {
                    var word = $.trim($input.val());
                    searchHeader.searchPost(word);
                }
            });
        },
        tagSearch: function () {
            var list = $(".mod_head_menu .search_box .list");
            this.domInput.focus(function () {//获取焦点后显示关键词列表
                list.show();
            })
            $(document).bind('click', function (event) {//隐藏关键词列表
                if ($(event.target).parents(".search_box").length == 0) {//判断鼠标是否是点击在
                    list.hide();
                }
            });
            this.domInput.bind('keydown', function (event) {//隐藏关键词列表
                list.hide();
            });
            list.each(function (index) {
                list.eq(index).find('a').click(function (event) {
                    /* Act on the event */
                    var word = $(this).text();
                    searchHeader.searchPost(word);
                });
                //list.eq(index).find('a').text();
            });
        },
        init: function () { //执行入口
            this.fnSubmit();
            this.tagSearch();
            $.placeholder("#jsInputSearch");
        }
    };
    searchHeader.init();
})();




/*
 *作者：zhenglinjie
 *date:2015-03-31
 *添加到收藏夹
 */
(function () {
    function favorite(title, url) {
        if (window.sidebar) {
            window.sidebar.addPanel(title, url, "");
        } else if (document.all) {
            window.external.AddFavorite(url, title);
        } else if (window.opera && window.print) {
            alert("添加收藏失败,请同时按\"Ctrl+D\"添加");
            history.go(0);
            return false;
        } else {
            alert("添加收藏失败,请同时按\"Ctrl+D\"添加");
            return false;
        }
    }

    $(".mod_login_bar .favorite").bind('click', function () {
        favorite('中国平安保险（集团）股份有限公司-保险、银行、投资', 'http://www.pingan.com');
    });
})();



