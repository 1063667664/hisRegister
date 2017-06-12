package org.hisRegister.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hisRegister.entity.LoginInfo;
import org.hisRegister.entity.User;
import org.hisRegister.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 2017����4:25:37
 */
@Controller
public class LoginAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	private User user;
	
	@Autowired
	private UserService us;

	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		User userformDB = us.getUser(user);
		if(userformDB != null ){
			session.setAttribute("user", userformDB);
			us.saveLoginInfo(new LoginInfo(user.getUsername()));
			return SUCCESS;
		}else{
			System.out.println("login error");
			return INPUT;
		}
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
}
