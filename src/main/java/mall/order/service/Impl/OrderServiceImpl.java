package mall.order.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mall.order.mapper.OrderMapper;
import mall.order.model.OrderModel;
import mall.order.service.OrderService;
@Service("OrderServiceImpl")
public class OrderServiceImpl implements OrderService{
	@Autowired
    private OrderMapper orderMapper;
	public List<OrderModel> selectAll(OrderModel order) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insert(OrderModel order) {
		// TODO Auto-generated method stub
		int add = orderMapper.insert(order);
		if(add!=0) {
			return 1;
		}
		return 0;
	}

	public int update(OrderModel order) {
		// TODO Auto-generated method stub
		int up = orderMapper.update(order);
		if(up!=0) {
			return 1;
		}
		return 0;
	}

	public int delete(OrderModel order) {
		// TODO Auto-generated method stub
		int up = orderMapper.delete(order);
		if(up!=0) {
			return 1;
		}
		return 0;
	}

	public List<OrderModel> select(OrderModel order) {
		// TODO Auto-generated method stub
		List<OrderModel> orderlist = orderMapper.select(order);
		return orderlist;
	}

	public List<OrderModel> selectAllNews(OrderModel order) {
		// TODO Auto-generated method stub
		List<OrderModel> orderAlllist = orderMapper.selectAllNews(order);
		return orderAlllist;
	}

	public int selectCount(OrderModel order) {
		// TODO Auto-generated method stub
		int add = orderMapper.selectCount(order);
		return add;
	}





}
