package org.tingoo.gaweb2010.util;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import cn.com.lazyhome.util.HibernateUtil;



public class Init implements ServletContextListener {
//	private static Log logger = LogFactory.getLog(Init.class);
	
	public void contextInitialized(ServletContextEvent event) {
		// set for log4l
		String workdir = event.getServletContext().getRealPath("/");
		System.setProperty("workdir", workdir);
		
		// set for hibernate
//		HibernateUtil.getSessionFactory();
	}

	public void contextDestroyed(ServletContextEvent event) {
		// set for hibernate
//		HibernateUtil.getSessionFactory().close();
	}
}