package mall.order.model;

import java.util.ArrayList;
import java.util.List;

import mall.goods.model.ProductModel;

public class OrderModel extends ProductModel{
  private Integer subtotalPrice;
  private Integer totalPrice;
  private Integer orderCount;
  private Integer adressId;
  private String isdeal;
  private String buyList;//存放选择结算的商品id
  private String orderIdlist;//存放订单表id
  private String orderNumber;
  private Integer carId;
  private List<OrderModel> list=new ArrayList<OrderModel>();//存放商品信息
  //收货地址信息
  private String addressee;
  private String telephone;
  private String provinceCode;
  private String cityCode;
  private String areaCode;
  private String completeAddress;
  private String province;
  private String city;
  private String area;


public List<OrderModel> getList() {
	return list;
}
public void setList(List<OrderModel> list) {
	this.list = list;
}
public Integer getCarId() {
	return carId;
}
public void setCarId(Integer carId) {
	this.carId = carId;
}
public Integer getTotalPrice() {
	return totalPrice;
}
public void setTotalPrice(Integer totalPrice) {
	this.totalPrice = totalPrice;
}
public String getAddressee() {
	return addressee;
}
public void setAddressee(String addressee) {
	this.addressee = addressee;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}
public String getProvinceCode() {
	return provinceCode;
}
public void setProvinceCode(String provinceCode) {
	this.provinceCode = provinceCode;
}
public String getCityCode() {
	return cityCode;
}
public void setCityCode(String cityCode) {
	this.cityCode = cityCode;
}
public String getAreaCode() {
	return areaCode;
}
public void setAreaCode(String areaCode) {
	this.areaCode = areaCode;
}
public String getCompleteAddress() {
	return completeAddress;
}
public void setCompleteAddress(String completeAddress) {
	this.completeAddress = completeAddress;
}
public String getProvince() {
	return province;
}
public void setProvince(String province) {
	this.province = province;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getArea() {
	return area;
}
public void setArea(String area) {
	this.area = area;
}
public String getOrderIdlist() {
	return orderIdlist;
}
public void setOrderIdlist(String orderIdlist) {
	this.orderIdlist = orderIdlist;
}
public String getOrderNumber() {
	return orderNumber;
}
public void setOrderNumber(String orderNumber) {
	this.orderNumber = orderNumber;
}
public Integer getSubtotalPrice() {
	return subtotalPrice;
}
public void setSubtotalPrice(Integer subtotalPrice) {
	this.subtotalPrice = subtotalPrice;
}
public String getBuyList() {
	return buyList;
}
public void setBuyList(String buyList) {
	this.buyList = buyList;
}
public Integer getOrderCount() {
	return orderCount;
}
public void setOrderCount(Integer orderCount) {
	this.orderCount = orderCount;
}
public Integer getAdressId() {
	return adressId;
}
public void setAdressId(Integer adressId) {
	this.adressId = adressId;
}
public String getIsdeal() {
	return isdeal;
}
public void setIsdeal(String isdeal) {
	this.isdeal = isdeal;
}
  
}
