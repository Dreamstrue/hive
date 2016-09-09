package com.hive.agfs.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseMenu<M extends BaseMenu<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Long id) {
		set("id", id);
	}

	public java.lang.Long getId() {
		return get("id");
	}

	public void setMenuIcon(java.lang.String menuIcon) {
		set("menuIcon", menuIcon);
	}

	public java.lang.String getMenuIcon() {
		return get("menuIcon");
	}

	public void setParentMenuId(java.lang.Long parentMenuId) {
		set("parentMenuId", parentMenuId);
	}

	public java.lang.Long getParentMenuId() {
		return get("parentMenuId");
	}

	public void setOrderNum(java.lang.Integer orderNum) {
		set("orderNum", orderNum);
	}

	public java.lang.Integer getOrderNum() {
		return get("orderNum");
	}

	public void setMenuName(java.lang.String menuName) {
		set("menuName", menuName);
	}

	public java.lang.String getMenuName() {
		return get("menuName");
	}

	public void setMenuUrl(java.lang.String menuUrl) {
		set("menuUrl", menuUrl);
	}

	public java.lang.String getMenuUrl() {
		return get("menuUrl");
	}

}
