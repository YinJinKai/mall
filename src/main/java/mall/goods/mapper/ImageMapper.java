package mall.goods.mapper;

import java.util.List;

import mall.goods.model.ImageModel;

public interface ImageMapper {
    int insert(ImageModel image);
    int update(ImageModel image);
    List<ImageModel> select(ImageModel image);
}
