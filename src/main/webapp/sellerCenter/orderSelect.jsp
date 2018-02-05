<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/easyui/themes/black/easyui.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/easyui/themes/icon.css" />
<script src="<%=request.getContextPath()%>/easyui/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/easyui/jquery.easyui.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=request.getContextPath()%>/easyui/locale/easyui-lang-zh_CN.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#sallAbleTime').datetimebox({    
	      showSeconds: true   
	}); 
	$('#eallAbleTime').datetimebox({    
	    showSeconds: true   
	}); 
	$('#sallUnableTime').datetimebox({    
	      showSeconds: true   
	}); 
	$('#eallUnableTime').datetimebox({    
	      showSeconds: true   
	}); 
	$('#sableTime').datetimebox({    
	     showSeconds: true   
	}); 
	$('#eableTime').datetimebox({    
	   showSeconds: true   
	}); 
	$('#sunableTime').datetimebox({    
	    showSeconds: true   
	}); 
	$('#eunableTime').datetimebox({    
	   showSeconds: true   
	}); 
	
});

</script>
</head>
<body>
<a onclick="selectUser(1)">查询用户有效订单</a>用户账号:<input type="text" id="userid" value="" />开始时间:<input  id="sableTime"  type= "text" />结束时间:<input  id="eableTime"  type= "text"  />
</br>
<a onclick="selectUser(2)">查询用户关闭订单</a>用户账号:<input type="text" id="cuserid" value="" />开始时间:<input  id="sunableTime"  type= "text"  />结束时间:<input  id="eunableTime"  type= "text" />
</br>
<table id="goodsDataGrid" class="gridtable" border=""  cellpadding="10"></table>
<script type="text/javascript">
$(document).ready(function(){
	
});

function selectUser(a){
	var isdeal="";
	var userid="";
	var start;
	var end;
	if(a==1){
		isdeal="等待支付";
		userid=$("#userid").val();
		start=$("#sableTime").val();
		end=$("#eableTime").val();
	}else if(a==2){
		isdeal="已关闭";
		userid=$("#cuserid").val();
		start=$("#sunableTime").val();
		end=$("#eunableTime").val();
	}
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/order/admlaodOrder",
		data:{
			isdeal:isdeal,
			userid:userid,
			startTime:start,
			endTime:end
		},
	    contentType: "application/x-www-form-urlencoded;charset=utf-8",
	    dataType: "json",
	    success: function(data){
	       	var t="<tr><th>订单编号</th><th>用户账号</th><th>收货地址/收货人</th><th>商品</th><th>订单金额</th><th>下单时间</th><th>订单状态</th><th>谨慎操作</th></tr>"
	 	       for (var i = 0; i < data.length; i++) {
	 	    	    var show=data[i];
	 	    	    var a="";
	 	    	   for (var j= 0; j < (show.list).length; j++) {
	 	    		   var showGoods=show.list[j];
	 				   a+="<a>ID:"+showGoods.id+"&nbsp"+showGoods.newsName+"X"+showGoods.orderCount+"</a></br>";
	 			   }
	 	    	   
	 	    	   
	 			   t+="<tr><td>"+show.orderNumber+"</td><td>"+show.userid+"</td><td>"+show.province+"&nbsp"+show.city+"&nbsp"
	 			   +show.area+"&nbsp"+show.addressee+"</td><td>"+a+"</td><td>"+show.totalPrice
	 			   +"元</td><td>"+show.createtime+"</td><td>"+show.isdeal+"</td><th><a onclick='delete()'>失效</a><a onclick='save()'>保存</a></th></tr>";
	 		    }	
	 	      $("#goodsDataGrid").html(t);
	    }
	   });
}




</script>
</body>
</html>