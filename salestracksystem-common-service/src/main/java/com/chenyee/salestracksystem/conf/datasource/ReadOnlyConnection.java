package com.chenyee.salestracksystem.conf.datasource;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 该注解注释在service层方法上,用于定位连接到slave库
 * @author zhangguan
 *
 */
@Target({ElementType.METHOD,ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface ReadOnlyConnection {
}
