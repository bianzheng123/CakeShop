package com.dao;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.model.Order;
import com.model.OrderItem;
import com.utils.DBUtil;

public class OrderDao {
	public void insertOrder(Connection con,Order order) throws SQLException {
		QueryRunner r = new QueryRunner();
		String sql = "insert into `order`(total,amount,status,paytype,name,phone,address,datetime,user_id) values (?,?,?,?,?,?,?,?,?)";
		//不再将order识别成一个特殊字符
		r.update(con,sql,
				order.getTotal(),order.getAmount(),order.getStatus(),
				order.getPaytype(),order.getName(),order.getPhone(),
				order.getAddress(),order.getDatetime(),
				order.getUser().getId());
		
	}
	
	public int getLastInsertId(Connection con) throws SQLException {
		QueryRunner r = new QueryRunner();
		String sql = "select last_insert_id()";
		BigInteger bi = r.query(con, sql,new ScalarHandler<BigInteger>());
		return Integer.parseInt(bi.toString());
	}
	
	public void insertOrderItem(Connection con,OrderItem item) throws SQLException {
		QueryRunner r = new QueryRunner();
		String sql = "insert into orderitem(price,amount,goods_id,order_id) values (?,?,?,?)";
		r.update(con,sql,item.getPrice(),item.getAmount(),item.getGoods().getId(),item.getOrder().getId());
	}
	
	public List<Order> selectAll(int userid) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select * from `order` where user_id=? order by datetime desc";
		return r.query(sql, new BeanListHandler<Order>(Order.class),userid);
	}
	
	public List<OrderItem> selectAllItem(int orderid) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select i.id,i.price,i.amount,g.name from orderitem i,goods g where order_id=? and i.goods_id=g.id";
		return r.query(sql, new BeanListHandler<OrderItem>(OrderItem.class),orderid);
	}

}