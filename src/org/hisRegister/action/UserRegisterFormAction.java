package org.hisRegister.action;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 2017下午6:12:44
 */
//@Controller
public class UserRegisterFormAction extends ActionSupport {

	@Override
	public String execute() throws Exception {
		System.out.println("redirect to userRegister.jsp.....");
		return SUCCESS;
	}

}
