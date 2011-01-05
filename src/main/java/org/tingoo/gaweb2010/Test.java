package org.tingoo.gaweb2010;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class Test {
	public static void main(String[] args) {
		SessionFactory sessionFactory = new Configuration().configure("temp/hibernate_yh.cfg.xml").buildSessionFactory();
		Session s = sessionFactory.openSession();
		
		Query q = s.createQuery("from User");
		
		System.out.println(q.list().size());
	}
}
