package cn.com.lazyhome.util;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory ;
    private static final SessionFactory yhSession ;
    private static final SessionFactory gaapiSession ;
    
    private static Map<String, SessionFactory> dbs = new HashMap<String, SessionFactory>();

    
    static {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            sessionFactory = new Configuration().configure("hibernate/hibernate-main.cfg.xml").buildSessionFactory();
            yhSession = new Configuration().configure("hibernate/hibernate_yh.cfg.xml").buildSessionFactory(); 
            gaapiSession = new Configuration().configure("hibernate/hibernate_yhapi.cfg.xml").buildSessionFactory();
            
            
            dbs.put("default", sessionFactory);
            dbs.put("yhweb", yhSession);
            dbs.put("gaapi", gaapiSession);
        } catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public static SessionFactory getSessionFactory(String name) {
    	return dbs.get(name);
    }
}
