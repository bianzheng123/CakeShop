package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Goods;
import com.model.Order;

/**
 * Servlet implementation class GoodsLessenServlet
 */
@WebServlet("/goods_lessen")
public class GoodsLessenServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Order o = (Order) request.getSession().getAttribute("order");
		int goodsid = Integer.parseInt(request.getParameter("goodsid"));
		o.lessen(goodsid);
		response.getWriter().print("ok");
	}

}
