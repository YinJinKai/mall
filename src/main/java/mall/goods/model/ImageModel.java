package mall.goods.model;

import mall.utill.BaseModel;

public class ImageModel extends BaseModel{
	
	private String url;
	private Integer type;
    
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

}
