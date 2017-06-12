package org.hisRegister.service;

import org.hisRegister.entity.LoginInfo;
import org.hisRegister.entity.User;

/**
 * @author penelope
 * 2017年下午4:52:35
 */
public interface UserService {

	User getUser(User user);

	void saveLoginInfo(LoginInfo loginInfo);

	int addNewUser(User user);

	User getUserByName(User attribute);

}
