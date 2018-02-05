package mall.goods.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mall.goods.mapper.ProductNewsMapper;
import mall.goods.model.ProductModel;
import mall.goods.service.ProductNewsService;
@Service("ProductNewsServiceImpl")
public class ProductNewsServiceImpl implements ProductNewsService{
	@Autowired
    private ProductNewsMapper productmapper;
	public int insert(ProductModel news) {
		// TODO Auto-generated method stub
		int add = productmapper.insert(news);
		if(add!=0) {
			return 0; //插入成功
		}
		return 1;
	}
	public List<ProductModel> selectAll(ProductModel news) {
		// TODO Auto-generated method stub
		List<ProductModel> newsList = productmapper.selectAll(news);
		return newsList;
	}
	public int delete(ProductModel news) {
		// TODO Auto-generated method stub
		int add = productmapper.delete(news);
		if(add!=0) {
			return 0; //插入成功
		}
		return 1;
	}
	public int update(ProductModel news) {
		// TODO Auto-generated method stub
		int add = productmapper.update(news);
		if(add!=0) {
			return 0; //插入成功
		}
		return 1;
	}
	public List<ProductModel> selectByKey(ProductModel news) {
		// TODO Auto-generated method stub
		List<ProductModel> list =productmapper.selectByKey(news);
		return list;
	}
	public int selectCount(ProductModel news) {
		// TODO Auto-generated method stub
		int add = productmapper.selectCount(news);
		return add;
	}
	public List<ProductModel> selectGoods(ProductModel news) {
		// TODO Auto-generated method stub
		List<ProductModel> list = productmapper.selectGoods(news);
		return list;
	}
	public int selectGCount(ProductModel news) {
		// TODO Auto-generated method stub
		int add = productmapper.selectGCount(news);
		return add;
	}

}
