package org.hisRegister.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 2017下午3:18:23
 */
public class LogOutAction extends ActionSupport {

	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(session.getAttribute("user") != null){
			session.removeAttribute("user");
		}
		return SUCCESS;
	}

}
