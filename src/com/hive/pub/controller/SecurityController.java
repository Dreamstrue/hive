package com.hive.pub.controller;

import java.util.List;

import com.hive.agfs.model.User;
import com.hive.pub.service.UserService;
import com.jfinal.core.Controller;

public class SecurityController extends Controller {
	public void index() {
		String sql = "select * from user";
		List<User> list = User.dao.find(sql);
		System.out.println(list.get(0).getUserName()+"$$$$$$$$$$$");
		render("/login.jsp");
	}
	public void login(){
		System.out.println("登陆了一下");
		String account = getPara("userid");
		String pwd = getPara("pwd");
		if(account!=null&&!account.equals("null")){
			User user = UserService.userService.findUserByAccount(account);
			this.setAttr("account", account);
			this.setAttr("password", pwd);
			if(user!=null){
				if(user.getPassword().equals(pwd)){
					setSessionAttr("User",user);
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
			render("/index_bs.jsp");
		}
	}
	public void logout(){
		this.removeSessionAttr("User");
		render("/login.jsp");
	}
}
