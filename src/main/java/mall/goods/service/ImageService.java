package mall.goods.service;

import java.util.List;

import mall.goods.model.ImageModel;

public interface ImageService {
  int insert(ImageModel image);
  int update(ImageModel image);
  List<ImageModel> select(ImageModel image);
}
