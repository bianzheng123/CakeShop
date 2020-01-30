package com.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.dao.OrderDao;
import com.model.Order;
import com.model.OrderItem;
import com.model.Page;
import com.utils.DBUtil;

public class OrderService {
	private OrderDao oDao = new OrderDao();
	
	//将order，orderitem存入数据库中
	public void addOrder(Order order) {
		Connection con = null;
		try {
			con = DBUtil.getConnection();
			con.setAutoCommit(false);
			
			oDao.insertOrder(con, order);
			int id = oDao.getLastInsertId(con);
			//从刚才插入的数据中获取id，并关联到orderitem中
			order.setId(id);
			for(OrderItem item : order.getItemMap().values()) {
				oDao.insertOrderItem(con, item);
			}
			con.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
		}
	}
	
	public List<Order> selectAll(int userid){
		List<Order> list = null;
		try {
			list = oDao.selectAll(userid);
			for(Order o: list) {
				List<OrderItem> l = oDao.selectAllItem(o.getId());
				o.setItemList(l);
			}
			//先查到每一条订单，再根据每一条订单，查询其具体信息
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public Page getOrderPage(int status,int pageNo) {
		Page p = new Page();
		p.setPageNo(pageNo);
		int pageSize = 10;
		int totalCount = 0;
		try {
			totalCount = oDao.getOrderCount(status);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(pageSize, totalCount);
		
		List list = null;
		try {
			list = oDao.selectOrderList(status, pageNo, pageSize);
			for(Order o: (List<Order>)list) {
				List<OrderItem> l = oDao.selectAllItem(o.getId());
				o.setItemList(l);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setList(list);
		return p;
	}
	
	public void updateStatus(int id,int status) {
		try {
			oDao.updateStatus(id, status);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void delete(int id) {
		Connection con = null;
		try {
			con = DBUtil.getDataSource().getConnection();
			con.setAutoCommit(false);
			oDao.deleteOrderItem(con, id);
			oDao.deleteOrder(con, id);
			con.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			if(con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} 
			}
		}
	}
}
