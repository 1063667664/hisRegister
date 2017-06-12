package org.hisRegister.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hisRegister.entity.User;
import org.hisRegister.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 修改用户基本信息
 * @author penelope
 * 20172017年5月5日上午11:03:37
 */
@Controller
public class UserInfoAction extends ActionSupport {

	private User user;
	@Autowired
	private UserService userservice;
	
	/**
	 * 处理 用户详细信息的表单，可以查看，修改
	 */
	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(session.getAttribute("user") != null){
			user = userservice.getUserByName((User)session.getAttribute("user"));
			return SUCCESS;
		}
		return "login";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
