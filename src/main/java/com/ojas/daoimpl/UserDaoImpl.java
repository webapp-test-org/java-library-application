package com.ojas.daoimpl;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ojas.dao.UserDao;
import com.ojas.pojo.UserEntity;
import com.ojas.queries.QueryConstants;
import com.ojas.utility.SessionUtility;

public class UserDaoImpl implements UserDao {

	public boolean register(UserEntity user) {
		boolean flag = false;
		Session session = SessionUtility.getSession();
		Transaction trans = session.beginTransaction();
		Integer id = (Integer) session.save(user);
		trans.commit();
		if (id != 0) {
			flag = true;
		}
		// colse the session
		session.close();
		return flag;
	}

	public List<UserEntity> viewAllUsers() {
		List<UserEntity> viewAll = new ArrayList<UserEntity>();
		Session session = SessionUtility.getSession();
		Transaction trans = session.beginTransaction();
		Query q = session.createQuery(QueryConstants.VIEWALL);
		viewAll = q.getResultList();
		return viewAll;
	}

	public List<Object> getPassword(String email) {

		Session session = SessionUtility.getSession();
		Transaction trans = session.beginTransaction();
		Query q = session.createQuery(QueryConstants.VIEWONE);

		q.setParameter("email", email);
		List<Object> user = q.getResultList();
		
		

		return user;
	}
	public UserEntity viewOneUser(int id) {

		Session session = SessionUtility.getSession();
		Transaction trans = session.beginTransaction();
	   UserEntity user = session.get(UserEntity.class, id);

		return user;
	}
	

	public int updateUser(UserEntity user) {
		int add = 0;
		Session session = SessionUtility.getSession();
		Transaction trans = session.beginTransaction();
	    Object obj =  session.merge(user);
//		Query q = session.createQuery(QueryConstants.UPDATE);
//		q.setParameter("FirstName", user.getFirstName());
//		q.setParameter("LastName", user.getLastName());
//		q.setParameter("Email", user.getEmail());
//		q.setParameter("UserName", user.getUserName());
//		q.setParameter("Password", user.getPassword());
//		q.setParameter("Uid", user.getUid());
//		int add = q.executeUpdate();
	        trans.commit();
	        if(obj!=null) {
		 add = 1 ;
	        }
	       return add;
	}

	public int deleteUser(int id) {
		Session session = SessionUtility.getSession();
		Transaction trans = session.beginTransaction();
		Query q = session.createQuery(QueryConstants.DELETE);
		q.setParameter("uid", id);
		int delete = q.executeUpdate();
		trans.commit();
		return delete;
	}


	public static boolean verifyUserNameAndPassword(String name, String password) {
		boolean flag = false;
		
		Session session = SessionUtility.getSession();
		Transaction trans = session.beginTransaction();
		Query q = session.createQuery(QueryConstants.VERIFY);
		q.setParameter("userName", name);
		q.setParameter("password", password);
		List<Object[]> resultList = q.getResultList();
		if (!resultList.isEmpty()) {
			flag = true;
		}
		return flag;
	}
}
