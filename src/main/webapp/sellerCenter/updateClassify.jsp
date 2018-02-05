<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/updateClass.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
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
					<div class="site-category">
						<ul id="J_categoryList" class="site-category-list clearfix">

						</ul>
					</div>
					<div class="modal fade modal-hide  modal-alert in"
						id="J_modalAlert" style="display: block;">
						<div class="modal-bd">
							<div class="text">
								<a style="display: none;" id="realdel_id"></a>
								<h3 id="J_alertMsg">确定删除吗？一级分类删除后,二级分类将失效</h3>
							</div>
							<div class="actions">
								<button class="btn btn-gray" id="J_alertCancel"
									onclick="closedelete()">取消</button>
								<button class="btn btn-primary" id="J_alertOk"
									onclick="realdelete()">确定</button>
							</div>
							<a class="close" href="javascript: void(0);"
								onclick="closedelete()"><i class="iconfont">X</i></a>
						</div>
					</div>
					<div class="modal-backdrop fade in" id="maskdel"
						style="width: 100%; height: 1696px;"></div>
					<div id="mask" class="popup_mask" style="display: none;">
						<div class="bkc"></div>
						<div class="mod_wrap">
							<div id="xxx" class="mod_acc_tip layereditinfo"
								style="display: block;">
								<div class="mod_tip_hd">
									<h4>编辑类别名</h4>
									<a id="close_btn" onclick="editClose()" class="btn_mod_close"
										title=""><span>关闭</span></a>
								</div>
								<div class="mod_tip_bd">
									<form action="" method="">
										<div class="wapbox editbasicinfo">
											<dl class="infobox c_b">
												<dt>类别名：</dt>
												<dd>
													<label class="labelbox err_label"><input
														id="classname" class="nickname" type="text"
														name="nickname" maxlength="20" placeholder=""></label>
												</dd>

											</dl>
											<div class="err_tip empty_name err_tip_independ"
												id="error_edit" style="display: none;"></div>
										</div>
										<div class="tip_btns">
											<a class="btn_tip btn_commom" onclick="submit()" title="保存">保存</a>
											<a class="btn_tip btn_back" onclick="editClose()" title="取消">取消</a>
										</div>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>
	</div>





	<script type="text/javascript">
	$(document).ready(function() {
		loadProductClassfiy();
		closedelete();
	});
	//显示第一个
	function showfirst() {
		$("#showProduct0").addClass("hover");
		$("#showBox0").addClass("show");
	}

			 //加载商品分类
		       function loadProductClassfiy() {
		    	   $.ajax({
						url:"<%=request.getContextPath()%>"+ "/product/showproduct",
						contentType : "application/x-www-form-urlencoded;charset=utf-8",
						dataType : "json",
						success : function(data) {
							var f = "";
							for (var i = 0; i < data.length; i++) {
								var show = data[i];
								for (var j = 0; j < (show.list).length; j++) {
									var shownews = show.list[j];
									var h = "";
									for (var k = 0; k < (shownews.list).length; k++) {
										var showe = shownews.list[k];
										h += "<li><a class='link'><span class='text'>"+showe.product_name+"<span class='cao' onclick='update("+showe.id+")'>修改</span><span class='cao' onclick='del("+showe.id+")'>删除</span></span></a></li>";

									}
									f += "<li class='category-item'>"
											+ "<a class='title' id='showProduct"+j+"'  onclick='showchild("+j+")'>"+ shownews.product_name+ "<span class='cao'onclick='update("+shownews.id+")'>修改</span><span class='cao' onclick='del("+shownews.id+")'>删除</span></a>"
											+ "<div id='showBox"+j+"' class='children clearfix children-col-3'>"
											+ "<ul class='children-list children-list-col children-list-col-1' id='showProduct1"+j+"'>"+h+"</ul></div></li>";

									

								}
								$("#J_categoryList").html(f);
								showfirst();
							}
						}

					});
		}
       
        //删除
        var delid;
        function del(b){
            delid=b;
        	showdelete();
        	
        }
        function realdelete(){
        	var id=delid;
        	$.ajax({
        		url:"<%=request.getContextPath()%>"+ "/product/deleteClass",
				contentType : "application/x-www-form-urlencoded;charset=utf-8",
				data:{
					id:id
				},
				dataType : "text",
				success : function(data) {
					loadProductClassfiy();
					closedelete();
				}
        		
        	});
        	
        	
        }
        //修改
        var upid;
        function update(a){
        	upid=a;
        	editUser();
        }
        function submit() {
        	var id=upid;
        	var product_name=$("#classname").val();
        	if(product_name==""){
        		alert("不能为空!");
        	}
        	$.ajax({
        		url:"<%=request.getContextPath()%>"+ "/product/updateClass",
				contentType : "application/x-www-form-urlencoded;charset=utf-8",
				data:{
					product_name:product_name,
					id:id
				},
				dataType : "text",
				success : function(data) {
					loadProductClassfiy();
					editClose();
				}
        		
        	});
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
        //点击
		function showchild(a){
			$(".title").each(function(){
				if($(this).hasClass("hover")){
					$(this).removeClass("hover");
				}
			})
			$("div[id^='showBox']").each(function(){
				if($(this).hasClass("show")){
					$(this).removeClass("show");
				}
			});
			$("#showProduct"+a).addClass("hover");
			 $("#showBox"+a).addClass("show");
		}
        //显示修改框
		function editUser() {
			$("#classname").val("");
			$("#mask").css("display", "block");

		}
		function editClose() {
			$("#classname").val("")
			$("#error_edit").css("display", "none");
			$("#mask").css("display", "none");
		}
	</script>
</body>
</html>