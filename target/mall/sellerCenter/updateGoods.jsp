<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/updateGoods.css" />
</head>
<body>
<%@include file="../part/sellerheader.jsp"%>
 <div class="breadcrumbs">
		<div class="container">
			<a href="">首页</a><span class="sep">&gt;</span><span>卖家中心</span><span
				class="sep">&gt;</span><span>修改宝贝</span>
		</div>
	</div>
	<div class="page-main user-main">
		<div class="container">
			<div class="row">
			<%@include file="../part/sellerSpan.jsp"%>
				<div class="span16">
					<a class="dt">查询宝贝</a>
					 </br>
					<a class="btn3" onclick="sall(1,3)">查询全部</a>
					<a class="dt">条件查询:</a>
				    <select name="classifyCode" id="classifyCode" onchange="showsecond()"></select>
				    <select name="classifyCode" id="classifychildCode"style="display: none" onchange="showdata(1,3)"></select>
					<table id="goodsDataGrid" class="gridtable" border=""  cellpadding="10">


					</table>
					<div class="xm-pagenavi" id="pageNumber">
						
						
					</div>
				</div>

			</div>
		</div>
	</div>

	<script type="text/javascript">

		$(document).ready(function(){
			loadOne();
			
			
		});
// 		查询全部商品
     function sall(page,rows){
	    var indexPage=page;
    	 $.ajax({
			 url:"<%=request.getContextPath()%>"+ "/productnews/showUpdate",
				contentType : "application/x-www-form-urlencoded;charset=utf-8",
				dataType : "json",
				data:{
					page:page,
					rows:rows
				},
				success : function(data) {
				 var h="<tr><th>ID</th><th>商品名</th><th>原价</th><th>现价</th><th>描述</th><th>库存</th><th>厂家</th><th>状态</th><th>标签</th>"
				 +"<th>操作</th></tr>";
				
				 for (var i = 0; i < data[0].upadtelist.length; i++) {
					 var indexs=data[0].pageNumber;
	       		     
					 var datad=data[0].upadtelist[i];
					 var s1="";
					 var s2="";
					 var b="";
					 if(datad.iseffect==0){
						 s2="selected";
					 }else{
						 s1="selected";
					 }
					h+="<tr><th id='Id"+i+"'>"+datad.id+"</th><th><input type='text' id='newsName"+i+"' value="+datad.news_name+" /></th><th><input type='text' id='oldPrice"+i+"' value='"+datad.oldPrice+"' /></th><th><input type='text' id='price"+i+"' value='"+datad.price+"' /></th><th><input type='text' id='descr"+i+"' value='"+datad.descr+"' /></th><th><input type='text' id='amount"+i+"' value='"+datad.amount+"' /></th><th>"
					+"<input type='text' id='producer"+i+"' value="+datad.producer+" /></th>"
					+"<th><select name='' id='iseffect"+i+"'><option value='1' "+s1+">在售</option><option value='0' "+s2+">下架</option>"
					+"</select></th><th><input type='text' id='keyType"+i+"' value="+datad.keyType+" /></th><th><a class='btn2'  onclick='deleteGoods("+datad.id+")'>删除</a><a class='btn2 save' onclick='save("+i+")'>保存</a></th>";
				}
				 $("#goodsDataGrid").html(h);
				 var last = Math.ceil(data[0].total / rows);
				  b+="<span onclick='sall("+(indexPage == 1 ? 1 : indexPage - 1)+",3)' class='numbers first iconfont'> < </span>";
	       		    for (var i = 0; i < indexs.length; i++) {
	       		     b+="<a class='numbers'   onclick='sall("+indexs[i]+",3)'>"+indexs[i]+"</a>";
					}
	       		 
	       		    b+="<a onclick='sall("+(indexPage == last ? last : indexPage + 1)+",3)' class='numbers last iconfont'  onclick=''>></a>";
	       		    $("#pageNumber").html(b)
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
								var h = "<option>请选择</option>";
								for (var i = 0; i < show.length; i++) {
									h += "<option value="+show[i].code+">"
											+ show[i].product_name + "</option>";

								}
								$("#classifyCode").html(h);
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
		//显示查询数据
		function showdata(page,rows){
			 var indexPage=page;
			var code=$("#classifychildCode").val();
			if(code==""){
				alert("未选择!");
			}
			$.ajax({
				 url:"<%=request.getContextPath()%>"+ "/productnews/showUpdate",
					contentType : "application/x-www-form-urlencoded;charset=utf-8",
					dataType : "json",
					data:{
						classifyTwoCode:code
					},
					success : function(data) {
						 var h="<tr><th>ID</th><th>商品名</th><th>原价</th><th>现价</th><th>描述</th><th>库存</th><th>厂家</th><th>状态</th><th>标签</th>"
							 +"<th>操作</th></tr>";
							
							 for (var i = 0; i < data[0].upadtelist.length; i++) {
								 var indexs=data[0].pageNumber;
				       		     
								 var datad=data[0].upadtelist[i];
								 var s1="";
								 var s2="";
								 var b="";
								 if(datad.iseffect==0){
									 s2="selected";
								 }else{
									 s1="selected";
								 }
								h+="<tr><th id='Id"+i+"'>"+datad.id+"</th><th><input type='text' id='newsName"+i+"' value="+datad.news_name+" /></th><th><input type='text' id='oldPrice"+i+"' value='"+datad.oldPrice+"' /></th><th><input type='text' id='price"+i+"' value='"+datad.price+"' /></th><th><input type='text' id='descr"+i+"' value='"+datad.descr+"' /></th><th><input type='text' id='amount"+i+"' value='"+datad.amount+"' /></th><th>"
								+"<input type='text' id='producer"+i+"' value="+datad.producer+" /></th>"
								+"<th><select name='' id='iseffect"+i+"'><option value='1' "+s1+">在售</option><option value='0' "+s2+">下架</option>"
								+"</select></th><th><input type='text' id='keyType"+i+"' value="+datad.keyType+" /></th><th><a class='btn2'  onclick='deleteGoods("+datad.id+")'>删除</a><a class='btn2 save' onclick='save("+i+")'>保存</a></th>";
							}
							 
							 $("#goodsDataGrid").html(h);
							 var last = Math.ceil(data[0].total / rows);
							  b+="<span onclick='showdata("+(indexPage == 1 ? 1 : indexPage - 1)+",3)' class='numbers first iconfont'> < </span>";
				       		    for (var i = 0; i < indexs.length; i++) {
				       		     b+="<a class='numbers'   onclick='showdata("+indexs[i]+",3)'>"+indexs[i]+"</a>";
								}
				       		 
				       		    b+="<a onclick='showdata("+(indexPage == last ? last : indexPage + 1)+",3)' class='numbers last iconfont'  onclick=''>></a>";
				       		    $("#pageNumber").html(b);
					}
				});
			
			
		}
		//删除商品
		function deleteGoods(a) {
			$.ajax({
				
				url:"<%=request.getContextPath()%>"+ "/productnews/deleteGoods",
				contentType : "application/x-www-form-urlencoded;charset=utf-8",
				dataType : "text",
				data:{
					id:a
				},
				success : function(data) {
					if(data==1){
						 alert(" delete succeed!");
						 return
					}
				  alert(" delete fail!")
				}
			});
		}
	   //修改商品
	    function save(a){
		   var id=$("#Id"+a).text();
		   var iseffect=$("#iseffect"+a).val();
		   var newsName=$("#newsName"+a).val();
		   var oldPrice=$("#oldPrice"+a).val();
		   var price=$("#price"+a).val();
		   var descr=$("#descr"+a).val();
		   var amount=$("#amount"+a).val();
		   var producer=$("#producer"+a).val();
		   var keyType=$("#keyType"+a).val();
		   $.ajax({
				
				url:"<%=request.getContextPath()%>"+ "/productnews/updateGoods",
				contentType : "application/x-www-form-urlencoded;charset=utf-8",
				dataType : "text",
				data:{
					iseffect:iseffect,
					id:id,
					newsName:newsName,
					oldPrice:oldPrice,
					price:price,
					descr:descr,
					amount:amount,
					producer:producer,
					keyType:keyType
				},
				success : function(data) {
					if(data==1){
						 alert(" update succeed!");
						 return
					}
				  alert(" update fail!")
				}
			});
		   
	   }
		 </script>
</body>
</html>