package org.hisRegister.service.impl;

import java.util.ArrayList;

import org.hisRegister.dao.ReservationDao;
import org.hisRegister.entity.ReservationForm;
import org.hisRegister.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author penelope
 * 2017����3:11:38
 */
@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {
	
	@Autowired
	private ReservationDao dao;

	@Override
	public void save(ReservationForm form) {
		dao.save(form);
	}

	@Override
	public ArrayList<ReservationForm> getReservations() {
		return dao.getReservations();
	}

	@Override
	public void updateStutus(int formid,String status) {
		System.out.println(formid + ": " + status);
		ReservationForm form = dao.getReservationById(formid);
		form.setStatus(status);
		dao.updateStatus(form);
	}

	@Override
	public ReservationForm getReservationById(int id) {
		return dao.getReservationById(id);
	}

}
