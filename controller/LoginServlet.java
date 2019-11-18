package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LoginDao;

public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("username");
		String passward = req.getParameter("passward");
		LoginDao logindao = new LoginDao();
		if (!logindao.checkUserName(userName)) {
			// 账户不存在处理
		} else {
			if (logindao.checkPassWard(userName, passward)) {
				// 登陆成功处理
				resp.sendRedirect("mainForm.jsp");
			} else {
				// 密码错误处理
			}
		}
	}

}
