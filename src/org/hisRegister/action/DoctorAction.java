package org.hisRegister.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hisRegister.entity.Doctor;
import org.hisRegister.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 20172017年5月6日下午3:47:09
 */
@Controller
public class DoctorAction extends ActionSupport {
	private Doctor doctor;
	@Autowired
	private DoctorService doctorService;
	
	public String loginForm(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(session.getAttribute("doctor") != null){
			return "doctorHadLogin";
		}
		System.out.println("转到 doctorLoginForm.jsp");
		return SUCCESS;
	}
	
	public String login(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		Doctor doctorFromDB = doctorService.login(doctor);
		if(doctorFromDB != null){
			session.setAttribute("doctor", doctorFromDB);
			return SUCCESS;
		}else{
			System.out.println("doctor login error");
			return INPUT;
		}
	}

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}
	
}
