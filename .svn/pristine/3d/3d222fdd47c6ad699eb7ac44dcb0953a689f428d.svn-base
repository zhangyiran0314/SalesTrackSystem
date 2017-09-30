package com.chenyee.salestracksystem.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chenyee.common.utils.Page;
import com.chenyee.common.utils.PageResult;
import com.chenyee.common.utils.PageUtil;
import com.chenyee.salestracksystem.bean.User;
import com.chenyee.salestracksystem.conf.datasource.ReadOnlyConnection;
import com.chenyee.salestracksystem.mapper.UserMapper;
import com.chenyee.salestracksystem.service.UserService;


/**
 * <p>Title:</p>
 * <p>Description: 用户管理业务层</p>
 * <p>Copyright: Copyright (c) 2012-2013</p>
 * <p>Company: 金立通讯设备有限公司</p>
 * @author 陈志航
 * @version 1.0
 * 2014年1月10日 下午5:46:08
 */
@Service("userService")
public class UserServiceImpl  implements UserService{
	private final static Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);
	@Autowired
	private UserMapper userMapper;
	
	@ReadOnlyConnection
	@Override
	public int checkLoginUser(String username, String password) {
		return userMapper.checkLoginUser(username, password);
	}
	@ReadOnlyConnection
	@Override
	public User login(String username, String password) {
		return userMapper.login(username, password);
	}

	@Override
	public PageResult queryUserList(Page page) {
		LOGGER.info("UserServiceImpl querUserList function ....");
		int totalCount = userMapper.queryUserCount();
		page = PageUtil.createPage(page.getEveryPage(), totalCount, page.getCurrentPage());
		List<User> list = userMapper.queryUserList(page.getBeginIndex(),page.getEveryPage());
		PageResult pageResult  = new PageResult(page, list);
		return pageResult;
	}

	@Override
	public int queryUserCount() {
		LOGGER.info("UserServiceImpl queryUserCount function ....");
		return userMapper.queryUserCount();
	}

	@Override
	public int insertUser(User user) {
		LOGGER.info("UserServiceImpl insertUser function ....");
		return userMapper.insertUser(user);
	}

	@Override
	public int updateUser(User user) {
		LOGGER.info("UserServiceImpl updateUser function ....");
		return userMapper.updateUser(user);
	}

	@Override
	public int deleteUser(int id) {
		LOGGER.info("UserServiceImpl deleteUser function ....");
		return userMapper.deleteUser(id);
	}

}
