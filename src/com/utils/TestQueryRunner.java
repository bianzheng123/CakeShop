package com.utils;

import java.util.Map;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapHandler;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class TestQueryRunner {
	public static void main(String[] args) throws Exception {
		DataSource ds = new ComboPooledDataSource();//c3p0
		
		QueryRunner r = new QueryRunner(ds);
		
		String sql = "select * from goods where id = ?";
		Map<String, Object> map =  r.query(sql, new MapHandler(),3);
		for(String key: map.keySet()) {
			System.out.println(key + ":" + map.get(key));
		}
	}
}
