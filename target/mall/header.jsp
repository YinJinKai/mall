<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/mall_css/header.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
    <div class="site-topbar">
		<div class="container">
			<div class="topbar-nav">
				<a href="" onclick="">小米商城</a><span class="sep">|</span> <a href=""
					target="_blank" onclick="">MIUI</a><span class="sep">|</span> <a
					href="" onclick="">IoT</a><span class="sep">|</span> <a href=""
					target="_blank" onclick="">云服务</a><span class="sep">|</span> <a
					href="" target="_blank" onclick="">水滴</a><span class="sep">|</span>
				<a href="" target="_blank" onclick="">金融</a><span class="sep">|</span>
				<a href="" target="_blank" onclick="">有品</a><span class="sep">|</span>
				<a href="" onclick="">Select Region</a>
			</div>
			<div class="topbar-cart" id="J_miniCartTrigger">
				<a class="cart-mini" id="J_miniCartBtn" href="" onclick=""><i
					class="iconfont"></i>购物车<span class="cart-mini-num J_cartNum">（0）</span></a>
				<div class="cart-menu" id="J_miniCartMenu">
					<div class="loading">
						<div class="loader"></div>
					</div>
				</div>
			</div>
			<div class="topbar-info" id="J_userInfo">
				<span id="showUser"> <a rel="nofollow" class="link"
					href="<%=request.getContextPath()%>/login.jsp" onclick="">登录</a><span
					class="sep">|</span> <a rel="nofollow" class="link"
					href="<%=request.getContextPath()%>/register.jsp" onclick="">注册</a>
					<span class="sep">|</span>
				</span> <span class="message"> <a rel="nofollow" href="" onclick="">消息通知<i
						class="J_miMessageTotal"></i></a>
				</span>
			</div>
		</div>
	</div>
	<div class="site-header">
		<div class="container">
			<div class="header-logo">
				<a class="logo ir" href="" title="小米官网"
					data-stat-id="f4006c1551f77f22" onclick="">小米官网</a>
				<div class="doodle" style="display: block;">
					<a class="exposure link-block"></a>
				</div>
			</div>
			<div class="header-nav">
				<ul class="nav-list J_navMainList clearfix">
					<li id="J_navCategory" class="nav-category"><a
						class="link-category" href="" data-stat-id="d7d79a744cdeefa8"
						onclick=""><span class="text" id="allText">全部商品分类</span></a>
						<div class="site-category">
							<ul id="J_categoryList" class="site-category-list clearfix">
								<li class="category-item"><a class="title"
									id="showProduct0" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct010">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct020">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct030">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct1" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct110">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct120">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct130">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct2" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct210">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct220">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct230">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct3" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct310">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct320">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct330">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct4" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct410">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct420">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct430">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct5" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct510">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct520">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct530">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct6" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct610">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct620">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct630">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct7" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct710">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct720">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct730">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct8" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct810">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct820">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct830">

										</ul>
									</div></li>
								<li class="category-item"><a class="title"
									id="showProduct9" href="" onclick=""><i class="iconfont"></i></a>
									<div class="children clearfix children-col-3">
										<ul
											class="children-list children-list-col children-list-col-1"
											id="showProduct910">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-2"
											id="showProduct920">

										</ul>
										<ul
											class="children-list children-list-col children-list-col-3"
											id="showProduct930">

										</ul>
									</div></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="link"
						href="javascript: void(0);" data-stat-id="a9318c5014b7997f"
						onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-a9318c5014b7997f', 'javascript:void0', 'pcpid', '']);">
							<span class="text">小米手机</span> <span class="arrow"></span>
					</a>
						<div class="item-children">
							<div class="container">
								<ul class="children-list clearfix">
									<li class="first">
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="96ceda20bee521f4"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-96ceda20bee521f4', 'https://www.mi.com/mix2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/mix2320-220.png"
												alt="小米MIX 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="5e680c5acb7ed0c1"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-5e680c5acb7ed0c1', 'https://www.mi.com/mix2/', 'pcpid', '']);">小米MIX
												2</a>
										</div>
										<p class="price">3299起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="1e28d4df50819c44"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-1e28d4df50819c44', 'https://www.mi.com/minote3/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/note2320x220.png"
												alt="小米Note 3" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="92a0dd4a2c403b54"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-92a0dd4a2c403b54', 'https://www.mi.com/minote3/', 'pcpid', '']);">小米Note
												3</a>
										</div>
										<p class="price">1999元起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi6/" data-stat-id="808afb6b4c40510b"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-808afb6b4c40510b', '//www.mi.com/mi6/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png"
												alt="小米6" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi6/" data-stat-id="cdc3561387a371ca"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-cdc3561387a371ca', '//www.mi.com/mi6/', 'pcpid', '']);">小米6</a>
										</div>
										<p class="price">2299元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/max2/" data-stat-id="ddab6416a312dce2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-ddab6416a312dce2', '//www.mi.com/max2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/max2_toubu.png"
												alt="小米Max 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/max2/" data-stat-id="73a8e4608d0b867e"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-73a8e4608d0b867e', '//www.mi.com/max2/', 'pcpid', '']);">小米Max
												2</a>
										</div>
										<p class="price">1399元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi5x/" data-stat-id="d04d9319841436cd"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-d04d9319841436cd', '//www.mi.com/mi5x/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/5x-2.jpg" alt="小米5X"
												width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi5x/" data-stat-id="0e778382d3aa06b2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-0e778382d3aa06b2', '//www.mi.com/mi5x/', 'pcpid', '']);">小米5X</a>
										</div>
										<p class="price">1499元</p>
									</li>
								</ul>
							</div>
						</div></li>
					<li class="nav-item"><a class="link"
						href="javascript: void(0);" data-stat-id="a9318c5014b7997f"
						onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-a9318c5014b7997f', 'javascript:void0', 'pcpid', '']);">
							<span class="text">手机</span> <span class="arrow"></span>
					</a>
						<div class="item-children">
							<div class="container">
								<ul class="children-list clearfix">
									<li class="first">
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="96ceda20bee521f4"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-96ceda20bee521f4', 'https://www.mi.com/mix2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/mix2320-220.png"
												alt="小米MIX 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="5e680c5acb7ed0c1"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-5e680c5acb7ed0c1', 'https://www.mi.com/mix2/', 'pcpid', '']);">小米MIX
												2</a>
										</div>
										<p class="price">3299起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="1e28d4df50819c44"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-1e28d4df50819c44', 'https://www.mi.com/minote3/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/note2320x220.png"
												alt="小米Note 3" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="92a0dd4a2c403b54"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-92a0dd4a2c403b54', 'https://www.mi.com/minote3/', 'pcpid', '']);">小米Note
												3</a>
										</div>
										<p class="price">1999元起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi6/" data-stat-id="808afb6b4c40510b"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-808afb6b4c40510b', '//www.mi.com/mi6/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png"
												alt="小米6" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi6/" data-stat-id="cdc3561387a371ca"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-cdc3561387a371ca', '//www.mi.com/mi6/', 'pcpid', '']);">小米6</a>
										</div>
										<p class="price">2299元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/max2/" data-stat-id="ddab6416a312dce2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-ddab6416a312dce2', '//www.mi.com/max2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/max2_toubu.png"
												alt="小米Max 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/max2/" data-stat-id="73a8e4608d0b867e"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-73a8e4608d0b867e', '//www.mi.com/max2/', 'pcpid', '']);">小米Max
												2</a>
										</div>
										<p class="price">1399元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi5x/" data-stat-id="d04d9319841436cd"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-d04d9319841436cd', '//www.mi.com/mi5x/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/5x-2.jpg" alt="小米5X"
												width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi5x/" data-stat-id="0e778382d3aa06b2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-0e778382d3aa06b2', '//www.mi.com/mi5x/', 'pcpid', '']);">小米5X</a>
										</div>
										<p class="price">1499元</p>
									</li>
								</ul>
							</div>
						</div></li>
					<li class="nav-item"><a class="link"
						href="javascript: void(0);" data-stat-id="a9318c5014b7997f"
						onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-a9318c5014b7997f', 'javascript:void0', 'pcpid', '']);">
							<span class="text">小米</span> <span class="arrow"></span>
					</a>
						<div class="item-children">
							<div class="container">
								<ul class="children-list clearfix">
									<li class="first">
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="96ceda20bee521f4"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-96ceda20bee521f4', 'https://www.mi.com/mix2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/mix2320-220.png"
												alt="小米MIX 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="5e680c5acb7ed0c1"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-5e680c5acb7ed0c1', 'https://www.mi.com/mix2/', 'pcpid', '']);">小米MIX
												2</a>
										</div>
										<p class="price">3299起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="1e28d4df50819c44"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-1e28d4df50819c44', 'https://www.mi.com/minote3/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/note2320x220.png"
												alt="小米Note 3" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="92a0dd4a2c403b54"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-92a0dd4a2c403b54', 'https://www.mi.com/minote3/', 'pcpid', '']);">小米Note
												3</a>
										</div>
										<p class="price">1999元起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi6/" data-stat-id="808afb6b4c40510b"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-808afb6b4c40510b', '//www.mi.com/mi6/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png"
												alt="小米6" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi6/" data-stat-id="cdc3561387a371ca"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-cdc3561387a371ca', '//www.mi.com/mi6/', 'pcpid', '']);">小米6</a>
										</div>
										<p class="price">2299元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/max2/" data-stat-id="ddab6416a312dce2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-ddab6416a312dce2', '//www.mi.com/max2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/max2_toubu.png"
												alt="小米Max 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/max2/" data-stat-id="73a8e4608d0b867e"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-73a8e4608d0b867e', '//www.mi.com/max2/', 'pcpid', '']);">小米Max
												2</a>
										</div>
										<p class="price">1399元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi5x/" data-stat-id="d04d9319841436cd"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-d04d9319841436cd', '//www.mi.com/mi5x/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/5x-2.jpg" alt="小米5X"
												width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi5x/" data-stat-id="0e778382d3aa06b2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-0e778382d3aa06b2', '//www.mi.com/mi5x/', 'pcpid', '']);">小米5X</a>
										</div>
										<p class="price">1499元</p>
									</li>
								</ul>
							</div>
						</div></li>
					<li class="nav-item"><a class="link"
						href="javascript: void(0);" data-stat-id="a9318c5014b7997f"
						onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-a9318c5014b7997f', 'javascript:void0', 'pcpid', '']);">
							<span class="text">小米</span> <span class="arrow"></span>
					</a>
						<div class="item-children">
							<div class="container">
								<ul class="children-list clearfix">
									<li class="first">
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="96ceda20bee521f4"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-96ceda20bee521f4', 'https://www.mi.com/mix2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/mix2320-220.png"
												alt="小米MIX 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="5e680c5acb7ed0c1"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-5e680c5acb7ed0c1', 'https://www.mi.com/mix2/', 'pcpid', '']);">小米MIX
												2</a>
										</div>
										<p class="price">3299起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="1e28d4df50819c44"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-1e28d4df50819c44', 'https://www.mi.com/minote3/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/note2320x220.png"
												alt="小米Note 3" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="92a0dd4a2c403b54"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-92a0dd4a2c403b54', 'https://www.mi.com/minote3/', 'pcpid', '']);">小米Note
												3</a>
										</div>
										<p class="price">1999元起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi6/" data-stat-id="808afb6b4c40510b"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-808afb6b4c40510b', '//www.mi.com/mi6/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png"
												alt="小米6" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi6/" data-stat-id="cdc3561387a371ca"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-cdc3561387a371ca', '//www.mi.com/mi6/', 'pcpid', '']);">小米6</a>
										</div>
										<p class="price">2299元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/max2/" data-stat-id="ddab6416a312dce2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-ddab6416a312dce2', '//www.mi.com/max2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/max2_toubu.png"
												alt="小米Max 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/max2/" data-stat-id="73a8e4608d0b867e"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-73a8e4608d0b867e', '//www.mi.com/max2/', 'pcpid', '']);">小米Max
												2</a>
										</div>
										<p class="price">1399元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi5x/" data-stat-id="d04d9319841436cd"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-d04d9319841436cd', '//www.mi.com/mi5x/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/5x-2.jpg" alt="小米5X"
												width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi5x/" data-stat-id="0e778382d3aa06b2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-0e778382d3aa06b2', '//www.mi.com/mi5x/', 'pcpid', '']);">小米5X</a>
										</div>
										<p class="price">1499元</p>
									</li>
								</ul>
							</div>
						</div></li>
					<li class="nav-item"><a class="link"
						href="javascript: void(0);" data-stat-id="a9318c5014b7997f"
						onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-a9318c5014b7997f', 'javascript:void0', 'pcpid', '']);">
							<span class="text">手机</span> <span class="arrow"></span>
					</a>
						<div class="item-children">
							<div class="container">
								<ul class="children-list clearfix">
									<li class="first">
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="96ceda20bee521f4"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-96ceda20bee521f4', 'https://www.mi.com/mix2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/mix2320-220.png"
												alt="小米MIX 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="5e680c5acb7ed0c1"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-5e680c5acb7ed0c1', 'https://www.mi.com/mix2/', 'pcpid', '']);">小米MIX
												2</a>
										</div>
										<p class="price">3299起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="1e28d4df50819c44"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-1e28d4df50819c44', 'https://www.mi.com/minote3/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/note2320x220.png"
												alt="小米Note 3" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="92a0dd4a2c403b54"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-92a0dd4a2c403b54', 'https://www.mi.com/minote3/', 'pcpid', '']);">小米Note
												3</a>
										</div>
										<p class="price">1999元起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi6/" data-stat-id="808afb6b4c40510b"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-808afb6b4c40510b', '//www.mi.com/mi6/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png"
												alt="小米6" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi6/" data-stat-id="cdc3561387a371ca"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-cdc3561387a371ca', '//www.mi.com/mi6/', 'pcpid', '']);">小米6</a>
										</div>
										<p class="price">2299元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/max2/" data-stat-id="ddab6416a312dce2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-ddab6416a312dce2', '//www.mi.com/max2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/max2_toubu.png"
												alt="小米Max 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/max2/" data-stat-id="73a8e4608d0b867e"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-73a8e4608d0b867e', '//www.mi.com/max2/', 'pcpid', '']);">小米Max
												2</a>
										</div>
										<p class="price">1399元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi5x/" data-stat-id="d04d9319841436cd"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-d04d9319841436cd', '//www.mi.com/mi5x/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/5x-2.jpg" alt="小米5X"
												width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi5x/" data-stat-id="0e778382d3aa06b2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-0e778382d3aa06b2', '//www.mi.com/mi5x/', 'pcpid', '']);">小米5X</a>
										</div>
										<p class="price">1499元</p>
									</li>
								</ul>
							</div>
						</div></li>
					<li class="nav-item"><a class="link"
						href="javascript: void(0);" data-stat-id="a9318c5014b7997f"
						onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-a9318c5014b7997f', 'javascript:void0', 'pcpid', '']);">
							<span class="text">小米手机</span> <span class="arrow"></span>
					</a>
						<div class="item-children">
							<div class="container">
								<ul class="children-list clearfix">
									<li class="first">
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="96ceda20bee521f4"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-96ceda20bee521f4', 'https://www.mi.com/mix2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/mix2320-220.png"
												alt="小米MIX 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="5e680c5acb7ed0c1"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-5e680c5acb7ed0c1', 'https://www.mi.com/mix2/', 'pcpid', '']);">小米MIX
												2</a>
										</div>
										<p class="price">3299起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="1e28d4df50819c44"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-1e28d4df50819c44', 'https://www.mi.com/minote3/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/note2320x220.png"
												alt="小米Note 3" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="92a0dd4a2c403b54"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-92a0dd4a2c403b54', 'https://www.mi.com/minote3/', 'pcpid', '']);">小米Note
												3</a>
										</div>
										<p class="price">1999元起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi6/" data-stat-id="808afb6b4c40510b"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-808afb6b4c40510b', '//www.mi.com/mi6/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png"
												alt="小米6" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi6/" data-stat-id="cdc3561387a371ca"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-cdc3561387a371ca', '//www.mi.com/mi6/', 'pcpid', '']);">小米6</a>
										</div>
										<p class="price">2299元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/max2/" data-stat-id="ddab6416a312dce2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-ddab6416a312dce2', '//www.mi.com/max2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/max2_toubu.png"
												alt="小米Max 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/max2/" data-stat-id="73a8e4608d0b867e"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-73a8e4608d0b867e', '//www.mi.com/max2/', 'pcpid', '']);">小米Max
												2</a>
										</div>
										<p class="price">1399元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi5x/" data-stat-id="d04d9319841436cd"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-d04d9319841436cd', '//www.mi.com/mi5x/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/5x-2.jpg" alt="小米5X"
												width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi5x/" data-stat-id="0e778382d3aa06b2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-0e778382d3aa06b2', '//www.mi.com/mi5x/', 'pcpid', '']);">小米5X</a>
										</div>
										<p class="price">1499元</p>
									</li>
								</ul>
							</div>
						</div></li>
					<li class="nav-item"><a class="link"
						href="javascript: void(0);" data-stat-id="a9318c5014b7997f"
						onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-a9318c5014b7997f', 'javascript:void0', 'pcpid', '']);">
							<span class="text">小米手机</span> <span class="arrow"></span>
					</a>
						<div class="item-children">
							<div class="container">
								<ul class="children-list clearfix">
									<li class="first">
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="96ceda20bee521f4"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-96ceda20bee521f4', 'https://www.mi.com/mix2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/mix2320-220.png"
												alt="小米MIX 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="5e680c5acb7ed0c1"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-5e680c5acb7ed0c1', 'https://www.mi.com/mix2/', 'pcpid', '']);">小米MIX
												2</a>
										</div>
										<p class="price">3299起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="1e28d4df50819c44"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-1e28d4df50819c44', 'https://www.mi.com/minote3/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/note2320x220.png"
												alt="小米Note 3" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="92a0dd4a2c403b54"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-92a0dd4a2c403b54', 'https://www.mi.com/minote3/', 'pcpid', '']);">小米Note
												3</a>
										</div>
										<p class="price">1999元起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi6/" data-stat-id="808afb6b4c40510b"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-808afb6b4c40510b', '//www.mi.com/mi6/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png"
												alt="小米6" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi6/" data-stat-id="cdc3561387a371ca"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-cdc3561387a371ca', '//www.mi.com/mi6/', 'pcpid', '']);">小米6</a>
										</div>
										<p class="price">2299元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/max2/" data-stat-id="ddab6416a312dce2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-ddab6416a312dce2', '//www.mi.com/max2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/max2_toubu.png"
												alt="小米Max 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/max2/" data-stat-id="73a8e4608d0b867e"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-73a8e4608d0b867e', '//www.mi.com/max2/', 'pcpid', '']);">小米Max
												2</a>
										</div>
										<p class="price">1399元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi5x/" data-stat-id="d04d9319841436cd"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-d04d9319841436cd', '//www.mi.com/mi5x/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/5x-2.jpg" alt="小米5X"
												width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi5x/" data-stat-id="0e778382d3aa06b2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-0e778382d3aa06b2', '//www.mi.com/mi5x/', 'pcpid', '']);">小米5X</a>
										</div>
										<p class="price">1499元</p>
									</li>
								</ul>
							</div>
						</div></li>
					<li class="nav-item"><a class="link"
						href="javascript: void(0);" data-stat-id="a9318c5014b7997f"
						onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-a9318c5014b7997f', 'javascript:void0', 'pcpid', '']);">
							<span class="text">小米手机</span> <span class="arrow"></span>
					</a>
						<div class="item-children">
							<div class="container">
								<ul class="children-list clearfix">
									<li class="first">
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="96ceda20bee521f4"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-96ceda20bee521f4', 'https://www.mi.com/mix2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/mix2320-220.png"
												alt="小米MIX 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/mix2/"
												data-stat-id="5e680c5acb7ed0c1"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-5e680c5acb7ed0c1', 'https://www.mi.com/mix2/', 'pcpid', '']);">小米MIX
												2</a>
										</div>
										<p class="price">3299起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="1e28d4df50819c44"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-1e28d4df50819c44', 'https://www.mi.com/minote3/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/note2320x220.png"
												alt="小米Note 3" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="https://www.mi.com/minote3/"
												data-stat-id="92a0dd4a2c403b54"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-92a0dd4a2c403b54', 'https://www.mi.com/minote3/', 'pcpid', '']);">小米Note
												3</a>
										</div>
										<p class="price">1999元起</p>
										<div class="flags">
											<div class="flag">新品</div>
										</div>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi6/" data-stat-id="808afb6b4c40510b"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-808afb6b4c40510b', '//www.mi.com/mi6/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/xm6-320.png"
												alt="小米6" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi6/" data-stat-id="cdc3561387a371ca"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-cdc3561387a371ca', '//www.mi.com/mi6/', 'pcpid', '']);">小米6</a>
										</div>
										<p class="price">2299元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/max2/" data-stat-id="ddab6416a312dce2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-ddab6416a312dce2', '//www.mi.com/max2/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/cn-index/max2_toubu.png"
												alt="小米Max 2" width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/max2/" data-stat-id="73a8e4608d0b867e"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-73a8e4608d0b867e', '//www.mi.com/max2/', 'pcpid', '']);">小米Max
												2</a>
										</div>
										<p class="price">1399元起</p>
									</li>
									<li>
										<div class="figure figure-thumb">
											<a href="//www.mi.com/mi5x/" data-stat-id="d04d9319841436cd"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-d04d9319841436cd', '//www.mi.com/mi5x/', 'pcpid', '']);"><img
												src="//i1.mifile.cn/f/i/2014/cn/placeholder-220!110x110.png"
												data-src="//i1.mifile.cn/f/i/g/2015/5x-2.jpg" alt="小米5X"
												width="160" height="110"></a>
										</div>
										<div class="title">
											<a href="//www.mi.com/mi5x/" data-stat-id="0e778382d3aa06b2"
												onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-0e778382d3aa06b2', '//www.mi.com/mi5x/', 'pcpid', '']);">小米5X</a>
										</div>
										<p class="price">1499元</p>
									</li>
								</ul>
							</div>
						</div></li>
				</ul>
			</div>
			<div class="header-search">
				<form id="J_searchForm" class="search-form clearfix"
					action="//search.mi.com/search" method="get">
					<label for="search" class="hide">站内搜索</label> <input
						class="search-text" type="search" id="search" name="keyword"
						autocomplete="off"
						data-search-config="{'defaultWords':[{'Key':'小米手机6','Rst':24},{'Key':'小米手机5X','Rst':6},{'Key':'红米note&nbsp;4X','Rst':13},{'Key':'红米手机4X','Rst':8},{'Key':'小米Max&nbsp;2','Rst':6},{'Key':'手环','Rst':9},{'Key':'耳机','Rst':25},{'Key':'充电宝','Rst':23},{'Key':'运动鞋','Rst':5},{'Key':'路由器','Rst':22},{'Key':'小米盒子','Rst':7},{'Key':'电视','Rst':20}]}">
					<input type="submit" class="search-btn iconfont" value="">
					<div class="search-hot-words">
						<a href="https://www.mi.com/redmi5/"
							data-stat-id="e089b7d702721e39"
							onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-e089b7d702721e39', 'https://www.mi.com/redmi5/', 'pcpid', '']);">红米5
							新品</a> <a href="https://item.mi.com/product/10000069.html"
							data-stat-id="be24a809095770a2"
							onclick="_msq.push(['trackEvent', '79fe2eae924d2a2e-be24a809095770a2', 'https://item.mi.com/product/10000069.html', 'pcpid', '']);">小米Note
							3</a>
					</div>
					<div id="J_keywordList" class="keyword-list hide">
						<ul class="result-list"></ul>
					</div>
				</form>
			</div>
		</div>
	</div>
		<script type="text/javascript">
	$(document).ready(function() {
		userlogin();
		showcenter();
		showProductClassify();
		loadProductClassfiy();
		loadProductNews();
					
	});
	function loadProductNews() {
		$.ajax({
			url:"<%=request.getContextPath()%>" + "/productnews/showNews",
			contentType : "application/x-www-form-urlencoded;charset=utf-8",
		    dataType : "json",
		    success : function(data) {
		    	var h="";
		    	for (var i = 0; i < data.length; i++) {
		    		var id=data[i].id;
					var newsname=data[i].newsName;
					var descr=data[i].descr;
					var oldPrice=data[i].oldPrice;
					var price=data[i].price;
					var url=data[i].url;
					h+="<li class='brick-item brick-item-m'>"
					  +"<a style='display:none'; id='show"+i+"' >"+id+"</a><div class='figure figure-img'>"
					 +"<a class='exposure' href=''  target='_blank'  onclick='submit("+i+")'>"
					 +"<img src='.."+url+"' width='150' height='150' alt='图丢了?!'></a></div>"
					 +"<h3 class='title'> <a href=''    target='_blank'  onclick=''>"+newsname+"</a></h3>"
				     +"<p class='desc'>"+descr+"</p>"
				     +"<p class='price'><span class='num'>"+price+"</span>元 <del><span class='num'>"+oldPrice+"</span>元</del></p>"
				     +"<p class='rank'></p><div class='flag flag-saleoff'> 享9折 </div>"
				     +"<div class='review-wrapper'><a href=''  target='_blank'  onclick=''>" 
				     +"<span class='review'>惊艳到不能呼吸！凌晨三点还依依不舍！！！</span>"
				     +"<span class='author'> 来自于 金额不足 的评价 <span class='date'></span> </span></a></div>"
				     +"</li>";
				}
		    	$("#showproduct1").html(h);
		    } 
		});
	}
    //点击图片调详情页
	function submit(a) {
		var idValue=$('#show'+a).text();
		window.location.href="<%=request.getContextPath()%>/productnews/showProductPage?id="+idValue+""
		
	}
	//显示登录下拉框
	  function showcenter() {
			 $('#showUser').hover(function(){
				 $('#usercenter').css("display","block");
				 $(".user").addClass(".user-active");
				 });
		}
     // 	  用户登录
	  function userlogin() {
			 $.ajax({
					url:"<%=request.getContextPath()%>" + "/mall/session",
				    contentType : "application/x-www-form-urlencoded;charset=utf-8",
				    dataType : "json",
				    success : function(data) {
				    	   var userid=data[0].userid;
				    	   var h;
				    	   if(userid==undefined || userid==null || userid==""){
				    		   return;
				    	   }else{
				    		   h="<span class='user'><a  class='user-name' href='' target='_blank'><span class='name'><a>欢迎&nbsp;</a>"+userid+"<a>&nbsp;大佬</a></span><i class='iconfont'></i></a>"
				    		   +"<ul id='usercenter' class='user-menu' style='display: none;'>"
				    		   +"<li><a  href='<%=request.getContextPath()%>/usercenter.jsp' target='_blank'>个人中心</a></li><li>"
							   +"<a  href='#' target='_blank'>评价晒单</a></li><li>"
							   +"<a  href='#' target='_blank'>我的喜欢</a></li><li>"
							   +"<a  href='#' target='_blank'>小米账户</a></li><li><a  href='' onclick='loginout()' >退出登录</a></li></ul></span>&nbsp;&nbsp;";
				    	   }
				         $("#showUser").html(h);
				         return;
				         }
				   
				    
				    });
			 
		}
	    //退出登录
		function loginout(){
			 $.ajax({
					url:"<%=request.getContextPath()%>" + "/mall/remove",
				    contentType : "application/x-www-form-urlencoded;charset=utf-8",
				    dataType : "text",
				    success : function(data) {
				    	var b;
				    	if(data==1){
				    	   b="<a class='link' href='<%=request.getContextPath()%>/login.jsp' >登录</a><span class='sep'>|</span><a  class='link' href='<%=request.getContextPath()%>/register.jsp'  >注册</a> <span class='sep'>|</span>";
				    	}else{
				    		return;
				    	}
				    	$("#showUser").html(b);
				    }
			 });
		}
       //显示二级列表框	
		function showProductClassify(){
			$("#J_categoryList").find("li").hover(function() {
				$(this).addClass("hover");
				$(this).find(".clearfix").css("display", "block")
				}, function() {
				$(this).removeClass("hover")
				$(this).find(".clearfix").css("display", "none")
				});
		}
        //加载商品分类
       function loadProductClassfiy() {
    	   $.ajax({
				url:"<%=request.getContextPath()%>"+ "/product/showproduct",
										contentType : "application/x-www-form-urlencoded;charset=utf-8",
										dataType : "json",
										success : function(data) {

											for (var i = 0; i < data.length; i++) {
												var show = data[i];
												for (var j = 0; j < (show.list).length; j++) {
													var shownews = show.list[j];
													$("#showProduct" + j).html(shownews.product_name+ "<i class='iconfont'></i>");
													var h = "";
													for (var k = 0; k < (shownews.list).length; k++) {
														var showe = shownews.list[k];
														h += "<li><a class='link'><img class='thumb' src='../mall/mall_img/tt.png'><span class='text'>"
																+ showe.product_name
																+ "</span></a></li>";

													}

													$("#showProduct" + j + "10").html(h);

												}

											}
										}

									});
	}
			
	</script>
</body>
</html>