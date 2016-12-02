package com.hive.common.config;


import com.hive.agfs._MappingKit;
import com.hive.interceptor.SecurityInterceptor;
import com.hive.pub.controller.LayoutController;
import com.hive.pub.controller.MenuController;
import com.hive.pub.controller.SecurityController;
import com.hive.weiquan.controller.WeiQuanController;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.activerecord.CaseInsensitiveContainerFactory;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;

public class CommonConfig extends JFinalConfig{

	@Override
	public void configConstant(Constants me) {
		me.setDevMode(true);
		me.setViewType(ViewType.JSP);
        me.setError404View("/404.jsp");
        me.setError500View("/500.jsp");
	}

	@Override
	public void configHandler(Handlers arg0) {
		
	}

	@Override
	public void configInterceptor(Interceptors me) {
		//设置全局拦截器
		me.add(new SecurityInterceptor());
	}

	@Override
	public void configPlugin(Plugins me) {
		loadPropertyFile("config/config.properties");
//        DataSource eomsDS = new 
		System.out.println(getProperty("jdbc_url"));
		C3p0Plugin c3p0Plugin = new C3p0Plugin(getProperty("jdbc_url"), getProperty("jdbc_username"), getProperty("jdbc_password"));
		me.add(c3p0Plugin);
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		arp.setContainerFactory(new CaseInsensitiveContainerFactory(true));   //配置数据库列大小写不敏感
		_MappingKit.mapping(arp);
		me.add(arp);
	}

	@Override
	public void configRoute(Routes r) {
		r.add("/",LayoutController.class);
		r.add("/security",SecurityController.class);
		r.add("/layout",LayoutController.class);
		r.add("/menu",MenuController.class);
		r.add("/weiquan",WeiQuanController.class);
	}

}
