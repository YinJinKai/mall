<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的订单</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/order.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
 <%@include file="part/header.jsp"%>
	<div class="breadcrumbs">
		<div class="container">
			<a href="">首页</a><span class="sep">&gt;</span><span>我的订单</span>
		</div>
	</div>
	<div class="page-main user-main">
		<div class="container">
			<div class="row">
			<%@include file="part/span.jsp"%>
				<div class="span16">
					<div class="uc-box uc-main-box">
						<div class="uc-content-box order-list-box">
							<div class="box-hd">
								<h1 class="title">
									我的订单<small>请谨防钓鱼链接或诈骗电话</small>
								</h1>
								<div class="more clearfix">
									<ul class="filter-list J_orderType">
										<li class="first" id="first"><a  onclick="loadOrder()">全部有效订单</a></li>
										<li><a id="J_unpaidTab"  onclick="">待支付</a></li>
										<li><a id="J_sendTab"  onclick="">待收货</a></li>
										<li id="last"><a  onclick="loadCloseOrder()">已关闭</a></li>
									</ul>
<!-- 									<form id="J_orderSearchForm" class="search-form clearfix" -->
<!-- 										action="#" method="get"> -->
<!-- 										<label for="search" class="hide">站内搜索</label> <input -->
<!-- 											class="search-text" type="search" id="J_orderSearchKeywords" -->
<!-- 											name="keywords" autocomplete="off" -->
<!-- 											placeholder="输入商品名称、商品编号、订单号"> -->
<!-- 										<button type="submit" class="search-btn iconfont" value="">订单搜索</button> -->
<!-- 									</form> -->
								</div>
							</div>
							<div class="box-bd">
								<div id="J_orderList">
								   
	                                  
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
	loadOrder();
});
//点击
//加载关闭订单
function loadCloseOrder(){
	var isdeal="已关闭";
	$("#last").addClass("active");
	 $("#first").removeClass("active");
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/order/laodOrder",
	    contentType : "application/x-www-form-urlencoded;charset=utf-8",
	    data:{
	    	isdeal:isdeal
	    },
	    dataType : "json",
	    success : function (data) {
	    	if(data==""){
	    		$("#J_orderList").html("<p class='empty'>当前没有交易订单。</p>"); 
	    		return;
	    	}
	    
			var h="";
			for (var i = 0; i < data.length; i++) {
				var show=data[i];
				var isdeal=data[i].isdeal;
				var orderGoodsid="";//获取id的数组
				var a="";
				var isdeal;
				
				for (var j = 0; j < (show.list).length; j++) {
					var showGoods=show.list[j];
					isdeal=showGoods.isdeal;
					orderGoodsid+=showGoods.id+",";
					
					a+="<li><div class='figure figure-thumb'>"
					+"<span style='display:none;' class='orderid'>"+showGoods.id+"</span>"
					+"<a href='' target='_blank'><img src='"+showGoods.url+"' width='80' height='80'></a></div>"
					+"<p class='name'><a target='_blank' href=''>"+showGoods.newsName+"</a></p>"
					+"<p class='price'>"+showGoods.price+"元 × "+showGoods.orderCount+"</p></li>";
					
				}
				 
				   
					   h+="<ul class='order-list'>"
							+"<li class='uc-order-item uc-order-item-pay'><div class='order-detail'><div class='order-summary' style='background: #fff;'>"
							+"<div class='order-status'   style='color: #b0b0b0;' >"+data[i].isdeal+"</div></div>"
							+"<table class='order-detail-table'>"
							+"<thead><tr><th class='col-main' style='background: #fff;'><p class='caption-info'>"+data[i].updatetime
							+"<span class='sep'>|</span>"+data[i].addressee+"<span	class='sep'>|</span>订单号：<a href=''>"+data[i].orderNumber+"</a><span class='sep'>|</span>在线支付</p>"
						    +"</th><th class='col-sub' style='background: #fff;'><p class='caption-price'>订单金额：<span class='num'>"+data[i].totalPrice+"</span>元</p>"
							+"</th></tr></thead><tbody><tr><td class='order-items'>"
							+"<ul class='goods-list' id='goods"+i+"'>"+ a
							+"</ul></td>"
							+"<td class='order-actions'><a class='btn btn-small'  href=''target='_blank'>恢复订单</a>"
							+"</td></tr></tbody></table></div></li></ul>";
							
		
				   }
	   		
				

               
		
			$("#J_orderList").html(h);
		
		}
		
		
	});
	
	
	
	
}
//加载有效订单
function loadOrder(){
     var isdeal="等待支付";
     $("#first").addClass("active");
     $("#last").removeClass("active");
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/order/laodOrder",
	    contentType : "application/x-www-form-urlencoded;charset=utf-8",
	    data:{
	    	isdeal:isdeal
	    },
	    dataType : "json",
	    success : function (data) {
	    	if(data==""){
	    		$("#J_orderList").html("<p class='empty'>当前没有交易订单。</p>"); 
	    		return;
	    	}
	    	
			var h="";
			for (var i = 0; i < data.length; i++) {
				var show=data[i];
				var isdeal=data[i].isdeal;
				var orderGoodsid="";//获取id的数组
				var a="";
				var isdeal;
				
				for (var j = 0; j < (show.list).length; j++) {
					var showGoods=show.list[j];
					isdeal=showGoods.isdeal;
					orderGoodsid+=showGoods.id+",";
					
					a+="<li><div class='figure figure-thumb'>"
					+"<span style='display:none;' class='orderid'>"+showGoods.id+"</span>"
					+"<a href='' target='_blank'><img src='"+showGoods.url+"' width='80' height='80'></a></div>"
					+"<p class='name'><a target='_blank' href=''>"+showGoods.newsName+"</a></p>"
					+"<p class='price'>"+showGoods.price+"元 × "+showGoods.orderCount+"</p></li>";
					
				}
			
						h+="<ul class='order-list'>"
							+"<li class='uc-order-item uc-order-item-pay'><div class='order-detail'><div class='order-summary'>"
							+"<div class='order-status'>"+data[i].isdeal+"</div></div>"
							+"<table class='order-detail-table'>"
							+"<thead><tr><th class='col-main'><p class='caption-info'>"+data[i].createtime
							+"<span class='sep'>|</span>"+data[i].addressee+"<span	class='sep'>|</span>订单号：<a href=''>"+data[i].orderNumber+"</a><span class='sep'>|</span>在线支付</p>"
						    +"</th><th class='col-sub'><p class='caption-price'>订单金额：<span class='num'>"+data[i].totalPrice+"</span>元</p>"
							+"</th></tr></thead><tbody><tr><td class='order-items'>"
							+"<ul class='goods-list' id='goods"+i+"'>"+ a
							+"</ul></td>"
							+"<td class='order-actions'><a class='btn btn-small btn-primary' href=''target='_blank'>立即支付</a>"
							+"<a  class='btn btn-small btn-line-gray' onclick='delOrder(\""+orderGoodsid+"\")'>关闭订单</a></td></tr></tbody></table></div></li></ul>";
		               
				   }
	   		
				

               
		
			$("#J_orderList").html(h);
		
		}
		
		
	});
	

}
//删除订单
function delOrder(a){
	
var OrderIdlist=a;
$.ajax({
	url:"<%=request.getContextPath()%>" + "/order/closeOrder",
    contentType : "application/x-www-form-urlencoded;charset=utf-8",
    dataType : "json",
    data:{
    	OrderIdlist:OrderIdlist
    },
    success : function (data) {
    	loadOrder();
    }
	
	
	
	
});




}

</script>
</body>
</html>