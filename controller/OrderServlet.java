package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.SalesDepartment.Order;
import service.OrderService;
import service.impl.OrderServiceImpl;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String method = (String)request.getParameter("method");
		if (method.equals("add")) {
			this.addOrder(request, response);
			request.getRequestDispatcher("xiaoshoubu.jsp").forward(request, response);
		} else if (method.equals("queryById")) {
			this.queryOrderById(request, response);
		} else if (method.equals("queryByClient")) {
			this.queryOrderByClient(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void addOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String orderNumber = request.getParameter("number");
		String type = request.getParameter("type");
		System.out.println("type:" + type);
		Date date = new Date();
		String client = request.getParameter("client");
		String staff = request.getParameter("staff");
//		float totalPrice = Float.parseFloat(request.getParameter("totalPrice"));
		float totalPrice = 0;
		String status = "未完成";
		float pendingPayment = totalPrice;
		Order order = new Order(orderNumber, type, date, client, staff, totalPrice, status, pendingPayment);
		OrderService orderService = new OrderServiceImpl();
		if (orderService.addOrder(order)) {
			request.setAttribute("message", "添加成功");
		} else {
			request.setAttribute("message", "添加失败");
		}
	}
	
	protected void queryOrderById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String number = request.getParameter("number");
		OrderService orderService = new OrderServiceImpl();
		Order order = orderService.queryOrderById(number);
		request.setAttribute("order", order);
	}
	
	protected void queryOrderByClient(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String client = request.getParameter("client");
		OrderService orderService = new OrderServiceImpl();
		List<Order> list = orderService.queryOrderByClient(client);
		request.setAttribute("clientOrder", list);
	}

}
