package com.ojas.utility;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SessionUtility {
	static Session session;

	public static Session getSession() {
		Configuration config = new Configuration();
		config.configure("com\\ojas\\config\\hibernate.cfg.xml");
		SessionFactory factor = config.buildSessionFactory();
		session = factor.openSession();
		return session;
	}

	public static void closeSession() {
		session.close();
	}
}
