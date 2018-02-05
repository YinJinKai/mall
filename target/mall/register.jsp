<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/register.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>

	<div class="header">
		<div class="inheader"></div>
	</div>
	<div class="page">
		<div class="page_header">
			<div class="logo">
				<h1>
					<a></a>
				</h1>
				<h2>用户注册</h2>
			</div>
		</div>
		<div class="page_step">
			<ol>
				<li class="active"><i>1</i> <span id=""> 设置账号 </span></li>
				<li><i>2</i> <span id=""> 填写账号信息 </span></li>
				<li><i>3</i> <span id=""> 设置支付方式 </span></li>
				<li><i class="iconfont">√</i> <span id=""> 注册成功 </span></li>
			</ol>
		</div>
		<div class="page_context">

			<div class="form_list" id="form1">
				<div class="from_group">
					<div class="form_item">
						<span class="from_lable"> 账号 </span> <input type="text"
							id="userid" value="" class="input_from" /><a class="showError"
							id="show_userid" style="display: none;"><i class="icon_error"></i><span
							id="errorNews"></span></a>
					</div>
					<div class="form_item">
						<div class="wating"></div>
					</div>
				</div>
				<div class="form_item form_item_short">
					<button class="id_button" onclick="next()" id="first_btn">下一步</button>
				</div>
			</div>

			<div class="form_list post" id="form2" style="display: none;">
				<div class="from_group">
					<div class="form_item">
						<span class="from_lable"> 姓名 </span> <input type="text"
							id="username" value="" class="input_from2" /> <a
							class="showError" id="show_username" style="display: none;"><i
							class="icon_error"></i><span id="errorNews_name"></span></a>
					</div>
					<div class="form_item">
						<span class="from_lable"> 密码 </span> <input type="text"
							id="password" value="" class="input_from2" /> <a
							class="show_password_Error" id="show_password_Error"
							style="display: none;"><i class="icon_error"></i><span
							id="errorNews_password"></span></a>
					</div>
					<div class="form_item">
						<span class="from_lable"> 注册类型 </span> <select id="isseller"
							name="" class="select_seller">

							<option value="1">卖家</option>
							<option value="2" selected="selected">买家</option>
						</select>
					</div>
					<div class="form_item form_item_short">
						<button class="id_button" onclick="next2()" id="second_btn">下一步</button>
					</div>
				</div>
			</div>
			<div class="form_list post" id="form3" style="display: none;">
				支付方式
				<div class=" form_item form_item_short ">
					<button class="id_button " onclick="next3()" id="third_btn">下一步</button>
				</div>
			</div>
			<div class="form_list post " id="form4" style="display: none;">
				注册成功
				<div class="form_item form_item_short">
					<button class="id_button" onclick="next4()" id="fth_btn">完成</button>
				</div>
			</div>

		</div>
	</div>
	<div class="advice"></div>
	<div class="footer"></div>
</body>
<script>
$(document).ready(function(){
	$("#first_btn").addClass("btn_disabled");
	$("#second_btn").addClass("btn_disabled");
	$("#third_btn").addClass("btn_disabled");
	 $("#userid").focus(function() {
		   $("#first_btn").removeClass();
		   $("#first_btn").addClass("id_button");
	  });
	 $("#username").focus(function() {
		   $("#second_btn").removeClass();
		   $("#second_btn").addClass("id_button");
	  });
	 $("#errorNews").html("请输入8位有效数字!");
	 $("#userid").css("border-color", "#f56600");
	  $("#show_userid").css("display", "block");
	
});

  
    function next() {//只填账号不添加数据库
		var userid=$("#userid").val();
		if(userid==""){
			$("#errorNews").html("请填写账号!");
			$("#userid").css("border-color", "#f56600");
			$("#show_userid").css("display", "block");
			return;
		}
		var check=/^\d{8}$/;
		if(!check.test(userid)){
			alert("账号格式不对");
			return;
		}

		
		$.ajax({
			url:"<%=request.getContextPath()%>/mall/register",
			data:{
				userid:userid
			},
		    contentType: "application/x-www-form-urlencoded;charset=utf-8",
		    dataType: "text",
		    success: function(data){
		    	if(data==1){
		    		$("#errorNews").html("账号已存在!");
					$("#userid").css("border-color", "#f56600");
					$("#show_userid").css("display", "block");
					return;
		    	}
		    	$("#form1").css("display", "none");
				$("#form2").css("display", "block");
				$("ol li:nth-child(2)").addClass("active");
				return;
		    }
			
		});
	
	}

	function next2() {
		 var userid=$("#userid").val();
         var username=$("#username").val();
         var password=$("#password").val();
         var isseller=$("#isseller").val();
         if(username==""){
        	$("#errorNews_name").html("请填写用户名!");
 			$("#username").css("border-color", "#f56600");
 			$("#show_username").css("display", "block");
 			return;
         }
         if(password==""){
        	 $("#errorNews_password").html("请填写密码!");
 			$("#password").css("border-color", "#f56600");
 			$("#show_password_Error").css("display", "block");
 			return;
         }
         $.ajax({
 			url:"<%=request.getContextPath()%>/mall/register",
			data : {
				userid : userid,
				username : username,
				password : password,
				isseller : isseller
			},
			contentType : "application/x-www-form-urlencoded;charset=utf-8",
			dataType : "text",
			success : function(data) {
				$("#form2").css("display", "none");
				$("#form3").css("display", "block");
				$("ol li:nth-child(3)").addClass("active");
				return;
			}

		});

	}

	function next3() {
		$("#form3").css("display", "none");
		$("#form4").css("display", "block");
		$("ol li:nth-child(4)").addClass("active");
		return;
	}

	function next4() {
		alert("succeed!")
		window.location.href = "login.jsp";
		return;
	}
</script>
</html>