package com.chenyee.salestracksystem.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chenyee.common.utils.Page;
import com.chenyee.common.utils.PageResult;
import com.chenyee.common.utils.PageUtil;
import com.chenyee.salestracksystem.bean.Country;
import com.chenyee.salestracksystem.mapper.CountryMapper;
import com.chenyee.salestracksystem.service.CountryService;
import com.chenyee.salestracksystem.utils.Config;


@Service("countryService")
public class CountryServiceImpl implements CountryService {
	
	private final static Logger LOGGER = LoggerFactory.getLogger(CountryServiceImpl.class);
	
	@Resource
	private CountryMapper countryDao;
	
	@Override
	public List<Country> list(Long id) {
		if(id==null|| Config.AdminCountryId==id){
			return countryDao.queryCountryList();
		}else{
			return countryDao.list(id);
		}
	}
	
	/**
	 * 查询国家信息
	 * @param country 国家实体类
	 * @return 分页结果
	 */
	@Override
	public PageResult queryCountryInfo(Country country,Page page){
		 LOGGER.debug("enter RoleServiceImpl.queryRoleInfo function!");
		 int totalCount = countryDao.queryCountryCount(country.getName());
		 page = PageUtil.createPage(Page.pageSize, totalCount, PageUtil.getCurrentPage(page.getCurrentPage()));
		 List<Country> roleList = countryDao.queryCountryInfo(country.getName(),page.getBeginIndex(),page.getEveryPage());
		 LOGGER.debug("roleList size = {},beginIndex = {},everyPage = {},totalCount = {}"
				     ,roleList.size(),page.getBeginIndex(),page.getEveryPage(),page.getTotalCount());
		 PageResult pageResult = new PageResult(page, roleList);
		 return pageResult;
	}
	
	
	/**
	 * 增加国家
	 * @param country 国家实体类
	 * 添加国家时,查看销量国家是否存在,并根据国家名称进行匹配
	 */
	@Transactional
	@Override
	public void addCountry(Country country){
		countryDao.addCountry(country);
	}
	
	/**
	 * 更新国家信息
	 * @param country 国家实体类
	 */
	@Transactional
	@Override
	public void updateCountryInfo(Country country){
		countryDao.updateCountryInfo(country);
	}
	
	/**
	 * 删除国家
	 * @param id  国家id
	 */
	@Transactional
	@Override
	public void deleteCountryById(long id){
		countryDao.deleteCountryById(id);
	}
	
	/**
	 * 国家增加时校验国家名称的唯一性
	 * @param name
	 * @return
	 */
	public int checkCountryNameUniqueForAdd(String name){
		return countryDao.checkCountryNameUniqueForAdd(name.trim());
	}
	
	/**
	 * 国家编辑时校验国家名称的唯一性
	 * @param name
	 * @return
	 */
	public int checkCountryNameUniqueForUpdate(String name,String originName){
		return countryDao.checkCountryNameUniqueForUpdate(name.trim(),originName.trim());
	}

}
