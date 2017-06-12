/**
 * 
 */
package org.hisRegister.service.impl;

import java.util.ArrayList;

import org.hisRegister.dao.RegisterDao;
import org.hisRegister.entity.RegistrationForm;
import org.hisRegister.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author wujingjing
 *
 */
@Transactional
@Service("registerService")
public class RegisterServiceImpl implements RegisterService {
	
	@Autowired
	private RegisterDao regDao;

	@Override
	public void saveRegisterForm(RegistrationForm form) {
		regDao.saveRegisterForm(form);
	}

	@Override
	public ArrayList<RegistrationForm> getUnInspectedRegisters() {
		return regDao.getUnInspectedRegisters();
	}

	@Override
	public void updateStutus(String checkNum, String status) {
		RegistrationForm form = regDao.getRegistrationById(checkNum);
		form.setFlag(status);
		regDao.update(form);
	}
}
