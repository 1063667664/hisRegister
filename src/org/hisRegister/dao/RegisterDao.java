/**
 * 
 */
package org.hisRegister.dao;

import java.util.ArrayList;

import org.hisRegister.entity.RegistrationForm;

/**
 * @author wujingjing
 *
 */
public interface RegisterDao {

	void saveRegisterForm(RegistrationForm form);

	ArrayList<RegistrationForm> getUnInspectedRegisters();

	RegistrationForm getRegistrationById(String checkNum);

	void update(RegistrationForm form);

//	int getMaxRecord();

}
