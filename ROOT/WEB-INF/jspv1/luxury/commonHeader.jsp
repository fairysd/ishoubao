<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/tag.jsp"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta http-equiv="x-ua-compatible" content="IE=edge,chrome=1" />
    <meta name="renderer" content="webkit" />
    <meta content="zh-cn" http-equiv="content-language" />
    <meta name="keywords" content="" />
    <meta name="description" content=""/>
    <title>奢侈品热词-爱收宝</title>
    <link rel="canonical" href="http://www.aishoubao.com/" />
    <link type="text/css" rel="stylesheet" href="${baseurl}res/css/style.css">
    <style type="text/css" >
        .zly_content{width: 100%;background-color: #EDEDED;overflow: hidden;}
        .zly_f1{width:1200px;height: 60px; margin:auto;}
        .zly_f1 p{line-height: 60px; margin-top: 0;margin-bottom: 0;color:#666666;font-size: 12px;}
        .zly_f2{width:1200px; margin:auto;background-color: #FFFFFF;}
        .zly_f2co{width:320px;height:40px;border-top: 2px solid #E93B39;}
        .zly_f2co p{font-size: 12px;line-height: 40px;margin-top: 0;margin-bottom: 0;color:#E93B39;margin-left: 30px;}
        .zly_f3{width:1200px;margin:auto;padding-top: 20px;}
        .zly_f3co{width:100%;height:40px;}
        .zly_f3co ul li{float: left;list-style:none;color:#666666;}
        .zimu{width:20px;height:20px;background-color: #FFFFFF;margin-left: 8px;text-align: center;}
        .zimu a{color:#666666;text-decoration:none;}
        .zly_f4{width:1200px;margin:auto;background-color: #FFFFFF;}
        .zly_f4 ul {padding-left: 0;margin-top: 0;margin-bottom: 0;}
        .zly_f4 ul li{float: left;list-style:none;color:#666666;width:225px;font-size: 12px;line-height: 25px;height:25px;}
        .zly_f4co{width:900px;padding-top: 20px;padding-left: 30px;}
        .zly_next{width:100%;}
        .zly_next ul{margin-left: 450px;}
        .zly_next ul li{float:left;list-style:none;width:20px;color:#666666;}
        .zly_next ul li a{font-size: 12px;}
        .next1{width:22px;height:22px;background-color: #463B7F;color:#FFFFFF;text-align: center;line-height: 22px;}
        .zly_f5{width:1200px;margin:auto;background-color: #FFFFFF;height:50px;overflow:hidden;border-bottom: 1.5px solid #EDEDED;}
        .zly_f5 ul{margin-top: 15px;}
        .zly_f5 ul li a{color:#FFFFFF;}
        .zimucurrent{background-color:#E93B39;}
        .zimucurrent a{color:#FFFFFF;}
    </style>
</head>
<body>
<%@ include file="../common/header.jsp"%>
<div class="zly_content">
    <div class="zly_f1">
        <p>首页>奢侈品大全</p>
    </div>
    <div class="zly_f2">
        <div class="zly_f2co">
            <p>奢侈品热门商品词-按热门关键词字母分类（${page}）</p>
        </div>
    </div>
    <div class="zly_f3">
        <div class="zly_f3co">
            <ul>
                <li><a style="font-size:12px;">按字母分类：</a></li>
                <li ><div class="zimu<c:if test="${page=='A'}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/A">A</a></div></li>
                <li><div class="zimu<c:if test="${fn:startsWith(page, 'B')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/B">B</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'C')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/C">C</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'D')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/D">D</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'E')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/E">E</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'F')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/F">F</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'G')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/G">G</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'H')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/H">H</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'I')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/I">I</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'J')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/J">J</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'K')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/K">K</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'L')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/L">L</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'M')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/M">M</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'N')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/N">N</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'O')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/O">O</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'P')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/P">P</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'Q')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/Q">Q</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'R')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/R">R</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'S')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/S">S</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'T')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/T">T</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'U')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/U">U</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'V')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/V">V</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'W')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/W">W</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'X')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/X">X</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'Y')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/Y">Y</a></div></li>
        <li><div class="zimu<c:if test="${fn:startsWith(page, 'Z')}"> zimucurrent</c:if>"><a href="${baseurl}luxury/hotkey/Z">Z</a></div></li>
        <li ><div class="zimu<c:if test="${page=='0-9'}"> zimucurrent</c:if>" style="width: 30px;"><a href="${baseurl}luxury/hotkey/0-9">0-9</a></div></li>
        </ul>
    </div>
</div>
