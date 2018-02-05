<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/updateuser.css" />
		<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>

<body>
<div id="mask" class="popup_mask" style="display:none;">
			<div class="bkc"></div>
			<div class="mod_wrap">
				<div id="xxx" class="mod_acc_tip layereditinfo" style="display: block;">
					<div class="mod_tip_hd">
						<h4>编辑基础资料</h4>
						<a id="close_btn" onclick="editClose()" class="btn_mod_close" title=""><span>关闭</span></a>
					</div>
					<div class="mod_tip_bd">
						<form action="" method="">
							<div class="wapbox editbasicinfo">
								<dl class="infobox c_b">
									<dt>姓名：</dt>
									<dd>
										<label class="labelbox err_label"><input id="username" class="nickname" type="text" name="nickname" maxlength="20" placeholder="姓名"></label>
									</dd>
<!-- 									<dt>密码：</dt> -->
<!-- 									<dd> -->
<!-- 										<label class="labelbox err_label"><input id="password" class="nickname" type="text" name="nickname" maxlength="20" placeholder="密码"></label> -->
<!-- 									</dd> -->
								</dl>
								<div class="err_tip empty_name err_tip_independ" id="error_edit" style="display: none;"></div>
							</div>
							<div class="tip_btns">
								<a class="btn_tip btn_commom" onclick="submit()" title="保存">保存</a>
								<!-- <input class="btn_tip btn_commom" type="submit" value="保存"> -->
								<a class="btn_tip btn_back" onclick="editClose()" title="取消">取消</a>
							</div>
						</form>
					</div>
				</div>
			
			</div>
		</div>

		<div class="breadcrumbs">
			<div class="container">
				<a href="">首页</a><span class="sep">&gt;</span><span>账户管理</span> </div>
		</div>
		<div class="page-main user-main">
			<div class="container">
				<div class="row">
				<%@include file="part/span.jsp"%>
					<div class="show-box">
						<div class="uc-box uc-main-box" style="background: #f5f5f5;">
							<div class="uc-content-box order-list-box">
								<div class="box-hd">
									<h1 class="title">账号信息修改</h1>
									<div class="n-account-area clearfix">
										<div class="na-info">
											<p class="na-name" id="show_username2">请设置名字</p>
											<p class="na-num" id="show_userid">未设置账号</p>
										</div>
										<div class="na-img-area fl-l">
											<!--na-img-bg-area不能插入任何子元素-->
											<div class="na-img-bg-area"></div>
										</div>
									</div>
									<div class="layout">

										<div class="n-frame">
											<div class="uinfo c_b">
												<div class="">
													<div class="main_l">
														<div class="naInfoImgBox t_c">
															<div class="na-img-area marauto">
																<!--na-img-bg-area不能插入任何子元素-->
																<div class="na-img-bg-area"></div>
																<em class="na-edit"></em>
															</div>
															<div class="naImgLink">

																<a class="color4a9" href="" title="设置头像">设置头像</a>

															</div>
														</div>
													</div>
													<div class="main_r">
														<div class="framedatabox">
															<div class="fdata">
																<a class="color4a9 fr" onclick="editUser()" title="编辑" id="editInfo"><i class="iconpencil"></i>编辑</a>
																<h3>基础资料</h3>
															</div>
															<div class="fdata lblnickname">
																<p><span>姓名：</span><span class="value" _empty="" id="show_username"></span></p>
															</div>
<!-- 															<div class="fdata lblbirthday"> -->
<!-- 																<p><span>密码：</span><span class="value" _empty="" id="show_password"></span></p> -->
<!-- 															</div> -->

														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<script>
		$(document).ready(function() {
			$.ajax({
				url:"<%=request.getContextPath()%>" + "/mall/userid",
			    data:{},
			    contentType: "application/x-www-form-urlencoded;charset=utf-8",
			    dataType: "json",
			    success: function(data){
			    	$("#show_userid").html(data[0].userid);
			    	$("#show_username2").html(data[0].username);
			    	$("#show_username").html(data[0].username);
			    	$("#show_password").html(data[0].password);
			    	$("#username").val(data[0].username);
			    	$("#password").val(data[0].password);
			    	
			    }
			 });
		});

		function editUser() {

			$("#mask").css("display", "block");

		}

		function editClose() {
			$("#error_edit").css("display", "none");
			$("#mask").css("display", "none");
		}

		function submit() {
			var username = $("#username").val();
			var password = $("#password").val();
			if(username == "") {
				$("#error_edit").html("请填写用户名！");
				$("#error_edit").css("display", "block");
				return;
			}
			if(password == "") {
				$("#error_edit").html("密码不能为空!");
				$("#error_edit").css("display", "block");
				return;
			}
			$.ajax({
				url:"<%=request.getContextPath()%>" + "/mall/userUpdate",
			    data:{
			    	username:username,
			    	password:password
			    },
			    contentType: "application/x-www-form-urlencoded;charset=utf-8",
			    dataType: "json",
			    success: function(data){
			    	$("#show_username").html(data[0].username);
			    	$("#show_password").html(data[0].password);
			    	$("#show_userid").html(data[0].userid);
			    	$("#show_username2").html(data[0].username);
			    	$("#mask").css("display", "none");
			    	
			    	
			    }
			 });

		}
	</script>
</body>
</html>