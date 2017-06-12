package org.hisRegister.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hisRegister.entity.RegistrationForm;
import org.hisRegister.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 20172017年5月30日下午4:52:52
 */
@Controller
public class DealWithRegisters extends ActionSupport {

	@Autowired
	private RegisterService registerService;
	private ArrayList<RegistrationForm> registerations;
	
	public String getRegisters() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(session.getAttribute("doctor") == null){
			return "login";
		}
		registerations = registerService.getUnInspectedRegisters();
		return SUCCESS;
	}
	
	/**
	 * 完成检查，更改状态
	 */
	public String inspected(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String checkNum = request.getParameter("checkNum");
		String status = "已完成";
		registerService.updateStutus(checkNum,status);
		return SUCCESS;
	}

	public ArrayList<RegistrationForm> getRegisterations() {
		return registerations;
	}

	public void setRegisterations(ArrayList<RegistrationForm> registerations) {
		this.registerations = registerations;
	}
	
}
