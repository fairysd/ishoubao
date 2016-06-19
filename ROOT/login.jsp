<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<style type="text/css">
			body{
				margin: 0;
			}
			.login_reg{
				background: url(${baseurl}res/images/new/login/login_reg_bg_03.png);
				width: 491px;
				height: 591px;
				margin: auto;
			}
			.close_btn{
				text-align: right;
				padding: 30px 30px 0 0;
				margin-bottom: 20px;
			}
			.change_state{
				width: 330px;
				height: 46px;
				margin: auto;
				margin-bottom: 12px;
			}
			.change_state > div{
				float: left;
				width: 165px;
				text-align: center;				
			}
			.change_state > div.active{
				float: left;
				width: 165px;
				text-align: center;
				background-color: #FFFFFF;						
			}
			.change_state > div h2{
				font-family: "微软雅黑";
				font-size: 20px;
				color: #646464;
				font-weight: normal;
				margin: 0;
				padding: 10px 0;
				cursor: pointer;
			}
			.change_state > div.active h2{
				color: #e1882a;	
			}
			.login_container{
				width:420px;
				height: 320px;
				margin: auto;				
				border-radius: 10px;
				background-color: #FFFFFF;
				padding-top: 80px;
			}
			.reg_container{
				width:420px;
				height: 380px;
				margin: auto;
				background-color: #FFFFFF;
				border-radius: 10px;
				padding-top: 26px;
			}
			.login_container .p.user_password{
				margin-bottom: 20px;
			}
			.login_container .p{
				width: 330px;
				margin:0 45px;			
				height: 50px;
				border-bottom: #e0e0e0 1px solid;
				padding-bottom: 10px;
				padding-top: 10px;
			}
			.login_container form div{
				float:left;
				width: 50px;
				height: 50px;
				text-align: center;
			}
			.login_container form div img{
				vertical-align: middle;				
				display: block;
				margin:8px auto;
			}
			.login_container input{
				border: none;
				height: 50px;
				padding: 0;	
				width: 274px;
				border-left: #e0e0e0 1px solid;
				font-size: 20px;
			}
			.login_container .login_submit{
				width: 328px;
				height: 60px;
				display: block;
				margin: auto;
				background-color: #e7a055;
				border-radius: 10px;
				margin-top: 80px;
				font-size: 20px;
				color: #FFFFFF;
				cursor: pointer;
			}
			.reg_container form > p.input_char{
				margin: 0;
				height: 30px;
			}
			.reg_container form > p.cue_char{
				margin: 0;
				height: 26px;
				padding-left: 110px;
				line-height: 26px;
				font-size: 14px;
				color: #535353;
			}
			.reg_container p input{
				display: block;
				float: left;
				width: 264px;
				height: 28px;
				margin: 0;
				padding: 0;
				border: 1px #eae9da solid;
			}
			.reg_container p input.verify_code{
				width: 128px;
			}
			.reg_container p span{
				display: block;
				float: left;
				width: 110px;
				height: 28px;
				text-align: right;
				font-size: 14px;
				color: #000000;
				line-height: 28px;
				padding-right: 4px;
			}
			.reg_container .reg_submit{
				width: 190px;
				height: 30px;
				display: block;
				margin: auto;
				background-color: #56abe4;
				color: #FFFFFF;
				border: none;
				margin-top: 20px;
				cursor: pointer;
			}
			.reg_container a{
				text-decoration: none;
				color: #8D8D8D;
				font-size: 14px;
			}
			.agreement_box{
				position: relative;
				top: 40px;
    			left: 180px;
			}
			.forgetpassword a{
				text-decoration: none;
				color: #8D8D8D;
				font-size: 20px;
				display: block;
				text-align: right;
				text-indent: -20px;
			}
		</style>
	</head>
	<body>
		<div class="login_reg">
			<div class="close_btn ">
				<img src="${baseurl}res/images/new/login/close_btn_06.png"/>
			</div>
			<div class="change_state">
				<div class="login active">
					<h2>登录</h2>
				</div>
				<div class="reg">
					<h2>注册</h2>
				</div>
			</div>
			<div class="login_container">
				<form action="http://shop.aishoubao.com/user.php" method="post">
					<div class="p user_name"><div><img src="${baseurl}res/images/new/login/icon_03.png"/></div><input type="text" name="" id="username" value="" /></div>
					<div class="p user_password"><div><img src="${baseurl}res/images/new/login/icon_06.png"/></div><input type="password" name="" id="password" value="" /></div>
					<div class="p forgetpassword">
						<a target="_blank" href="http://shop.aishoubao.com/user.php?act=get_password">忘记密码</a>
					</div>
					<input class="login_submit" type="submit" name="" id="" value="登录" />
				</form>
			</div>
			<div class="reg_container" style="display: none;">
				<form action="http://shop.aishoubao.com/user.php" method="post">
					<p class="input_char"><span>用户名:</span><input class="user_id" type="text" name="" id="regUsername" value="" /></p>
					<p id="regUsername_cue" class="cue_char">请输入您的用户名</p>
					<p class="input_char"><span>Email:</span><input class="user_email" type="email" name="" id="regEmail" value="" /></p>
					<p id="regEmail_cue" class="cue_char">请输入您的邮箱地址</p>
					<p class="input_char"><span>密码:</span><input class="user_psword" type="password" name="" id="regPassword" value="" /></p>
					<p id="regPassword_cue" class="cue_char">请输入密码</p>
					<p class="input_char"><span>确认密码:</span><input class="user_rpsword" type="password" name="" id="regRePassword" value="" /></p>
					<p id="regRePassword_cue" class="cue_char">请确认密码</p>
					<p class="input_char"><span>手机:</span><input class="user_phone" type="text" name="" id="regPhoneNumber" value="" /></p>
					<p id="regPhoneNumber_cue" class="cue_char">请输入大陆手机号</p>
					<p class="input_char"><span>验证码:</span><input class="verify_code" type="text" name="" id="regVeryCode" value="" /><img src="http://shop.aishoubao.com/captcha.php?+Math.random()" style="cursor: pointer;width: 110px; height: 30px;padding-left: 15px;" onclick="this.src='http://shop.aishoubao.com/'+'captcha.php?'+Math.random()"/></p>
					<input id="regSubmit" class="reg_submit" type="submit" name="" id="" value="同意以下协议并注册" />
					<div class="agreement_box">
						<input type="checkbox" name="agreement" id="regAgreement" value="1" checked="checked"/><a target="_blank" href="http://www.aishoubao.com:8888/asb-web/help/zcxy">我已阅读并同意《用户注册协议》</a>
					</div>
				</form>
			</div>
		</div>
		<script type="text/javascript" src="${baseurl}res/js/jquery-1.12.1.min.js"></script>
		<script type="text/javascript">
		    
			$(".change_state .login").click(function(){
				$(this).addClass("active");
				$(".change_state .reg").removeClass("active");
				$(".login_container").css("display","block");
				$(".reg_container").css("display","none");
			});
			$(".change_state .reg").click(function(){
				$(this).addClass("active");
				$(".change_state .login").removeClass("active");
				$(".login_container").css("display","none");
				$(".reg_container").css("display","block");
			});	
	$(document).ready(function(){
		$("#regAgreement").click(function(){
			var check = document.getElementById("regAgreement").checked;
			if (check) {
				$(this).val("1");				
			} else{
				$(this).val("0");
			}
		});
//		login and register ajax request
		$(".login_container .login_submit").click(function(){			
		    $.ajax({
	            url: "http://shop.aishoubao.com/user.php",
	            dataType: "jsonp",
	            jsonp:'callback',
	            async: true,
	            data:  {
						username:$("#username").val(),
						password:$("#password").val(),
						ajax:1,
						act:"act_login",
					},
	            type: "get",
		        success: function(data) {
		            if(data.success){
		            	alert("登录成功")
		            	$('#productBjForm', parent.document).submit();
		            }else{
		            	alert("帐号或密码错误")
		            }
		            },
	            error:function(data){            	
	            alert("wrong")
	            }
        	});				
			return false;
		});
		$(".reg_container .reg_submit").click(function(){			
		    $.ajax({
	            url: "http://shop.aishoubao.com/user.php",
	            dataType: "jsonp",
	            jsonp:'callback',
	            async: true,
	            data:  {
						username:$("#regUsername").val(),
						password:$("#regPassword").val(),
						email:$("#regEmail").val(),
						extend_field5:$("#regPhoneNumber").val(),
						captcha:$("#regVeryCode").val(),
						agreement:$("#regAgreement").val(),						
						ajax:1,
						act:"act_register",
					},
	            type: "get",
		        success: function(data) {
		            if(data.success){
		            	alert("注册成功")
		            	$('#productBjForm', parent.document).submit();
		            }else{
		            	alert(data.msg)
		            }
		            },
	            error:function(data){            	
	            alert("wrong")
	            }
        	});				
			return false;
		});
		$("#regRePassword").blur(function(){
			if($(this).val() !== $("#regPassword").val()){
				$("#regRePassword_cue").text("两次输入密码不一致");
				$("#regRePassword_cue").css("color","red");
				$("#regSubmit").attr("disabled","disabled")
			}
			else{
				$("#regRePassword_cue").text("");
				$("#regSubmit").attr("disabled",false)
			}
		})
		
	});
		</script>
	</body>
</html>
