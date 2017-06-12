/**
 * 
 */
package org.hisRegister.service;

import java.util.ArrayList;

import org.hisRegister.entity.RegistrationForm;

/**
 * @author wujingjing
 *
 */
public interface RegisterService {

	void saveRegisterForm(RegistrationForm form);

	ArrayList<RegistrationForm> getUnInspectedRegisters();

	void updateStutus(String checkNum, String status);

}
