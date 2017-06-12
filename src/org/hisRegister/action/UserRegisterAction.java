package org.hisRegister.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hisRegister.entity.User;
import org.hisRegister.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 2017下午6:10:05
 */
@Controller
public class UserRegisterAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private User user;
	@Autowired
	private UserService uService;
	
	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		System.out.println("org.hisRegister.action.UserRegisterAction.user:  " + user);
		if(uService.addNewUser(user) == 0){
			System.out.println("UserRegisterAction.execute() : user register ok !");
			session.setAttribute("user", user);
			return SUCCESS;
		}
		return INPUT;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
