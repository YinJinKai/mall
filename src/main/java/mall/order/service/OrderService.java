package mall.order.service;

import java.util.List;

import mall.order.model.OrderModel;

public interface OrderService {
	List<OrderModel> selectAll(OrderModel order);
	   List<OrderModel> select(OrderModel order);
	   List<OrderModel> selectAllNews(OrderModel order);
	   int selectCount(OrderModel order);
	   int insert (OrderModel order);
	   int update (OrderModel order);
	   int delete (OrderModel order);
	  
}
