package mall.basedata.mapper;

import java.util.List;

import mall.basedata.model.BaseDataModel;

public interface BaseMapper {
  List<BaseDataModel> selectProvince(BaseDataModel data);
  List<BaseDataModel> selectAll(BaseDataModel data);
}
