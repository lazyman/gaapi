package cn.com.lazyhome.util;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static SessionFactory sessionFactory ;
    private static SessionFactory yhSession ;
    private static SessionFactory gaapiSession ;
    
    private static Map<String, SessionFactory> dbs = new HashMap<String, SessionFactory>();
    private static Map<String, String> dbfiles = new HashMap<String, String>();

    
    static {
        try {
        	dbfiles.put("default", "hibernate/hibernate-main.cfg.xml");
        	dbfiles.put("yhweb", "hibernate/hibernate_yh.cfg.xml");
        	dbfiles.put("gaapi", "hibernate/hibernate_yhapi.cfg.xml");
            // Create the SessionFactory from hibernate.cfg.xml
//            sessionFactory = new Configuration().configure("hibernate/hibernate-main.cfg.xml").buildSessionFactory();
//            yhSession = new Configuration().configure("hibernate/hibernate_yh.cfg.xml").buildSessionFactory(); 
//            gaapiSession = new Configuration().configure("hibernate/hibernate_yhapi.cfg.xml").buildSessionFactory();
            
            
//            dbs.put("default", sessionFactory);
//            dbs.put("yhweb", yhSession);
//            dbs.put("gaapi", gaapiSession);
        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
    	if(sessionFactory == null) {
    		sessionFactory = new Configuration().configure("hibernate/hibernate-main.cfg.xml").buildSessionFactory();
    	}
    	
        return sessionFactory;
    }

    public static SessionFactory getSessionFactory(String name) {
    	SessionFactory factory = dbs.get(name);
    	if(factory == null) {
    		factory = new Configuration().configure(dbfiles.get(name)).buildSessionFactory();
    		dbs.put(name, factory);
    	}
    	
    	return factory; 
    }
}
