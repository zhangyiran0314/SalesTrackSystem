package com.chenyee.salestracksystem.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.chenyee.salestracksystem.conf.LocaleMessageSourceConfig;

/**
 * 国际化配置simple
 * @author zhangguan
 *
 */
@Controller
@RequestMapping("/simpleMessage")
public class SimpleMessageController {
	
	
	/**
	 * 页面元素国际化
	 * @return
	 */
	@RequestMapping("/helloWorld")
	public String helloWorld(){
		return "/simple/message";
	}
	/**
	 * 代码中根据locale元素国际化
	 */
	@Autowired
	private MessageSource messageSource;
	
	@RequestMapping("/helloWorldByLocale")
	public String helloWorldByLocale(){
		Locale locale = LocaleContextHolder.getLocale();
		String simpleMessage = messageSource.getMessage("simpleMessage", null,locale);
		System.out.println("helloWorldByLocale method simpleMessage:" +simpleMessage);
		return "/simple/message";
	}
	/**
	 * 代码中根据locale元素国际化--全局配置
	 */
	
	@Autowired
	private LocaleMessageSourceConfig localeMessageSource;
	@RequestMapping("/helloWorldByLocale1")
	public String helloWorldByLocale1(){
		String simpleMessage = localeMessageSource.getMessage("simpleMessage");
		System.out.println("helloWorldByLocale1 method simpleMessage:" +simpleMessage);
		return "/simple/message";
	}
	/**
	 * 修改当前session国际化配置
	 */
	@RequestMapping("/changeSessionLocale")
	public String changeSessionLocale(HttpServletRequest request, HttpServletResponse response, String lang) {
		System.out.println("changeSessionLocale method lang:" + lang);
		LocaleResolver localeResolver = RequestContextUtils.getLocaleResolver(request);
		if ("zh".equals(lang)) {
			localeResolver.setLocale(request, response, new Locale("zh", "CN"));
		} else if ("en".equals(lang)) {
			localeResolver.setLocale(request, response, new Locale("en", "US"));
		}
		request.getSession().setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, new Locale("en", "US"));
		return "/simple/message";
	}
}
