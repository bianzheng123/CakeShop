package com.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.model.Goods;
import com.utils.DBUtil;

public class GoodsDao {

	public List<Map<String, Object>> getGoodsList(int recommendType) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select g.id,g.name,g.cover,g.price,t.name typeName from recommend r,goods g,type t where type=? and r.goods_id=g.id and g.type_id=t.id;";
		return r.query(sql, new MapListHandler(),recommendType);
	}
	
	public Map<String, Object> getScrollGoods() throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select g.id,g.name,g.cover,g.price from recommend r,goods g where type=1 and r.goods_id=g.id";
		return r.query(sql, new MapHandler());
	}
	
	public List<Goods> selectGoods(int typeId,int pageNo,int pageSize) throws SQLException{
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		if(typeId == 0) {
			String sql = "select * from goods limit ?,?";
			return r.query(sql,new BeanListHandler<Goods>(Goods.class),(pageNo - 1) * pageSize,pageSize);
		}else {
			String sql = "select * from goods where type_id=? limit ?,?";
			return r.query(sql,new BeanListHandler<Goods>(Goods.class),typeId,(pageNo - 1) * pageSize,pageSize);
		}
	}
	
	public int getGoodsCount(int typeId) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		if(typeId == 0) {
			String sql = "select count(*) from goods";
			return r.query(sql,new ScalarHandler<Long>()).intValue();
		}else {
			String sql = "select count(*) from goods where type_id=?";
			return r.query(sql,new ScalarHandler<Long>(),typeId).intValue();
		}
	}
	
	public List<Goods> selectGoodsRecommend(int type,int pageNo,int pageSize) throws SQLException{
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select g.id,g.name,g.cover,g.image1,g.image2,g.intro,g.price,g.stock from goods g,recommend r where g.id=r.goods_id and r.type=? limit ?,?";
		return r.query(sql, new BeanListHandler<Goods>(Goods.class),type,(pageNo-1)*pageSize,pageSize);
	}
	
	public int selectGoodsRecommendCount(int type) throws SQLException{
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select count(*) from recommend where type=?";
		return r.query(sql, new ScalarHandler<Long>(),type).intValue();
	}
	
	public Goods getById(int id) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select g.id,g.name,g.cover,g.image1,g.image2,g.price,g.intro,g.stock,t.id typeid,t.name typename from goods g,type t where g.id=? and g.type_id=t.id";
		return r.query(sql, new BeanHandler<Goods>(Goods.class),id);
	}

	public int getSearchCount(String keyword) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select count(*) from goods where name like ?";
		return r.query(sql, new ScalarHandler<Long>(),"%"+keyword+"%").intValue();
	}

	public List selectSearchGoods(String keyword, int pageNo, int pageSize) throws SQLException {
		QueryRunner r = new QueryRunner(DBUtil.getDataSource());
		String sql = "select * from goods where name like ? limit ?,?";
		return r.query(sql, new BeanListHandler<Goods>(Goods.class),"%"+keyword+"%",(pageNo-1)*pageSize,pageSize);
	}
}
