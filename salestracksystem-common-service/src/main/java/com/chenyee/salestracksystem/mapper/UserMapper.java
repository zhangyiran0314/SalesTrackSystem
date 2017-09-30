package com.chenyee.salestracksystem.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chenyee.salestracksystem.bean.User;

public interface UserMapper {
	
	/**
	 * 校验登陆用户的账号和密码是否有匹配的记录
	 * @param username
	 * @param password
	 * @return
	 */
	public int checkLoginUser(@Param("username")String username,@Param("password")String password);
	
	public User login(@Param("username")String username,@Param("password")String password);
	
	public List<User> queryUserList(@Param("beginSize")int beginSize,@Param("pageSize")int pageSize);
	
	public int queryUserCount();
	
	public int insertUser(User user);
	
	public int updateUser(User user);
	
	public int deleteUser(@Param("id")int id);
	

}
