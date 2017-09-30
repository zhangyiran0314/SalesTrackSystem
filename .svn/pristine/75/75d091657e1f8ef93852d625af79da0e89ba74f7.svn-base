package com.chenyee.salestracksystem.bean;

import java.io.Serializable;
import java.sql.Timestamp;

import org.apache.commons.lang3.StringUtils;

public class User implements Serializable{
	/**
	 * 用户id
	 */
	private Integer userID;
	/**
	 * 用户名字
	 */
	private String username;
	/**
	 * 用户密码
	 */
	private String password;
	/**
	 * 用户角色
	 */
	private Integer userRole;
	
	private String countryName;
	
	private Timestamp createtime;
	private Timestamp updatetime;
	private String status;
	
	private String[] countryNameArr;
	
	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getUserRole() {
		return userRole;
	}

	public void setUserRole(Integer userRole) {
		this.userRole = userRole;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		if(StringUtils.isBlank(countryName) || StringUtils.isBlank(countryName.trim())){
			countryName = null;
		}
		this.countryName = countryName;
	}

	public Timestamp getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}

	public Timestamp getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Timestamp updatetime) {
		this.updatetime = updatetime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String[] getCountryNameArr() {
		return countryNameArr;
	}

	public void setCountryNameArr(String[] countryNameArr) {
		this.countryNameArr = countryNameArr;
	}

	
	
}
