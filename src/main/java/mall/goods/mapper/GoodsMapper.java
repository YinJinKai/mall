package mall.goods.mapper;

import java.util.List;

import mall.goods.model.GoodsModel;
import mall.goods.model.ProductModel;

public interface GoodsMapper {
   List<GoodsModel> selectAll(GoodsModel goods);
   int insert(GoodsModel goods);
   int delete(GoodsModel goods);
   int update(GoodsModel goods);
}
