package com.hive.garden.model;

import com.jfinal.plugin.activerecord.Model;


@SuppressWarnings("serial")
public class User extends Model<User> {

	public static final User dao=new User();

	public static final String ID="id";
	public static final String USERACCOUNT="userAccount";
	public static final String USERNAME="userName";
	public static final String PASSWORD="password";
	public static final String SEX="sex";
	public static final String AGE="age";
	public static final String IDCARD="idCard";
	public static final String EMAIL="email";
	public static final String MOBILEPHONE="mobilePhone";
	public static final String CREATETIME="createTime";
	public static final String AUDITTIME="auditTime";
	public static final String ISVALID="isValid";

}
