package org.hisRegister.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.hisRegister.dao.NoticeDao;
import org.hisRegister.entity.Notice;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * @author penelope
 * 2017����12:13:55
 */
@Repository
public class NoticeDaoImpl extends HibernateDaoSupport implements NoticeDao {

	@Resource
    public void setSessionFacotry(SessionFactory sessionFacotry) {
        super.setSessionFactory(sessionFacotry);
    }
	@Override
	public ArrayList<Notice> getNotices() {
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createSQLQuery("select * from answer_question").addEntity(Notice.class);
		ArrayList<Notice> notices = (ArrayList<Notice>) query.list();
		tx.commit();
		session.close();
		return notices;
	}
	@Override
	public void addNotice(Notice notice) {
		// TODO Auto-generated method stub
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.save(notice);
		tx.commit();
		session.close();
	}

}
