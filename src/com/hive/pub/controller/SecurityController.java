package com.hive.pub.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.hive.agfs.model.Menu;
import com.hive.agfs.model.User;
import com.hive.common.vo.MenuVo;
import com.hive.pub.service.MenuService;
import com.hive.pub.service.UserService;
import com.jfinal.core.Controller;

public class SecurityController extends Controller {
	
	private static Logger logger = LoggerFactory.getLogger(SecurityController.class);
	
	public void index() {
		String sql = "select * from user";
		List<User> list = User.dao.find(sql);
		System.out.println(list.get(0).getUserName()+"$$$$$$$$$$$");
		render("/login.jsp");
	}
	public void login(){
		System.out.println("F@FWFWf");
		logger.info("登陆了哦哈哈哈%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		logger.error("登陆了哦哈哈哈%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		String account = getPara("userid");
		String pwd = getPara("pwd");
		if(account!=null&&!account.equals("null")){
			User user = UserService.userService.findUserByAccount(account);
			this.setAttr("account", account);
			this.setAttr("password", pwd);
			if(user!=null){
				if(user.getPassword().equals(pwd)){
					setSessionAttr("User",user);
					List<MenuVo> menuList = findMyMenu();
					setSessionAttr("menuList",menuList);
//					redirect("/");
					render("/index_bs.jsp");
				}else{
					this.setAttr("msg", "用户名或密码错误");
					render("/login.jsp");
				}
			}else{
				this.setAttr("msg", "用户不存在");
				render("/login.jsp");
			}
		}else{
			render("/login.jsp");
		}
	}
	public void logout(){
		this.removeSessionAttr("User");
		render("/login.jsp");
	}
	public List<MenuVo> findMyMenu(){
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
		return myMenuList;
	}
}
