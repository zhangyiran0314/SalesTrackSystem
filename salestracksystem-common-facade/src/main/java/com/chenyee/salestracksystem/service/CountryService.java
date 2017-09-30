package com.chenyee.salestracksystem.service;

import java.util.List;

import com.chenyee.common.utils.Page;
import com.chenyee.common.utils.PageResult;
import com.chenyee.salestracksystem.bean.Country;

public interface CountryService {
	
	
	List<Country> list(Long id);
	
	/**
	 * 查询国家信息
	 * @param country 国家实体类
	 * @return 分页结果
	 */
   PageResult queryCountryInfo(Country country,Page page);
   
	
	/**
	 * 增加国家
	 * @param country 国家实体类
	 */
	void addCountry(Country country);
	
	/**
	 * 更新国家信息
	 * @param country 国家实体类
	 */
	void updateCountryInfo(Country country);
	
	/**
	 * 删除国家
	 * @param id  国家id
	 */
	void deleteCountryById(long id);
	
	/**
	 * 国家增加时校验国家名称的唯一性
	 * @param name
	 * @return
	 */
	int checkCountryNameUniqueForAdd(String name);
	
	/**
	 * 国家编辑时校验国家名称的唯一性
	 * @param name
	 * @return
	 */
	int checkCountryNameUniqueForUpdate(String name,String originName);
}
