package mall.order.model;


import mall.goods.model.ProductModel;
import mall.utill.BaseModel;

public class ShopCarModel extends ProductModel{
  private Integer carCount;
  private Integer subtotalPrice;
  private Integer totalPrice;
  private String  idlist;//����ѡ�й��ﳵid
  private Integer count;//���ﳵ����
  
  

public Integer getCount() {
	return count;
}
public void setCount(Integer count) {
	this.count = count;
}
public String getIdlist() {
	return idlist;
}
public void setIdlist(String idlist) {
	this.idlist = idlist;
}
public Integer getSubtotalPrice() {
	return subtotalPrice;
}
public void setSubtotalPrice(Integer subtotalPrice) {
	this.subtotalPrice = subtotalPrice;
}
public Integer getTotalPrice() {
	return totalPrice;
}
public void setTotalPrice(Integer totalPrice) {
	this.totalPrice = totalPrice;
}
public Integer getCarCount() {
	return carCount;
}
public void setCarCount(Integer carCount) {
	this.carCount = carCount;
}
  
}
