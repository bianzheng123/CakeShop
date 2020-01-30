package com.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.dao.GoodsDao;
import com.model.Goods;
import com.model.Page;

public class GoodsService {
	private GoodsDao gDao = new GoodsDao();
	
	public List<Map<String, Object>> getHotGoodsList(){
		List<Map<String, Object>> list = null;
		try {
			list = gDao.getGoodsList(2);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Map<String, Object>> getNewGoodsList(){
		List<Map<String, Object>> list = null;
		try {
			list = gDao.getGoodsList(3);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public Map<String, Object> getScrollGoods(){
		Map<String, Object> map = null;
		try {
			map = gDao.getScrollGoods();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}
	
//	public List<Goods> selectGoods(int typeId,int pageNo,int pageSize){
//		List<Goods> list = null;
//		try {
//			list = gDao.selectGoods(typeId, pageNo, pageSize);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return list;
//	}
	
	public Page getGoodsPage(int typeId,int pageNo) {
		Page p = new Page();
		p.setPageNo(pageNo);
		int totalCount = 0;
		try {
			totalCount = gDao.getGoodsCount(typeId);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(8, totalCount);
		
		List list = null;
		try {
			list = gDao.selectGoods(typeId, pageNo, 8);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setList(list);
		return p;
	}
	
	public Page getGoodsRecommendPage(int type,int pageNo) {
		Page p = new Page();
		p.setPageNo(pageNo);
		int totalCount = 0;
		try {
			totalCount = gDao.selectGoodsRecommendCount(type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setPageSizeAndTotalCount(8, totalCount);
		
		List list = null;
		try {
			list = gDao.selectGoodsRecommend(type, pageNo, 8);
			for(Goods g : (List<Goods>)list) {
				g.setScroll(gDao.isScroll(g));
				g.setNew(gDao.isNew(g));
				g.setHot(gDao.isHot(g));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setList(list);
		return p;
	}
	
	public Goods getById(int id) {
		Goods g = null;
		try {
			g = gDao.getById(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return g;
	}

	public Page getSearchGoodsPage(String keyword, int pageNo) {
		Page p = new Page();
		p.setPageNo(pageNo);
		int totalCount = 0;
		try {
			totalCount = gDao.getSearchCount(keyword);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		p.setPageSizeAndTotalCount(8, totalCount);
		
		List list = null;
		try {
			list = gDao.selectSearchGoods(keyword,pageNo,8);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		p.setList(list);
		return p;
	}

	public void addRecommend(int id,int type) {
		try {
			gDao.addRecommend(id, type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void removeRecommend(int id,int type) {
		try {
			gDao.removeRecommend(id, type);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void insert(Goods g) {
		try {
			gDao.insert(g);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void update(Goods g) {
		try {
			gDao.update(g);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void delete(int id) {
		try {
			gDao.delete(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
