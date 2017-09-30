/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014-2016 abel533@gmail.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package com.chenyee.salestracksystem.conf;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.boot.autoconfigure.MybatisAutoConfiguration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

import com.chenyee.salestracksystem.conf.datasource.DataSourceConfig;
import com.chenyee.salestracksystem.conf.datasource.DbContextHolder;
import com.chenyee.salestracksystem.conf.datasource.ReadWriteSplitRoutingDataSource;
import com.github.pagehelper.PageHelper;


/**
 * 增加MyBatis的配置
 * 1.数据源配置
 * 2.对应mapper中映射实体配置
 * 3.分页插件配置
 * 4.对应xml文件配置
 * @author zhangguan
 */

@Configuration
@AutoConfigureAfter({DataSourceConfig.class})
public class MyBatisConfig extends MybatisAutoConfiguration {

//    @Autowired
//    DataSource dataSource;
	private final static Logger LOGGER= LoggerFactory.getLogger(MyBatisConfig.class);
	
	@Resource(name="masterDataSource")
	private DataSource masterDataSource;
	
	@Resource(name="slaveDataSource")
	private DataSource slaveDataSource;

	/*@Bean
    public SqlSessionFactory sqlSessionFactory() throws Exception {
		LOGGER.info("-------------------- 重载父类 sqlSessionFactory init ---------------------");
        return super.sqlSessionFactory(roundRobinDataSouceProxy());
    }*/

    public AbstractRoutingDataSource roundRobinDataSouceProxy() {
    	ReadWriteSplitRoutingDataSource proxy = new ReadWriteSplitRoutingDataSource();
        Map<Object,Object> targetDataResources =  new HashMap<Object, Object>();
        targetDataResources.put(DbContextHolder.DbType.MASTER,masterDataSource);
        targetDataResources.put(DbContextHolder.DbType.SLAVE,slaveDataSource);
        proxy.setDefaultTargetDataSource(masterDataSource);//默认源
        proxy.setTargetDataSources(targetDataResources);
        proxy.afterPropertiesSet();//这一句必须,否则数据源初始化失败 DataSource router not initialized
        return proxy;
	}

	@Bean(name = "sqlSessionFactory")
    public SqlSessionFactory sqlSessionFactoryBean() {
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        bean.setDataSource(roundRobinDataSouceProxy());
        bean.setTypeAliasesPackage("com.chenyee.salestrack.bean");

       //分页插件
        PageHelper pageHelper = new PageHelper();
        Properties properties = new Properties();
        properties.setProperty("reasonable", "true");
        properties.setProperty("supportMethodsArguments", "true");
        properties.setProperty("returnPageInfo", "check");
        properties.setProperty("params", "count=countSql");
        pageHelper.setProperties(properties);

        //添加插件
        bean.setPlugins(new Interceptor[]{pageHelper});

        //添加XML目录
        ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        try {
            bean.setMapperLocations(resolver.getResources("classpath:mapper/*.xml"));
            return bean.getObject();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
}
