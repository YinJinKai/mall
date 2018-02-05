<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>已成功加入购物车！</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/shoppingcar.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div class="page-main">
		<div class="container">
			<div class="buy-succ-box clearfix">
				<div class="goods-content" id="J_goodsBox">
					<div class="goods-img">
						<img src="<%=request.getContextPath()%>/mall_img/success.png" width="64"
							height="64">
					</div>
					<div class="goods-info">
						<h3>已成功加入购物车！</h3>
						<span class="name">${newsName}</span>
					</div>
				</div>

				<div class="actions J_actBox">
					<p class="hide J_notic">有商品未成功加入购物车，可以在购物车中查看</p>
					<a href="<%=request.getContextPath()%>/index.jsp" class="btn btn-line-gray J_goBack" onclick="">继续买</a>
					<a href="<%=request.getContextPath()%>/shoppingcar.jsp" class="btn btn-primary" onclick="">去购物车结算</a>
				</div>
			</div>
			<div class="cart-recommend container " id="J_miRecommendBox ">
				<h2 class="xm-recommend-title ">
					<span>买购物车中商品的人还买了</span>
				</h2>
				<div class="xm-recommend ">
					<ul class="row clearfix ">
						<li class="J_xm-recommend-list span4 ">
							<dl>
								<dt>
									<a href=" " target="_blank " onclick=" "> <img
										src="//i1.mifile.cn/a1/pms_1502962275.73995818!140x140.jpg "
										srcset="//i1.mifile.cn/a1/pms_1502962275.73995818!280x280.jpg 2x "
										alt="小米5X ">
									</a>
								</dt>
								<dd class="xm-recommend-name ">
									<a href=" " target="_blank " onclick=" "> 小米5X </a>
								</dd>
								<dd class="xm-recommend-price ">1499元</dd>
								<dd class="xm-recommend-tips ">
									3.3万人好评 
									<a class="btn btn-small btn-line-primary J_xm-recommend-btn"  style="display: none;">加入购物车</a>
								</dd>
								<dd class="xm-recommend-notice "></dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>




		</div>
	</div>
</body>
</html>