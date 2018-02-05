<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${newsName}</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/ProductNews.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>

 <%@include file="part/header.jsp"%>
    	<div id="J_proHeader">
			<div class="xm-product-box">
				<div class="nav-bar" id="J_headNav">
					<div class="container J_navSwitch">
						<!--上传-->
						<h2 class="J_proName">${newsName}</h2>
						<div class="con">
							<div class="right">
								<a href="<%=request.getContextPath()%>/productnews/detail?id=${id}&code=${code}&action=gaishu">概述</a> <span class="separator">|</span>
								<a href="<%=request.getContextPath()%>/productnews/detail?id=${id}&code=${code}&action=canshu">参数</a> <span class="separator">|</span>
								<a href="#" target="_blank">F码通道</a> <span class="separator">|</span>
								<a href="#">用户评价</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	    <div class="xm-buyBox" id="J_buyBox">
			<div class="box clearfix">
				<div class="login-notic  J_notic" id="nologinn">
					<!-- 未登录提示 -->
					<div class="container">
						为方便您购买，请提前登录
						<a href="<%=request.getContextPath()%>/login.jsp" class="J_proLogin"  onclick="">立即登录</a>
						<a href="javascript:void(0);" class="iconfont J_proLoginClose"  onclick="nologinhintHide()">X</a>
					</div>
				</div>
				<div class="pro-choose-main container clearfix">
					<div class="pro-view span10">
						<!-- 左侧轮播图 -->
						<div class="J_imgload imgload hide"></div>
						<div id="J_img" class="img-con" style="left: 1px; margin-top: 0px;">

							<div class="ui-wrapper" style="max-width: 100%;">
								<div class="ui-viewport" style="width: 100%; overflow: hidden; position: relative; height: 560px;">
									<div id="J_sliderView" class="sliderWrap" style="width: auto; position: relative;">
										<!--上传-->
										<img class="slider done" src="${url}" style="float: none; list-style: none; position: absolute; width: 560px; z-index: 50; display: block;">
									</div>
								</div>
								<div class="ui-controls ui-has-pager ui-has-controls-direction" style="display: none;">
									<div class="ui-pager ui-default-pager">
										<div class="ui-pager-item">
											<a href="" data-slide-index="0" class="ui-pager-link active">1</a>
										</div>
									</div>
									<div class="ui-controls-direction">
										<a class="ui-prev disabled" href="">上一张</a>
										<a class="ui-next disabled" href="">下一张</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="pro-info span10">
						<!--上传-->
						<a id="newsId" style="display:none;">${id}</a>
						<h1 class="pro-title J_proName">${newsName}</h1>
						<!-- 提示 -->
						<p class="sale-desc" id="J_desc">
							<font color="#ff4a00">【2018感恩季来啦！${newsName}直降20元，用券再享折上折】</font>${descr}</p>
						<!-- 选择第一级别 -->
						<!--上传-->
						<span class="pro-price J_proPrice">${price}元<del>${oldprice}</del></span>
						<div class="pro-book hide J_proBook">
							<div class="pro-book-head">
								预售
								<span class="time J_bookTime"></span>
							</div>
							<div class="pro-book-con">
								预付款<span class="pro-book-price">￥<em class="J_bookPrice"></em></span>
								<span class="pro-book-rule J_bookRuleTips hide">预售规则<em class="icon J_bookRule">?</em></span>
							</div>
							<div class="pro-book-rule-con J_bookRuleCon hide">
								<em><i></i></em>
								<div>

								</div>
							</div>
						</div>
						<div class="pro-book hide J_proOrder">
							<div class="pro-book-head">
								限时预约
								<span class="time J_orderTime"></span>
							</div>
							<div class="pro-book-con">
								<span class="pro-book-price">￥<em class="J_orderPrice"></em></span>
								<span class="pro-order-count J_orderCount hide"></span>
							</div>
						</div>
						<div class="loading J_load hide">
							<div class="loader"></div>
						</div>
						<div class="J_saleWrap sale-wrap">
							<!-- 优惠券 -->
							<div class="J_couponWrap coupon-wrap hide">
								<span class="coupon-tag">优惠券</span>
								<span class="coupon-name J_couponName"></span>
								<a class="J_getCouponList" href="javascript:void(0);"  onclick="">立即领取</a>
							</div>
							<!-- 4g -->
							<div class="J_flowWrap flow-wrap">
								<ul>
									<li> <span class="flow-tag">折扣</span> <span class="flow-name"></span> </li>
								</ul>
							</div>
						</div>

						<!-- 主体 -->
						<div class="J_main">
							<!-- 分仓地址 -->
							<div class="J_addressWrap address-wrap">
								<div class="user-default-address" id="J_userDefaultAddress">
									<div>
										<div class="address-info" id="userAddress">
		
										</div>
									    <span class="switch-choose-regions" id="J_switchChooseRegions" onclick="updateAddress()"> 修改 </span>
									 </div>
									<div class="product-status active" id="J_productStatus"> <span class="init">正在加载...</span> <span class="sale">有现货</span> <span class="over">该地区暂时缺货</span> <span class="no">暂时无法送达</span> <span class="pre">预售商品</span> <span class="book">预售商品</span> <span class="nohasAddress"></span> <span class="time"></span> </div>
								</div>
							</div>
							<!-- 产品版本 -->
							<div class="list-wrap" id="J_list">
								<div class="pro-choose pro-choose-col2 J_step" >
									<div class="step-title" > 选择颜色 </div>
									<ul class="step-list clearfix">
										<li class="btn btn-biglarge active" >
											<a href="javascript:void(0);"> <img src="https://i8.mifile.cn/v1/a1/852c3872-7aca-e565-b8fb-37aa3ce88979.jpg"  alt="通用" class="done"> 黑色 </a>
										</li>
										<li class="btn btn-biglarge ">
											<a href="javascript:void(0);"> <img src="https://i8.mifile.cn/v1/a1/852c3872-7aca-e565-b8fb-37aa3ce88979.jpg" alt="通用" class="done"> 白色 </a>
										</li>
									</ul>
								</div>
							</div>
							<div class="pro-list" id="J_proList">
								<ul>
									<li>${newsName} 黑色 <del>${oldprice}</del> <span>${price}元</span></li>
									<li class="totlePrice"> 总计 ：${price}元 </li>
								</ul>
							</div>
							<!-- 购买按钮 -->
							<ul class="btn-wrap clearfix" id="J_buyBtnBox">
								<li id="addRight">
                                  <!-- 加入购物车 -->
									<a href="<%=request.getContextPath()%>/cart/add?id=${id}&code=${code}" class="btn btn-primary  btn-biglarge J_proBuyBtn" id="addShop" >加入购物车</a>
								</li>
							</ul>
							<div class="pro-policy" id="J_policy">
								<span class="J_tips ">支持7天无理由退货</span>
							</div>
						</div>
						<!-- 获取商品失败 -->
						<div class="error hide J_error">
							<h3>有点小问题，请点击按钮刷新重试</h3>
							<a href="javascript:void(0)" class="btn btn-primary J_reload"  onclick="">刷新</a>
						</div>
					</div>
				</div>
				<!-- 预售流程 -->
				<div class="pro-infomation" id="J_proInfo">
					<div class="pro-book-flow container hide" id="J_bookFlow">
						<span class="book-name">预售流程</span>
						<ul class="clearfix">
							<li class="item01">
								<span class="icon icon1"></span>
								<div>
									<span class="item-name">1.支付预付款</span>
									<span class="item-infor"></span>
								</div>
							</li>
							<li class="item02">
								<span class="icon icon2"></span>
								<div>
									<span class="item-name">2.支付尾款 <em>（在我的订单完成）</em></span>
									<span class="item-infor"></span>
								</div>
							</li>
							<li class="item03">
								<span class="icon icon3"></span>
								<div>
									<span class="item-name">3.商品发货</span>
									<span class="item-infor"></span>
								</div>
							</li>
						</ul>
					</div>
					<div class="infor-con">
						<div class="section is-visible preload">
							<div class="container">
								<h3><a href="<%=request.getContextPath()%>/productnews/detail?id=${id}&code=${code}&action=xiangqing" target="_blank">查看详情</a></h3>
								<div class="con"><img data-src="//i8.mifile.cn/b2c-mimall-media/913dbcde8a3e02bded640b3cd12837a9.png" class="slider done" src="https://i8.mifile.cn/b2c-mimall-media/913dbcde8a3e02bded640b3cd12837a9.png"></div>
							</div>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	    <div class="modal modal-hide fade modal-choose-regions in" id="J_modalChooseRegions" aria-hidden="false" style="top: 484px; left: 919px; display: block;">
			    <span data-dismiss="modal" aria-hidden="true" class="close" onclick="hide()"><i class="iconfont">×</i></span>
			    <div class="modal-body pro-choose-regions">
			        <div class="J_chooseRegionsBox" data-type="search">
			            <div class="search-address-wrapper" id="J_searchAddressWrapper">
			                <div class="search-section">
			                    <i class="icon icon-search iconfont"></i>
			                    <input class="search-input" id="J_searchRegionsInput" type="text" placeholder="输入街道、乡镇、小区或商圈名称" autocomplete="off">
			                    <span class="icon icon-del iconfont hide" id="J_searchRegionsInputClear">×</span>
			                </div>
<!-- 			                <div class="switch-type"> -->
<!-- 			                    <a href="javascript:void(0);" class="J_switchTypeTrigger" data-type="select" data-stat-id="110f84b299c30ef0" onclick="_msq.push(['trackEvent', '22928513f6ceda25-110f84b299c30ef0', 'javascript:void0', 'pcpid', '']);">手动选择地址&gt;</a> -->
<!-- 			                </div> -->
			
			                <div class="loading hide"><div class="loader"></div></div>
			
			                <!-- 我的收货地址 -->
			                <div class="my-address" id="J_myAddress">
			                    <div class="title">我的收货地址</div>
			                    <div class="list-wrapper">
			                        <ul class="list clearfix" id="changeAddress">
			                         
			                         </ul>
			                    </div>
			                </div>
			
			                <!-- 附近商圈 -->
			                <div class="nearby-address hide" id="J_nearbyAddress">
			                    <div class="title">附近商圈</div>
			                    <ul class="list clearfix"></ul>
			                </div>
			
			                <!-- 搜索列表 -->
			                <div class="search-address hide" id="J_searchAdress">
			                    <ul class="list clearfix"></ul>
			                </div>
			
			                <div class="no-result hide" id="J_noSearchResult">
			                    没有找到这个地方，<a href="javascript:void(0);" class="J_switchTypeTrigger" data-type="select" data-stat-id="158178833df868c4" onclick="_msq.push(['trackEvent', '22928513f6ceda25-158178833df868c4', 'javascript:void0', 'pcpid', '']);">手动选择&gt;</a>
			                </div>
			            </div>
			        </div>
			        <div class="J_chooseRegionsBox chooseRegionsBox hide" data-type="select">
			            <div class="select-address-wrapper" id="J_selectAddressWrapper">
			            	<div class="select-box clearfix" id="J_selectWrapper">
			            		<div class="select-first select-item J_select" data-init-txt="选择省份/自治区">选择省份/自治区</div>
			            		<div class="select-item J_select hide" data-init-txt="选择城市/地区"></div>
			            		<div class="select-item J_select hide" data-init-txt="选择区县"></div>
			            		<div class="select-last select-item J_select hide" data-init-txt="选择配送区域"></div>
			            	</div>
			            	<div class="options-box"> <ul class="options-list J_optionsWrapper clearfix">
			            		<li class="option J_option" data-value="2" data-txt="北京">北京 </li>
			            		<li class="option J_option" data-value="3" data-txt="天津">天津 </li>
			            		<li class="option J_option" data-value="4" data-txt="河北">河北 </li>
			            		<li class="option J_option" data-value="5" data-txt="山西">山西 </li> 
			            		<li class="option J_option" data-value="6" data-txt="内蒙古">内蒙古 </li>
			            		<li class="option J_option" data-value="7" data-txt="辽宁">辽宁 </li>
			            		<li class="option J_option" data-value="8" data-txt="吉林">吉林 </li>
			            		<li class="option J_option" data-value="9" data-txt="黑龙江">黑龙江 </li>
			            		<li class="option J_option" data-value="10" data-txt="上海">上海 </li>
			            		<li class="option J_option" data-value="11" data-txt="江苏">江苏 </li> 
			            		<li class="option J_option" data-value="12" data-txt="浙江">浙江 </li> 
			            		<li class="option J_option" data-value="13" data-txt="安徽">安徽 </li> 
			            		<li class="option J_option" data-value="14" data-txt="福建">福建 </li>
			            		<li class="option J_option" data-value="15" data-txt="江西">江西 </li> 
			            		<li class="option J_option" data-value="16" data-txt="山东">山东 </li> 
			            		<li class="option J_option" data-value="17" data-txt="河南">河南 </li> 
			            		<li class="option J_option" data-value="18" data-txt="湖北">湖北 </li> 
			            		<li class="option J_option" data-value="19" data-txt="湖南">湖南 </li> 
			            		<li class="option J_option" data-value="20" data-txt="广东">广东 </li> 
			            		<li class="option J_option" data-value="21" data-txt="广西">广西 </li>
			            		<li class="option J_option" data-value="22" data-txt="海南">海南 </li> 
			            		<li class="option J_option" data-value="23" data-txt="重庆">重庆 </li> 
			            		<li class="option J_option" data-value="24" data-txt="四川">四川 </li> 
			            		<li class="option J_option" data-value="25" data-txt="贵州">贵州 </li> 
			            		<li class="option J_option" data-value="26" data-txt="云南">云南 </li>  
			            		<li class="option J_option" data-value="27" data-txt="西藏">西藏 </li> 
			            		<li class="option J_option" data-value="28" data-txt="陕西">陕西 </li>  
			            		<li class="option J_option" data-value="29" data-txt="甘肃">甘肃 </li>  
			            		<li class="option J_option" data-value="30" data-txt="青海">青海 </li>  
			            		<li class="option J_option" data-value="31" data-txt="宁夏">宁夏 </li>  
			            		<li class="option J_option" data-value="32" data-txt="新疆">新疆 </li> 
			            	</ul>
			            	<ul class="options-list J_optionsWrapper clearfix hide"></ul> 
			            	<ul class="options-list J_optionsWrapper clearfix hide"></ul>
			            	<ul class="options-list J_optionsWrapper clearfix hide"></ul>
			            	</div>
			            </div>
			            <div class="switch-type">
			                <a href="javascript:void(0);" class="J_switchTypeTrigger" data-type="search" data-stat-id="575ffa69b8facb4c" onclick="_msq.push(['trackEvent', '22928513f6ceda25-575ffa69b8facb4c', 'javascript:void0', 'pcpid', '']);">地址不好找，直接搜一搜&gt;</a>
			            </div>
			        </div>
			    </div>
          </div>
	    <div class="modal-backdrop fade in" id="mask" style="width: 100%; height: 2037px;"></div>
	
	
	
	
	
	<script type="text/javascript">
	$(document).ready(function(){
		hide();
		loadAddress();
		checkLogin();
		
	});
	
	function nologinhintShow() {
		$("#nologinn").show();
	}
	function nologinhintHide() {
		$("#nologinn").hide();
	}
	//检验是否登录
	function checkLogin() {
		 $.ajax({
				url:"<%=request.getContextPath()%>" + "/mall/session",
			    contentType : "application/x-www-form-urlencoded;charset=utf-8",
			    dataType : "text",
			    success : function(data) {
			    	      if(data==1){
			    	    	  h="<div class='no-login' id='J_noLogin'>"
			    	    	  +"现在<a href='<%=request.getContextPath()%>/login.jsp'style='color: #ff6700;'>登录</a>，可根据收货地址快速定位</div>";
					    	  $("#userAddress").html(h);
					    	  var b="<a href='<%=request.getContextPath()%>/login.jsp' class='btn btn-primary  btn-biglarge J_proBuyBtn' id='addShop' >立即登录</a>"
					    	  $("#addRight").html(b);
					    	  nologinhintShow();
					    	  return;
			    	      }
			    	      $("#nologinn").hide();
			         return;
			         }
			   
			    
			    });
	}
	function hide() {
		$("#J_modalChooseRegions").hide();
		$("#mask").hide();
	}
	function show() {
		$("#J_modalChooseRegions").show();
		$("#mask").show();
	}
	function updateAddress() {
		show();
		
	}
	function loadAddress() {
		 $.ajax({
				url:"<%=request.getContextPath()%>" + "/adress/selectAdress",
				contentType : "application/x-www-form-urlencoded;charset=utf-8",
				dataType : "json",
				success : function(data) {
					var e="";
					if(data==""){
						e="<a>您还没设置地址,<a style='color:red;' href='<%=request.getContextPath()%>/address.jsp'>去设置</a></a>"
						$("#userAddress").html(e);
					}
					 
					var province=data[0].province;
					var city=data[0].city;
					var area=data[0].area;
					var address=data[0].completeAddress;
					var h="<span class='item'>"+province+"</span>"
					+"<span class='item'>"+city+"</span>"
					+"<span class='item'>"+area+"</span>"
					+"<span class='item'>"+address+"</span>";
					$("#userAddress").html(h);
					var b="";
					for (var i = 0; i < data.length; i++) {
						var id=data[i].id;
						var province=data[i].province;
						var city=data[i].city;
						var area=data[i].area;
						var address=data[i].completeAddress;
						var addressee=data[i].addressee;
						 b+=" <li class='J_addrItem' onclick='change("+i+")'>"
						        +"<a style='display:none;' id='change"+i+"'>"+id+"</a>"
								+"<div class='address-title'>"
								+"<span class='item'>"+addressee+"</span>"
								+"<span class='item'>"+province+"</span>"
								+"</div>"
								+"<div class='address-desc'>"+city+""+area+""+address+"</div>"
								+"</li>";
					}
				     $("#changeAddress").html(b);

				}
			});
	}
	function change(a) {
		var id=$("#change"+a).text();
		 $.ajax({
				url:"<%=request.getContextPath()%>" + "/adress/selectAdress",
				contentType : "application/x-www-form-urlencoded;charset=utf-8",
				dataType : "json",
				data:{
					id:id
				},
				success : function(data) {
					var province=data[0].province;
					var city=data[0].city;
					var area=data[0].area;
					var address=data[0].completeAddress;
					var h="<span class='item'>"+province+"</span>"
					+"<span class='item'>"+city+"</span>"
					+"<span class='item'>"+area+"</span>"
					+"<span class='item'>"+address+"</span>";
					$("#userAddress").html(h);
					hide();
				}
		 });	
	}
	
	</script>
</body>
</html>