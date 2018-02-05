package mall.order.mapper;

import java.util.List;

import mall.order.model.AdressModel;

public interface AdressMapper {
       int insert(AdressModel adress);
       int delete(AdressModel adress);
       int update(AdressModel adress);
       List<AdressModel> selectIdAdress(AdressModel adress);
}
