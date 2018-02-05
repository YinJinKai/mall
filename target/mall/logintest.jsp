<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
登录界面
  <form action="<%=request.getContextPath()%>/mall/login">
	<input type="text" id="userid" name="userid" value="" />
	<br />
	<input type="text" id="password" name="password" value="" />

	<br />
	<div style="width: 100px; height: 50px;"></div>
	<br />
	<input type="text" id="" name="yanz" value="" />
	<br />
	<input type="submit" id="" name="" />
	<br />
	</form>
	<a href="/register.jsp">注册</a>
</body>
</html>