package org.hisRegister.dao;

import org.hisRegister.entity.LoginInfo;
import org.hisRegister.entity.User;

/**
 * @author penelope
 * 2017����4:57:26
 */
public interface UserDao {

	User getUser(User user);

	void saveLoginInfo(LoginInfo loginInfo);

	int addUser(User user);

	User getUserByName(User user);

}
