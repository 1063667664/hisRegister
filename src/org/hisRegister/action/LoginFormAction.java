package org.hisRegister.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 2017下午12:18:43
 */
@SuppressWarnings("serial")
@Controller
public class LoginFormAction extends ActionSupport {

	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(session.getAttribute("user") != null){
			return "userHadLogin";
		}
		return SUCCESS;
	}
	
}
