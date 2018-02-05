<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/seller2.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
<link href="<%= request.getContextPath()%>/umeditor/themes/default/css/umeditor.css"type="text/css" rel="stylesheet"> 
    <script type="text/javascript" src="<%= request.getContextPath()%>/umeditor/third-party/jquery.min.js"></script>  
    <script type="text/javascript" src="<%= request.getContextPath()%>/umeditor/third-party/template.min.js"></script>  
    <script type="text/javascript" charset="utf-8" src="<%= request.getContextPath()%>/umeditor/umeditor.config.js"></script>  
    <script type="text/javascript" charset="utf-8" src="<%= request.getContextPath()%>/umeditor/umeditor.min.js"></script>  
    <script type="text/javascript" src="<%= request.getContextPath()%>/umeditor/lang/zh-cn/zh-cn.js"></script>
	
</head>
<body>
<%@include file="../part/sellerheader.jsp"%>
		 <div class="breadcrumbs">
		<div class="container">
			<a href="">首页</a><span class="sep">&gt;</span><span>卖家中心</span><span
				class="sep">&gt;</span><span>发布宝贝</span>
		</div>
	</div>
	<div class="page-main user-main" style="padding-bottom: 500px;">
		<div class="container">
			<div class="row">
			<%@include file="../part/sellerSpan.jsp"%>
				<div class="span16">
					<div class="yin_context">
<!-- 					选项 -->
					<div class="yin_contextdiv"  style="width:415px; margin: 0 auto;"><a class="dt onebtn" onclick="addf()">发布宝贝<a><a class="dt twobtn" onclick="addt()">上传图片<a></div>
					<div id="left">
					   	<div class="left" class="yin_contextdiv">
					  <div class="yin_contextdiv">
							<a class="dt">商品:</a> <input class="yinput" type="text"
								id="newsName" value="" name="newsName" />
						</div>

						<div class="yin_contextdiv">
							<a class="dt">原价:</a> <input class="yinput" type="text"
								id="oldPrice" value="" name="oldPrice" />
						</div>

						<div class="yin_contextdiv">
							<a class="dt">现价:</a> <input class="yinput" type="text"
								id="price" value="" name="price" />
						</div>

						<div class="yin_contextdiv">
							<a class="dt">描述:</a> <input class="yinput" type="text"
								id="descr" value="" name="descr" />
						</div>


						<div class="yin_contextdiv">
							<a class="dt">库存:</a> <input class="yinput" type="text"
								id="amount" value="" name="amount" />
						</div class="yin_contextdiv">

						<div class="yin_contextdiv">
							<a class="dt">出产商:</a> <input class="yinput" type="text"
								id="producer" value="" name="producer" />
						</div class="yin_contextdiv">
                    
						<div class="yin_contextdiv" style="width:312px">
							<a class="dt">商品分类:</a><select name="classifyCode"
								id="classifyCode" onchange="showsecond()">

							</select> <select name="classifyCode" id="classifychildCode"
								style="display: none">

							</select>
						</div>
 
						<div class="yin_contextdiv">
							<input class="btn2 btnr btf" type="button" id="" value="发布" onclick="f1()">
						</div>
				
					</div>
                     	     <!-- 富文本 -->
					  <div class="mid" style="width:900px; height:335px;">
					
					    <script type="text/plain"  id="myEditor"style="width:900px;height:300px;"></script> 
					  
					  	
					  </div>
					
					</div>
				
						 <div  class="right">
					       <a class="dt1" style="margin-left:79px;margin-bottom: 10px;margin-top:50px;">请选择商品:</a> 
						   <div  class="selectGoods" style="width:460px;	height:50px;margin-left: 78px;margin-top: 15px">
						      <select name="classifyCode" id="classifyCode2" onchange="showsecond2()"></select>
						      <select name="classifyCode" id="classifychildCode2" onchange="showsecondchildren()"	style="display: none"></select>
						      <select name="classifyCode" id="classifychildchildCode2" style="display: none"></select>
					      </div>
						
							<a class="dt" style="margin-left:79px;margin-bottom: 10px;margin-top:50px;">请上传图片:</a> 
							<div class="subimg">
							   <input class="yinput" type="file"name="file" id="pictures1" value="" /> <a class="yin_het"><span style="display:none;" id="img1">0</span>:首页处</a>
							<input class="btn2" type="button" value="上传图片" onclick="img(1)"> 
							</div>
						   <div  class="subimg">
							   <input class="yinput" type="file"name="file" id="pictures2" value="" /> <a class="yin_het het2"><span style="display:none;" id="img2">1</span>:详情页处</a>
							<input class="btn2" type="button" value="上传图片" onclick="img(2)"> 
							</div>
						
                        </div>
					


					</div>

				</div>

			</div>
		</div>
	</div>
	  <script type="text/javascript">  
		      var um = UM.getEditor('myEditor');
          </script>
		<script type="text/javascript">
			$(document).ready(function() {
				loadOne();
				$(".onebtn").addClass("active");
			});
		    function addf() {
		    	$(".onebtn").addClass("active");
		    	$(".twobtn").removeClass("active");
		    	$(".right").hide();
				$("#left").show();
			}
		    function addt() {
		    	$(".onebtn").removeClass("active");
		    	$(".twobtn").addClass("active");
		    	$("#left").hide();
				$(".right").show();
			}
			//加载一级分类
			function loadOne() {
				$.ajax({
							url : "<%=request.getContextPath()%>"+ "/product/showproduct",
							contentType : "application/x-www-form-urlencoded;charset=utf-8",
							dataType : "json",
							success : function(data) {
								var show = data[0].list;
								var h = "<option>请选择</option>";
								for (var i = 0; i < show.length; i++) {
									h += "<option value="+show[i].code+">"
											+ show[i].product_name + "</option>";

								}
								$("#classifyCode").html(h);
								$("#classifyCode2").html(h);
							}
						});

			}
		 //加载对应的二级分类
         function showsecond(){
	       var parentcode=$("#classifyCode").val();
	       $.ajax({
		       	  url:"<%=request.getContextPath()%>"+ "/product/selectSecond",
								contentType : "application/x-www-form-urlencoded;charset=utf-8",
								dataType : "json",
								data:{
									parentcode:parentcode
								},
								success : function(data) {
									var b="<option>请选择</option>";
									for (var i = 0; i < data.length; i++) {
										b+="<option value="+data[i].code+">"
										+ data[i].product_name + "</option>";;
										
									}
									$("#classifychildCode").html(b);
									$("#classifychildCode").show();
								}
							});

				}
		 //图片处的商品加载
         function showsecond2(){
  	       var parentcode=$("#classifyCode2").val();
  	       $.ajax({
  		       	  url:"<%=request.getContextPath()%>"+ "/product/selectSecond",
  								contentType : "application/x-www-form-urlencoded;charset=utf-8",
  								dataType : "json",
  								data:{
  									parentcode:parentcode
  								},
  								success : function(data) {
  									var b="<option>请选择</option>";
  									for (var i = 0; i < data.length; i++) {
  										b+="<option value="+data[i].code+">"
  										+ data[i].product_name + "</option>";;
  										
  									}
  									$("#classifychildCode2").html(b);
  									$("#classifychildCode2").show();
  								}
  							});

  				}
         //加载商品
		 function showsecondchildren() {
        	  var parentcode=$("#classifychildCode2").val();
     	       $.ajax({
     		       	  url:"<%=request.getContextPath()%>"+ "/productnews/showUpdate",
     								contentType : "application/x-www-form-urlencoded;charset=utf-8",
     								dataType : "json",
     								data:{
     									classifyTwoCode:parentcode
     								},
     								success : function(data) {
     									var b="<option>请选择</option>";
     									var list=data[0].upadtelist
     									for (var i = 0; i < list.length; i++) {
     										b+="<option value="+list[i].code+">"
     										+ list[i].newsName + "</option>";;
     										
     									}
     									$("#classifychildchildCode2").html(b);
     									$("#classifychildchildCode2").show();
     								}
     							});
		}
	       
// 		上传图片
		
		function img(a){
			var newsCode=$("#classifychildchildCode2").val();
			var type=$("#img"+a).text();
			if(type==""){
				alert("请选择图片位置!");				
				return;
			}
			 var formData = new FormData();
			 formData.append("file",$("#pictures"+a)[0].files[0]);
			 formData.append("code",newsCode);
			 formData.append("type",type);
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
		//上传宝贝
		  function f1() {
			  var newsName=$("#newsName").val();
			  if(newsName==""){
				  return;
			  }
			  var oldPrice=$("#oldPrice").val();
		
			  var price=$("#price").val();
			  if(price==""){
				  return;
			  }
			  var descr=$("#descr").val();
		
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
			  var classifyTwoCode=$("#classifychildCode").val();
			  if(classifyTwoCode==""){
				  return;
			  }
			  var ddescr=$("#myEditor").html();
			  var dddescr=$("#myEditor").text();
			  if(dddescr==""){
				  
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
			    	classifyCode:classifyCode,
			    	classifyTwoCode:classifyTwoCode,
			    	detailDescr:ddescr
			    },
			    contentType: "application/x-www-form-urlencoded;charset=utf-8",
			    dataType: "text",
			    success :function(data){
			    	if(data==1){
			    		alert("失败!");
			    		return;
			    	}
			    	$("#newsName").val("");
					
					 $("#oldPrice").val("");
				
					  $("#price").val("");
					
					  $("#descr").val("");
				
					  $("#amount").val("");
					
					  $("#producer").val("");
					
				   
			    	alert("succeed");
			    	
			        
			    }
				
			});
		}

		
		
		</script>
</body>
</html>