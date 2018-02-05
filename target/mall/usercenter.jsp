<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/welcome.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
 <%@include file="part/header.jsp"%>
   <div class="breadcrumbs">
		<div class="container">
				<a href="">首页</a><span class="sep">&gt;</span><span>个人中心</span> </div>
		</div>
		<div class="page-main user-main">
			<div class="container">
				<div class="row">
				<%@include file="part/span.jsp"%>
				    <div class="span16">
					<div class="uc-box uc-main-box">
						<div class="uc-content-box portal-content-box">
							<div class="box-bd">
								<div class="portal-main clearfix">
									<div class="user-card">
										<h2 class="username"></h2>
										<p class="tip">早上好～</p>
										<a class="link" href="<%=request.getContextPath()%>/updateuser.jsp" target="_blank">修改个人信息 &gt;</a>
										<img class="avatar" src="../mall/mall_img/photo.jpg" width="150" height="150" >
									</div>
									<div class="user-actions">
										<ul class="action-list">
											<li>账户安全：<span class="level level-2">普通</span></li>
											<li>账号：<span class="tel" id="userid"></span></li>
		
											<li>用户名：<span class="tel"></span>
												<a class="btn btn-small btn-primary" id="username">绑定</a>
											</li>
										</ul>
									</div>
								</div>
								<div class="portal-sub">
									<ul class="info-list clearfix">
										<li>
											<h3>待支付的订单：<span class="num" id="orderCount">0</span></h3>
											<a href="<%=request.getContextPath()%>/order.jsp">查看待支付订单</a>
											<img src="../mall/mall_img/portal-icon-1.png" alt="">
										</li>
										<li>
											<h3>待收货的订单：<span class="num">0</span></h3>
											<a href="#">查看待收货订单</a>
											<img src="../mall/mall_img/portal-icon-2.png" alt="">
										</li>
										<li>
											<h3>待评价商品数：<span class="num">0</span></h3>
											<a href="#">查看待评价商品</a>
											<img src="../mall/mall_img/portal-icon-3.png" alt="">
										</li>
										<li>
											<h3>喜欢的商品：<span class="num">0</span></h3>
											<a href="#">查看喜欢的商品</a>
											<img src="../mall/mall_img/portal-icon-4.png" alt="">
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
		         </div>
	            </div>
			</div>
		</div>
		<script type="text/javascript">
		
		$(document).ready(function(){
			showname();
			showorder();
			
		});
		function showname(){
			$.ajax({
				url:"<%=request.getContextPath()%>" + "/mall/userid",
			    data:{},
			    contentType: "application/x-www-form-urlencoded;charset=utf-8",
			    dataType: "json",
			    success: function(data){
			    	$("#userid").html(data[0].userid);
			    	$("#username").html(data[0].username);
			    	
			    }
			 });
		}
		function showorder(){
			$.ajax({
				url:"<%=request.getContextPath()%>" + "/order/selectcount",
			    data:{},
			    contentType: "application/x-www-form-urlencoded;charset=utf-8",
			    dataType: "text",
			    success: function(data){
			    	$("#orderCount").html(data);
			    	
			    }
			 });
			
		}
		
		
		
		
		
		
		
		</script>
</body>
</html>