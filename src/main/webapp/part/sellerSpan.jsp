<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/order.css" />
<!-- <script type="text/javascript" -->
<%-- 	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script> --%>
</head>
<body>
		<div class="span4">
						<div class="uc-box uc-sub-box">
							<div class="uc-nav-box">
								<div class="box-hd">
									<h3 class="title">商品分类管理</h3>
								</div>
								<div class="box-bd">
									<ul class="uc-nav-list">
										<li>
											<a href="<%=request.getContextPath()%>/sellerCenter/addClassify.jsp">添加分类</a>
										</li>
										<li>
											<a href="<%=request.getContextPath()%>/sellerCenter/updateClassify.jsp">修改分类</a>
										</li>	
									</ul>
								</div>
							</div>
							<div class="uc-nav-box">
								<div class="box-hd">
									<h3 class="title">宝贝管理</h3>
								</div>
								<div class="box-bd">
									<ul class="uc-nav-list">
										<li>
											<a href="<%=request.getContextPath()%>/sellerCenter/seller.jsp">发布宝贝</a>
										</li>
										<li>
											<a href="<%=request.getContextPath()%>/sellerCenter/updateGoods.jsp">宝贝维护</a>
										</li>
										<li>
											<a href="<%=request.getContextPath()%>/sellerCenter/detail.jsp">修改宝贝详情</a>
										</li>
									</ul>
								</div>
							</div>
							 <div class="uc-nav-box">
								<div class="box-hd">
									<h3 class="title">交易管理</h3>
								</div>
								<div class="box-bd">
									<ul class="uc-nav-list">
										<li>
											<a href="<%=request.getContextPath()%>/sellerCenter/orderAdm.jsp">订单管理</a>
										</li>
	
									</ul>
								</div>
							</div>
						   <div class="uc-nav-box">
								<div class="box-hd">
									<h3 class="title">物流管理</h3>
								</div>
								<div class="box-bd">
									<ul class="uc-nav-list">
										<li>
											<a href="#">发货</a>
										</li>
										<li>
											<a href="#">我要寄快递</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					
</body>
</html>