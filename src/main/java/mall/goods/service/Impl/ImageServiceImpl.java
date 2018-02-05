package mall.goods.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mall.goods.mapper.ImageMapper;
import mall.goods.model.ImageModel;
import mall.goods.service.ImageService;
@Service("ImageServiceImpl")
public class ImageServiceImpl implements ImageService{
  @Autowired
   private ImageMapper imageMapper;
	public int insert(ImageModel image) {
		int add = imageMapper.insert(image);
		if(add!=0) {
			return 0;
		}
		return 1;
	}
	public int update(ImageModel image) {
		// TODO Auto-generated method stub
		int add= imageMapper.update(image);
		if(add!=0) {
			return 0;
		}
		return 1;
	}
	public List<ImageModel> select(ImageModel image) {
		// TODO Auto-generated method stub
		List<ImageModel> list = imageMapper.select(image);
		return list;
	}

}
