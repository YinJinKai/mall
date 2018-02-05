package mall.goods.model;

import java.util.ArrayList;
import java.util.List;

import mall.utill.BaseModel;


public class GoodsModel extends BaseModel{
private String product_name; //产品分类名
private String parentcode;
private List<GoodsModel> list = new ArrayList<GoodsModel>();

public String getProduct_name() {
	return product_name;
}
public List<GoodsModel> getList() {
	return list;
}
public void setList(List<GoodsModel> list) {
	this.list = list;
}
public void setProduct_name(String product_name) {
	this.product_name = product_name;
}

public String getParentcode() {
	return parentcode;
}
public void setParentcode(String parentcode) {
	this.parentcode = parentcode;
}
}
