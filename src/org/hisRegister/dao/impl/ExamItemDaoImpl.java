package org.hisRegister.dao.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.hisRegister.dao.ExamItemDao;
import org.hisRegister.entity.DicItem;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * @author penelope
 * 20172017年4月28日下午5:40:55
 */
@Repository
public class ExamItemDaoImpl extends HibernateDaoSupport implements ExamItemDao {

	@Resource
    public void setSessionFacotry(SessionFactory sessionFacotry) {
        super.setSessionFactory(sessionFacotry);
    }

	@Override
	public ArrayList<DicItem> getExamItems() {
		ArrayList<DicItem> examItemList = null;
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createSQLQuery("select * from dictionary_item where TYPE_ID = 3").addEntity(DicItem.class);
		examItemList = (ArrayList<DicItem>) query.list();
		tx.commit();
		session.close();
		return examItemList;
	}
}
