package mall.order.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mall.order.model.AdressModel;
import mall.order.service.AdressService;
import mall.utill.Constant;
import mall.utill.Tools;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/adress")
public class AdressController {
	@Autowired
	private AdressService AdressServiceImpl;

	@RequestMapping("/add")
	public void insert(AdressModel adress, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		PrintWriter out = response.getWriter();
		String userid = (String) request.getSession().getAttribute("userid");
		String createtime = Tools.dateFormate();
		String updatetime = Tools.dateFormate();
		String creator = userid;
		String updater = userid;
		Integer iseffect = Constant.EFFECT_Y;
		Integer isdelete = Constant.DELETE_N;
		adress.setUserid(userid);
		adress.setCreatetime(createtime);
		adress.setUpdatetime(updatetime);
		adress.setCreator(creator);
		adress.setUpdater(updater);
		adress.setIsdelete(isdelete);
		adress.setIseffect(iseffect);
		int add = AdressServiceImpl.insert(adress);
		if (add != 0) {
			out.println("1");
		} else {
			out.println("0");
		}

	}

	@RequestMapping("/selectAdress")
	public void selectIdAdress(AdressModel adress, HttpServletResponse response, HttpServletRequest request)
			throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String) request.getSession().getAttribute("userid");
		if(userid==null||"".equals(userid)) {
			return;
		}
		adress.setUserid(userid);
		List<AdressModel> addressList = AdressServiceImpl.selectIdAdress(adress);
		JSONArray json = JSONArray.fromObject(addressList);
		out.print(json.toString());

		out.flush();
		out.close();

	}
	@RequestMapping("/deleteAdress")
	public void deleteAddress(AdressModel adress,HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		int del = AdressServiceImpl.delete(adress);
		if(del!=0) {
			out.print("1");
		}else {
			out.print("0");
		}
	}
	@RequestMapping("/updateAdress")
	public void updateAddress(AdressModel adress,HttpServletResponse response,HttpServletRequest request) throws IOException {
		PrintWriter out = response.getWriter();
		adress.setUpdatetime(Tools.dateFormate());
		String userid=(String) request.getSession().getAttribute("userid");
		adress.setUpdater(userid);
		int del = AdressServiceImpl.update(adress);
		if(del!=0) {
			out.print("1");
		}else {
			out.print("0");
		}
	}
}
