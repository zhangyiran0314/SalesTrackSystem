package com.chenyee.salestracksystem.conf.datasource;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * 读写分离--数据源注入
 * @author zhangguan
 */
@Configuration
@EnableTransactionManagement
public class DataSourceConfig {
	
	@Value("${spring.datasource.type}")
	private Class<? extends DataSource> dataSourceType;
	
	@Bean(name="masterDataSource")
	@Primary
	@ConfigurationProperties(prefix="spring.datasource.master")
	public DataSource masterDataSource(){
		System.out.println("masterDataSource");
		return DataSourceBuilder.create().type(dataSourceType).build();
	}
	@Bean(name="slaveDataSource")
	@ConfigurationProperties(prefix="spring.datasource.slave")
	public DataSource slaveDataSource(){
		return DataSourceBuilder.create().type(dataSourceType).build();
	}
}
