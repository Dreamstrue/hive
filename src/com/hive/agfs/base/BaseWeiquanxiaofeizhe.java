package com.hive.agfs.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseWeiquanxiaofeizhe<M extends BaseWeiquanxiaofeizhe<M>> extends Model<M> implements IBean {

	public void setId(java.lang.String id) {
		set("id", id);
	}

	public java.lang.String getId() {
		return get("id");
	}

	public void setBuyAddress(java.lang.String buyAddress) {
		set("buyAddress", buyAddress);
	}

	public java.lang.String getBuyAddress() {
		return get("buyAddress");
	}

	public void setBuyThings(java.lang.String buyThings) {
		set("buyThings", buyThings);
	}

	public java.lang.String getBuyThings() {
		return get("buyThings");
	}

	public void setBuyTime(java.util.Date buyTime) {
		set("buyTime", buyTime);
	}

	public java.util.Date getBuyTime() {
		return get("buyTime");
	}

	public void setIsComplain(java.lang.String isComplain) {
		set("isComplain", isComplain);
	}

	public java.lang.String getIsComplain() {
		return get("isComplain");
	}

	public void setMobilePhone(java.lang.String mobilePhone) {
		set("mobilePhone", mobilePhone);
	}

	public java.lang.String getMobilePhone() {
		return get("mobilePhone");
	}

	public void setMoney(java.lang.String money) {
		set("money", money);
	}

	public java.lang.String getMoney() {
		return get("money");
	}

	public void setRemark(java.lang.String remark) {
		set("remark", remark);
	}

	public java.lang.String getRemark() {
		return get("remark");
	}

	public void setUserName(java.lang.String userName) {
		set("userName", userName);
	}

	public java.lang.String getUserName() {
		return get("userName");
	}

}
