<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的购物车</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/shoppingcar.css" />
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
					<h2>我的购物车</h2>
					<p>温馨提示：产品是否购买成功，以最终下单为准哦，请尽快结算</p>
				</div>
                <!-- 登录 -->
				<div class="topbar-info" id="J_userInfo">
				   
				</div>
			</div>
		</div>
		
		<div class="page-main">
			<div class="container">
				<div class="cart-loading loading hide" id="J_cartLoading">
					<div class="loader"></div>
				</div>
			    <!--未登录显示-->
			    <div class="cart-empty hide cart-empty-nologin" id="J_cartEmpty">
					<h2 >您的购物车还是空的！</h2>
					<p id="h2" class="login-desc">登录后将显示您之前加入的商品</p>
					<a href="<%=request.getContextPath()%>/login.jsp" class="btn btn-primary btn-login" id="J_loginBtn"  onclick="">立即登录</a>
					<a href="<%=request.getContextPath()%>/index.jsp" class="btn  btn-shoping J_goShoping" id="buynow"  onclick="">马上去购物</a>
				</div>
				 <!--无商品显示-->
				 <div class="cart-empty hide cart-empty-nologin" id="J_nocart">
					<h2 >您的购物车还是空的！</h2>
					<a href="<%=request.getContextPath()%>/index.jsp" class="btn  btn-shoping J_goShoping" id="buynow"  onclick="">马上去购物</a>
				</div>
				<div id="J_cartBox" >
					<div class="cart-goods-list">
						<!--表头-->
						<div class="list-head clearfix">
							<div class="col col-check"><i class="iconfont icon-checkbox " id="J_selectAll">√</i>全选</div>
							<div class="col col-img">&nbsp;</div>
							<div class="col col-name">商品名称</div>
							<div class="col col-price">单价</div>
							<div class="col col-num">数量</div>
							<div class="col col-total">小计</div>
							<div class="col col-action">操作</div>
						</div>
						<!--商品-->
						<div class="list-body" id="J_cartListBody">
							<!--拼item-box-->
							
                        </div>
                    </div>
            
                    <!--加价购-->
	                <div class="raise-buy-box " id="J_raiseBuyBox ">
				        <div class="item J_raiseBuyItem ">
				        	<i class="iconfont icon-plus ">+</i>
				        	  最生活毛巾·青春系列 19.89元
				        </div>
		            </div>
	               <!--结算-->
			        <div class="cart-bar clearfix " id="J_cartBar ">
				        <div class="section-left ">
					        <a href="" class="back-shopping J_goShoping "  onclick="">继续购物</a>
					        <span class="cart-total ">共 <i id="J_cartTotalNum"></i> 件商品，已选择 <i id="J_selTotalNum"></i>件</span>
					        <span class="cart-coudan hide " id="J_coudanTip ">
			                                   ，还需<i id="J_postFreeBalance "></i> 元即可免邮费
			                    <a href="javascript:void(0); " id="J_showCoudan "  onclick="">立即凑单</a>
			                </span>
				        </div>
				        <span class="activity-money hide ">
			                             活动优惠：减 <i id="J_cartActivityMoney ">0</i> 元
			            </span>
				        <span class="total-price ">
			                             合计：<em id="J_cartTotalPrice"></em>元
			            </span>
				        <a href="javascript:void(0); " class="btn btn-a btn btn-primary " id="J_goCheckout "  onclick="goBuy()">去结算</a>
			            <div class="no-select-tip hide" id="J_noSelectTip">
					                请勾选需要结算的商品
							<i class="arrow arrow-a "></i>
							<i class="arrow arrow-b "></i>
				        </div>
				    </div>
                </div>
		        <div class="cart-recommend hide " id="J_historyRecommend "></div>
		    	<div class="cart-recommend container" id="J_miRecommendBox">
					<h2 class="xm-recommend-title"><span>买购物车中商品的人还买了</span></h2>
					<div class="xm-recommend">
						<ul class="row clearfix">
							<li class="J_xm-recommend-list span4">
								<dl>
									<dt>
										<a href=""   target="_blank"  onclick="">
											<img src="//i1.mifile.cn/a1/pms_1502962275.73995818!140x140.jpg" srcset="//i1.mifile.cn/a1/pms_1502962275.73995818!280x280.jpg  2x" alt="小米5X">
										</a>
									</dt>
									<dd class="xm-recommend-name">
										<a href="" target="_blank"  onclick=""> 小米5X </a>
									</dd>
									<dd class="xm-recommend-price">1499元</dd>
									<dd class="xm-recommend-tips"> 3.3万人好评
										<a  class="btn btn-small btn-line-primary J_xm-recommend-btn" style="display: none;">加入购物车</a>
									</dd>
									<dd class="xm-recommend-notice"></dd>
								</dl>
							</li>
						</ul>
					</div>
				</div>




            </div>
        </div>
        <div class="modal fade modal-hide  modal-alert in" id="J_modalAlert"  style="display: block;">
			<div class="modal-bd">
				<div class="text">
				    <a style="display:none;" id="realdel_id"></a>
					<h3 id="J_alertMsg">确定删除吗？</h3>
				</div>
				<div class="actions">
					<button class="btn btn-gray"  id="J_alertCancel" onclick="closedelete()">取消</button>
					<button class="btn btn-primary"  id="J_alertOk" onclick="realdelete()">确定</button>
				</div>
				<a class="close"  href="javascript: void(0);"  onclick="closedelete()"><i class="iconfont">X</i></a>
			</div>
		</div>
		<div class="modal-backdrop fade in" id="maskdel" style="width: 100%; height: 1696px;"></div>
  <script type="text/javascript">
  $(document).ready(function(){
	  checkLogin();
	  carCont();
	  loadShopCar();
	  initTotalPrice();
	  selectcount();
	  closedelete();
  });
  //被选中的商品结算
    function goBuy(){
	   var buyList = "";
		  $("i[id^='d']").each(function(){
			  if($(this).hasClass("icon-checkbox-selected")){
				  var id =$(this).attr("id");
				  var numid=$("#numi"+id).text();
				  buyList+=numid+",";
			  }
		  });
		if(buyList==""){
			$("#J_noSelectTip").removeClass("hide");
			return;
		}
		  window.location.href="<%=request.getContextPath()%>" + "/order/addOrder?buyList="+buyList+"";
	  
	  
	  
  }
  //显示删除框
  function showdelete(){
	  $("#J_modalAlert").show();
	  $("#maskdel").show();
  }
  function closedelete(){
	  $("#J_modalAlert").hide();
	  $("#maskdel").hide();
	  
  }
  //获取购物车商品
  function loadShopCar() {
	 $.ajax({
			url:"<%=request.getContextPath()%>" + "/cart/added",
		    contentType : "application/x-www-form-urlencoded;charset=utf-8",
		    dataType : "json",
		    success :function(data){
		    	var h='';
		    	for (var i = 0; i < data.length; i++) {
		    		var id=data[i].id;
		    		var newsName=data[i].newsName;
		    		var descr=data[i].descr;
		    		var price=data[i].price;
		    		var url=data[i].url;
		    		var carCount=data[i].carCount;
		    		var subtotalPrice=data[i].subtotalPrice;
		    		
		    		
		    		h +='<div class="item-box" id="num'+i+'">'
				    	+'<div class="item-table J_cartGoods" ><div class="item-row clearfix">'
				    	+'<a id="numid'+i+'" style="display:none">'+id+'</a><div class="col col-check"><i class="iconfont icon-checkbox J_itemCheckbox" id="d'+i+'" onclick="selected('+i+')">√</i></div>'
				    	+'<div class="col col-img"><a href="" target="_blank" onclick=""><img alt="" src="'+url+'" width="80" height="80"></a></div>'
				    	+'<div class="col col-name"><div class="tags"></div><h3 class="name">'
				    	+'<a href="" target="_blank"  onclick="">'+newsName+'</a></h3></div>'
				    	+'<div class="col col-price">'+price+'元</div>'
				    	+'<div class="col col-num"><div class="change-goods-num clearfix J_changeGoodsNum">'
				    	+'<a href="javascript:void(0)" class="J_minus" onclick="jiannum('+i+')"><i class="iconfont">-</i></a>'
				    	+'<input id="carCount'+i+'" tyep="text" name="2174500001_0_buy" value="'+carCount+'" class="goods-num J_goodsNum" "=" ">'
				    	+'<a href="javascript:void(0) " class="J_plus "  onclick="addnum('+i+')"><i class="iconfont ">+</i></a></div></div>'
				    	+'<div id="subtotalPrice'+i+'" class="col col-total">'+subtotalPrice+'元<p class="pre-info "></p></div>'
				    	+'<div class="col col-action"><a  href="javascript:void(0);" onclick="deleteCar('+i+')" title="删除" class="del J_delGoods">'
				    	+'<i class="iconfont">X</i></a></div></div></div></div>';
				}
		      $("#J_cartListBody").html(h);
		   
		    }
		 
	 });
}

  //删除购物车
  function realdelete(){
	  var v=$("#realdel_id").text();
	  var id=$("#numid"+v).text();
	  $.ajax({
		  url:"<%=request.getContextPath()%>" + "/cart/del",
		    contentType : "application/x-www-form-urlencoded;charset=utf-8",
		    dataType : "text",
		    data:{
		    	id:id
		    },
		    success : function(data){
		    	 closedelete();
		    	loadShopCar();
		    	carCont();
		    }
		  
	  });
	  
  }
  //显示是否删除
  function deleteCar(a){
	  $("#realdel_id").html(a);
	  showdelete();
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
							+"<span id='username' class='name'>"+data[0].userid+"</span>"
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
	  //操作购物车(计算小计)
	function doShopCar(a){
		var numcount = $("#carCount"+a).val();
		var id=$("#numid"+a).text();
		 $.ajax({
				url:"<%=request.getContextPath()%>" + "/cart/calculate",
				data:{
					id:id,
					carCount:numcount
				},
			    contentType : "application/x-www-form-urlencoded;charset=utf-8",
			    dataType : "text",
			    success : function(data) {
			    	var h=data+"元";
			    	$("#subtotalPrice"+a).html(h);
			    	  totalPrice();
			    }
		  });
		  
	  }
  //加法
  function addnum(a){
	 var num = $("#carCount"+a).val();
	  num++;
	  $("#carCount"+a).val(num);
	  
	  doShopCar(a);
	
  }
  //减法
  function jiannum(b) {
	 var num = $("#carCount"+b).val();
	 
	 if(num<=1){
		 $("#carCount"+b).val(1);
	 }else{
		 num--;
		 $("#carCount"+b).val(num);
	 }
	 doShopCar(b);
	
} 
  //计算总价
  function totalPrice() {
	   var list = "";
	  $("i[id^='d']").each(function(){
		  if($(this).hasClass("icon-checkbox-selected")){
			  var id =$(this).attr("id");
			  var numid=$("#numi"+id).text();
			  list+=numid+",";
		  }
	  });
	
	  $.ajax({
			url:"<%=request.getContextPath()%>" + "/cart/total",
			data:{
				idlist:list,
			},
		    contentType : "application/x-www-form-urlencoded;charset=utf-8",
		    dataType : "text",
		    success : function(data) {
		    	if(data==0){
		    		$("#J_cartTotalPrice").html(0);
		    		return;
		    	}
		    	$("#J_cartTotalPrice").html(data);
		    }
	  });
        
  }
  //选择
function selected(a){
	
	  if($("#d"+a).hasClass("icon-checkbox-selected")){
		  $("#J_selectAll").removeClass("icon-checkbox-selected");
		  $("#d"+a).removeClass("icon-checkbox-selected");
		  totalPrice();
		  selectcount();
		
	  }else{
		
		  $("#d"+a).addClass("icon-checkbox-selected");
		  totalPrice();//调用总价
		  allSelect();
		  selectcount();
		 
		  
	  }
	  
  }
  
 //全选
$("#J_selectAll").click(function(){
      
   if($("#J_selectAll").hasClass("icon-checkbox-selected")){
	   $("#J_selectAll").removeClass("icon-checkbox-selected");
	   $(".item-box").find("i").removeClass("icon-checkbox-selected");
	   initTotalPrice();
	   selectcount();
      }else{
       $("#J_selectAll").addClass("icon-checkbox-selected");
       $("i[id^='d']").addClass("icon-checkbox-selected");
       totalPrice();//调用总价
       selectcount();
      
     }

	
	
});
//单选所有之后全选

function allSelect() {
	var i=true;
	 $("i[id^='d']").each(function(){
		 if(!$(this).hasClass("icon-checkbox-selected")){
			    i=false;
		 }
		
	 });
	 if(i){
	     $("#J_selectAll").addClass("icon-checkbox-selected");
	 }
	
}
//总价初始化
function initTotalPrice(){
	if( $("i[id^='d']").hasClass("icon-checkbox-selected")){
		 totalPrice();
	}else{
		$("#J_cartTotalPrice").html(0);
	}
}
//购物车商品个数
function carCont(){
	
        $.ajax({
			url:"<%=request.getContextPath()%>" + "/cart/getCount",
		    contentType : "application/x-www-form-urlencoded;charset=utf-8",
		    dataType : "json",
		    success : function(data) {
		    	var userid=data[0].userid;
		    	if(userid==""){
		    		return;
		    	}
		    	if(data[0].count==0){
		    		$("#J_nocart").removeClass("hide");
			        $("#J_cartBox").addClass("hide");
		    		$("#J_cartTotalNum").html(0);
		    	}else{
		    		 $("#J_cartTotalNum").html(data[0].count);
				   
		    	}
		    
		    
		    }
	  });
}

//选择的商品数
function selectcount(){
	var i=0;
	 $("i[id^='d']").each(function(){
		 if($(this).hasClass("icon-checkbox-selected")){
			    i+=1;
		 }
		
	 });
	 $("#J_selTotalNum").html(i);
}


  </script>
</body>
</html>