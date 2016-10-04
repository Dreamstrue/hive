package com.hive.pub.service;



import java.util.List;

import com.hive.agfs.model.Menu;

public class MenuService {
    public final static MenuService menuService = new MenuService();

	public List<Menu> findAllMenu(String pid) {
		String sql = "select * from menu where parentMenuId='"+pid+"' order by orderNum asc";
		return Menu.dao.find(sql);
	}

}
