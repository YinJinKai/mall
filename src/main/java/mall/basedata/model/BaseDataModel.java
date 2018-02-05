package mall.basedata.model;

import java.util.ArrayList;
import java.util.List;

public class BaseDataModel {
private Integer id;
private String code;
private String parentcode;
private String name;
private String type;

public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
public String getParentcode() {
	return parentcode;
}
public void setParentcode(String parentcode) {
	this.parentcode = parentcode;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
}
