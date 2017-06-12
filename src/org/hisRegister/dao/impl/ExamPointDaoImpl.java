package org.hisRegister.dao.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.hisRegister.dao.ExamPointDao;
import org.hisRegister.entity.DicItem;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * @author penelope
 * 20172017年4月28日下午5:40:00
 */
@Repository
public class ExamPointDaoImpl extends HibernateDaoSupport implements ExamPointDao {

	@Resource
    public void setSessionFacotry(SessionFactory sessionFacotry) {
        super.setSessionFactory(sessionFacotry);
    }

	@Override
	public ArrayList<DicItem> getExamPoints() {
		ArrayList<DicItem> examPointList = null;
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createSQLQuery("select * from dictionary_item where TYPE_ID = 4").addEntity(DicItem.class);
		examPointList = (ArrayList<DicItem>) query.list();
		tx.commit();
		session.close();
		return examPointList;
	}
}
