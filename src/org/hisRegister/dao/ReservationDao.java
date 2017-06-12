package org.hisRegister.dao;

import java.util.ArrayList;

import org.hisRegister.entity.ReservationForm;

/**
 * @author penelope
 * 2017����1:38:41
 */
public interface ReservationDao {

	void save(ReservationForm form);

	ArrayList<ReservationForm> getReservations();

	void updateStatus(ReservationForm form);

	ReservationForm getReservationById(int formid);

}
