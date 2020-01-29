package com.service;

import java.sql.SQLException;
import java.util.List;

import com.dao.TypeDao;
import com.model.Type;

public class TypeService {
	private TypeDao tDao = new TypeDao();
	
	public List<Type> selectAll(){
		List<Type> list = null;
		try {
			list = tDao.selectAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public Type select(int id) {
		Type t = null;
		try {
			t = tDao.select(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return t;
	}
}
