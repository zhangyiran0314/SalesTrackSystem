package com.chenyee.salestracksystem;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.support.ClassPathXmlApplicationContext;

@ImportResource("classpath:spring/dubbo-*.xml")
//@ServletComponentScan
@SpringBootApplication
public class DubboProviderApplication {
	private final static Logger LOGGER = LoggerFactory.getLogger(DubboProviderApplication.class);
	
    public static void main(String[] args) {  
        try {  
//            ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring/dubbo-*.xml");  
//            context.start();  
        	 ApplicationContext ctx = new SpringApplicationBuilder()
                     .sources(DubboProviderApplication.class)
                     .web(false)
                     .run(args);
        } catch (Exception e) {  
        	LOGGER.error("== DubboProvider context start error:", e);  
        }  
        synchronized (DubboProviderApplication.class) {  
            while (true) {  
                try {  
                	DubboProviderApplication.class.wait();  
                } catch (Exception e) {  
                	LOGGER.error("== synchronized error:", e);  
                	LOGGER.info(e.getMessage());  
                }  
            }  
        }  
    }  
}
