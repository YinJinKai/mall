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
import org.springframework.web.bind.annotation.RequestMethod;

import mall.goods.model.ProductModel;
import mall.order.model.OrderModel;
import mall.order.model.ShopCarModel;
import mall.order.service.OrderService;
import mall.order.service.ShopCarService;
import mall.utill.Tools;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderService OrderServiceImpl;
	@Autowired
	private ShopCarService ShopCarServiceImpl;

	@RequestMapping(value="/addOrder",produces = "application/text;charset=utf-8")
	// 购物车结算到下单
	public String insert(OrderModel order, HttpServletRequest request, HttpServletResponse response, Model m)
			throws IOException {
		PrintWriter out = response.getWriter();
		String userid = (String) request.getSession().getAttribute("userid");
		String buyList = order.getBuyList();
		String orderNumber = userid + Tools.datecode();
		String[] idlist = buyList.split(",");
		if (idlist == null || idlist.length == 0) { // 获取用户选择要结算的购物车id
			return null;

		}
		for (int i = 0; i < idlist.length; i++) {
			if ("".equals(idlist[i])) {
				return null;
			}
			Integer id = Integer.parseInt(idlist[i]);
			ShopCarModel car = new ShopCarModel();
			car.setId(id);
			car.setType(1);
			List<ShopCarModel> carnews = ShopCarServiceImpl.select(car);// 查询购物车商品信息
			if(carnews==null||carnews.isEmpty()) {//........
				return "/confirmOrder";
			}
			OrderModel ordernews = new OrderModel();
			String ct=Tools.dateFormate();
			ordernews.setUserid(carnews.get(0).getUserid());
			ordernews.setCode(carnews.get(0).getCode());
			ordernews.setOrderCount(carnews.get(0).getCarCount());
			ordernews.setSubtotalPrice(carnews.get(0).getSubtotalPrice());
			ordernews.setOrderNumber(orderNumber);
			ordernews.setIsdeal("等待支付");
			ordernews.setCreatetime(ct);
			int o = OrderServiceImpl.insert(ordernews); // 向订单表插入订单商品们的信息
		}
		OrderModel selectorder = new OrderModel();
		selectorder.setType(1);
		selectorder.setOrderNumber(orderNumber);
		List<OrderModel> orderlist = OrderServiceImpl.select(selectorder);// 查询商品小计计算总价
		Integer totalPrice = 0;
		for (int i = 0; i < orderlist.size(); i++) {
			Integer price = orderlist.get(i).getSubtotalPrice();// 计算总价
			totalPrice += price;
		}
		for (int i = 0; i < orderlist.size(); i++) {
			OrderModel updataTotal = new OrderModel();
			updataTotal.setId(orderlist.get(i).getId());
			updataTotal.setTotalPrice(totalPrice);
			OrderServiceImpl.update(updataTotal);// 向订单表添加总价
		}

		m.addAttribute("totalPrice", totalPrice);// 为避免再查一遍数据库
		m.addAttribute("orderlist", orderlist);
		return "/confirmOrder";
	}

	// 下单跳转至下单成功页面
	@RequestMapping("/orderSuccess")
	public String checkoutSuccess(OrderModel order, HttpServletRequest request, HttpServletResponse response, Model m) {
		String list = order.getOrderIdlist();
		String[] id = list.split(",");
		if (id == null || id.length == 0) {
			return null;

		}
		for (int i = 0; i < id.length; i++) {
			if ("".equals(id[i])) {
				return null;
			}
			Integer id1 = Integer.parseInt(id[i]);
			OrderModel address = new OrderModel();
			address.setId(id1);
			address.setAdressId(order.getAdressId());
			int up = OrderServiceImpl.update(address);
		}
		OrderModel select = new OrderModel();
		select.setOrderNumber(order.getOrderNumber());
		select.setType(1);
		List<OrderModel> allNewsList = OrderServiceImpl.selectAllNews(select);
		m.addAttribute("allNewsList", allNewsList);
		return "/orderSuccess";

	}

	// 确认下单删除购物车商品
	@RequestMapping("/delCart")
	public void deleteCart(OrderModel order) {
		String id = order.getOrderIdlist();
		String[] idlist = id.split(",");
		if (idlist == null || idlist.length == 0) {
			return;

		}
		for (int i = 0; i < idlist.length; i++) {
			OrderModel del = new OrderModel();
			Integer id2 = Integer.parseInt(idlist[i]);
			del.setId(id2);
			del.setType(1);
			List<OrderModel> delid = OrderServiceImpl.selectAllNews(del);// 根据订单id查询购物车id，删除购物车

			Integer carid = delid.get(0).getCarId();
			ShopCarModel car = new ShopCarModel();
			car.setId(carid);
			int add = ShopCarServiceImpl.delete(car);
		}

	}

	// 用户查看自己的所有订单
	@RequestMapping("/laodOrder")
	public void loadOrder(OrderModel order,HttpServletRequest request, HttpServletResponse response)throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)request.getSession().getAttribute("userid");
		OrderModel id = new OrderModel();
		id.setType(1);
		id.setUserid(userid);
		id.setIsdeal(order.getIsdeal());
	
		List<OrderModel> allOrder = OrderServiceImpl.selectAllNews(id);// 将订单去重
		for (int i = 0; i < allOrder.size() - 1; i++) {
			for (int j = allOrder.size() - 1; j > i; j--) {
				if (allOrder.get(j).getOrderNumber().equals(allOrder.get(i).getOrderNumber())) {
					allOrder.remove(j);
				}
			}
		}
		List<OrderModel> prodcutList = OrderServiceImpl.selectAllNews(id);// 获得商品信息
		for (OrderModel ptm : prodcutList) { // 将对应订单的商品信息加到对应的订单下
			String orn = ptm.getOrderNumber();
			for (OrderModel ptm2 : allOrder) {
				String orn2 = ptm2.getOrderNumber();
				if (orn.equals(orn2)) {
					ptm2.getList().add(ptm);
				}
			}

		}
		JSONArray json = JSONArray.fromObject(allOrder);
	
		out.println(json.toString());
		out.flush();
		out.close();

	}
	//关闭订单
	@RequestMapping("/closeOrder")
	public void closeOrder(OrderModel order, HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		         String upt=Tools.dateFormate();
		         String orderid = order.getOrderIdlist();
		        
		         String[] idlist = orderid.split(",");
		         for(int i=0;i<idlist.length;i++) {
		        	 Integer id=Integer.parseInt(idlist[i]);
		        	 OrderModel idl=new OrderModel();
		        	 idl.setId(id);
		        	 idl.setIsdeal("已关闭");
		        	 idl.setUpdatetime(upt);
		        	 OrderServiceImpl.update(idl);
		        	 
		        	 
		         }
		out.print(1);
	}
	@RequestMapping("/selectcount")
	public void selectcount(OrderModel order, HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String userid=(String)request.getSession().getAttribute("userid");
		order.setUserid(userid);
		order.setIsdeal("等待支付");
		int add = OrderServiceImpl.selectCount(order);
		out.println(add);
		
	}
	// 管理员查看订单
	@RequestMapping("/admlaodOrder")
	public void admloadOrder(OrderModel order,HttpServletRequest request, HttpServletResponse response)throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String startTime=order.getStartTime();
		if(startTime==null||"".equals(startTime)) {
			startTime="0000-00-00 00:00:00";
		}
		String endTime=order.getEndTime();
        if(endTime==null||"".equals(endTime)) {
        	endTime="9999-99-99 00:00:00";
		}
		OrderModel id = new OrderModel();
		id.setType(1);
		id.setIsdeal(order.getIsdeal());
		id.setUserid(order.getUserid());
		id.setStartTime(startTime);
		id.setEndTime(endTime);
		id.setNewsName(order.getNewsName());
		List<OrderModel> allOrder = OrderServiceImpl.selectAllNews(id);// 将订单去重（每一个商品对应一个订单）
		for (int i = 0; i < allOrder.size() - 1; i++) {
			for (int j = allOrder.size() - 1; j > i; j--) {
				if (allOrder.get(j).getOrderNumber().equals(allOrder.get(i).getOrderNumber())) {
					allOrder.remove(j);
				}
			}
		}
		List<OrderModel> prodcutList = OrderServiceImpl.selectAllNews(id);// 获得商品信息
		for (OrderModel ptm : prodcutList) { // 将对应订单的商品信息加到对应的订单下
			String orn = ptm.getOrderNumber();
			for (OrderModel ptm2 : allOrder) {
				String orn2 = ptm2.getOrderNumber();
				if (orn.equals(orn2)) {
					ptm2.getList().add(ptm);
				}
			}

		}
		JSONArray json = JSONArray.fromObject(allOrder);
		out.println(json.toString());
		out.flush();
		out.close();

	}
}
