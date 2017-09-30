package com.chenyee.salestracksystem.service;

import com.chenyee.common.utils.Page;
import com.chenyee.common.utils.PageResult;
import com.chenyee.salestracksystem.bean.User;

public interface UserService {

	/**
	 * 校验登陆用户的账号和密码是否有匹配的记录
	 * @param username
	 * @param password
	 * @return
	 */
	public int checkLoginUser(String username,String password);
	
	public User login(String username,String password);
	
	public PageResult queryUserList(Page page);
	
	public int queryUserCount();
	
	public int insertUser(User user);
	
	public int updateUser(User user);
	
	public int deleteUser(int id);
}
