package com.chenyee.salestracksystem.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chenyee.salestracksystem.bean.User;
import com.chenyee.salestracksystem.service.UserService;

@Controller
public class LoginController {
	private final static Logger LOGGER = LoggerFactory.getLogger(LoginController.class);
	@Autowired
	private UserService userService;
	
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping(value="top")
	public String top(){
		return "/home/top";
	}
	
	@RequestMapping(value="left")
	public String left(){
		return "/home/left";
	}
	
	@RequestMapping(value="right")
	public String right(){
		return "/home/right";
	}
	
	@RequestMapping(value="/index")
	public String index(){
		return "login";
	}
	
	/**
     * GET 登录
     * @return {String}
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
    	LOGGER.debug("GET请求登录");
        return "login";
    }
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(User user,HttpServletRequest request){
		LOGGER.debug("enter login function...");
		String message = "";
		//校验数据库中是否存在对应的数据
		String username = user.getUsername();
		String password = user.getPassword();
		if(StringUtils.isBlank(username)){
			message = messageSource.getMessage("login_errorNameAndPwd",null,"login_errorNameAndPwd",LocaleContextHolder.getLocale());
			LOGGER.info("error message is ----- "+message+"用户为空");
    		request.setAttribute("message", message);
    		return "login";
		}
		
		if(StringUtils.isBlank(password)){
			message = messageSource.getMessage("login_errorNameAndPwd",null,"login_errorNameAndPwd",LocaleContextHolder.getLocale());
			LOGGER.info("error message is ----- "+message+"密码为空");
    		request.setAttribute("message", message);
    		return "login";
		}
		
		int existsCount = userService.checkLoginUser(username, password);
		System.out.println(" checkLoginUser end ");
		if(existsCount == 0 ){
			message = messageSource.getMessage("login_errorNameAndPwd",null,"login_errorNameAndPwd",LocaleContextHolder.getLocale());
			LOGGER.info("error message is ----- "+message);
    		request.setAttribute("message", message);
    		return "login";
		}
		user = userService.login(username, password);
		HttpSession session = request.getSession();
        if(null==session){
//        	message = InternationalConfig.getMessage("sessionTimeOut",null,"sessionTimeOut",LocaleContextHolder.getLocale());
//        	LOGGER.info("error message is ----- "+message);
//    		request.setAttribute("message", message);
    		return "login";
        }
		session.setAttribute("vo", user);
		
		return "/home/index";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request){
    	LOGGER.debug("enter logout function...");
    	HttpSession session = request.getSession();
    	if(null==session){
    		LOGGER.warn("会话超时,请重新登陆.!");
    		request.setAttribute("msg","Session is timed out,please login again!");
    		return "login";
    	}
		return "login";
	}

}
