package mall.system.service;

import java.util.List;

import mall.system.model.UserModel;

public interface UserService {
      int registerSucceed(UserModel user);
      int updateActive(UserModel user);
      List<UserModel> selectUserid(UserModel user);
      
}
