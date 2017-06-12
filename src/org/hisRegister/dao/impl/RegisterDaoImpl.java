/**
 * 
 */
package org.hisRegister.dao.impl;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.hisRegister.dao.RegisterDao;
import org.hisRegister.entity.RegistrationForm;
import org.hisRegister.entity.ReservationForm;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * @author wujingjing
 *
 */
@Repository("registerDao") 
public class RegisterDaoImpl extends HibernateDaoSupport implements RegisterDao {

	@Resource
    public void setSessionFacotry(SessionFactory sessionFacotry) {
        super.setSessionFactory(sessionFacotry);
    }
	@Override
	public void saveRegisterForm(RegistrationForm form) {
		Session session = this.getSessionFactory().openSession();
		Transaction tx = (Transaction) session.beginTransaction();
		System.out.println("RegisterDaoImpl--" + form);
		session.save(form);
		tx.commit();
		session.close();
//		getHibernateTemplate().save(form);
	}
	@Override
	public ArrayList<RegistrationForm> getUnInspectedRegisters() {
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		String sql = "select * from registeration_info ";
		Query query = session.createSQLQuery(sql).addEntity(RegistrationForm.class);
		ArrayList<RegistrationForm> registerations = (ArrayList<RegistrationForm>) query.list();
		System.out.println(registerations.size());
		tx.commit();
		session.close();
		return registerations;
	}
	@Override
	public RegistrationForm getRegistrationById(String checkNum) {
		RegistrationForm form = null;
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		form = session.get(RegistrationForm.class, checkNum);
		tx.commit();
		session.close();
		return form;
	}
	@Override
	public void update(RegistrationForm form) {
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.update(form);
		tx.commit();
		session.close();		
	}
	
	/*@Override
	public int getMaxRecord() {
		String sql  = "select count(*) from registeration_info";
//		HibernateTemplate hibernateTemplate = getHibernateTemplate();
//		Integer count = (Integer)hibernateTemplate.find(hql).listIterator().next();
		int count = (Integer) getSession().createSQLQuery(sql).uniqueResult();
		return count;
	}
*/
	
}
