package controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String method = (String)request.getAttribute("method");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void addOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderNumber = request.getParameter("number");
		String type = request.getParameter("type");
		SimpleDateFormat tf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = tf.format(new Date());
		String client = request.getParameter("client");
		String staff = request.getParameter("staff");
		float totalPrice = (float)request.getAttribute("totalPrice");
		String status = "未完成";
		float pendingPayment = totalPrice;
		
	}

}
