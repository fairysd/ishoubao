/**
 *
 * Created by margie on 16/2/29.
 */
(function () {
    if (!/*@cc_on!@*/0)return;
    var e = "abbr,article,aside,audio,canvas,datalist,details,dialog,eventsource,figure,footer,header,hgroup,mark,menu,meter,nav,output,progress,section,time,video".split(','), i = e.length;
    while (i--) {
        document.createElement(e[i])
    }
})()
$.fn.extend({
    activeClass: function () {
        $(this).addClass('active').siblings().removeClass('active')
    }
});
$(function () {

    // 右上角导航
    $('#top_nav li').hover(function () {
        if ($(this).find('div').length > 0) {
            $(this).find('div').show();
        }
    }).click(function () {
        if ($(this).find('div').length > 0) {
            //return false;
        }
    }).mouseleave(function () {
        if ($(this).find('div').length > 0) {
            $(this).find('div').hide();
        }
    });

    // logo城市选择
    $('.city_box').hover(function () {
        $(this).find('.city_select').addClass('active');
        $('.region_pop').show();
    }).mouseleave(function () {
        $(this).find('.city_select').removeClass('active');
        $('.region_pop').hide();
    });

    // 城市切换
    $("#js-change-city").hover(function () {
        $(this).addClass('active');
        $('.region_pop1').show();
    }).mouseleave(function () {
        //$(this).removeClass('active');
        //$('.region_pop1').hide();
    });

    $(".region_pop1").click(function () {
        $("#js-change-city").addClass('active');
        $(this).show();
    }).mouseleave(function () {
        $(this).hide();
        $("#js-change-city").removeClass('active');
    });

    // 回收门店及导航热点城市选择
    $('.region_area > li,.shop-list li,#js-payment li').on('click', function () {
        $(this).activeClass();
    });

    $('.t_nav_right > li').hover(function () {
        $(this).activeClass();
        var con = $(this).parents('.man_content').find('.t_content');
        if (con.is('div')) {
            $(this).parents('.man_content').find('.t_c_left > li').eq($(this).index()).activeClass();
        } else if (con.is('ul')) {
            $(this).parents('.man_content').find('.t_content > li').eq($(this).index()).activeClass()
        }
    });

    // 主导航选择
    $('.main_nav > li').hover(function () {
        if ($(this).index() == 0) {
        } else {
            $(this).activeClass();
        }
    });
    $('.main_nav').mouseleave(function () {
        $(this).find('li').removeClass('active');
    });

    // 回收城市选择
    $('.region').click(function () {
        $(this).find('ul').show();
    }).mouseleave(function () {
        $(this).find('ul').hide();
    });

    $('.region li').click(function () {
        $('.region b').html($(this).html());
        $('.region ul').hide();
    });


    // 回收选择列表
    $('.select b').click(function () {
        $(this).parent().find('ul').show();
    });

    $('.select').mouseleave(function () {
        $(this).find('ul').hide();
    });

    $('.select ul li').click(function () {
        var $this = $(this);
        $this.activeClass();
        $this.parents('.select').find('b').html($(this).html());
        $this.parents('.select').find('ul').hide();
    });

    $('.pickup-nav li').click(function () {
        var $this = $(this), className = $this.attr('data-trade');
        $(this).activeClass();
        $('.pickup-content').removeClass().addClass('pickup-content ' + className);
    });

    $('.item span').click(function () {
        $(this).parent().find('ol').show();
    });
    $('.item ol li').click(function () {
        $(this).parent().hide().parent().find('span').html($(this).html());
        $(this).activeClass();
    });

    // banner估价搜索
    $('.box > ul:first-child li').click(function () {
        var $this = $(this), i = $this.index();
        $this.activeClass();
        ;
        $('.box > ul:last-child > li').eq(i).activeClass();
        ;
    });

    // banner
    var iWidth = $(document).width(), banner_nav = 1;

    function imgBoxResize() {
        var iLen = $('.imgBox > ul > li').length;
        $('.imgBox ul').width(iWidth * iLen).find('li').width(iWidth);
    }

    imgBoxResize();
    $(window).resize(function () {
        imgBoxResize();
    });

    $('.banner_nav span').click(function () {
        var index = $(this).index(), len = -index * iWidth;
        $(this).activeClass();
        $('.imgBox ul').animate({'margin-left': len + 'px'}, 1000);
        banner_nav = $(this).index();
    });

    setInterval(function () {
        var $span = $('.banner_nav span');
        if (banner_nav < $span.length) {
            var len = -banner_nav * iWidth;
            $span.eq(banner_nav).activeClass();
            banner_nav = banner_nav + 1;
        } else {
            banner_nav = 0;
        }
        $('.imgBox ul').animate({'margin-left': len + 'px'}, 1000);
    }, 3000);

    $('.w381_nav li').click(function () {
        $(this).activeClass();
        $(this).parent().parent().find('.w381_con > li').eq($(this).index()).activeClass();
    });
    // 右栏产品滚动
    var pro_len = $('.pro_content > li').length, pro_Index = 0;
    if (pro_len > 1) {
        $('.pro_content').width(pro_len * 296);
        $('.pro_nav span').click(function () {
            var nav_index = $(this).index();
            if (nav_index == 1) {
                if (pro_Index < pro_len - 1) {
                    pro_Index++;
                }
            } else if (nav_index == 0) {
                if (pro_Index > 0) {
                    pro_Index--;

                }
            }
            var x = -pro_Index * 296;
            //$('.pro_content').css('transform', 'translate(' + x + 'px,0)');
            $('.pro_content').animate({'margin-left': x + 'px'}, 1000);
        });
    }

    // 首页优惠右边滚动
    var com_len = $('.benefit_r_c > ul > li').length, com_Index = 0;
    if (com_len > 1) {
        $('.benefit_r_c ul').width(com_len * 299);
        $('.benefit_t span').click(function () {
            var index = $(this).index();
            if (index == 1) {
                if (com_Index < com_len - 3) {
                    com_Index++;
                }
            } else if (index == 0) {
                if (com_Index > 0) {
                    com_Index--;

                }
            }
            var x = -com_Index * 299;
            $('.benefit_r_c ul').animate({'margin-left': x + 'px'}, 1000);
        });
    }

    // 快速估价按钮
    $('.quickClose').on({
        click:function(){
            $(this).parent().hide();
        }
    })

    $('#estimateBtn').on({
        click:function(){
            $('#estimateQuickLi').addClass("active");
            $('#mortgageQuickLi').removeClass("active");
            $('.quickClose').parent().show();
        }
    })

    $('#mortgageBtn').on({
        click:function(){
            $('#estimateQuickLi').removeClass("active");
            $('#mortgageQuickLi').addClass("active");
            $('.quickClose').parent().show();
        }
    })
});

function validateSearchForm(form) {
    if (form.q.value =="") {
        alert("请输入要查询的产品名称!");
        return false;
    }
}

function bindDhevent() {
    $('.select b').click(function () {
        $(this).parent().find('ul').show();
    });

    $('.select').mouseleave(function () {
        $(this).find('ul').hide();
    });

    $('.select ul li').click(function () {
        var $this = $(this);
        $this.activeClass();
        $this.parents('.select').find('b').html($(this).html());
        $this.parents('.select').find('ul').hide();
    });
}
$(function(){
   $(".region_area li").on({
       "mouseenter":function(){
           $(".region_list"+$(this).data("value")).show();
           $(this).activeClass();
           for(var i=1;i<8;i++){
               if($(this).data("value")!=i) {
                   $(".region_list"+i).hide();
               }
           }
       }
   });
    $(".region_area1 li").on({
        "mouseenter":function(){
            $(".eregion_list"+$(this).data("value")).show();
            $(this).activeClass();
            for(var i=1;i<8;i++){
                if($(this).data("value")!=i) {
                    $(".eregion_list"+i).hide();
                }
            }
        }
    });
});

/***
 * check mobile phone:(1)must be digit;(2)must be 11
 * @param string
 * @returns {boolean}
 */
var telRuleCheck2 = function (string) {
    var pattern = /^1[34578]\d{9}$/;
    if (pattern.test(string)) {
        return true;
    }
    return false;
};

var nameRuleCheck2 = function(string) {
    var patternZh = /^[\u4e00-\u9fa5 ]{2,20}$/;
    var patternEn = /^[a-z\/ ]{2,20}$/i;
    if (patternZh.test(string) || patternEn.test(string)) {
        return true;
    }
    return false;
};

var cardNoRuleCheck2 = function(content) {
    var regex = /^(\d{16}|\d{19})$/;
    if (regex.test(content)) {
        return true;
    }
    return false;
};

var unsignedDoubleCheck = function(string) {
    var regex = /^(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*))$/;
    if (regex.test(string)) {
        return true;
    }
    return false;
};

function RQcheck(RQ) {
    var date = RQ;
    var result = date.match(/^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2})$/);

    if (result == null)
        return false;
    var d = new Date(result[1], result[3] - 1, result[4]);
    return (d.getFullYear() == result[1] && (d.getMonth() + 1) == result[3] && d.getDate() == result[4]);
}
function isCardNo(card)
{
    // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X
    var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
    if(reg.test(card) === false)
    {
        return  false;
    }
    return true;
}


