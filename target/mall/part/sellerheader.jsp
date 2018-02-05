<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/sellerheader.css" />
<!-- <script type="text/javascript" -->
<%-- 	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script> --%>
</head>
<body>
    <div class="site-header site-mini-header">
		<div class="container">
			<div class="header-logo">
			<div class="header-logo-img">
			     <img class="logo_img" alt="" src="<%=request.getContextPath()%>/mall_img/logo.png">
			</div>
			
			</div>
			<div class="header-title has-more" id="J_miniHeaderTitle">
				<h2>卖家中心</h2>
			</div>
			<!-- 登录 -->
			<div class="topbar-info" id="J_userInfo"></div>
		</div>
	</div>
		<script type="text/javascript">
	$(document).ready(function(){
		checkLogin();
	});

	//检验是否登录
	function checkLogin() {
		 $.ajax({
				url:"<%=request.getContextPath()%>" + "/mall/sellersession",
			    contentType : "application/x-www-form-urlencoded;charset=utf-8",
			    dataType : "json",
			    success : function(data) {
			    	      if(data==1){
			    	    	  h="<a class='link' href='<%=request.getContextPath()%>/login.jsp'  onclick=''>登录</a>"
			    	    	  +"<span class='sep'>|</span>"
			    	    	  +"<a class='link' href='<%=request.getContextPath()%>/register.jsp'  onclick=''>注册</a>";       
				              $("#J_userInfo").html(h);
				            $("#J_cartEmpty2").addClass("hide");
				            $("#J_cartEmpty").removeClass("hide");
				            $("#J_cartBox").addClass("hide");
					    	  return;
			    	      }
			    	      b="<span class='user'>"
							+"<a  class='user-name' href=''>"
							+"<span id='username' class='name'>欢迎"+data[0].userid+"</span><i class='iconfont'></i>"
							+"</a>"
							+"<ul class='user-menu' style='display: none;'>"
							+"<li><a  href='' target='_blank'  onclick=''>个人中心</a></li>"
							+"<li><a  href='' target='_blank'  onclick=''>评价晒单</a></li>"
							+"<li><a  href='' target='_blank'  onclick=''>我的喜欢</a></li>"
							+"<li><a  href='' target='_blank' onclick=''>小米账户</a></li>"
							+"<li><a  href=''  onclick=''>退出登录</a></li></ul></span>"
							+"<span class='sep'>|</span>";
			    	      $("#J_userInfo").html(b);
			    	      $("#J_cartEmpty").addClass("hide");
			    	      $("#J_cartBox").removeClass("hide");
			         return;
			         }
			   
			    
			    });
	}
	
	</script>
</body>
</html>