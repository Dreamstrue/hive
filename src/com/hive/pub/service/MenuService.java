package com.hive.pub.service;



import java.util.List;

import com.hive.agfs.model.Menu;

public class MenuService {
    public final static MenuService menuService = new MenuService();

	public List<Menu> findAllMenu() {
		String sql = "select * from menu order by orderNum asc";
		return Menu.dao.find(sql);
	}

}
