package com.chenyee.salestracksystem.bean;

import java.util.Date;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 国家实体类
 * @author wangjian
 * @date   2016年9月30日
 * @description  一句话描述功能
 */
public class Country {
	
    private Long id;

    private String name;
    
    /**
     * 国家编码
     */
    private String code;

    @JSONField (format="yyyy-MM-dd HH:mm:ss") 
    private Date createtime;

    @JSONField (format="yyyy-MM-dd HH:mm:ss") 
    private Date modifytime;

    private String description;

    /**
     * 代理商url
     */
    private String agentsinfourl;

    /**
     * 产品信息url
     */
    private String productinfourl;

    /**
     * 产品类型url
     */
    private String producttypeurl;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getModifytime() {
        return modifytime;
    }

    public void setModifytime(Date modifytime) {
        this.modifytime = modifytime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getAgentsinfourl() {
        return agentsinfourl;
    }

    public void setAgentsinfourl(String agentsinfourl) {
        this.agentsinfourl = agentsinfourl == null ? null : agentsinfourl.trim();
    }

    public String getProductinfourl() {
        return productinfourl;
    }

    public void setProductinfourl(String productinfourl) {
        this.productinfourl = productinfourl == null ? null : productinfourl.trim();
    }

	public String getProducttypeurl() {
		return producttypeurl;
	}

	public void setProducttypeurl(String producttypeurl) {
		this.producttypeurl = producttypeurl;
	}
}