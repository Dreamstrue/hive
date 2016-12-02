package com.hive.agfs;

import com.jfinal.plugin.activerecord.ActiveRecordPlugin;

import com.hive.agfs.model.Blog;

import com.hive.agfs.model.Menu;

import com.hive.agfs.model.User;

import com.hive.agfs.model.Weiquanxiaofeizhe;

/**
 * Generated by JFinal, do not modify this file.
 * <pre>
 * Example:
 * public void configPlugin(Plugins me) {
 *     ActiveRecordPlugin arp = new ActiveRecordPlugin(...);
 *     _MappingKit.mapping(arp);
 *     me.add(arp);
 * }
 * </pre>
 */
public class _MappingKit {

	public static void mapping(ActiveRecordPlugin arp) {
		arp.addMapping("blog", "id", Blog.class);
		arp.addMapping("menu", "id", Menu.class);
		arp.addMapping("user", "id", User.class);
		arp.addMapping("weiquanxiaofeizhe", "id", Weiquanxiaofeizhe.class);
	}
}

