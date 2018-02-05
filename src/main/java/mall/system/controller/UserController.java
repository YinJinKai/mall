package mall.system.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.fabric.Response;

import mall.system.model.UserModel;
import mall.system.service.UserService;
import mall.utill.Constant;
import mall.utill.Md5;
import mall.utill.Tools;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/mall")
public class UserController {
	@Autowired
	private UserService UserServiceImpl;

	@RequestMapping("/register")
	@ResponseBody
	public String userRegister(UserModel user,HttpServletResponse response) throws UnsupportedEncodingException {
		
		String createtime = Tools.dateFormate();
		String updatetime = Tools.dateFormate();
		String userid = user.getUserid();
		String username = user.getUsername();
		String passwordno = user.getPassword();
		String password=Md5.jiami(passwordno);
		UserModel id=new UserModel();
		id.setUserid(userid);
		List<UserModel> isre = UserServiceImpl.selectUserid(id);//≈–∂œ’À∫≈ «∑Ò÷ÿ∏¥
		if (isre != null && !isre.isEmpty()) {
			
			return "1";
		}
		if(username==null||"".equals(username)) {//µ⁄“ª≤Ω’À∫≈≤ª¥Ê ˝æ›ø‚
			return null;
		}
		Integer isseller = user.getIsseller();
		if(isseller==null) {
			isseller=0;
		}
		if (isseller == 1) {
			isseller = Constant.SELLER_Y;
		} else if(isseller==2){
			isseller = Constant.SELLER_N;
		}
		UserModel userRegister = new UserModel();
		userRegister.setCreatetime(createtime);
		userRegister.setUpdatetime(updatetime);
		userRegister.setUserid(userid);
		userRegister.setUsername(username);
		userRegister.setPassword(password);
		userRegister.setIsseller(isseller);
		String creator = userid;
		String updater = userid;
		Integer iseffect = Constant.EFFECT_Y;
		Integer isdelete = Constant.DELETE_N;
		userRegister.setCreator(creator);
		userRegister.setUpdater(updater);
		userRegister.setIseffect(iseffect);
		userRegister.setIsdelete(isdelete);
		int isadd = UserServiceImpl.registerSucceed(userRegister);
		if (isadd == 1) {
			return "1";
		} else {
			return "0";
		}

	}

	@RequestMapping("/login")
	public String userLogin(UserModel user, HttpServletRequest request,HttpServletResponse response) throws IOException {
        PrintWriter out=response.getWriter();
		String userid;
		String password;
		String authCode=(String) request.getSession().getAttribute("authCode");
		if(user.getYanz()==null||user.getYanz().equals("")) {
			return null;
			
		}
		if(!user.getYanz().equals(authCode)) {
			out.print("0");
			return null;
		}
		if(user.getPassword()==null||user.getPassword().equals("")) {
			return null;
		}else {
			password = Md5.jiami(user.getPassword());
		}
		if(user.getUserid()==null||user.getUserid().equals("")) {
			return null;
		}else {
			userid=user.getUserid();
		}
		UserModel userLogin = new UserModel();
		userLogin.setUserid(userid);
		userLogin.setPassword(password);
		List<UserModel> have = UserServiceImpl.selectUserid(userLogin);
		if (have == null || have.isEmpty()) {
			out.print("1");
			out.flush();
			out.close();
			return null;
		} 
		Integer seller = have.get(0).getIsseller();
		if(seller==1) {
			request.getSession().setAttribute("sellerid", userid);
			out.print("3");
			out.flush();
			out.close();
			return null;
		}
		if (seller!=1) {
			request.getSession().setAttribute("userid", userid);
			out.print("2");
			out.flush();
			out.close();
			return null;
		} 
		
		return null;
	}

	@RequestMapping(value="/userid",produces = "application/text;charset=utf-8")
	@ResponseBody
	public String selectuserid(HttpServletResponse response, HttpServletRequest request) throws IOException {
		String userid = (String) request.getSession().getAttribute("userid");
		UserModel selectid = new UserModel();
		selectid.setUserid(userid);
		List<UserModel> useridList = UserServiceImpl.selectUserid(selectid);
		JSONArray json = JSONArray.fromObject(useridList);
		return json.toString();

	}
	@RequestMapping(value="/sellerid",produces = "application/text;charset=utf-8")
	@ResponseBody
	public String selectsellerid(HttpServletResponse response, HttpServletRequest request) throws IOException {
		String userid = (String) request.getSession().getAttribute("sellerid");
		UserModel selectid = new UserModel();
		selectid.setUserid(userid);
		selectid.setIsseller(1);
		List<UserModel> useridList = UserServiceImpl.selectUserid(selectid);
		JSONArray json = JSONArray.fromObject(useridList);
		return json.toString();

	}
	@RequestMapping("/session")
	public void getSession(HttpServletRequest request,HttpServletResponse response,UserModel user) throws IOException {
		PrintWriter out=response.getWriter();
		String userid=(String) request.getSession().getAttribute("userid");
		if(userid==null||"".equals(userid)) {
			out.print("1"); //Œ¥µ«¬º
			return;
		}
		
		user.setUserid(userid);
		List<UserModel> useridList = new ArrayList<UserModel>();
		useridList.add(user);
		JSONArray json = JSONArray.fromObject(useridList);
		out.print(json.toString());
	}
	@RequestMapping("/sellersession")
	public void getSellerSession(HttpServletRequest request,HttpServletResponse response,UserModel user) throws IOException {
		PrintWriter out=response.getWriter();
		String userid=(String) request.getSession().getAttribute("sellerid");
		if(userid==null||"".equals(userid)) {
			out.print("1"); //Œ¥µ«¬º
			return;
		}
		
		user.setUserid(userid);
		List<UserModel> useridList = new ArrayList<UserModel>();
		useridList.add(user);
		JSONArray json = JSONArray.fromObject(useridList);
		out.print(json.toString());
	}

	@RequestMapping(value="/userUpdate",produces = "application/text;charset=utf-8")
	@ResponseBody
	public String userupdate(UserModel user, HttpServletRequest request) {
		
		UserModel a = new UserModel();
		a.setUserid(user.getUserid());
		List<UserModel> idlist = UserServiceImpl.selectUserid(a);

		if (idlist == null && idlist.isEmpty()) {
			return "Error";// ¥ÌŒÛ–≈œ¢
		}
		Integer id = idlist.get(0).getId();
		user.setId(id);
		int isupdate = UserServiceImpl.updateActive(user);
		UserModel b = new UserModel();
		b.setId(user.getId());
		if (isupdate == 1) {
			List<UserModel> userNew = UserServiceImpl.selectUserid(b);
			JSONArray json = JSONArray.fromObject(userNew);
			return json.toString();
		} else {
			return "Error";
		}

	}
	@RequestMapping("/remove")
	public void removesession(HttpServletRequest request,HttpServletResponse response) throws IOException {
		PrintWriter out=response.getWriter();
		request.getSession().removeAttribute("userid");
		request.getSession().removeAttribute("sellerid");
	   String userid = (String) request.getSession().getAttribute("userid");
	   if(userid==null||"".equals(userid)) {
		   out.println("1");
	   }else {
		   out.println("0");
	   }
	   
	   
	   
	   
	   
	   
	   
	   
	 }
}
