package com.hive.pub.service;



import com.hive.agfs.model.User;

public class UserService {
    public final static UserService userService = new UserService();
    
    /**
     * 根据账号获取用户信息
     * @param account
     * @return
     */
    public User findUserByAccount(String account){
		String sql = "select * from user where userAccount = '"+account+"'";
		User user = User.dao.findFirst(sql);
		return user;
    }

}
