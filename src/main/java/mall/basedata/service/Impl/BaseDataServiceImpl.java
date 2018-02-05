package mall.basedata.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mall.basedata.mapper.BaseMapper;
import mall.basedata.model.BaseDataModel;
import mall.basedata.service.BaseDataService;
@Service("BaseDataServiceImpl")
public class BaseDataServiceImpl implements BaseDataService{
	@Autowired
    private BaseMapper baseMapper;
	public List<BaseDataModel> selectAll(BaseDataModel data) {
		// TODO Auto-generated method stub
		List<BaseDataModel> area = baseMapper.selectProvince(data);
		return area;
	}
	public List<BaseDataModel> selectchild(BaseDataModel data) {
		// TODO Auto-generated method stub
		List<BaseDataModel> area = baseMapper.selectAll(data);
		return area;
	}

}
