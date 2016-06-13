<%--
  User: donny
  Date: 1/17/16
  Time: 09:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
    .tabs-left,.tabs-right{border-bottom:none;padding-top:2px}.tabs-left{border-right:1px solid #ddd}.tabs-right{border-left:1px solid #ddd}.tabs-left>li,.tabs-right>li{float:none;margin-bottom:2px}.tabs-left>li{margin-right:-1px}.tabs-right>li{margin-left:-1px}.tabs-left>li.active>a,.tabs-left>li.active>a:focus,.tabs-left>li.active>a:hover{border-bottom-color:#ddd;border-right-color:transparent}.tabs-right>li.active>a,.tabs-right>li.active>a:focus,.tabs-right>li.active>a:hover{border-bottom:1px solid #ddd;border-left-color:transparent}.tabs-left>li>a{border-radius:4px 0 0 4px;margin-right:0;display:block}.tabs-right>li>a{border-radius:0 4px 4px 0;margin-right:0}.sideways{margin-top:50px;border:none;position:relative}.sideways>li{height:20px;width:120px;margin-bottom:100px}.sideways>li>a{border-bottom:1px solid #ddd;border-right-color:transparent;text-align:center;border-radius:4px 4px 0 0}.sideways>li.active>a,.sideways>li.active>a:focus,.sideways>li.active>a:hover{border-bottom-color:transparent;border-right-color:#ddd;border-left-color:#ddd}.sideways.tabs-left{left:-50px}.sideways.tabs-right{right:-50px}.sideways.tabs-right>li{-webkit-transform:rotate(90deg);-moz-transform:rotate(90deg);-ms-transform:rotate(90deg);-o-transform:rotate(90deg);transform:rotate(90deg)}.sideways.tabs-left>li{-webkit-transform:rotate(-90deg);-moz-transform:rotate(-90deg);-ms-transform:rotate(-90deg);-o-transform:rotate(-90deg);transform:rotate(-90deg)}

    body { background-color: #EDE7E1; }
    .navbarWrapper {position: relative;z-index: 15;}
    .fixbackground {
        background-color: #ffffff;
    }
    a,a:hover{color:#f39d12;}

    .mt10 {
        margin-top: 10px;
    }

    .fixpadding {
        padding-left: 0px;
        padding-right: 0px;
    }

    .mytop {
        padding-top:5px;
    }

    .white {
        color: #fff;
    }

    .myblue {
        color: #0F2E4A;
    }

    .myorange {
        color: #f39d12;
    }

    .darkorange {
        color: #F38D12;
    }

    .dark2orange {
        color: #d35400;
    }

    .bigfont {
        font-size: 18px;
    }

    .col-lg-2dot4 {
        position: relative;
        min-height: 1px;
        padding-right: 15px;
        padding-left: 15px;
    }

    @media (min-width: 1100px) {
        .col-lg-2dot4 {
            float: left;
        }

        .col-lg-2dot4 {
            width: 20%;
        }

        .col-lg-pull-2dot4 {
            right: 20%;
        }

        .col-lg-push-2dot4 {
            left: 20%;
        }

        .col-lg-offset-2dot4 {
            margin-left: 20%;
        }
    }

    .navbarWrapper {
        margin-bottom: -20px;
    }

    .navbar {
        background-color: #fff;
        height: 100px;
        line-height: 100px;
        border-bottom: none;
    }


    .navbar-nav {
        padding-top: 0px;
        margin-top:15px;
    }

    .navbar-nav > li a,
    .navbar-nav > li a:active
    {
        background: none;
        font-weight: bold;
        color: #0F2E4A;
        height: 40px;
        margin-bottom: 5px;
    }

    .navbar-nav > li a:hover,
    .navbar-nav > li a:focus
    {
        background: none;
        color: #f39d12;
        height: 40px;
        margin-bottom: 5px;
        border-bottom: 4px solid #f39d12;
    }

    .nav > li:hover .dropdown-menu {
        display: block;
        border-radius: 16px;
    }

    .isStuck {
        left: 0px;
        width: 100%;
    }

    .navbarWrapper .dropdown-menu {
        min-width: 305px;
        height: 40px;
        background-color: #0F2E4A;
        left: 37%;
        right: auto;
        transform: translate(-37%, 0);

    }

    .dropdown-menu > li {
        display: inline-block;
        float: left;
        width: 45px;
    }

    .dropdown-menu > li a {
        background: none;
        color: #fff;
    }

    .dropdown-menu > li a:hover {
        background: none;
        border: 0px;
    }

    .open > ul {
        display: inline-flex !important;
    }
    .nav .open>a, .nav .open>a:focus, .nav .open>a:hover {
        background-color: #fff;
        border-color: #f39d12;
    }

    .breadcrumb > li + li:before {
        color: #000;
        content: "> ";
        padding: 0 5px;
    }

    #footer {
        margin: 0;
        background: #d35400;
        padding-top: 20px;
        padding-bottom: 20px;
        line-height: 25px;
    }
    #footer a{color:white;}
    #footer a:hover{color:white;text-decoration: underline;}

    .list-nodot li {
        list-style-type: none;
        margin-left: -32px;
    }
    #copyright {
        margin: 0;
        background: #f39d12;
        padding: 12px;
    }
</style>
