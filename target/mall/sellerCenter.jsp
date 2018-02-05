<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>卖家中心</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/welcome.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
<%@include file="../part/sellerheader.jsp"%>
   <div class="breadcrumbs">
		<div class="container">
				<a href="">首页</a><span class="sep">&gt;</span><span>卖家中心</span> </div>
		</div>
		<div class="page-main user-main">
			<div class="container">
				<div class="row">
				<%@include file="../part/sellerSpan.jsp"%>
				    <div class="span16">
					<div class="uc-box uc-main-box">
						<div class="uc-content-box portal-content-box">
							<div class="box-bd">
								<div class="portal-main clearfix">
									<div class="user-card">
										<h2 class="username"></h2>
										<p class="tip">早上好～</p>
										<a class="link" href="#" target="_blank">修改个人信息 &gt;</a>
										<img class="avatar" src="../mall/mall_img/photo.jpg" width="150" height="150" >
									</div>
									<div class="user-actions">
										<ul class="action-list">
											<li>账户安全：<span class="level level-2">VIP</span></li>
											<li>账号：<span class="tel" id="sellerid"></span></li>
		
											<li>用户名：<span class="tel"></span>
												<a class="btn btn-small btn-primary" id="sellername">绑定</a>
											</li>
										</ul>
									</div>
								</div>
								<div class="portal-sub">
									
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
			
			
		});
		function showname(){
			
			$.ajax({
				url:"<%=request.getContextPath()%>" + "/mall/sellerid",
			    data:{
			    
			    },
			    contentType: "application/x-www-form-urlencoded;charset=utf-8",
			    dataType: "json",
			    success: function(data){
			    	$("#sellerid").html(data[0].userid);
			    	$("#sellername").html(data[0].username);
			    	
			    }
			 });
		}
		
		
		
		
		
		
		
		</script>
</body>
</html>