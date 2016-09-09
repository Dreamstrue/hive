package com.hive.pub.controller;

import java.util.ArrayList;
import java.util.List;

import com.hive.agfs.model.Menu;
import com.hive.common.vo.MenuVo;
import com.hive.pub.service.MenuService;
import com.jfinal.core.Controller;

public class MenuController extends Controller{

	public void index(){
		render("/login.jsp");
	}
	
	public void findMyMenu(){
		List<Menu> list = MenuService.menuService.findAllMenu();
		List<MenuVo> myMenuList = new ArrayList<MenuVo>();
	    for (Menu menu : list) {
	    	MenuVo vo = new MenuVo();
	    	vo.setId(menu.getId());
	    	vo.setPid(menu.getParentMenuId());
	    	vo.setSeq(menu.getOrderNum());
	    	vo.setText(menu.getMenuName());
	    	vo.setUrl(menu.getMenuUrl());
	    	vo.setIconCls(menu.getMenuIcon());
	        vo.getAttributes().put("url", menu.getMenuUrl());
	        vo.getAttributes().put("pid", menu.getParentMenuId());
	        myMenuList.add(vo);
        }
		renderJson(myMenuList);
	}
}
