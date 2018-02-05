package mall.system.mapper;

import java.util.List;

import mall.system.model.UserModel;

public interface UserMapper {
   List<UserModel> selectUser(UserModel user);
   int insertUser(UserModel user);
   int updateActive(UserModel user);    
}
