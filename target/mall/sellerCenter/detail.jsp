<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/detail.css" />
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
					 <div  class="right">
					       <a class="dt1" style="margin-left:79px;margin-bottom: 10px;margin-top:50px;">请选择商品:</a> 
						   <div  class="selectGoods" style="width:460px;	height:50px;margin-left: 78px;margin-top: 15px">
						      <select name="classifyCode" id="classifyCode2" onchange="showsecond2()"></select>
						      <select name="classifyCode" id="classifychildCode2" onchange="showsecondchildren()"	style="display: none"></select>
						      <select name="classifyCode" id="classifychildchildCode2" style="display: none"></select>
					      </div>
					 </div>
					 <div class="futext">
					      <script type="text/plain"  id="myEditor"style="width:900px;height:300px;"></script> 
					 </div>
					   
                       <a onclick="save()" class="btn3">保存</a>

					</div>

				</div>

			</div>
		</div>
	</div>
	<script type="text/javascript">  
		      var um = UM.getEditor('myEditor');
          </script>
	<script type="text/javascript">
	$(document).ready(function(){
		loadOne();
	});
	function save() {
		var id=$("#classifychildchildCode2").val();
		var detailDescr=$("#myEditor").html();
		var d=$("#myEditor").text();
		if(id==""){
			alert("请选择商品");
		}
		if(d==""){
			alert("请填写修改内容");
		}
		$.ajax({
			url : "<%=request.getContextPath()%>"+ "/productnews/updateGoods",
			type:"post",
			contentType : "application/x-www-form-urlencoded;charset=utf-8",
			dataType : "json",
			data:{
				id:id,
				detailDescr:detailDescr
			},
			success : function(data) {
				$("#myEditor").text("");
				alert("success");
			}
		});
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
						
						$("#classifyCode2").html(h);
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
										b+="<option value="+list[i].id+">"
										+ list[i].newsName + "</option>";
									}
									$("#classifychildchildCode2").html(b);
									$("#classifychildchildCode2").show();
								}
							});
	}
	
	</script>
</body>
</html>