<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="mall.order.model.OrderModel"%>
<%@page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>填写订单信息</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/confirm.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
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
				<h2>确认订单</h2>
			</div>
			<!-- 登录 -->
			<div class="topbar-info" id="J_userInfo"></div>
		</div>
	</div>
	<div class="page-main">
		<div class="container">
			<div class="checkout-box">
				<div class="section section-address">
					<div class="section-header clearfix">
						<h3 class="title">收货地址</h3>

						<div class="more"></div>
						<div class="mitv-tips hide" style="margin-left: 0; border: none;"
							id="J_bigproPostTip"></div>
					</div>
					<div class="section-body clearfix" id="J_addressList">
						<!-- 加载地址 -->
					</div>
				</div>

				<div class="section section-goods">
					<div class="section-header clearfix">
						<h3 class="title">商品及优惠券</h3>
						<div class="more">
							<a href="<%=request.getContextPath()%>/shoppingcar.jsp">返回购物车<i class="iconfont"></i></a>
						</div>
					</div>
					<div class="section-body">
						<ul class="goods-list" id="J_goodsList">
							<!--加载商品-->
			<% List<OrderModel> list=(List<OrderModel>)request.getAttribute("orderlist");
               for(int i=0;i<list.size();i++){
            	   out.println("<li class='clearfix'>"
            			     +"<a style='display:none;' id='orderid'"+i+">"+list.get(i).getId()+"</a>"
            			     +"<div class='col col-img'>"
							+"<img src='"+list.get(i).getUrl()+"'width='30' height='30'>"
							+"</div>"
							+"<div class='col col-name'>"
							+"<a href='' target='_blank' onclick=''>"+list.get(i).getNewsName()+"</a>"
							+"</div>"
							+"<div class='col col-price'>"+list.get(i).getPrice()+" 元 x "+list.get(i).getOrderCount()+"</div>"
							+"<div class='col col-status'>&nbsp;</div>"
							+"<div class='col col-total'>"+list.get(i).getSubtotalPrice()+"元</div>"
						+"</li>");  
                } %>
                      
					  </ul>
					</div>
				</div>

				<div class="section section-count clearfix">
					<div class="count-actions"></div>

					<div class="money-box" id="J_moneyBox">
						<ul>
							<li class="clearfix"><label>商品件数：</label> <span class="val">2件</span>
							</li>
							<li class="clearfix"><label>金额合计：</label> <span class="val">${totalPrice}元</span>
							</li>
							<li class="clearfix"><label>活动优惠：</label> <span class="val">-0.00元</span>
							</li>
<!-- 							<li class="clearfix"><label>优惠券抵扣：</label> <span class="val"><i -->
<!-- 									id="J_couponVal">-0</i>元</span></li> -->
<!-- 							<li class="clearfix"><label>运费：</label> <span class="val"><i>10</i>元</span></li> -->
							<li class="clearfix total-price"><label>应付总额：</label> <span
								class="val"><em>${totalPrice}</em>元</span></li>

						</ul>
					</div>
				</div>

				<div class="section-bar clearfix">
					<div class="fl">
						<div class="seleced-address hide" id="J_confirmAddress"></div>
						<div class="big-pro-tip hide J_confirmBigProTip"></div>
					</div>
					<div class="fr">
					 <a style="display:none "id="ordernumber"><%=list.get(0).getOrderNumber() %></a>
						<a href="javascript:void(0);" class="btn btn-primary"
							id="J_checkoutToPay" onclick="buy()">去结算</a>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">

$(document).ready(function(){
	selectAddress();
	checkLogin();
});
//获取用户地址
var addressid;
function choseAddress(a){
	if($("div[id^='addressBorder']").hasClass("chooseA")){
		$("div[id^='addressBorder']").removeClass("chooseA")
	}
	addressid=$("#del"+a).text();
	$("#addressBorder"+a).addClass("chooseA");
	
}
//去结算,或取用户地址,获取订单表里商品的id
function buy() {
	if(addressid==""||addressid==undefined){
		alert("请选择地址");
		return;
	}
	var orderIdlist="";
	$("a[id^='orderid']").each(function(){
		orderIdlist+=$(this).text()+",";
	});
	var orderNumber=$("#ordernumber").text();
	 window.location.href="<%=request.getContextPath()%>" + "/order/orderSuccess?orderNumber="+orderNumber+"&adressId="+addressid+"&orderIdlist="+orderIdlist+"";
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/order/delCart",
	    contentType : "application/x-www-form-urlencoded;charset=utf-8",
	    dataType : "text",
	    data:{
	    	orderIdlist:orderIdlist
	    },
	    success : function(data){
	    	
	    }
		
	});




}





//查询显示用户地址
 function selectAddress() {
 	 $.ajax({
 			url:"<%=request.getContextPath()%>" + "/adress/selectAdress",
 			contentType : "application/x-www-form-urlencoded;charset=utf-8",
 			dataType : "json",
 			success : function(data) {
 				address(data);

 			}
 		});
 }
 function address(data){
 	var h="";
 	for (var i = 0; i < data.length; i++) {
 		var id=data[i].id;
 		var name = data[i].addressee;
 		var telephone=data[i].telephone;
 		var provinceCode=data[i].province;
 		var cityCode=data[i].city;
 		var areaCode=data[i].area;
 		var completeAddress=data[i].completeAddress;
 		h+="<div id='addressBorder"+i+"' class='address-item J_addressItem' onclick='choseAddress("+i+")' ><dl><dt><a id='del"+i+"' style='display:none'>"+id+"</a><em class='uname'>"
 		+name+"</em></dt><dd class='utel'>"+telephone+"</dd><dd class='uaddress'>"
 		+provinceCode+""+cityCode+""+areaCode+"<br>"+completeAddress
 		+"</dd></dl><div class='actions'><a class='modify J_addressModify' onclick='updateAddress("+i+")'>修改</a></div></div>"
 	}
 	$("#J_addressList").html(h);
 }
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
								return;
							}
							b = "<span class='user'>"
									+ "<a  class='user-name' href=''>"
									+ "<span id='username' class='name'>"
									+ data[0].userid
									+ "</span><i class='iconfont'>V</i>"
									+ "</a>"
									+ "<ul class='user-menu' style='display: none;'>"
									+ "<li><a  href='' target='_blank'  onclick=''>个人中心</a></li>"
									+ "<li><a  href='' target='_blank'  onclick=''>评价晒单</a></li>"
									+ "<li><a  href='' target='_blank'  onclick=''>我的喜欢</a></li>"
									+ "<li><a  href='' target='_blank' onclick=''>小米账户</a></li>"
									+ "<li><a  href=''  onclick=''>退出登录</a></li></ul></span>"
									+ "<span class='sep'>|</span>"
									+ "<a  class='link link-order' href='<%=request.getContextPath()%>/order.jsp' target='_blank'  onclick=''>我的订单</a>";
									$("#J_userInfo").html(b);
							return;
						}

					});
		}
 
 </script>

</body>
</html>