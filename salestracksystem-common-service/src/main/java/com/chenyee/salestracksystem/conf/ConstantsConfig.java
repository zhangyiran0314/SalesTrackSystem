package com.chenyee.salestracksystem.conf;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * 常量配置application.yml文件 对应属性解析
 * @author zhangguan
 */
@Component
public class ConstantsConfig {
	
	
	@Value("${upload.filePath}")
	private String filePath;
	
	@Value("${repetition.collect}")
	private boolean collect;
	
	@Value("${repetition.filter}")
	private boolean filter;
	
	@Value("${spring.datasource.type}")
	private String type;
	
	@Value("${spring.datasource.master.username}")
	private String masterUsername;
	
	@Value("${spring.datasource.slave.username}")
	private String slaveUsername;
	/**
	 * 打印所有常量配置是否正确
	 */
	@PostConstruct
	public void PostConstruct(){
		System.out.println("####################application.yml config start####################");
		System.out.println("upload.filePath value:"+filePath);
		System.out.println("repetition.collect value:"+collect);
		System.out.println("repetition.filter value:"+filter);
		
		System.out.println("spring.datasource.type value:"+type);
		System.out.println("spring.datasource.master.username value:"+masterUsername);
		System.out.println("spring.datasource.slave.username value:"+slaveUsername);
		System.out.println("####################application.yml config end####################");
	}

	public String getFilePath() {
		return filePath;
	}

	public boolean isCollect() {
		return collect;
	}

	public boolean isFilter() {
		return filter;
	}
	
}
