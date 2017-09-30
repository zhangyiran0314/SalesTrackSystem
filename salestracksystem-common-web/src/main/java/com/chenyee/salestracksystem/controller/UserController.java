package com.chenyee.salestracksystem.controller;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chenyee.common.utils.Page;
import com.chenyee.common.utils.PageResult;
import com.chenyee.salestracksystem.bean.User;
import com.chenyee.salestracksystem.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	private final static Logger LOGGER= LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/add")
	public String add(HttpServletRequest request,String username,String password){
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("vo");
		if(StringUtils.isNotBlank(username)){
			user.setUsername(username);
			user.setPassword(password);
			request.setAttribute("message", "该用户已存在！");
		}
//			request.setAttribute("user", user);
		
		return "/user/userAdd";
	}
	
	@RequestMapping(value="/edit")
	public String editUser(HttpServletRequest request,int userId,String username,String userRole){
		User editUser = new User();
		editUser.setUserID(userId);
		editUser.setUsername(username);
		editUser.setUserRole(Integer.parseInt(userRole));
		request.setAttribute("subject", editUser);
		return "/user/userEdit";
	}
	
	/**
	 * 更新登陆用户的密码页面
	 * @return
	 */
	@RequestMapping(value="/modifyLoginUserPwd")
	public String modifyLoginUser(){
		return "/user/modifyPwd";
	}
	
	/**
	 * 密码修改成功后，跳转至登陆页面
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/updateLoginUser")
	public String updateLoginUser(User user){
		userService.updateUser(user);
		return "/user/modifySuccess";
	}
	
	@RequestMapping(value="/queryUserList")
	public String queryUserList(HttpServletRequest request,int currentPage,String flag){
		String targetPage = "/user/userList";
		if(StringUtils.isNotBlank(flag) && StringUtils.equals(flag, "country")){
			targetPage = "/user/userListForCountry";
		}
		HttpSession session = request.getSession();
		if(session == null){
			LOGGER.warn("会话超时");
			return "/login";
		}
		Page page = new Page();
		page.setEveryPage(Page.pageSize);
		page.setCurrentPage(currentPage);
		PageResult pageResult = userService.queryUserList(page);
		request.setAttribute("userList", pageResult.getList());
		request.setAttribute("page", pageResult.getPage());
		
		return targetPage;
	}
	
	
	@RequestMapping(value="/saveOrUpdateUser",method = RequestMethod.POST)
	public String saveOrUpdateUser(HttpServletRequest request,User user){
		Integer id = user.getUserID();
		String username = user.getUsername();
		String password = user.getPassword();
		if(id != null){
			//修改
			int count = userService.updateUser(user);
			if( count == 1){
				LOGGER.info("修改用户信息成功");
			}
		}else{
			//新增
			
			if(StringUtils.isNotBlank(username) && StringUtils.isNotBlank(password)){
				//校验用户名是否存在
				int existsCount = userService.checkLoginUser(user.getUsername(), null);
				if(existsCount > 0){
					return "redirect:/user/add?username="+user.getUsername()+"&password="+user.getPassword();
				}
				Date date = new Date();
				long time = date.getTime();
				Timestamp nowTime = new Timestamp(time);
				user.setCreatetime(nowTime);
				user.setUpdatetime(nowTime);
				
				int count = userService.insertUser(user);
				if(count > 0){
					LOGGER.info("新增用户成功");
				}
			}
			
		}
		return "redirect:/user/queryUserList?currentPage=1";
	}
	
	@RequestMapping(value="/delete")
	public String deleteUser(int userId){
		userService.deleteUser(userId);
		return "redirect:/user/queryUserList?currentPage=1";
	}
	
	
	/**
	 * 修改用户的权限国家信息
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/updateUserCountry",method=RequestMethod.POST)
	public String updateUserCountry(User user){
		LOGGER.info("UserController updateUserContry function .......");
		Integer userId = user.getUserID();
		String username = user.getUsername();
		String[] countryNameArr = user.getCountryNameArr();
		String countryName = Arrays.toString(countryNameArr);
		if("null".equals(countryName)){
			countryName = null;
		}
		if(StringUtils.isNotBlank(countryName)){
			countryName = countryName.substring(1, countryName.length()-1);
		}
		LOGGER.info("countryName arr ----:"+countryName);
		user.setCountryName(countryName);
		userService.updateUser(user);
		 return "redirect:/user/queryUserList?currentPage=1&flag=country";
	}
	
	

}
