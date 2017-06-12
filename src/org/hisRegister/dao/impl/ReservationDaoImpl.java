package org.hisRegister.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.hisRegister.dao.ReservationDao;
import org.hisRegister.entity.ReservationForm;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * @author penelope 2017����1:39:28
 */
@Repository("reservationDao")
public class ReservationDaoImpl extends HibernateDaoSupport implements ReservationDao {
	@Resource
	public void setSessionFacotry(SessionFactory sessionFacotry) {
		super.setSessionFactory(sessionFacotry);
	}

	@Override
	public void save(ReservationForm form) {
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(form);
		tx.commit();
		session.close();
	}

	@Override
	public ArrayList<ReservationForm> getReservations() {
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createSQLQuery("select * from reservation_info where (status = '预约中' or status = '已接受' or status = '已完成') and dateForReservation > now()  order by dateForReservation ")
				.addEntity(ReservationForm.class);
		ArrayList<ReservationForm> reservationForms = (ArrayList<ReservationForm>) query.list();
		tx.commit();
		session.close();
		return reservationForms;
	}

	@Override
	public void updateStatus(ReservationForm form) {
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.update(form);
		tx.commit();
		session.close();
	}

	@Override
	public ReservationForm getReservationById(int formid) {
		ReservationForm form = null;
		Session session = this.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		form = session.get(ReservationForm.class, formid);
		tx.commit();
		session.close();
		return form;
	}

	
}
