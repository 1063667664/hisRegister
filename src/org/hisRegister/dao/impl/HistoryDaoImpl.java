package org.hisRegister.dao.impl;

import java.util.ArrayList;
import java.util.TreeMap;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.hisRegister.dao.HistoryDao;
import org.hisRegister.entity.History;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * @author penelope
 * 2017下午3:19:42
 */
@Repository
public class HistoryDaoImpl extends HibernateDaoSupport implements HistoryDao {
	@Resource
    public void setSessionFacotry(SessionFactory sessionFacotry) {
        super.setSessionFactory(sessionFacotry);
    }

	@Override
	public ArrayList<History> getHistorys() {
		ArrayList<History> historyList = null;
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createSQLQuery("select * from history_info").addEntity(History.class);
		historyList = (ArrayList<History>) query.list();
		tx.commit();
		session.close();
		return historyList;
	}
	
}
