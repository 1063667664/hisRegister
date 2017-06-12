package org.hisRegister.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.hisRegister.dao.DoctorDao;
import org.hisRegister.entity.Doctor;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;


/**
 * @author penelope
 * 20172017年5月6日下午4:08:53
 */
@Repository
public class DoctorDaoImpl extends HibernateDaoSupport implements DoctorDao {
	
	@Resource
    public void setSessionFacotry(SessionFactory sessionFacotry) {
        super.setSessionFactory(sessionFacotry);
    }


	@Override
	public Doctor login(Doctor doctor) {
		System.out.println("org.hisRegister.dao.impl.DoctorDaoImpl.login(Doctor): "+doctor);
		String sql = "select * from doctor_info where doctorName='" + doctor.getDoctorName()+"' and password = '" + doctor.getPassword()+"'";
		Session session = this.getSessionFactory().openSession();
		Query query = session.createSQLQuery(sql);
		List<Doctor> list = query.list();
		if(list.isEmpty()){
			System.out.println("doctor list is empty!");
			session.close();
			return null;
		}else {
			System.out.println("doctor list is not empty , login ok !");
			session.close();
			return doctor;
		}
		
		
	}

}

















