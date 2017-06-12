package org.hisRegister.service.impl;

import org.hisRegister.dao.DoctorDao;
import org.hisRegister.entity.Doctor;
import org.hisRegister.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author penelope
 * 20172017年5月6日下午4:10:24
 */
@Service
public class DoctorServiceImpl implements DoctorService {

	@Autowired
	private DoctorDao doctorDao;
	
	@Override
	public Doctor login(Doctor doctor) {
		return doctorDao.login(doctor);
	}

}
