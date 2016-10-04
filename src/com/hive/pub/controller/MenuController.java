package com.hive.pub.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.hive.agfs.model.Menu;
import com.hive.common.vo.MenuVo;
import com.hive.pub.service.MenuService;
import com.jfinal.core.Controller;

public class MenuController extends Controller{

	 private static Logger logger = LoggerFactory.getLogger(MenuController.class);
	public void index(){
		render("/login.jsp");
	}
	
	public void toMenuList(){
		render("/view/menu/menuList.jsp");
	}
	
	public void findMyMenu(){
		System.out.println("F@FWFWf");
		logger.info("开始加载菜单信息了哦哈哈哈%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		List<Menu> list = MenuService.menuService.findAllMenu("0");
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
	        List<Menu> sonlist = MenuService.menuService.findAllMenu(menu.getId().toString());
	        List<MenuVo> mySonList = new ArrayList<MenuVo>();
	        for(Menu sm : sonlist){
		    	MenuVo svo = new MenuVo();
		    	svo.setId(sm.getId());
		    	svo.setPid(sm.getParentMenuId());
		    	svo.setSeq(sm.getOrderNum());
		    	svo.setText(sm.getMenuName());
		    	svo.setUrl(sm.getMenuUrl());
		    	svo.setIconCls(sm.getMenuIcon());
		        svo.getAttributes().put("url", sm.getMenuUrl());
		        svo.getAttributes().put("pid", sm.getParentMenuId());
		        mySonList.add(svo);
	        }
	        vo.setChildren(mySonList);
	        myMenuList.add(vo);
        }
		renderJson(myMenuList);
	}
}
