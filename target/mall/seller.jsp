<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
              商品
		<input type="text" id="newsName" value="" name="newsName"/>
	     </br>
	       原价格
		<input type="text" id="oldPrice" value="" name="oldPrice" />
		 </br>
		价格
		<input type="text" id="price" value="" name="price" />
		 </br>
		描述
		<input type="text" id="descr" value="" name="descr" />
		
		 </br>
		库存
		<input type="text" id="amount" value="" name="amount" />
		 </br>
		出产商
		<input type="text" id="producer" value="" name="producer"/>
		 </br>
		商品分类
		<select name="classifyCode" id="classifyCode">
			<option value="p1">手机</option>
			<option value="p2">电脑</option>
			<option value="p3">衣服</option>
			<option value="p4">美食</option>
		</select>
		</br>
		<input type="button" id="" value="上传" onclick="f1()">
		</br>
		 图片
		 <input type="file" name="file" id="pictures" value=""  /><input type="button" value="上传图片" onclick="img()">
		 </br>
		 这是本商品的第几张图片<input type="text" id="orderBy" value="" />
		 
		<script type="text/javascript">
		var code;
		function img(){
			var orderBy=$("#orderBy").val();
			if(orderBy==""){
				alert("请填图片序号!");				
				return;
			}
			 var formData = new FormData();
			 formData.append("file",$("#pictures")[0].files[0]);
			 formData.append("code",code);
			 formData.append("orderBy",orderBy);
				$.ajax({
					type:"post",
					url:"<%=request.getContextPath()%>" + "/subImgs/addimg",
					enctype:"multipart/form-data",
					data:formData,
				    contentType: false,
				    processData: false,
				    dataType: "text",
				    success :function(data){
				    	alert("succeed");
				    }
					
				});
			
			
		}
		
		  function f1() {
			  var newsName=$("#newsName").val();
			  if(newsName==""){
				  return;
			  }
			  var oldPrice=$("#oldPrice").val();
			  if(oldPrice==""){
				  return;
				  
			  }
			  var price=$("#price").val();
			  if(price==""){
				  return;
			  }
			  var descr=$("#descr").val();
			  if(descr==""){
				  return;
			  }
			  
			  var amount=$("#amount").val();
			  if(amount==""){
				  return;
			  }
			  var producer=$("#producer").val();
			  if(producer==""){
				  return;
			  }
			  var classifyCode=$("#classifyCode").val();
			  if(classifyCode==""){
				  return;
			  }
			$.ajax({
				url:"<%=request.getContextPath()%>" + "/productnews/addNews",
				data:{
			    	newsName:newsName,
			    	oldPrice:oldPrice,
			    	price:price,
			    	descr:descr,
			    	amount:amount,
			    	producer:producer,
			    	classifyCode:classifyCode
			    },
			    contentType: "application/x-www-form-urlencoded;charset=utf-8",
			    dataType: "text",
			    success :function(data){
			    	if(data==1){
			    		alert("失败!");
			    	}
			    	code=data;
			        
			    }
				
			});
		}
		
		
		
		</script>
</body>
</html>