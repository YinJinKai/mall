package mall.system.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mall.system.mapper.UserMapper;
import mall.system.model.UserModel;
import mall.system.service.UserService;

@Service("UserServiceImpl")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	public int registerSucceed(UserModel user) {
		String createtime=user.getCreatetime();
		String updatetime=user.getUpdatetime();
	    String creator=user.getCreator();
	    String updater=user.getUpdater();
	    Integer isdelete=user.getIsdelete();
	    Integer iseffect = user.getIseffect();
	    String userid = user.getUserid();
	    String username = user.getUsername();
	    Integer isseller = user.getIsseller();
	    String password = user.getPassword();
	    UserModel registerNews=new UserModel();
	    registerNews.setCreator(creator);
	    registerNews.setUpdater(updater);
	    registerNews.setIsdelete(isdelete);
	    registerNews.setIseffect(iseffect);
	    registerNews.setUserid(userid);
	    registerNews.setUsername(username);
	    registerNews.setIsseller(isseller);
	    registerNews.setPassword(password);
	    registerNews.setCreatetime(createtime);
	    registerNews.setUpdatetime(updatetime);
	    int count = userMapper.insertUser(registerNews);
	    if(count!=0) {
	    	return 1; //注册成功
	    }
		return 0;
	}
//   判断是否重复
	public List<UserModel> selectUserid(UserModel user) {
		// TODO Auto-generated method stub
		    String userid = user.getUserid();		   
		    String password = user.getPassword();
		    UserModel registerNews=new UserModel();
		    registerNews.setUserid(userid);
		    registerNews.setPassword(password);
		    List<UserModel> qurey = userMapper.selectUser(registerNews);
		    if(qurey==null||qurey.isEmpty()) {
		    	return null; 
		    }else{
		    	return qurey;// 账号重复
		    }
	}
	public int updateActive(UserModel user) {
		int count = userMapper.updateActive(user);
		if(count!=0) {
			return 1; //修改成功
		}
		return 0;
	}
	

}
