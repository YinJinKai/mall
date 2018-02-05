<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/search.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
	<body>
	     <%@include file="part/header.jsp"%>
		<div class="content">
			<div class="container">
				<div class="order-list-box clearfix">
					<ul class="order-list">
						<li class="active first">
							<a href=""  onclick="">推荐</a>
						</li>
						<li>
							<a href=""  onclick="">新品</a>
						</li>
						<li class="up">
							<a href=""  onclick="">价格 <i class="iconfont">↑</i></a>
						</li>
						<li>
							<a href=""  onclick="">评论最多</a>
						</li>
					</ul>
					<ul class="type-list">
						<li>
							<a href=""  onclick=""><span class="checkbox"><i class="iconfont">√</i></span>查看评价</a>
						</li>
						<li>
							<a href=""  onclick=""><span class="checkbox"><i class="iconfont">√</i></span>仅显示特惠商品</a>
						</li>
						<li>
							<a href=""  onclick=""><span class="checkbox"><i class="iconfont">√</i></span>仅显示有货商品</a>
						</li>
					</ul>
				</div>
				<div class="goods-list-box">
					<div class="goods-list clearfix" id="goodList">
						
					</div>
					<div class="xm-pagenavi" id="pageNumber">
						
						
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		$(document).ready(function(){
			loadSelectcontent(1,3); 
			
		});
		function loadSelectcontent(page,rows) {
			var indexPage=page;//获得当前页
			var keyWord="${keyWord}";
			$.ajax({
				url:"<%=request.getContextPath()%>" + "/productnews/searchedContent",
       		    contentType : "application/x-www-form-urlencoded;charset=utf-8",
       		    dataType : "json",
       		    data:{
       		    	keyWord:keyWord,
       		    	page:page,
       		    	rows:rows
       		    },
       		    success : function(data) {
       		    	if(data==1){
       		    		alert("no have");
       		    		return;
       		    	}
       		    	var h="";
       		    	var b="";
       		    	var indexs=data[0].pageNumber;
       		    	var last = Math.ceil(data[0].total / rows);
       		    	//得到最后的页码
       		        for (var i = 0; i < data[0].qureyList.length; i++) {
       		        	var list=data[0].qureyList[i];
						h+="<div class='goods-item'>"
						+"<div class='figure figure-img'>"
						+"<a href='<%=request.getContextPath()%>/productnews/showProductPage?id="+list.id+"'  onclick=''><img src='"+list.url+"' width='200' height='200' ></a></div>"
						+"<p class='desc'></p><h2 class='title'><a href=''  onclick=''>"+list.news_name+"</a></h2>"
						+"<p class='price'>"+list.price+"元 <del>"+list.oldPrice+"元</del></p><div class='thumbs'>"
						+"<ul class='thumb-list'><li><a  onclick=''><img src='"+list.url+"' width='34' height='34'></a></li></ul></div>"
						+"<div class='actions clearfix'><a class='btn-like J_likeGoods'  href='javascript: void(0);'  onclick=''><i class='iconfont'></i>"
						+"<span>喜欢</span></a><a class='btn-buy J_buyGood'  href=''  onclick=''><span>加入购物车</span> <i class='iconfont'></i></a>"
						+"</div><div class='flags'><div class='flag flag-saleoff'>9折促销</div></div><div class='notice'></div></div>"
					}
       		    $("#goodList").html(h);
       		    b+="<span onclick='loadSelectcontent("+(indexPage == 1 ? 1 : indexPage - 1)+",3)' class='numbers first iconfont'> < </span>";
       		    for (var i = 0; i < indexs.length; i++) {
       		     b+="<a class='numbers'   onclick='loadSelectcontent("+indexs[i]+",3)'>"+indexs[i]+"</a>";
				}
       		 
       		    b+="<a onclick='loadSelectcontent("+(indexPage == last ? last : indexPage + 1)+",3)' class='numbers last iconfont'  onclick=''>></a>";
       		    $("#pageNumber").html(b)
       		    }
				
				
			});
		}
		
		
		</script>
	</body>
</html>