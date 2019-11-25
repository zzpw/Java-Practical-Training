package service.impl;

import java.util.List;

import dao.impl.OrderDao;
import data.SalesDepartment.Order;
import service.OrderService;

public class OrderServiceImpl implements OrderService{

	private OrderDao orderDao;
	
	public OrderServiceImpl() {
		super();
		orderDao = new OrderDao();
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean addOrder(Order order) {
		return orderDao.doInsert(order);
	}

	@Override
	public Order queryOrderById(String number) {
		return orderDao.queryById(number);
	}

	@Override
	public List<Order> queryOrderByClient(String client) {
		return orderDao.findByClient(client);
	}

	@Override
	public List<Order> queryOrderByStaff(String staff) {
		return orderDao.findByStaff(staff);
	}
	
}
