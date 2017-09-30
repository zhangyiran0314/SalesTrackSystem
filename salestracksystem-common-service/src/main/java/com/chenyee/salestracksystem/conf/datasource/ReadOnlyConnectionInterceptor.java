package com.chenyee.salestracksystem.conf.datasource;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.Ordered;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class ReadOnlyConnectionInterceptor implements Ordered {
	
	private final static Logger LOGGER= LoggerFactory.getLogger(ReadOnlyConnectionInterceptor.class);
	
	@Around("@annotation(readOnlyConnection)")
    public Object proceed(ProceedingJoinPoint proceedingJoinPoint,ReadOnlyConnection readOnlyConnection) throws Throwable {
        try {
//        	LOGGER.info("set database connection to read only");
        	System.out.println("set database connection to read only");
            DbContextHolder.setDbType(DbContextHolder.DbType.SLAVE);
            Object result = proceedingJoinPoint.proceed();
            return result;
        }finally {
            DbContextHolder.clearDbType();
            LOGGER.info("restore database connection");
        }
    }
	
	@Override
	public int getOrder() {
		return 0;
	}

}
