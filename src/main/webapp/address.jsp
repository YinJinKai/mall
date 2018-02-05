<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的地址</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/mall_css/address.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/jq/jquery-3.2.1.min.js"></script>
</head>
<body>
<%@include file="part/header.jsp"%>
  		<div class="breadcrumbs">
			<div class="container">
				<a href="">首页</a><span class="sep">&gt;</span><span>收货地址</span> </div>
		</div>
		<div class="page-main user-main">
			<div class="container">
				<div class="row">
				<%@include file="part/span.jsp"%>
					<div class="span16">
							<div class="uc-box uc-main-box">
									<div class="uc-content-box">
										<div class="box-hd">
											<h1 class="title">收货地址</h1>
										</div>
										<div class="box-bd">
							                <div class="user-address-list J_addressList clearfix" id="showAddress"></div>
										</div>
									</div>
							</div>
					</div>
                 </div>
			</div>
		</div>
	    <div class="modal modal-hide fade modal-edit-address in" id="J_modalEditAddress"  style="display: none;">
			<div class="modal-header">
				<span class="title">添加收货地址</span>
				<a class="close"  href="javascript: void(0);" data-stat-id="5166f1e3934514d1" onclick="closebox()"><i class="iconfont">X</i></a>
			</div>
			<div class="modal-body">
				<div class="form-box clearfix">
					<div class="form-section form-name form-section-active form-section-valid">
						<!--<label class="input-label" for="user_name">姓名</label>-->
						<a style="display: none" id="updateid"></a>
						<input class="input-text J_addressInput" type="text" id="addressee" name="addressee" placeholder="收货人姓名">
					</div>
					<div class="form-section form-phone form-section-valid">
						<!--<label class="input-label" for="user_phone">手机号</label>-->
						<input class="input-text J_addressInput" type="text" id="telephone" name="telephone" placeholder="手机号">
						<a id="error" style="display:none;color:red;"></a>
					</div>
				    <div id="upaddress" class="form-section form-four-address form-section-active form-section-valid" style="display: none">
	                        <input id="J_selectAddressTrigger" class="input-text J_addressInput active" type="text" name="four_address" readonly="readonly" >
	               </div>
	               <div class="form-section form-four-address form-section-active form-section-valid">
							<a><select name="provinceCode" id="province" onchange="getp()"></select></a> 
							<a><select name="cityCode" id="city" onchange="getc()" style="display:none"></select></a>
							<a><select name="areaCode" id="area" onchange="geta()" style="display:none"></select></a>
					</div>
					<div class="form-section form-address-detail form-section-active form-section-valid">
						<!--<label class="input-label" for="user_adress">详细地址</label>-->
						<textarea class="input-text J_addressInput" type="text" id="completeAddress" name="completeAddress" placeholder="详细地址，路名或街道名称，门牌号"></textarea>
					</div>
					<div class="form-section form-tip-msg clearfix" id="J_formTipMsg"></div>
				</div>
			</div>
			<div class="modal-footer">
				<a  class="btn btn-primary" id="J_editAddressSave"  onclick="submit()">保存</a>
				<a  class="btn btn-gray"  onclick="closebox()">取消</a>
			</div>
		</div>
        <div class="modal-backdrop fade in" id="mask1" style="width: 100%; height: 1679px; display: none;"></div>
        
<script type="text/javascript">
	function show(){
	   	$("#J_modalEditAddress").show();
	   	$("#mask1").show();
	   	
	   }
	  
	function closebox(){
			var addressee=$("#addressee").val("");
			var telephone=$("#telephone").val("");
			var completeAddress=$("#completeAddress").val("");
			var province=$("#province").val("");
			var city=$("#city").val("");
			var area=$("#area").val("");
			hideAddressBox();
			$("#J_modalEditAddress").hide();
			$("#mask1").hide();
			
		
		}
	function hideAddressBox(){
		$("#J_selectAddressTrigger").val("");
		$("#upaddress").css("display","none");
	}
	$(".address-item").hover(function (){
		$(".modify").css("display","block");
	},function (){
		$(".modify").css("display","none");
	});
</script>
<script type="text/javascript">
$(document).ready(function() {
	//加载地区列表
	loadArea();
	selectAddress();
	address(0);
	});
function submit() {
	var id=$("#updateid").html();
	if(id==""||id==null){
		addNewAddress();
		hideAddressBox();
		return;
	}
	if(id!=""||id!=null){
		addUpdateAddress();
		hideAddressBox();
		return;
	}
	
	
}
function addNewAddress() {
	var addressee=$("#addressee").val();
	var telephone=$("#telephone").val();
	var completeAddress=$("#completeAddress").val();
	var province=$("#province").val();
	var city=$("#city").val();
	var area=$("#area").val();
	var check=/^[\d]{5,20}$/;
	if(addressee==""){
		return;
	}
	if(telephone==""){
		return;
	}
	if(!check.test(telephone)){
		$("#error").html("请输入正确手机号!")
		$("#error").show();
		return;
	}
	if(completeAddress==""){
		return;
	}
	if(province==""){
		return;
	}
	if(city==""){
		return;
	}
	if(area==""){
		return;
	}
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/adress/add",
		data:{
			addressee:addressee,
			telephone:telephone,
			completeAddress:completeAddress,
			provinceCode:province,
			cityCode:city,
			areaCode:area
			
		},
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "text",
		success : function(data){
			if(data==1){
				selectAddress();
				closebox();
				$("#error").hide();
			}else{
				alert("fail");
			}
		}
		
		
	});
}
function addUpdateAddress() {
	var id=$("#updateid").html();
	var addressee=$("#addressee").val();
	var telephone=$("#telephone").val();
	var completeAddress=$("#completeAddress").val();
	var province=$("#province").val();
	var city=$("#city").val();
	var area=$("#area").val();
	var check2=/^[\d]{5,20}$/;
	if(id==""){
		return;
	}
	if(addressee==""){
		return;
	}
	if(telephone==""){
		return;
	}
	if(!check2.test(telephone)){
		$("#error").html("请输入正确手机号!")
		$("#error").show();
		return;
	}
	if(completeAddress==""){
		return;
	}
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/adress/updateAdress",
		data:{
			id:id,
			addressee:addressee,
			telephone:telephone,
			completeAddress:completeAddress,
			provinceCode:province,
			cityCode:city,
			areaCode:area
			
		},
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "text",
		success : function(data){
			if(data==1){
				selectAddress();
				closebox();
				$("#error").hide();
			}else{
				alert("fail");
			}
		}
		
		
	});
}
//根据id将要修改的信息显示在页面上
function updateAddress(b) {
	var id=$("#del"+b).html();
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/adress/selectAdress",
		data:{
			id:id
		},
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			$("#updateid").html(data[0].id);
			$("#addressee").val(data[0].addressee);
			$("#telephone").val(data[0].telephone);
			var province=data[0].province;
			var city=data[0].city;
			var area=data[0].area;
			var h=province;
			h+=" "+city;
			h+=" "+area;
			$("#J_selectAddressTrigger").val(h);
			$("#upaddress").css("display","block");
			$("#completeAddress").val(data[0].completeAddress);
			show();

		}
		
		
	});
	
}
// 显示省
function selectProvince(data) {
	var h="<option value=''>请选择</option>";
	for (var i = 0; i < data.length; i++) {
		var pr=data[i].name;
		var code=data[i].code;
		h +="<option value='"+code+"'>"+pr+"</option>"
	}
	$("#province").html(h);
	return;
}
//显示市
function getp() {
	var province=$("#province").val();
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/basedata/childdata",
		data:{
			code:province
		},
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			$("#city").css("display","block");
			var h="<option value=''>请选择</option>";
			for (var i = 0; i < data.length; i++) {
				var pr=data[i].name;
				var code=data[i].code;
				h +="<option value='"+code+"'>"+pr+"</option>"
			}
			$("#city").html(h);
			return;
		}
	});
	return;
}
//显示区
function getc() {
	var city=$("#city").val();
	$.ajax({
		url:"<%=request.getContextPath()%>" + "/basedata/childdata",
		data:{
			code:city
		},
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		dataType : "json",
		success : function(data) {
			$("#area").css("display","block");
			var h="<option value=''>请选择</option>";
			for (var i = 0; i < data.length; i++) {
				var pr=data[i].name;
				var code=data[i].code;
				h +="<option value='"+code+"'>"+pr+"</option>"
			}
			$("#area").html(h);
			return;
		}
	});
	return;

	
}

function loadArea() {
	 $.ajax({
			url:"<%=request.getContextPath()%>" + "/basedata/data",
			contentType : "application/x-www-form-urlencoded;charset=utf-8",
			dataType : "json",
			success : function(data) {
				selectProvince(data)

			}
		});
}
//查询显示用户地址
function selectAddress() {
	 $.ajax({
			url:"<%=request.getContextPath()%>" + "/adress/selectAdress",
			contentType : "application/x-www-form-urlencoded;charset=utf-8",
			dataType : "json",
			success : function(data) {
				address(data);

			}
		});
}
function address(data){
	var h="<div class='address-item address-item-new'  id='J_newAddress' onclick='show()'><i class='iconfont'></i> 添加新地址</div>";
	for (var i = 0; i < data.length; i++) {
		var id=data[i].id;
		var name = data[i].addressee;
		var telephone=data[i].telephone;
		var provinceCode=data[i].province;
		var cityCode=data[i].city;
		var areaCode=data[i].area;
		var completeAddress=data[i].completeAddress;
		h+="<div class='address-item J_addressItem' ><dl><dt><a id='del"+i+"' style='display:none'>"+id+"</a><em class='uname'>"
		+name+"</em></dt><dd class='utel'>"+telephone+"</dd><dd class='uaddress'>"
		+provinceCode+""+cityCode+""+areaCode+"<br>"+completeAddress
		+"</dd></dl><div class='actions'><a class='modify J_addressModify' onclick='updateAddress("+i+")'>修改</a><a class='modify J_addressDel' onclick='deleteAddress("+i+")'>删除</a></div></div>"
	}
	$("#showAddress").html(h);
}

//根据id删除地址
function deleteAddress(a) {
	var id=$("#del"+a).html();
	 $.ajax({
			url:"<%=request.getContextPath()%>" + "/adress/deleteAdress",
			data:{
			 id:id	
			},
			contentType : "application/x-www-form-urlencoded;charset=utf-8",
			dataType : "text",
			success : function(data) {
				if(data==1){
					selectAddress()
				}else{
					alert("fail");
				}
				

			}
		});
	
}


</script>

</body>
</html>