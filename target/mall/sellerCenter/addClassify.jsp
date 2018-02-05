<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/addClassify.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
<%@include file="../part/sellerheader.jsp"%>
	<div class="breadcrumbs">
		<div class="container">
			<a href="">首页</a><span class="sep">&gt;</span><span>卖家中心</span><span
				class="sep">&gt;</span><span>添加分类</span>
		</div>
	</div>
	<div class="page-main user-main">
		<div class="container">
			<div class="row">
			<%@include file="../part/sellerSpan.jsp"%>
				<div class="span16">
				   <div class="yin_context">
                   <div class="headt"><a class="dt onebtn" onclick="addf()">添加一级分类<a><a class="dt twobtn" onclick="addt()"> 添加二级分类<a></div>
				   <div class="addone">
				     <div class="oneCon">
				      <div class="yin_addone">
				        
				          <a class="dt">添加一级分类：<a>
						  <input class="input" type="text" id="product_name"name="product_name" />
						  </br>
						  <a class="btn2" onclick="addone()">添加</a>
				        
				        </div>
					     
				      </div>
				   </div>
				   <div class="addtwo">
				   <div  class="oneCon">
				        <div >
						   <a class="dt dd"> 请选择一级分类:<a>
						     <div class="yin_select">
						        <select name=""id="showClassify"></select>
						     </div>
					  </div>
					 <div class="yin_addtwo">
					       <a class="dt"> 添加二级分类：<a>
						   <input class="input" type="text" id="child_name" name="product_name" />
						    </br>
						   <a class="btn2"  onclick="addtwo()" >添加</a>
					 
					 </div>	    
				   
				   </div>
				    
				   </div>
				</div>
			   </div>

			</div>
		</div>
	</div>
	<script type="text/javascript">
    $(document).ready(function(){
    	loadOne();
    	$(".onebtn").addClass("active");
    	
    	
    });
    function addf() {
    	$(".onebtn").addClass("active");
    	$(".twobtn").removeClass("active");
    	$(".addtwo").hide();
		$(".addone").show();
	}
    function addt() {
    	$(".onebtn").removeClass("active");
    	$(".twobtn").addClass("active");
    	$(".addone").hide();
		$(".addtwo").show();
	}
    //添加一级分类
    function addone(){
    	var productname=$("#product_name").val();
    	if(productname==""){
    		alert("不能为空！");
    		return;
    	}
      $.ajax({
    	  url:"<%=request.getContextPath()%>" + "/product/addClassify",
		    contentType : "application/x-www-form-urlencoded;charset=utf-8",
		    dataType : "text",
		    data:{
		    	product_name:productname
		    },
		    success : function(data) {
		    	if(data==1){
		    		alert("已存在!");
		    		return;
		    	}
		    	$("#product_name").val("");
		    	loadOne();
		    	alert("添加成功");
		    }
         });
    	
    	
    }
    //添加二级分类
    function addtwo() {
		var parentcode= $("#showClassify").val();
		if(parentcode==""){
			alert("请选择分类!");
			return;
			
		}
		var productname=$("#child_name").val();
    	if(productname==""){
    		alert("不能为空！");
    		return;
    	}
    	 $.ajax({
          	  url:"<%=request.getContextPath()%>" + "/product/addChild",
      		    contentType : "application/x-www-form-urlencoded;charset=utf-8",
      		    dataType : "text",
      		    data:{
      		    	parentcode:parentcode,
      		    	product_name:productname
      		    },
      		    success : function(data) {
      		  	    if(data==1){
		    		   alert("已存在!");
		    		return;
		    	   }
      		  	$("#child_name").val("")
      		    	alert("succeed");
      		    	
      		    }
              });
    	
    	
    	
	}
    //加载一级分类
    function loadOne(){
    	 $.ajax({
       	  url:"<%=request.getContextPath()%>"+ "/product/showproduct",
						contentType : "application/x-www-form-urlencoded;charset=utf-8",
						dataType : "json",
						success : function(data) {
							var show = data[0].list;
							var h = "";
							for (var i = 0; i < show.length; i++) {
								h += "<option value="+show[i].code+">"
										+ show[i].product_name + "</option>";

							}
							$("#showClassify").html(h);
						}
					});

		}
	</script>
</body>
</html>