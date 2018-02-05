package mall.order.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mall.order.mapper.AdressMapper;
import mall.order.model.AdressModel;
import mall.order.service.AdressService;
import mall.utill.Tools;
@Service("AdressServiceImpl")
public class AdressServiceImpl implements AdressService{
	@Autowired
    private AdressMapper adressMapper;
	public int insert(AdressModel adress) {
		// TODO Auto-generated method stub
		int add = adressMapper.insert(adress);
		if(add!=0) {
			return 1;//succeed
		}
		return 0;
	}
	public List<AdressModel> selectIdAdress(AdressModel adress) {
		// TODO Auto-generated method stub
		List<AdressModel> iDaddress = adressMapper.selectIdAdress(adress);
		return iDaddress;
	}
	public int delete(AdressModel adress) {
		// TODO Auto-generated method stub
		int del = adressMapper.delete(adress);
		if(del!=0) {
			return 1;
		}
		return 0;
	}
	public int update(AdressModel adress) {
		// TODO Auto-generated method stub
		int ua = adressMapper.update(adress);
		if(ua!=0) {
			return 1;
		}
		return 0;
	}

}
