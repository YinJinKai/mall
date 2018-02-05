package mall.goods.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import mall.goods.model.ProductModel;
import mall.goods.service.ProductNewsService;
import mall.intercept.Auth;
import mall.utill.Constant;
import mall.utill.Tools;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/productnews")
public class ProductController {
	@Autowired
	private ProductNewsService ProductNewsServiceImpl;

	@RequestMapping("/addNews")
	public void insertProduct(ProductModel news, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		PrintWriter out = response.getWriter();
		String userid = (String) request.getSession().getAttribute("sellerid");// 应该是卖家的登录id
		String createtime = Tools.dateFormate();
		String updatetime = Tools.dateFormate();
		String creator = userid;
		String updater = userid;
		Integer iseffect = Constant.EFFECT_Y;
		Integer isdelete = Constant.DELETE_N;
		String classifyCode = news.getClassifyCode();
		String code1 = "333" + Tools.datecode().trim();
	
		news.setCode(code1);
		news.setUserid(userid);
		news.setCreatetime(createtime);
		news.setUpdatetime(updatetime);
		news.setCreator(creator);
		news.setUpdater(updater);
		news.setIseffect(iseffect);
		news.setIsdelete(isdelete);
		int add = ProductNewsServiceImpl.insert(news);
		if (add != 0) {
			out.println("1");
			return;
		}

		out.flush();
		out.close();

	}

	@RequestMapping("/showNews")
	public void selectAll(ProductModel news, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		ProductModel selectNews = new ProductModel();
		selectNews.setType(0);//选择图片位置
		
		selectNews.setKeyType(news.getKeyType());
		List<ProductModel> newsList = ProductNewsServiceImpl.selectAll(selectNews);
		JSONArray json = JSONArray.fromObject(newsList);
		
		out.print(json.toString());
		out.flush();
		out.close();

	}
	//详情页
	@RequestMapping("/showProductPage")
	public String showProductPage(ProductModel news, Model m) {
		ProductModel selectOneNews=new ProductModel();
		selectOneNews.setId(news.getId());
		selectOneNews.setType(1);
		List<ProductModel> oneNews = ProductNewsServiceImpl.selectAll(selectOneNews);
		
		if(oneNews==null||oneNews.isEmpty()) {
			return"redirect:/index.jsp";
		}
		Integer id = oneNews.get(0).getId();
		String code=oneNews.get(0).getCode();
		String newsName=oneNews.get(0).getNewsName();
		String descr=oneNews.get(0).getDescr();
		String price=oneNews.get(0).getPrice();
		String oldprice=oneNews.get(0).getOldPrice();
		if(oldprice!=null||!"".equals(oldprice)) {
			oldprice+="元";
		}
		String url=oneNews.get(0).getUrl();
		m.addAttribute("code", code);
		m.addAttribute("id",id);
		m.addAttribute("newsName", newsName);
		m.addAttribute("descr", descr);
		m.addAttribute("price", price);
		m.addAttribute("oldprice", oldprice);
		m.addAttribute("url", url);
		return "/newsPages";
		
	}
	//显示修改页的商品
	@RequestMapping("/showUpdate")
    public void showUpdateProduct(ProductModel news, HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		int zcount = ProductNewsServiceImpl.selectGCount(news);//查询总数
		news.getPager().setRowCount(zcount);
		int[] pageNumber = news.getPager().getIndexs();//得到页码数
		List<ProductModel> upadtelist = ProductNewsServiceImpl.selectGoods(news);
		HashMap<String , Object> qureyListMap = new HashMap();
		qureyListMap.put("total", zcount);
		qureyListMap.put("upadtelist", upadtelist);
		qureyListMap.put("pageNumber", pageNumber);
		JSONArray json = JSONArray.fromObject(qureyListMap);
	    System.out.println(json.toString());
		out.print(json.toString());
		out.flush();
		out.close();
		
	}
	@RequestMapping("/deleteGoods")
	public void deleteGoods(ProductModel news, HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		int add = ProductNewsServiceImpl.delete(news);
		if(add==0) {
			out.println("1");
			
		}else {
			out.println("0");
		}
		
	}
	@RequestMapping("/updateGoods")
	public void updateGoods(ProductModel news, HttpServletRequest request, HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
	    System.out.println(news.getId());
	    System.out.println(news.getKeyType());
		int add = ProductNewsServiceImpl.update(news);
		if(add==0) {
			out.println("1");
			
		}else {
			out.println("0");
		}
	}
	@RequestMapping("/search")
	public String search(ProductModel news, Model m) {
	    String keyWord=news.getKeyWord();
	    if(keyWord==null||"".equals(keyWord)) {
	    	return "redirect:/index.jsp";
	    }
		m.addAttribute("keyWord", keyWord);
		return "/search";
		
		
	}
	@RequestMapping("/searchedContent")
	public void searchContent(ProductModel news, HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		ProductModel key=new ProductModel();
		key.setKeyWord(news.getKeyWord());
		int pagecount = ProductNewsServiceImpl.selectCount(key);//查询总记录数
		news.getPager().setRowCount(pagecount);
		int[] pageNumber = news.getPager().getIndexs();//得到页码数
		news.setType(1);//选择图片位置
		
		List<ProductModel> qureyList = ProductNewsServiceImpl.selectByKey(news);
		if(qureyList==null||qureyList.isEmpty()) {
			out.print("1");
			return;
		}
		HashMap<String , Object> qureyListMap = new HashMap();
		qureyListMap.put("total", pagecount);
		qureyListMap.put("qureyList", qureyList);
		qureyListMap.put("pageNumber", pageNumber);
		JSONArray json = JSONArray.fromObject(qureyListMap);
		out.println(json.toString());
		out.flush();
		out.close();
		
	}
	@RequestMapping(value="/detail",method = {RequestMethod.POST,RequestMethod.GET})
	public String detailPage(ProductModel news, Model m,@RequestParam(value="action",required=false)String ss) {
		List<ProductModel> list = ProductNewsServiceImpl.selectAll(news);
		String dd=list.get(0).getDetailDescr();
		String name=list.get(0).getNewsName();
		if(ss.equals("gaishu")) {
			m.addAttribute("ss", "概述");
		}else if(ss.equals("canshu")) {
			m.addAttribute("ss", "参数");
		}else if(ss.equals("xiangqing")) {
			m.addAttribute("ss", "商品详情");
		}
		m.addAttribute("detail", dd);
		m.addAttribute("name", name);
		return "/detailDescr";
		
		
	}
}
