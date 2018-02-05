<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Y-MALL商城</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/index.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/lunbo.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div class="site-bn-bar" style="background-image:url(mall_img/adv.jpg);">
	    <a class="site-bn-bar-link exposure" href=""  onclick="" target="_blank">
	    </a>
	</div>

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
				<span id="showUser" class="user"> <a rel="nofollow" class="link"
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
						onclick=""><span class="text">全部商品分类</span></a>
<!-- 						商品分类 -->
						<div class="site-category">
							<ul id="J_categoryList" class="site-category-list clearfix">
								<li class="category-item"><a class="title"
									id="showProduct0"  onclick=""><i class="iconfont"></i></a>
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
<!-- 					标题 -->
					<li class="nav-item">
					   <a class="link" onclick="">
							<span class="text">标题1</span> <span class="arrow"></span>
					   </a>
						<div class="item-children">
							<div class="container">
								<ul class="children-list clearfix">
									<li class="first">
										<div class="figure figure-thumb">
											<a href="" onclick="">
											   <img src="" alt="" width="160" height="110">
											 </a>
										</div>
										<div class="title">
											<a href=""onclick="">小米MIX2</a>
										</div>
										<p class="price">3299起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href=""onclick="">
											   <img src=""alt="小米Note 3" width="160" height="110">
											</a>
										</div>
										<div class="title">
											<a href=""onclick="">小米Note3</a>
										</div>
										<p class="price">1999元起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>

								</ul>
							</div>
						</div>
					</li>
            
				</ul>
			</div>
			<div class="header-search">
				<form id="J_searchForm" onsubmit="return stop();" class="search-form clearfix"action="<%=request.getContextPath()%>/productnews/search" method="get">
					<label for="search" class="hide">站内搜索</label>
					 <input class="search-text" type="search" id="search" name="keyWord" autocomplete="off">
					<input type="submit" class="search-btn iconfont"  value="搜">
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
	
    <div class="home-hero-container container">
		<div class="home-hero">
			<div class="home-hero-slider">
				<div class="ui-wrapper" style="max-width: 100%;">
              <!-- 	轮播 -->
					<div class="ui-viewport" style="width: 100%; overflow: hidden; position: relative; height: 460px;">
                          <div class="slider-outer" id="j_silder_outer">
								<div class="img-item">
									<div  class="img"><a href="<%=request.getContextPath()%>/productnews/showProductPage?id=60"></a></div>
									<div class="img"></div>
									<div class="img"></div>
									<div class="img"></div>
								</div>
								<div class="img-item">
									<div class="img"><a href="<%=request.getContextPath()%>/productnews/showProductPage?id=60"></a></div>
									<div class="img"></div>
									<div class="img"></div>
									<div class="img"></div>
								</div>
								<div class="img-item">
									<div class="img"><a href="<%=request.getContextPath()%>/productnews/showProductPage?id=60"></a></div>
									<div class="img"></div>
									<div class="img"></div>
									<div class="img"></div>
								</div>
								<div class="img-item">
									<div  class="img"><a href="<%=request.getContextPath()%>/productnews/showProductPage?id=60"></a></div>
									<div class="img"></div>
									<div class="img"></div>
									<div class="img"></div>
								</div>
								<div class="img-item">
									<div  class="img"><a href="<%=request.getContextPath()%>/productnews/showProductPage?id=60"></a></div>
									<div class="img"></div>
									<div class="img"></div>
									<div class="img"></div>
								</div>
								<div class="btns" data-num="0">
									<div class="prev"><</div>
									<div class="next">></div>
								</div>
							</div>
							
							<div style="text-align:center;clear:both">
							</div>
					</div>
				</div>
			</div>
			<div class="home-hero-sub row">
				<div class="span4">
					<ul class="home-channel-list clearfix">
						<li class="exposure top left"><a href="//www.mi.com/compare/"
							data-stat-aid="AA13424" data-stat-pid="2_44_1_250"
							data-log_code="31pchomesix_small_icon001003#rid=532cafee96c1ddf03ddde6a8ea32ae66&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.1&amp;adm=2227"
							target="_blank" data-stat-id="AA13424+2_44_1_250"
							onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-AA13424+2_44_1_250', '//www.mi.com/compare/', 'pcpid', '31pchomesix_small_icon001003#rid=532cafee96c1ddf03ddde6a8ea32ae66&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.1&amp;adm=2227']);">选购手机</a></li>
						<li class="exposure top"><a href="http://qiye.mi.com/"
							data-stat-aid="AA10868" data-stat-pid="2_44_2_251"
							data-log_code="31pchomesix_small_icon002003#rid=3df0f0e8953b14f37245356aff85815c&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.2&amp;adm=613"
							target="_blank" data-stat-id="AA10868+2_44_2_251"
							onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-AA10868+2_44_2_251', 'http://qiye.mi.com/', 'pcpid', '31pchomesix_small_icon002003#rid=3df0f0e8953b14f37245356aff85815c&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.2&amp;adm=613']);">企业团购</a></li>
						<li class="exposure top"><a href="//order.mi.com/f"
							data-stat-aid="AA17703" data-stat-pid="2_44_3_252"
							data-log_code="31pchomesix_small_icon003003#rid=be3e2f9faa08a7b6c632225036912b19&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.3&amp;adm=616"
							target="_blank" data-stat-id="AA17703+2_44_3_252"
							onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-AA17703+2_44_3_252', '//order.mi.com/f', 'pcpid', '31pchomesix_small_icon003003#rid=be3e2f9faa08a7b6c632225036912b19&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.3&amp;adm=616']);">F码通道</a></li>
						<li class="exposure left"><a href="https://www.mi.com/micard"
							data-stat-aid="AA11244" data-stat-pid="2_44_4_253"
							data-log_code="31pchomesix_small_icon004003#rid=320d873fddb5984d653278afc2f01ab8&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.4&amp;adm=862"
							target="_blank" data-stat-id="AA11244+2_44_4_253"
							onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-AA11244+2_44_4_253', 'https://www.mi.com/micard', 'pcpid', '31pchomesix_small_icon004003#rid=320d873fddb5984d653278afc2f01ab8&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.4&amp;adm=862']);">米粉卡</a></li>
						<li class="exposure "><a href="//huanxin.mi.com"
							data-stat-aid="AA12084" data-stat-pid="2_44_5_254"
							data-log_code="31pchomesix_small_icon005003#rid=a478e443515a2cf6634c0beb961c01e2&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.5&amp;adm=1386"
							target="_blank" data-stat-id="AA12084+2_44_5_254"
							onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-AA12084+2_44_5_254', '//huanxin.mi.com', 'pcpid', '31pchomesix_small_icon005003#rid=a478e443515a2cf6634c0beb961c01e2&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.5&amp;adm=1386']);">以旧换新</a></li>
						<li class="exposure "><a href="http://recharge.10046.mi.com/"
							data-stat-aid="AA10871" data-stat-pid="2_44_6_255"
							data-log_code="31pchomesix_small_icon006003#rid=6b75acd7f8f706c9b79d6eda54a838e4&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.6&amp;adm=617"
							target="_blank" data-stat-id="AA10871+2_44_6_255"
							onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-AA10871+2_44_6_255', 'http://recharge.10046.mi.com/', 'pcpid', '31pchomesix_small_icon006003#rid=6b75acd7f8f706c9b79d6eda54a838e4&amp;t=normal&amp;page=home&amp;act=other&amp;bid=3030363.6&amp;adm=617']);">话费充值</a></li>
					</ul>
				</div>
				<div class="span16" id="J_homePromo" data-stat-title="焦点图下方小图">
					<ul class="home-promo-list clearfix">
						<li class="first"><a class="item exposure"
							target="_blank" onclick=""><img alt="小米5X-12期免息"
								src="//i1.mifile.cn/a4/xmad_15135746189417_lGjYa.jpg"
								srcset="//i1.mifile.cn/a4/xmad_15135746219327_TuNOp.jpg 2x"></a>
						</li>
						<li><a class="item exposure"  target="_blank"
							onclick=""><img alt="红米5 plus"
								src="//i1.mifile.cn/a4/xmad_15130875291593_NfXzw.jpg"
								srcset="//i1.mifile.cn/a4/xmad_15130875315452_SYIRx.jpg 2x"></a>
						</li>
						<li><a class="item exposure"  target="_blank"
							onclick=""><img alt="70迈后视镜"
								src="//i1.mifile.cn/a4/xmad_15120441868462_gnUsB.jpg"
								srcset="//i1.mifile.cn/a4/xmad_1512044189256_wpEUb.jpg 2x"></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="home-star-goods xm-carousel-container" id="J_homeStar">
			<div class="xm-plain-box">
				<div class="box-hd">
					<h2 class="title">明星单品</h2>
					<!-- <h2 class="title">祝大家圣诞快乐！一起来唱圣诞歌吧  (＾O＾☆♪ ) </h2> -->
					<div class="more">
						<div
							class="xm-controls xm-controls-line-small xm-carousel-controls">
							<a class="control control-prev iconfont"
								href="javascript: void(0);" onclick=""></a><a
								class="control control-next iconfont control-disabled"
								href="javascript: void(0);" onclick=""></a>
						</div>
					</div>
				</div>
				<div class="box-bd">
                <!-- 明星单品商品处 -->
					<div class="xm-carousel-wrapper"style="height: 340px; overflow: hidden;">
					    	<ul id="startProduct" class="xm-carousel-list xm-carousel-col-5-list goods-list rainbow-list clearfix J_carouselList" style="width: 2480px; margin-left: 0px; transition: margin-left 0.5s ease;">
							
							</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="page-main home-main">
		<div class="container">
			<div id="homeelec"
				class="home-brick-box home-brick-row-2-box xm-plain-box J_itemBox J_brickBox is-visible loaded"
				data-from-stat="false">
				<div class="box-hd">
					<h2 class="title">家电</h2>
					<!-- <h2 class="title">冲破大风雪，我们坐在雪橇上  (๑•̀ㅂ•́)و✧ </h2> -->
					<div class="more J_brickNav">
						<ul class="tab-list J_brickTabSwitch"
							data-tab-target="homeelec-content">
							<li class="tab-active">热门</li>
							<li>电视影音</li>
							<li>电脑</li>
							<li>家居</li>
						</ul>
					</div>
				</div>
				<div class="box-bd J_brickBd">
					<div class="row">
						<div class="span4 span-first">
                      <!-- 	侧边商品 -->
							<ul class="brick-promo-list clearfix" id="advSpan">
								
							</ul>
						</div>
						<div class="span16">
							<div id="homeelec-content" class="tab-container">
								<ul id="showproduct1" class="brick-list tab-content clearfix tab-content-active J_recommendActive">
								 
								</ul>
								<ul class="brick-list tab-content clearfix tab-content-hide"></ul>
								<ul class="brick-list tab-content clearfix tab-content-hide"></ul>
								<ul class="brick-list tab-content clearfix tab-content-hide"></ul>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
     <%@include file="part/footer.jsp"%>
	<script type="text/javascript">
	$(document).ready(function() {
		loadSpanProduct();
		loadStartProductNews();
		userlogin();
		showcenter();
		showProductClassify();
		loadProductClassfiy();
		loadProductNews();
		carCont();
	});
	
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
				    	}else{
				    		return;
				    	}
				    	$("#showUser").html(b);
				    	$("#showUserOrder").html("");
				    }
			 });
		}
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
     //加载家电处的商品
   	function loadProductNews() {
   		var keyType="家电";
   		$.ajax({
   			url:"<%=request.getContextPath()%>" + "/productnews/showNews",
   			contentType : "application/x-www-form-urlencoded;charset=utf-8",
   		    dataType : "json",
   		    data:{
   		    	keyType:keyType
   		    },
   		    success : function(data) {
   		    	var h="";
   		    	for (var i = 0; i < data.length; i++) {
   		    		var id=data[i].id;
   		    		
   					var newsname=data[i].newsName;
   					var descr=data[i].descr;
   					var oldPrice=data[i].oldPrice;
   					if(oldPrice==""||oldPrice==null){
   						oldPrice=data[i].oldPrice;
   					}else{
   						oldPrice=data[i].oldPrice+"元";
   					}
   					var price=data[i].price;
   					var url=data[i].url;
   					var iseffect=data[i].iseffect;
   					var a="";
   					var b="";
   					if(iseffect==0){ //已下架
   						
   					    a+="<div class='flag'style='background-color:#dedede;color:#333;'> 已下架</div>";
   				    }else{
   				    	a+="<div class='flag flag-saleoff'> 享九折</div>";
   				    	b+="<a class='exposure' target='_blank'  onclick='submit("+i+")'>";
   				    }
   					h+="<li class='brick-item brick-item-m'>"
   					  +"<a style='display:none'; id='show"+i+"' >"+id+"</a><div class='figure figure-img'>"
   					 +b
   					 +"<img src='.."+url+"' width='150' height='150' alt='图丢了?!'></a></div>"
   					 +"<h3 class='title'> <a href=''    target='_blank'  onclick=''>"+newsname+"</a></h3>"
   				     +"<p class='desc'>"+descr+"</p>"
   				     +"<p class='price'><span class='num'>"+price+"</span>元 <del><span class='num'>"+oldPrice+"</span></del></p>"
   				     +"<p class='rank'>"+a+"</p>"
   				     +"<div class='review-wrapper'><a href=''  target='_blank'  onclick=''>" 
   				     +"<span class='review'>惊艳到不能呼吸！凌晨三点还依依不舍！！！</span>"
   				     +"<span class='author'> 来自于 金额不足 的评价 <span class='date'></span> </span></a></div>"
   				     +"</li>";
   				}
   		    	$("#showproduct1").html(h);
   		    } 
   		});
   	}
    //加载明星单品处
    	function loadStartProductNews() {
   		var keyType="明星";
   		$.ajax({
   			url:"<%=request.getContextPath()%>" + "/productnews/showNews",
   			contentType : "application/x-www-form-urlencoded;charset=utf-8",
   		    dataType : "json",
   		    data:{
   		    	keyType:keyType
   		    },
   		    success : function(data) {
   		    	var s="";
   		    	for (var i = 0; i < data.length; i++) {
   		    	    var list=data[i];
					
   		    		s+="<li class='rainbow-item-1'>"
   		    		+"<a class='thumb exposure' href='<%=request.getContextPath()%>/productnews/showProductPage?id="+list.id+"' target='_blank' onclick=''><img src='"+list.url+"' alt='"+list.newsName+"'></a>"
   		    		+"<h3 class='title'><a href='<%=request.getContextPath()%>/productnews/showProductPage?id="+list.id+"'   target='_blank'  onclick=''>"+list.newsName+"</a></h3>"
   		    		+"<p class='desc'>"+list.descr+"</p>"
   		    		+"<p class='price'>"+list.price+"元</p></li>";
				}
   		    	$("#startProduct").html(s);
   		    }
   		});
   	}
  //加载侧边商品
  function loadSpanProduct(){
		var keyType="新推";
   		$.ajax({
   			url:"<%=request.getContextPath()%>" + "/productnews/showNews",
   			contentType : "application/x-www-form-urlencoded;charset=utf-8",
   		    dataType : "json",
   		    data:{
   		    	keyType:keyType
   		    },
   		    success : function(data) {
   		    	var list=data[0];
   		    	var s="";
   		         s+="<a href='<%=request.getContextPath()%>/productnews/showProductPage?id="+list.id+"' class='exposure'  target='_blank' onclick=''>"
   		           +"<img src='"+list.url+"' alt=''></a>"
   		    	$("#advSpan").html(s);
   		    }
   		});
	  
	  
	  
  }
  function stop() {
	var search=$("#search").val();
	if(search==""){
		return false;
	}
}
	</script>
<!-- 轮播 -->
<script type="text/javascript">
	$(function (){
		var num = 0;
		$("#j_silder_outer .img-item").each(function(index, el) {
			$(this).css({
				"left":$(this).width() * index + "px",
				/*让每个img-item延时一定时间执行动画*/
				"transitionDelay": index * 0.3 + "s"
			});
			$(this).find(".img").css({
				"backgroundPosition": -$(this).width() * index + "px"
			});;
		});

		$(".prev").on("click",function (){
			$("#j_silder_outer .img-item").css("transform", "rotateX(" + (++num * 90) + "deg)");
		});

		$(".next").on("click",function (){
			$("#j_silder_outer .img-item").css("transform", "rotateX(" + (--num * 90) + "deg)");
		});
		
		var timejg=4000;//轮播间隔时间
		var time = setInterval(move,timejg);
		function move(){
			$("#j_silder_outer .img-item").css("transform", "rotateX(" + (--num * 90) + "deg)");
		}
		$('.slider-outer').hover(function(){
			clearInterval(time);
		},function(){
			time = setInterval(move,timejg);
		});


	})
	
</script>
</body>
</html>