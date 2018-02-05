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
	// ���ﳵ���㵽�µ�
	public String insert(OrderModel order, HttpServletRequest request, HttpServletResponse response, Model m)
			throws IOException {
		PrintWriter out = response.getWriter();
		String userid = (String) request.getSession().getAttribute("userid");
		String buyList = order.getBuyList();
		String orderNumber = userid + Tools.datecode();
		String[] idlist = buyList.split(",");
		if (idlist == null || idlist.length == 0) { // ��ȡ�û�ѡ��Ҫ����Ĺ��ﳵid
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
			List<ShopCarModel> carnews = ShopCarServiceImpl.select(car);// ��ѯ���ﳵ��Ʒ��Ϣ
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
			ordernews.setIsdeal("�ȴ�֧��");
			ordernews.setCreatetime(ct);
			int o = OrderServiceImpl.insert(ordernews); // �򶩵�����붩����Ʒ�ǵ���Ϣ
		}
		OrderModel selectorder = new OrderModel();
		selectorder.setType(1);
		selectorder.setOrderNumber(orderNumber);
		List<OrderModel> orderlist = OrderServiceImpl.select(selectorder);// ��ѯ��ƷС�Ƽ����ܼ�
		Integer totalPrice = 0;
		for (int i = 0; i < orderlist.size(); i++) {
			Integer price = orderlist.get(i).getSubtotalPrice();// �����ܼ�
			totalPrice += price;
		}
		for (int i = 0; i < orderlist.size(); i++) {
			OrderModel updataTotal = new OrderModel();
			updataTotal.setId(orderlist.get(i).getId());
			updataTotal.setTotalPrice(totalPrice);
			OrderServiceImpl.update(updataTotal);// �򶩵�������ܼ�
		}

		m.addAttribute("totalPrice", totalPrice);// Ϊ�����ٲ�һ�����ݿ�
		m.addAttribute("orderlist", orderlist);
		return "/confirmOrder";
	}

	// �µ���ת���µ��ɹ�ҳ��
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

	// ȷ���µ�ɾ�����ﳵ��Ʒ
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
			List<OrderModel> delid = OrderServiceImpl.selectAllNews(del);// ���ݶ���id��ѯ���ﳵid��ɾ�����ﳵ

			Integer carid = delid.get(0).getCarId();
			ShopCarModel car = new ShopCarModel();
			car.setId(carid);
			int add = ShopCarServiceImpl.delete(car);
		}

	}

	// �û��鿴�Լ������ж���
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
	
		List<OrderModel> allOrder = OrderServiceImpl.selectAllNews(id);// ������ȥ��
		for (int i = 0; i < allOrder.size() - 1; i++) {
			for (int j = allOrder.size() - 1; j > i; j--) {
				if (allOrder.get(j).getOrderNumber().equals(allOrder.get(i).getOrderNumber())) {
					allOrder.remove(j);
				}
			}
		}
		List<OrderModel> prodcutList = OrderServiceImpl.selectAllNews(id);// �����Ʒ��Ϣ
		for (OrderModel ptm : prodcutList) { // ����Ӧ��������Ʒ��Ϣ�ӵ���Ӧ�Ķ�����
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
	//�رն���
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
		        	 idl.setIsdeal("�ѹر�");
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
		order.setIsdeal("�ȴ�֧��");
		int add = OrderServiceImpl.selectCount(order);
		out.println(add);
		
	}
	// ����Ա�鿴����
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
		List<OrderModel> allOrder = OrderServiceImpl.selectAllNews(id);// ������ȥ�أ�ÿһ����Ʒ��Ӧһ��������
		for (int i = 0; i < allOrder.size() - 1; i++) {
			for (int j = allOrder.size() - 1; j > i; j--) {
				if (allOrder.get(j).getOrderNumber().equals(allOrder.get(i).getOrderNumber())) {
					allOrder.remove(j);
				}
			}
		}
		List<OrderModel> prodcutList = OrderServiceImpl.selectAllNews(id);// �����Ʒ��Ϣ
		for (OrderModel ptm : prodcutList) { // ����Ӧ��������Ʒ��Ϣ�ӵ���Ӧ�Ķ�����
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
