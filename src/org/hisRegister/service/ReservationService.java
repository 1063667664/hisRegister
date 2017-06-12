package org.hisRegister.service;

import java.util.ArrayList;

import org.hisRegister.entity.ReservationForm;

/**
 * @author penelope
 * 2017����3:11:16
 */
public interface ReservationService {

	void save(ReservationForm form);

	ArrayList<ReservationForm> getReservations();

	void updateStutus(int formid,String status);

	ReservationForm getReservationById(int id);


}
