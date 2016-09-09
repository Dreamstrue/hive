package com.hive.interceptor;

import com.hive.agfs.model.User;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;

public class SecurityInterceptor implements Interceptor{

	@Override
	public void intercept(Invocation me) {
		Controller ctl = me.getController();
		User user = ctl.getSessionAttr("User");
		System.out.println("检查了一下"+ctl.getClass().getName()+"的"+me.getMethodName()+"方法！");
		if(user==null&&!me.getMethodName().equals("login")){
			ctl.render("/login.jsp");
		}else{
			me.invoke();
		}
		
	}

}
