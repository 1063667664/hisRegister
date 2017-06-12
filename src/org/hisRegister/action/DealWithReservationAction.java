package org.hisRegister.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hisRegister.entity.ReservationForm;
import org.hisRegister.service.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 20172017年5月2日下午3:07:39
 */
@Controller
public class DealWithReservationAction extends ActionSupport {

	@Autowired
	private ReservationService reservationService;
	private ArrayList<ReservationForm> rfList;
	private ReservationForm form;
	private int id;
	@Override
	public String execute() throws Exception {
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(session.getAttribute("doctor") == null){
			return "login";
		}
		rfList = reservationService.getReservations();
		return SUCCESS;
	}
	
	
	public String accept(){
		HttpServletRequest request = ServletActionContext.getRequest();
		id = Integer.parseInt(request.getParameter("id"));
		String status = "已接受";
		reservationService.updateStutus(id,status);
		return SUCCESS;
	}
	
	public String done(){
		HttpServletRequest request = ServletActionContext.getRequest();
		id = Integer.parseInt(request.getParameter("id"));
		String status = "已完成";
		reservationService.updateStutus(id,status);
		return SUCCESS;
	}
	
	public String checkReservationForm(){
		HttpServletRequest request = ServletActionContext.getRequest();
		id = Integer.parseInt(request.getParameter("id"));
		form = reservationService.getReservationById(id);
		return SUCCESS;
	}
	public String checkReservation(){
		reservationService.save(form);
		return SUCCESS;
	}

	public ArrayList<ReservationForm> getRfList() {
		return rfList;
	}

	public void setRfList(ArrayList<ReservationForm> rfList) {
		this.rfList = rfList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public ReservationForm getForm() {
		return form;
	}


	public void setForm(ReservationForm form) {
		this.form = form;
	}

}
