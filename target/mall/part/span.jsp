<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/order.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
</head>
<body>
	<div class="span4">
		<div class="uc-box uc-sub-box">
			<div class="uc-nav-box">
				<div class="box-hd">
					<h3 class="title">订单中心</h3>
				</div>
				<div class="box-bd">
					<ul class="uc-nav-list">
						<li><a href="<%=request.getContextPath()%>/order.jsp">我的订单</a></li>
						<li><a>评价晒单</a></li>


					</ul>
				</div>
			</div>
			<div class="uc-nav-box">
				<div class="box-hd">
					<h3 class="title">个人中心</h3>
				</div>
				<div class="box-bd">
					<ul class="uc-nav-list">
						<li><a href="<%=request.getContextPath()%>/usercenter.jsp">我的个人中心</a></li>
						<li><a href="<%=request.getContextPath()%>/shoppingcar.jsp">我的购物车</a></li>
						<li ><a href="<%=request.getContextPath()%>/address.jsp">收货地址</a></li>
					</ul>
				</div>
			</div>
			<div class="uc-nav-box">
				<div class="box-hd">
					<h3 class="title">账户管理</h3>
				</div>
				<div class="box-bd">
					<ul class="uc-nav-list">
						<li><a href="">个人信息</a></li>
						<li><a href="<%=request.getContextPath()%>/updateuser.jsp">修改密码</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
$("li").click(function(){
	$("li").each(function(){
		if($(this).hasClass("active")){
			$(this).removeClass("active");
		}
	});
	$(this).addClass("active");
})

</script>

</body>
</html>