package mall.order.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mall.goods.model.ProductModel;
import mall.order.mapper.ShopCarMapper;
import mall.order.model.ShopCarModel;
import mall.order.service.ShopCarService;
@Service("ShopCarServiceImpl")
public class ShopCarServiceImpl implements ShopCarService{
	@Autowired
    private ShopCarMapper shopCarMapper;
	//查询购物车对应的商品信息
	public List<ShopCarModel> select(ShopCarModel car) {
		// TODO Auto-generated method stub
		List<ShopCarModel> idProduct = shopCarMapper.select(car);
		
		return idProduct;
	}
	//添加购物车之前的查询
	public List<ProductModel> selectNews(ProductModel news) {
		// TODO Auto-generated method stub
		List<ProductModel> productList = shopCarMapper.selectNews(news);
		return productList;
	}

	public int insert(ShopCarModel car) {
		// TODO Auto-generated method stub
		int add = shopCarMapper.insert(car);
		if(add!=0) {
			return 1;
		}
		return 0;
	}

	public int update(ShopCarModel car) {
		// TODO Auto-generated method stub
		int add = shopCarMapper.update(car);
		if(add!=0) {
			return 1;
		}
		return 0;
		
	}

	public int delete(ShopCarModel car) {
		// TODO Auto-generated method stub
		int add = shopCarMapper.delete(car);
		if(add!=0) {
			return 1;
		}
		return 0;
	}

	public ShopCarModel selectCount(ShopCarModel car) {
		// TODO Auto-generated method stub
		ShopCarModel c = shopCarMapper.selectCount(car);
		return c;
	}
	public List<ShopCarModel> selectIsHas(ShopCarModel car) {
		// TODO Auto-generated method stub
		List<ShopCarModel> add = shopCarMapper.selectIsHas(car);
		return add;
	}



}
