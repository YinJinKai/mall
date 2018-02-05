package mall.order.service;

import java.util.List;

import mall.goods.model.ProductModel;
import mall.order.model.ShopCarModel;

public interface ShopCarService {
	 List<ProductModel> selectNews(ProductModel news);
	 List<ShopCarModel> select(ShopCarModel car);
     int insert(ShopCarModel car);
     int update(ShopCarModel car);
     int delete(ShopCarModel car);
     ShopCarModel selectCount(ShopCarModel car);
     List<ShopCarModel> selectIsHas(ShopCarModel car);
}
