package mall.order.service;

import java.util.List;

import mall.order.model.AdressModel;

public interface AdressService {
   int insert(AdressModel adress);
   int delete(AdressModel adress);
   int update(AdressModel adress);
   List<AdressModel> selectIdAdress(AdressModel adress);
}
