
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<script type="text/javascript">
	
	$(document).ready(function(){
		 var h;
		 var e;
			$.ajax({
				url:"<%=request.getContextPath()%>" + "/product/showproduct",
			contentType : "application/x-www-form-urlencoded;charset=utf-8",
			dataType : "json",
			success : function(data) {

				for (var i = 0; i < data.length; i++) {
					var show = data[i];
					for(var j = 0; j < (show.list).length;j++){
						var shownews= show.list[j];

						e+="<h1>"+shownews.product_name+"</h1>";
						for(var k = 0; k < (shownews.list).length; k++){
							var  showe =  shownews.list[k];

							h+="<li>"+showe.product_name+"</li>";
							
							}
						$("#ul").html(h);
						
					 }
			
					$("#div").html(e);
					}
	             }

			});
	});
	function f1() {
		window.location.href = "<%=request.getContextPath()%>/updateuser.jsp";

	}
</script>
<body>
<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>
	<h2>Y supermarket</h2>
	<a onclick="f1()">账号管理</a>
	<div>
		<div id="div">
		    <ul id="ul">
		     <li>
		         <a></a>
		         <div>
		             <ul>
		                 <li>
		                     <a>
		                       <span></span>
		                     </a>
		                 </li>
		             </ul>
		         </div>
		     </li>
		    
		    
		    
		    
		 </ul>
		 </div>
	</div>
</body>
</html>