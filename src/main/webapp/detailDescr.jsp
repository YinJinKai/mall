<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/detailPage.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
 <%@include file="part/header.jsp"%>
 <div class="page-main" style="padding-bottom: 50px;">
    <div class="container">
        <div class="breadcrumbs">
            <a href=""  onclick="">首页</a>
            <span class="sep">/</span>        
            <a href=""  onclick="">${ss}</a>
            <span class="sep">/</span>   
            <a href="javascript:void(0);"  onclick="">${name}</a>
        </div>
    </div>
    <div class="container" style="background: #fff;">
        <div style="margin: 0 50px;padding: 60px 0 0 0;">
          ${detail}
    </div>
</div>

</body>
</html>