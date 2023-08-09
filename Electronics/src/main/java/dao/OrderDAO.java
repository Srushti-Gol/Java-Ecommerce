package dao;

import java.util.List;

import model.Order;
import model.User;
public interface OrderDAO {

public void addOrder(Order order);
	
	public List<Order> getAllOrders();
	
	public List<Order> getOrderByUser(User user);
	
	public void deleteOrder(Integer orderId);

	public Order updateOrder(Order order);

	public Order getOrder(int orderid);
	
}
