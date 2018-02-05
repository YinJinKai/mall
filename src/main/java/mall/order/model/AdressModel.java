package mall.order.model;

import mall.utill.BaseModel;

public class AdressModel extends BaseModel{
   private String userid;
   private String addressee;
   private String telephone;
   private String provinceCode;
   private String cityCode;
   private String areaCode;
   private String completeAddress;
   private String province;
   private String city;
   private String area;
   
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
public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
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
public void setCompleteAddress(String completeAdress) {
	this.completeAddress = completeAdress;
}
   
}
