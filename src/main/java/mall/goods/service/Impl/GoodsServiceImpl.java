package mall.goods.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mall.goods.mapper.GoodsMapper;
import mall.goods.model.GoodsModel;
import mall.goods.model.ProductModel;
import mall.goods.service.GoodsService;
@Service("GoodsServiceImpl")
public  class GoodsServiceImpl implements GoodsService{
	@Autowired
    private GoodsMapper goodsmapper;
	public List<GoodsModel> selectAll(GoodsModel goods) {
		// TODO Auto-generated method stub
		List<GoodsModel> product = goodsmapper.selectAll(goods);
		return product;
	}
	public int insert(GoodsModel goods) {
		// TODO Auto-generated method stub
		int add = goodsmapper.insert(goods);
		if(add!=0) {
			return 1;
		}
		return 0;
	}
	public int delete(GoodsModel goods) {
		// TODO Auto-generated method stub
		int add = goodsmapper.delete(goods);
		if(add!=0) {
			return 1;
		}
		return 0;
	}
	public int update(GoodsModel goods) {
		// TODO Auto-generated method stub
		int add = goodsmapper.update(goods);
		if(add!=0) {
			return 1;
		}
		return 0;
	}
	

}
