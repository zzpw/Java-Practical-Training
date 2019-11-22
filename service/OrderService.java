package service;

import java.util.List;

import data.SalesDepartment.Order;

public interface OrderService {
	
	public boolean addOrder(Order order);
	
	public Order queryOrderById(String number);
	
	public List<Order> queryOrderByClient(String client);
	
	public List<Order> queryOrderByStaff(String staff);
}
