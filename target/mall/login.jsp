<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>账号登录</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/login.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div class="inhead">
		<div class="logo"></div>
	</div>

	<div class="cont">
		<div class="box">
			<div class="top">
				<div class="font">
					<a onclick="f1()" id="x1" style="color: #f56600;">账号登录</a> <span
						class="line"></span> <a onclick="f2()" id="x2"
						style="color: #666;">扫码登录</a>
				</div>

			</div>
			<div class="under" id="xsd">
				<div class="under-in">

					<form>
						<div class="text1">
							<input type="text" name="userid" id="userid" value=""
								placeholder="&nbsp&nbsp邮箱/手机号码/小米ID" /> <a id="UEemail"
								style="color: red"></a>
						</div>

						<div class="text2">
							<input type="password" name="password" id="password" value=""
								placeholder="&nbsp&nbsp密码" /> <a id="UEpass" style="color: red"></a>
						</div>
						<div class="text3">
							<div class="yanz1">
								<img alt="验证码" src="/mall/yanzServlet.do"
									onclick="this.src='yanzServlet.do?'+Math.random();"
									style="width: 150px; height: 52px;">
							</div>
							<input type="text" name="yanz" id="yanz"
								placeholder="&nbsp&nbsp填写验证码" />
						</div>
						<div class="errorNews" id="showError" style="display: none;">
							<div>
								<em class="icon_error"></em> <span id="errorNews"></span>
							</div>
						</div>
						<input class="button" type="button" name="panduan" id=""
							onclick="userSumbit()" value="登录" />
					</form>
					<div class="zi">
						<!-- 					  不提交的按钮不能放到form表单里 -->
						<a onclick="f3()">立即注册</a>
					</div>
				</div>

			</div>
			<div id="xsd1" class="under2"
				style="position: relative; left: 0; top: 0; display: none;">
				<div class="under-in">

					<div class="tabs-con tabs_con" data-con="qr"
						style="display: block;">
						<div class="tab_qrcon">
							<div class="tab_code_iframe">
								<div class="isifram"></div>
							</div>
							<div class="custom_sub_txt">
								<p>
									使用<span>小米商城APP</span>扫一扫
								</p>
								<p>小米手机可打开「设置」&gt;「小米帐号」扫码登录</p>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	<script>
	 
		function userSumbit() {
			var userid = $("#userid").val();
			var password = $("#password").val();
			var yanz =$("#yanz").val();
			if(yanz==""){
				$("#errorNews").html("请填写验证码!");
				$("#yanz").css("border-color", "#f56600");
				$("#showError").css("display", "block");

				return;
			}
			if (userid == "") {
				$("#errorNews").html("账号不能为空!");
				$("#userid").css("border-color", "#f56600");
				$("#showError").css("display", "block");

				return;
			}
			if (password == "") {
				$("#errorNews").html("密码不能为空!");
				$("#password").css("border-color", "#f56600");
				$("#showError").css("display", "block");
				return;
			}
			$.ajax({
				url:"<%=request.getContextPath()%>" + "/mall/login",
				data:{
					userid:userid,
					password:password,
					yanz:yanz
				},
			    contentType: "application/x-www-form-urlencoded;charset=utf-8",
			    dataType: "text",
			    success: function(data){
			    	if(data==0){
			    		$("#errorNews").html("验证码不正确!");
						$("#showError").css("display", "block");
						 return;
			    	}
			    	if(data==1){
			    		$("#errorNews").html("账号或密码错误!");
						$("#showError").css("display", "block");
						 return;
			    	}
			    	if(data==2){
			    		window.location.href = "index.jsp";
			    		return;
			    	}
			    	if(data==3){
			    		window.location.href = "sellerCenter.jsp";
			    		return;
			    	}
			    }
				
				
				
				
				
			});
		}
		function f3() {
			window.location.href = "register.jsp";

		}
		var a1 = document.getElementById('x1');
		var a2 = document.getElementById('x2');
		var div1 = document.getElementById('xsd');
		var div2 = document.getElementById('xsd1');

		function f1() {
			a1.style.color = "#f56600";
			a2.style.color = "#666";
			div1.style.display = "block";
			div2.style.display = "none";
		}

		function f2() {
			a1.style.color = "#666";
			a2.style.color = "#f56600";
			div1.style.display = "none";
			div2.style.display = "block";
		}
	</script>
</body>
</html>