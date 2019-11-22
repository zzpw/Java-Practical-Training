package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.Account;
import service.AccountService;
import service.impl.AccountServiceImpl;

@WebServlet("/LoginServlet")   
public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("username");
		String passward = req.getParameter("passward");
		req.getSession().setAttribute("userName", userName);
		AccountService accSerImpl = new AccountServiceImpl();
		if (!accSerImpl.checkUserName(userName)) { // 账户不存在处理
			req.setAttribute("checkUserName", "账户不存在");
			System.out.println("账户不存在");
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		} else {
			if (accSerImpl.checkUserNameAndPassward(new Account(userName, passward))) { // 登陆成功处理
				resp.sendRedirect("index.jsp");
			} else { // 密码错误处理
				req.setAttribute("checkUserName", null);
				req.setAttribute("checkPassward", "密码错误");
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
		}
	}

}
