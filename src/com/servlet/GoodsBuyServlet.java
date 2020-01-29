package com.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Goods;
import com.model.Order;
import com.service.GoodsService;

/**
 * Servlet implementation class GoodsBuyServlet
 */
@WebServlet("/goods_buy")
public class GoodsBuyServlet extends HttpServlet {
	private GoodsService gService = new GoodsService();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Order o = null;
		if(request.getSession().getAttribute("order") != null) {
			o = (Order) request.getSession().getAttribute("order");
			
		}else {
			o = new Order();
			request.getSession().setAttribute("order", o);
		}
		int goodsid = Integer.parseInt(request.getParameter("goodsid"));
		Goods goods = gService.getById(goodsid);
		if(goods.getStock() > 0) {
			o.addGoods(goods);
			response.getWriter().print("ok");//将值传递给客户端
		}else {
			response.getWriter().print("fail");
		}
	}

}
