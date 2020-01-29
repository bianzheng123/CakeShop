package com.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.model.User;
import com.utils.DBUtil;

public class UserDao {
	public void addUser(User user) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "insert into user(username,email,password,name,phone,address,isadmin,isvalidate) values (?,?,?,?,?,?,?,?)";
		r.update(sql,user.getUsername(),user.getEmail(),user.getPassword(),user.getName(),user.getPhone(),user.getAddress(),user.isIsadmin(),user.isIsvalidate());
	}
	
	public boolean isUsernameExist(String username) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select * from user where username=?";
		User u = r.query(sql, new BeanHandler<User>(User.class),username);
		if(u == null) {
			return false;
		}else {
			return true;
		}
	}
	
	public boolean isEmailExist(String email) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select * from user where username=?";
		User u = r.query(sql, new BeanHandler<User>(User.class),email);
		if(u == null) {
			return false;
		}else {
			return true;
		}
	}
	
	public User selectByUsernamePassword(String username,String password) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select * from user where username=? and password=?";
		return r.query(sql, new BeanHandler<User>(User.class),username,password);
	}
	
	public User selectByEmailPassword(String email,String password) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select * from user where email=? and password=?";
		return r.query(sql, new BeanHandler<User>(User.class),email,password);
	}
	
	public void updateUserAddress(User user) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "update user set name=?,phone=?,address=? where id=?";
		r.update(sql,user.getName(),user.getPhone(),user.getAddress(),user.getId());
	}
	
	public void updatePwd(User user) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "update user set password = ? where id=?";
		r.update(sql,user.getPassword(),user.getId());
	}
}
