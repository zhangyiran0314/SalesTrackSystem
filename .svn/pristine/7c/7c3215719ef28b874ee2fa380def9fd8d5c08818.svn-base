package com.chenyee.salestracksystem.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.chenyee.salestracksystem.bean.Country;

public interface CountryMapper {
	
	List<Country> list(@Param("id")Long id);
	
	/**
	 * 查询国家记录总数
	 * @return
	 */
	int queryCountryCount(@Param("name")String name);

	/**
	 * 查询国家信息(分页)
	 * @param country 国家实体类
	 * @return 国家集合
	 */
	List<Country> queryCountryInfo(@Param("name")String name,@Param("beginIndex")int beginIndex,@Param("everyPage")int everyPage);
	
	/**
	 * 查询所有国家信息
	 * @return 国家集合
	 */
	List<Country> queryCountryList();
	
	/**
	 * 查询国家
	 * @return 国家集合
	 */
	List<Country> queryCountryListByName(@Param("name") String name);
	
	/**
	 * 增加国家
	 * @param country 国家实体类
	 * @return 整形结果 1:成功  0:失败
	 */
	int addCountry(Country country);
	
	/**
	 * 更新国家信息
	 * @param country 国家实体类
	 * @return 整形结果 1:成功  0:失败
	 */
	int updateCountryInfo(Country country);
	
	/**
	 * 删除国家
	 * @param id  国家id
	 * @return 整形结果 1:成功  0:失败
	 */
	int deleteCountryById(@Param("id")long id);
	
	/**
	 * 国家增加时校验国家名称的唯一性
	 * @param name
	 * @return
	 */
	int checkCountryNameUniqueForAdd(@Param("name")String name);
	
	/**
	 * 国家编辑时校验国家名称的唯一性
	 * @param name
	 * @return
	 */
	int checkCountryNameUniqueForUpdate(@Param("name")String name,@Param("originName")String originName);
	
	
    
}