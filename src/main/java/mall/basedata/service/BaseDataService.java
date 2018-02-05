package mall.basedata.service;

import java.util.List;

import mall.basedata.model.BaseDataModel;

public interface BaseDataService {
	List<BaseDataModel> selectAll(BaseDataModel data);
	 List<BaseDataModel> selectchild(BaseDataModel data);
}
