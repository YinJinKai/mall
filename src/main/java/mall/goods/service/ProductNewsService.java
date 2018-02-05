package mall.goods.service;

import java.util.List;

import mall.goods.model.ProductModel;

public interface ProductNewsService {
	int insert(ProductModel news);
	 int delete(ProductModel news);
	 int update(ProductModel news);
	 List<ProductModel> selectAll(ProductModel news);
	 List<ProductModel> selectByKey(ProductModel news);
	 List<ProductModel> selectGoods(ProductModel news);
	 int selectCount(ProductModel news);
	 int selectGCount(ProductModel news);
}
