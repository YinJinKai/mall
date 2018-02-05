<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/header.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div class="site-topbar">
		<div class="container">
			<div class="topbar-nav">
				<a href="" onclick="">Y-MALL商城</a>
			</div>
			<div class="topbar-cart" id="J_miniCartTrigger">
				<a class="cart-mini" id="J_miniCartBtn" href="<%=request.getContextPath()%>/shoppingcar.jsp" onclick=""><i class="iconfont"></i>购物车<span class="cart-mini-num J_cartNum" id="carnumcount"></span></a>
				<div class="cart-menu" id="J_miniCartMenu">
					<div class="loading">
						<div class="loader"></div>
					</div>
				</div>
			</div>
			<div class="topbar-info" id="J_userInfo">
				<span id="showUser"> <a rel="nofollow" class="link"
					href="<%=request.getContextPath()%>/login.jsp" onclick="">登录</a><span
					class="sep">|</span> <a rel="nofollow" class="link"
					href="<%=request.getContextPath()%>/register.jsp" onclick="">注册</a>
					<span class="sep">|</span>
				</span>
				 <span class="message">
				  <a rel="nofollow" href="" onclick="">消息通知<class="J_miMessageTotal"></i></a>
				</span>
				<span id="showUserOrder">
				
				</span>
				
			</div>
		</div>
	</div>
	<div class="site-header">
		<div class="container">
			<div class="header-logo">
				<a class="logo ir" href="<%=request.getContextPath()%>/index.jsp" title="Y-MALL商城" onclick="">Y-MALL商城</a>
				<div class="doodle" style="display: block;">
					<a class="exposure link-block"></a>
				</div>
			</div>
			<div class="header-nav">
				<ul class="nav-list J_navMainList clearfix">
					<li id="J_navCategory" class="nav-category"><a
						class="link-category" href="" data-stat-id="d7d79a744cdeefa8"
						onclick=""><span class="text" id="text">全部商品分类</span></a>
						<div id="site-categoryc" class="site-category">
							<ul id="J_categoryList" class="site-category-list clearfix">
								<li class="category-item"><a class="title"
									id="showProduct0" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct010">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct020">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct030">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct1" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct110">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct120">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct130">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct2" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct210">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct220">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct230">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct3" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct310">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct320">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct330">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct4" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct410">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct420">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct430">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct5" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct510">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct520">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct530">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct6" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct610">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct620">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct630">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct7" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct710">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct720">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct730">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct8" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct810">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct820">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct830">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct9" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct910">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct920">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct930">

										</ul>
									</div></li>
							</ul>
						</div>
					</li>
			
				</ul>
			</div>
			<div class="header-search">
				<form id="J_searchForm" class="search-form clearfix"action="<%=request.getContextPath()%>/productnews/search" method="get">
					<label for="search" class="hide">站内搜索</label>
					 <input class="search-text" type="search" id="search" name="keyWord" autocomplete="off">
					<input type="submit" class="search-btn iconfont" value="搜">
<!-- 					热搜 -->
					<div class="search-hot-words" style="display: none;">
						<a href="" onclick="">热搜 like后面的</a>
						<a href=""onclick="">小米Note3</a>
					</div>
					<div id="J_keywordList" class="keyword-list hide">
						<ul class="result-list"></ul>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
	$(document).ready(function() {
		userlogin();
		showcenter();
		showProductClassify();
		loadProductClassfiy();
		loadProductNews();
		carCont();
		showallProduct();
	});
	//显示登录下拉框
	  function showcenter() {
			$("#showUser").hover(function() {
				
				$(".user-menu").slideDown();
				}, function(){
				$(".user-menu").hover(function () {
					$(this).show();
				},function(){
					$(this).slideUp();
				});
				
				
				});
		}
      //点击全部分类
      function showallProduct() {
		$("#text").hover(function () {
			$("#site-categoryc").slideDown();
			}, function() {
				$("#site-categoryc").hover(function () {
					$(this).show();
					
				},function(){
					$(this).slideUp();
				})
				});
	  }
	function loadProductNews() {
		$.ajax({
			url:"<%=request.getContextPath()%>" + "/productnews/showNews",
			contentType : "application/x-www-form-urlencoded;charset=utf-8",
		    dataType : "json",
		    success : function(data) {
		    	var h="";
		    	for (var i = 0; i < data.length; i++) {
		    		var id=data[i].id;
					var newsname=data[i].newsName;
					var descr=data[i].descr;
					var oldPrice=data[i].oldPrice;
					var price=data[i].price;
					var url=data[i].url;
					h+="<li class='brick-item brick-item-m'>"
					  +"<a style='display:none'; id='show"+i+"' >"+id+"</a><div class='figure figure-img'>"
					 +"<a class='exposure' href=''  target='_blank'  onclick='submit("+i+")'>"
					 +"<img src='.."+url+"' width='150' height='150' alt='图丢了?!'></a></div>"
					 +"<h3 class='title'> <a href=''    target='_blank'  onclick=''>"+newsname+"</a></h3>"
				     +"<p class='desc'>"+descr+"</p>"
				     +"<p class='price'><span class='num'>"+price+"</span>元 <del><span class='num'>"+oldPrice+"</span>元</del></p>"
				     +"<p class='rank'></p><div class='flag flag-saleoff'> 享9折 </div>"
				     +"<div class='review-wrapper'><a href=''  target='_blank'  onclick=''>" 
				     +"<span class='review'>惊艳到不能呼吸！凌晨三点还依依不舍！！！</span>"
				     +"<span class='author'> 来自于 金额不足 的评价 <span class='date'></span> </span></a></div>"
				     +"</li>";
				}
		    	$("#showproduct1").html(h);
		    } 
		});
	}
    //点击图片调详情页
	function submit(a) {
		var idValue=$('#show'+a).text();
		window.location.href="<%=request.getContextPath()%>/productnews/showProductPage?id="+idValue+""
		
	}
	  // 	  用户登录
	  function userlogin() {
			 $.ajax({
					url:"<%=request.getContextPath()%>" + "/mall/session",
				    contentType : "application/x-www-form-urlencoded;charset=utf-8",
				    dataType : "json",
				    success : function(data) {
				    	   var userid=data[0].userid;
				    	   var h;
				    	   var a;
				    	   if(userid==undefined || userid==null || userid==""){
				    		   return;
				    	   }else{
				    		   h="<span ><a  class='user-name' href='' target='_blank'><span class='name'><a>欢迎&nbsp;</a>"+userid+"<a>&nbsp;大佬</a></span><i class='iconfont'></i></a>"
				    		   +"<ul id='usercenter' class='user-menu' style='display: none;'>"
				    		   +"<li><a  href='<%=request.getContextPath()%>/usercenter.jsp' target='_blank'>个人中心</a></li><li>"
							   +"<a  href='#' target='_blank'>评价晒单</a></li><li>"
							   +"<a  href='#' target='_blank'>我的喜欢</a></li><li>"
							   +"<a  href='#' target='_blank'>小米账户</a></li><li><a  href='' onclick='loginout()' >退出登录</a></li></ul></span>&nbsp;&nbsp;";
				    	   
				    	       a="<span class='sep'>|</span><a class='link link-order'   href='<%=request.getContextPath()%>/order.jsp'>我的订单</a>"
				    	   }
				         $("#showUser").html(h);
				          $("#showUserOrder").html(a);
				         return;
				         }
				   
				    
				    });
			 
		}
	    //退出登录
		function loginout(){
			 $.ajax({
					url:"<%=request.getContextPath()%>" + "/mall/remove",
				    contentType : "application/x-www-form-urlencoded;charset=utf-8",
				    dataType : "text",
				    success : function(data) {
				    	var b;
				    	if(data==1){
				    	   b="<a class='link' href='<%=request.getContextPath()%>/login.jsp' >登录</a><span class='sep'>|</span><a  class='link' href='<%=request.getContextPath()%>/register.jsp'  >注册</a> <span class='sep'>|</span>";
				    	   window.location.href="<%=request.getContextPath()%>/index.jsp"
				    	}else{
				    		return;
				    	}
				    	$("#showUser").html(b);
				    }
			 });
		}
       //显示二级列表框	
		function showProductClassify(){
			$("#J_categoryList").find("li").hover(function() {
				$(this).addClass("hover");
				$(this).find(".clearfix").css("display", "block")
				}, function() {
				$(this).removeClass("hover")
				$(this).find(".clearfix").css("display", "none")
				});
		}
 
        //加载商品分类
       function loadProductClassfiy() {
    	   $.ajax({
				url:"<%=request.getContextPath()%>"+ "/product/showproduct",
										contentType : "application/x-www-form-urlencoded;charset=utf-8",
										dataType : "json",
										success : function(data) {

											for (var i = 0; i < data.length; i++) {
												var show = data[i];
												for (var j = 0; j < (show.list).length; j++) {
													var shownews = show.list[j];
													$("#showProduct" + j).html(shownews.product_name+ "<i class='iconfont'></i>");
													var h = "";
													for (var k = 0; k < (shownews.list).length; k++) {
														var showe = shownews.list[k];
														var keyWords=showe.product_name;
														h += "<li><a class='link' href='<%=request.getContextPath()%>/productnews/search?keyWord="+keyWords+"'><img class='thumb' src='../mall/mall_img/tt.png'><span class='text'>"
																+ showe.product_name
																+ "</span></a></li>";

													}

													$("#showProduct" + j + "10").html(h);

												}

											}
										}

									});
	}
       //购物车商品个数
       function carCont(){
       	
               $.ajax({
       			url:"<%=request.getContextPath()%>" + "/cart/getCount",
       		    contentType : "application/x-www-form-urlencoded;charset=utf-8",
       		    dataType : "json",
       		    success : function(data) {
       		    	if(data[0].userid==""){
       		    		var a="&nbsp(&nbsp0&nbsp)"
            		       $("#carnumcount").html(a);
       		    		return;
       		    	}
       		    	var h="&nbsp(&nbsp"+data[0].count+"&nbsp)"
       		       $("#carnumcount").html(h);
       		    	$("#J_miniCartBtn").css("background","#ff6700");
       		    	$("#J_miniCartBtn").css("color","#fff");
       		    
       		    
       		    }
       	  });
       }
			
	</script>
</body>
</html>