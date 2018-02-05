<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mall.order.model.OrderModel"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单提交成功,选择支付方式</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/orderSuccess.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
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
				<h2>支付订单</h2>
			</div>
			<!-- 登录 -->
			<div class="topbar-info" id="J_userInfo"></div>
		</div>
	</div>
	<div class="page-main">
		<div class="container confirm-box">
			<form target="_blank" action="#" id="J_payForm" method="post">
				<div class="section section-order">
					<div class="order-info clearfix">
						<div class="fl">
							<h2 class="title">订单提交成功！去付款咯～</h2>
							<p class="order-time" id="J_deliverDesc"></p>
							<p class="order-time">
								请在<span class="pay-time-tip">1小时59分</span>内完成支付, 超时后将取消订单
							</p>
							<% 
                             List<OrderModel> list=(List<OrderModel>)request.getAttribute("allNewsList");
					        out.println("<p class='post-info' id='J_postInfo'>收货信息:"+list.get(0).getAddressee()+"&nbsp;"+list.get(0).getTelephone()+"&nbsp;&nbsp;"
								+""+list.get(0).getProvince()+"&nbsp;&nbsp;"+list.get(0).getCity()+"&nbsp;&nbsp;"+list.get(0).getArea()+"&nbsp;&nbsp;"+list.get(0).getCompleteAddress()+""
							+"</p>");		
                             %>
							
						</div>
						<div class="fr">
							<p class="total">
								应付总额：<span class="money"><em><%= list.get(0).getTotalPrice() %></em>元</span>
							</p>
							<a href="javascript:void(0);" class="show-detail"
								id="J_showDetail" onclick="showbox()">订单详情<i class="iconfont"></i></a>
						</div>
					</div>
					<i class="iconfont icon-right"></i>
					<div id="order-detail" class="order-detail">
						<ul>
							<li class="clearfix">
								<div class="label">订单号：</div>
								<div class="content">
									<span class="order-num"><%=list.get(0).getOrderNumber() %></span>
								</div>
							</li>
							<li class="clearfix">
								<div class="label">收货信息：</div>
								<div class="content"><%=list.get(0).getAddressee()%>&nbsp;<%=list.get(0).getTelephone()%>&nbsp;&nbsp;
									<%=list.get(0).getProvince() %>&nbsp;&nbsp;<%=list.get(0).getCity() %>&nbsp;&nbsp;<%= list.get(0).getArea()%>&nbsp;&nbsp;<%=list.get(0).getCompleteAddress() %>
								</div>
							</li>
							<li class="clearfix">
								<div class="label">商品名称：</div>
								<div class="content">
								 <% for(int i=0;i<list.size();i++){
									 out.println(""+list.get(i).getNewsName()+"</br>");
								 }
								   %>
								</div>
							</li>
							<li class="clearfix">
								<div class="label">配送时间：</div>
								<div class="content">不限送货时间</div>
							</li>
							<li class="clearfix">
								<div class="label">发票信息：</div>
								<div class="content">电子发票 个人</div>
							</li>
						</ul>
					</div>
				</div>

			</form>
		</div>
	</div>
	<script type="text/javascript">
	$(document).ready(function(){
		checkLogin();
		$("#order-detail").removeClass("hide");
	});
	//点击订单详情
	function showbox(){
		if($("#order-detail").hasClass("hide")){
			$("#order-detail").removeClass("hide");
			return;
		}
		$("#order-detail").addClass("hide");
		
	}
	//检验是否登录
	function checkLogin() {
		 $.ajax({
				url:"<%=request.getContextPath()%>" + "/mall/session",
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
							+"<span id='username' class='name'>"+data[0].userid+"</span><i class='iconfont'>V</i>"
							+"</a>"
							+"<ul class='user-menu' style='display: none;'>"
							+"<li><a  href='' target='_blank'  onclick=''>个人中心</a></li>"
							+"<li><a  href='' target='_blank'  onclick=''>评价晒单</a></li>"
							+"<li><a  href='' target='_blank'  onclick=''>我的喜欢</a></li>"
							+"<li><a  href='' target='_blank' onclick=''>小米账户</a></li>"
							+"<li><a  href=''  onclick=''>退出登录</a></li></ul></span>"
							+"<span class='sep'>|</span>"
							+"<a  class='link link-order' href='<%=request.getContextPath()%>/order.jsp' target='_blank'  onclick=''>我的订单</a>";
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