package mall.order.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mall.goods.model.ProductModel;
import mall.order.model.ShopCarModel;
import mall.order.service.ShopCarService;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/cart")
public class ShopCarController {
	@Autowired
    private ShopCarService ShopCarServiceImpl;
	@RequestMapping("/add")
//	��ӵ����ﳵ
	public String addCar(ShopCarModel car,Model m,HttpServletRequest request) {
		String userid=(String) request.getSession().getAttribute("userid");
		
		ShopCarModel isre=new ShopCarModel();
		String  goodscode=car.getCode();//��Ʒcode 
		isre.setCode(goodscode);
		List<ShopCarModel> goodsisre = ShopCarServiceImpl.selectIsHas(isre);//�жϹ��ﳵ�Ƿ�����
		if(goodsisre!=null&&!goodsisre.isEmpty()) {
			
			Integer count=goodsisre.get(0).getCarCount();
			goodsisre.get(0).getSubtotalPrice();//����鵽�� ��ù��ﳵ�������ܼ�
			ShopCarModel forMoney=new ShopCarModel();
			forMoney.setId(goodsisre.get(0).getId());
			List<ShopCarModel> forPrice = ShopCarServiceImpl.select(forMoney);//���ݹ��ﳵ��id ������ѯ ��Ʒ����
			Integer price=Integer.parseInt(forPrice.get(0).getPrice());
			Integer carCount=count+=1;
			Integer subtotalPrice=price*carCount;
			ShopCarModel isreup=new ShopCarModel();
			isreup.setId(goodsisre.get(0).getId());
			isreup.setCarCount(carCount);
			isreup.setSubtotalPrice(subtotalPrice);
			ShopCarServiceImpl.update(isreup);//�޸����ݺ�������ݿ�
			return "/buysuccess";
			
		}
		
		
		
		ProductModel news=new ProductModel();
		news.setId(car.getId());//��Ʒ���id��������ѯ��Ʒ��Ϣ
		List<ProductModel> productList = ShopCarServiceImpl.selectNews(news);
		if(productList==null||productList.isEmpty()) {
			return null;
		}
		Integer id=productList.get(0).getId();
		String newsName=productList.get(0).getNewsName();
		
		Integer price=Integer.parseInt(productList.get(0).getPrice());
		Integer carCount=1;
		Integer subtotalPrice=price;
		
		ShopCarModel insertCar=new ShopCarModel();
		
		insertCar.setUserid(userid);
		insertCar.setCode(productList.get(0).getCode());
		insertCar.setSubtotalPrice(subtotalPrice);
		insertCar.setCarCount(carCount);
		ShopCarServiceImpl.insert(insertCar);
		m.addAttribute("newsName",newsName);
		m.addAttribute("id", id);
		return "/buysuccess";
		
	}
	@RequestMapping("/added")
//	���ع��ﳵ
	public void selectCar(ShopCarModel car,HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String userid=(String) request.getSession().getAttribute("userid");
		if(userid==null||"".equals(userid)) {
			return;
		}
		ShopCarModel p=new ShopCarModel();
		p.setUserid(userid);
		p.setType(0);
		List<ShopCarModel> ProductByUserList = ShopCarServiceImpl.select(p);
		JSONArray json = JSONArray.fromObject(ProductByUserList);
		out.print(json.toString());

		out.flush();
		out.close();
		
		
		}
	@RequestMapping("/calculate")
//���㹺�ﳵ
	public void calculate(ShopCarModel car,HttpServletRequest request,HttpServletResponse response) throws IOException{
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		ShopCarModel id=new ShopCarModel();
		id.setId(car.getId());//���ﳵ��id
		List<ShopCarModel> forPrice = ShopCarServiceImpl.select(id);
		Integer price=Integer.parseInt(forPrice.get(0).getPrice());//С��
		Integer count=car.getCarCount();
		Integer subtotalPrice=price*count;
		ShopCarModel up=new ShopCarModel();
		up.setId(car.getId());
		up.setCarCount(count);
		up.setSubtotalPrice(subtotalPrice);
		int addsubtotalPrice=ShopCarServiceImpl.update(up);
		out.println(subtotalPrice);
		
		}
	@RequestMapping("/total")
	public void totalPrice(ShopCarModel car,HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		List<Integer> num=new ArrayList<Integer>();
		String idlist=car.getIdlist();
		String[] id = idlist.split(",");
		if(id==null||id.length==0) {
			out.println("0");
			return;
			
		}
		for(int i=0;i<id.length;i++){
			if("".equals(id[i])) {
				return;
			}
			Integer id1=Integer.parseInt(id[i]);
			car.setId(id1);
			List<ShopCarModel> totalP = ShopCarServiceImpl.select(car);
			Integer subprice=totalP.get(0).getSubtotalPrice();
			num.add(subprice);
		}
		Integer price=0;
		Integer totalPrice=0;
		for(int i=0;i<num.size();i++) {
			totalPrice=price+=num.get(i);
		}
		out.println(totalPrice);
		
		
	}
  @RequestMapping("/del")
  public void  delete(ShopCarModel car,HttpServletResponse response) {
	
	  int add=ShopCarServiceImpl.delete(car);
  }
  @RequestMapping("/getCount")
  public void selectCount(ShopCarModel car,HttpServletRequest request,HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		String userid=(String) request.getSession().getAttribute("userid");
		car.setUserid(userid);
		
	    ShopCarModel count = ShopCarServiceImpl.selectCount(car);//Ϊ�˷��㽫���ݷ���ҳ�� ��������Ϊxxxmodel
	    count.setUserid(userid);
	    List<ShopCarModel> count2=new ArrayList<ShopCarModel>();
	    count2.add(count);
	    
	    JSONArray json = JSONArray.fromObject(count2);
		out.print(json.toString());
        out.flush();
		out.close();
	  
  }

}
