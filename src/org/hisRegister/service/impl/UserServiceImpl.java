package org.hisRegister.service.impl;

import org.hisRegister.dao.UserDao;
import org.hisRegister.entity.LoginInfo;
import org.hisRegister.entity.User;
import org.hisRegister.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author penelope
 * 2017����4:53:08
 */
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao udao;
	@Override
	public User getUser(User user) {
		return udao.getUser(user);
	}
	@Override
	public void saveLoginInfo(LoginInfo loginInfo) {
		udao.saveLoginInfo(loginInfo);
		
	}
	@Override
	public int addNewUser(User user) {
		return udao.addUser(user);
	}
	@Override
	public User getUserByName(User user) {
		return udao.getUserByName(user);
	}

}
