<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/orderAdm.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/easyui/themes/black/easyui.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/easyui/themes/icon.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
<script src="<%=request.getContextPath()%>/easyui/jquery.easyui.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/easyui/locale/easyui-lang-zh_CN.js" type="text/javascript" charset="utf-8"></script>
</head>
<script type="text/javascript">

$(document).ready(function(){

	$('#sableTime').datetimebox({    
		
	     showSeconds: true   
	}); 
	$('#eableTime').datetimebox({    
	   showSeconds: true   
	}); 

	
});

</script>
<body>
<%@include file="../part/sellerheader.jsp"%>
	<div class="breadcrumbs">
		<div class="container">
			<a href="">首页</a><span class="sep">&gt;</span><span>卖家中心</span><span
				class="sep">&gt;</span><span>修改分类</span>
		</div>
	</div>
	<div class="page-main user-main">
		<div class="container">
			<div class="row">
				<%@include file="../part/sellerSpan.jsp"%>
				<div class="span16">
				    <div>
				       	 <div class="inputdiv">
							<a class="dt">买家账号:</a>
						   <input class="yinput" type="text" id="userid" value="" name="userid" />
						 </div>
						 <div class="inputdiv">
							<a class="dt">宝贝名称:</a>
						   <input class="yinput" type="text" id="newsName" value="" name="newsName" />
						 </div>
						 <div class="inputdiv">
							<a class="dt">订单状态:</a>
							<div class="yin_select">
							   <select name="" id="isdeal">
							     <option value="" selected>全部</option>
				                <option value="等待支付">等待支付</option>
				                <option value="已关闭">已关闭</option>
		                   </select>
							</div>
						
						 </div>
						 <div class="inputdiv">
							<a class="dt">下单时间:</a>
						    <input   id="sableTime"  type= "text"    />--<input  id="eableTime"  type= "text"  />
						 </div>
				        <div class="inputdiv">
							<a class="btn2" onclick="selectUser()">搜索订单</a>
						</div>
				    </div>
				</div>

			</div>
		</div>
	</div>
	<div class="showList" style="display:none;">
	     <div class="close" onclick="hideList()">X</div>
	     <table id="goodsDataGrid" class="gridtable" border=""  cellpadding="10"></table>
	</div>
	<div id="mask" class="popup_mask" style="display:none;">
    <div class="bkc"></div>
    <script type="text/javascript">
$(document).ready(function(){
	
});
function showList(){
	$(".showList").slideDown();
	$("#mask").show();
}
function hideList(){
	$(".showList").slideUp();
	$("#mask").slideUp();
	$("#goodsDataGrid").html("");
}
function selectUser(){
	showList();
	var isdeal=$("#isdeal").val();
	var userid=$("#userid").val();
	var start=$("#sableTime").val();
	var end=$("#eableTime").val();
	var newsName=$("#newsName").val();
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/order/admlaodOrder",
		data:{
			isdeal:isdeal,
			userid:userid,
			startTime:start,
			endTime:end,
			newsName:newsName
		},
	    contentType: "application/x-www-form-urlencoded;charset=utf-8",
	    dataType: "json",
	    success: function(data){
	       	var t="<tr><th>订单编号</th><th>用户账号</th><th>收货地址/收货人</th><th>商品</th><th>订单金额</th><th>下单时间</th><th>订单状态</th><th>谨慎操作</th></tr>"
	 	       for (var i = 0; i < data.length; i++) {
	 	    	    var show=data[i];
	 	    	    var a="";
	 	    	    var orderGoodsId="";
	 	    	   for (var j= 0; j < (show.list).length; j++) {
	 	    		   var showGoods=show.list[j];
	 	    		  orderGoodsId+=showGoods.id+",";
	 				   a+="<a>ID:"+showGoods.id+"&nbsp"+showGoods.newsName+"X"+showGoods.orderCount+"</a></br>";
	 			   }
	 	    	   
	 	    	   
	 			   t+="<tr><td>"+show.orderNumber+"</td><td>"+show.userid+"</td><td>"+show.province+"&nbsp"+show.city+"&nbsp"
	 			   +show.area+"&nbsp"+show.addressee+"</td><td>"+a+"</td><td>"+show.totalPrice
	 			   +"元</td><td>"+show.createtime+"</td><td>"+show.isdeal+"</td><th><div class='btnnn'><a onclick='deleteg(\""+orderGoodsId+"\")' class='btn5'>失效</a><a class='btn5 save' onclick='save()'>保存</a><div></th></tr>";
	 		    }	
	 	      $("#goodsDataGrid").html(t);
	    }
	   });
}
//失效订单
function deleteg(a){
	alert(11);
	var OrderIdlist=a;
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/order/closeOrder",
	    contentType : "application/x-www-form-urlencoded;charset=utf-8",
	    dataType : "json",
	    data:{
	    	OrderIdlist:OrderIdlist
	    },
	    success : function (data) {
	    	selectUser();
	    }
		
		
		
		
	});
	
}



</script>
</body>
</html>