<%--
  User: donny
  Date: 1/17/16
  Time: 09:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="${baseurl}res/js/stickUp.min.js"></script>
<script>
    //initiating jQuery
    jQuery(function ($) {
        $(document).ready(function () {
//            $('.navbarWrapper').stickUp();
//            $('.nav-tabs > li > a').hover(function () {
//                $(this).tab('show');
//            });
            $("#wydyLink").on({
                click:function() {
                    $(".buildTipDig").modal();
                }
            });
//            $("#hbgyLink").on({
//                click:function() {
//                    $(".buildTipDig").modal();
//                }
//            });
//            $("#dkhLink").on({
//                click:function() {
//                    $(".buildTipDig").modal();
//                }
//            });
//            /* center modal */
//            function centerModals() {
//                $('.modal').each(function(i) {
//                    var $clone = $(this).clone().css('display', 'block').appendTo('body'); var top = Math.round(($clone.height() - $clone.find('.modal-content').height()) / 2);
//                    top = top > 0 ? top : 0;
//                    $clone.remove();
//                    $(this).find('.modal-content').css("margin-top", top);
//                });
//            }
//            $('.modal').on('show.bs.modal', centerModals);
//            $(window).on('resize', centerModals);
        });
    });
</script>
