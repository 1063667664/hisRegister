package org.hisRegister.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.hisRegister.dao.UserDao;
import org.hisRegister.entity.LoginInfo;
import org.hisRegister.entity.User;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * @author penelope
 * 2017-04-23 4:57:43
 */
@Repository("userDao") 
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	
	@Resource
    public void setSessionFacotry(SessionFactory sessionFacotry) {
        super.setSessionFactory(sessionFacotry);
    }

	@Override
	public User getUser(User user) {
		System.out.println("org.hisRegister.dao.impl.UserDaoImpl.getUser(User): " + user);
		User userFromDB = null;
//		userFromDB = this.getSessionFactory().openSession().get(User.class, user.getId());
//		String sql = "from patient where patientName = " + user.getUsername() + "and pasword = " + user.getPassword();
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		HashMap<String,String> arg = new HashMap<String,String>();
		arg.put("username", user.getUsername());
		arg.put("password", user.getPassword());
		ArrayList<User> results = (ArrayList<User>) session.createCriteria(User.class).add(Restrictions.allEq(arg)).list();
		if(results.size() == 0){
			return null;
		}
		userFromDB = results.get(0);
		tx.commit();
		session.close();
		return userFromDB;
	}
	
	public void saveLoginInfo(LoginInfo loginInfo){
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(loginInfo);
		tx.commit();
		session.close();
	}

	@Override
	public int addUser(User user) {
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		int id = (Integer) session.save(user);
		tx.commit();
		session.close();
		return id;
	}

	/**
	 * 根据用户名查询用户详细信息
	 */
	@Override
	public User getUserByName(User user) {
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		User userFormDB = (User) session.createCriteria(User.class).add(Restrictions.eq("username", user.getUsername())).list().get(0);
		tx.commit();
		session.close();
		return userFormDB;
	}
	
	
}
