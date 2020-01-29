package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.User;
import com.service.UserService;

/**
 * Servlet implementation class UserChangePwdServlet
 */
@WebServlet("/user_changepwd")
public class UserChangePwdServlet extends HttpServlet {
	
	private UserService uService = new UserService();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password = request.getParameter("password");
		String newPwd = request.getParameter("newPassword");
		
		User u = (User) request.getSession().getAttribute("user");
		
		if(password.equals(u.getPassword())) {
			u.setPassword(newPwd);
			uService.updatePwd(u);
			request.getSession().setAttribute("user", u);
			request.setAttribute("msg", "修改成功");
			request.getRequestDispatcher("/user_center.jsp").forward(request, response);
		}else {
			request.setAttribute("failMsg", "修改失败，原密码不正确");
			request.getRequestDispatcher("/user_center.jsp").forward(request, response);
		}
	}

}
