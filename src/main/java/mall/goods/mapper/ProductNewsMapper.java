package mall.goods.mapper;

import java.util.List;

import mall.goods.model.ProductModel;

public interface ProductNewsMapper {
	 int insert(ProductModel news);
	 int delete(ProductModel news);
	 int update(ProductModel news);
	 List<ProductModel> selectAll(ProductModel news);
	 List<ProductModel> selectByKey(ProductModel news);
	 int selectCount(ProductModel news);
	 int selectGCount(ProductModel news);
	 List<ProductModel> selectGoods(ProductModel news);
	 
}
