package mall.goods.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mall.goods.model.GoodsModel;
import mall.goods.service.GoodsService;
import mall.utill.Tools;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/product")
public class GoodsController {

	@Autowired
	private GoodsService GoodsServiceImpl;

	@RequestMapping("/showproduct")
	public void queryProductTypeAll(HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		GoodsModel showProduct = new GoodsModel();
		showProduct.setOrder("ASC");
		showProduct.setSort("parentcode");
		List<GoodsModel> list = GoodsServiceImpl.selectAll(showProduct);
		List<GoodsModel> result = new ArrayList<GoodsModel>();
		for (GoodsModel ptm : list) {
			String parentcode = ptm.getParentcode();
			if ("0".equals(parentcode)) {
				result.add(ptm);
				continue;
			}
			for (GoodsModel ptm2 : result) {
				if (parentcode.equals(ptm2.getCode())) {
					ptm2.getList().add(ptm);
					break;
				}
			}

		}
		Map<String, Object> jsonMap = new HashMap<String, Object>();
		jsonMap.put("list", result);

		PrintWriter out = response.getWriter();
		JSONArray json = JSONArray.fromObject(jsonMap);
		out.print(json.toString());

		out.flush();
		out.close();
	}
	@RequestMapping("/selectSecond")
	public void selectTwo(GoodsModel goods, HttpServletResponse response,HttpServletRequest request) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		List<GoodsModel> childList = GoodsServiceImpl.selectAll(goods);
		PrintWriter out = response.getWriter();
		JSONArray json = JSONArray.fromObject(childList);
		out.print(json.toString());

		out.flush();
		out.close();
		
		
	}
	@RequestMapping("/addClassify")
	public void insert(GoodsModel goods, HttpServletResponse response, HttpServletRequest request) throws IOException {
		PrintWriter out = response.getWriter();
		String code1 = "111" + Tools.datecode();
		String parentcode="0";
	
		goods.setCode(code1);
		goods.setParentcode(parentcode);
		String goodsName=goods.getProduct_name();
		GoodsModel a=new GoodsModel();
		List<GoodsModel> list = GoodsServiceImpl.selectAll(a);
		for(GoodsModel name:list) {
			String pn = name.getProduct_name();
			if(pn.equals(goodsName)) {
				out.println("1");
				return;
			}
		}
		GoodsServiceImpl.insert(goods);
	}

	@RequestMapping("/addChild")
	public void insertchild(GoodsModel goods, HttpServletResponse response, HttpServletRequest request) throws IOException {
		PrintWriter out = response.getWriter();
		String goodsName=goods.getProduct_name();
		GoodsModel a=new GoodsModel();
		List<GoodsModel> list = GoodsServiceImpl.selectAll(a);
		for(GoodsModel name:list) {
			String pn = name.getProduct_name();
			if(pn.equals(goodsName)) {
				out.println("1");
				return;
			}
		}
		String code1 = "222" + Tools.datecode();
		
		String parentcode=goods.getParentcode();
		GoodsModel g=new GoodsModel();
		g.setCode(code1);
		g.setParentcode(parentcode);
		g.setProduct_name(goods.getProduct_name());
		GoodsServiceImpl.insert(g);
	}
	@RequestMapping("/deleteClass")
	public void delete(GoodsModel goods, HttpServletResponse response) {
		GoodsServiceImpl.delete(goods);
	}
	@RequestMapping("/updateClass")
	public void update(GoodsModel goods, HttpServletResponse response) {
		GoodsServiceImpl.update(goods);
	}

}
