package mall.goods.model;

import mall.utill.BaseModel;

public class ProductModel extends BaseModel{
	private String keyWord;
    private String newsName;
    private String price;
    private Integer amount;
    private String pictures;
    private String producer;
    private String userid;
    private String classifyCode;
    private String oldPrice;
    private String url;
	private Integer pageNumber;
	private Integer pageSize;
	private String classifyTwoCode;
    private String keyType;//商品关键词信息 ,用于搜索
    private String detailDescr;//富文本描述
    
	public String getDetailDescr() {
		return detailDescr;
	}
	public void setDetailDescr(String detailDescr) {
		this.detailDescr = detailDescr;
	}
	public String getKeyType() {
		return keyType;
	}
	public void setKeyType(String keyType) {
		this.keyType = keyType;
	}
	public String getKeyWord() {
		return keyWord;
	}
	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
	public String getClassifyTwoCode() {
		return classifyTwoCode;
	}
	public void setClassifyTwoCode(String classifyTwoCode) {
		this.classifyTwoCode = classifyTwoCode;
	}
	public Integer getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
    
    public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getOldPrice() {
		return oldPrice;
	}
	public void setOldPrice(String oldPrice) {
		this.oldPrice = oldPrice;
	}
	public String getNewsName() {
		return newsName;
	}
	public void setNewsName(String newsName) {
		this.newsName = newsName;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getClassifyCode() {
		return classifyCode;
	}
	public void setClassifyCode(String classifyCode) {
		this.classifyCode = classifyCode;
	}
	public String getNews_name() {
		return newsName;
	}
	public String getPictures() {
		return pictures;
	}
	public void setPictures(String pictures) {
		this.pictures = pictures;
	}
	public void setNews_name(String news_name) {
		this.newsName = news_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public String getProducer() {
		return producer;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	
}
