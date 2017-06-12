package org.hisRegister.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hisRegister.entity.ReservationForm;
import org.hisRegister.entity.User;
import org.hisRegister.service.ReservationService;
import org.hisRegister.tool.FieldConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 2017����1:29:05
 */
@Controller
public class ReservationAction extends ActionSupport{

	@Autowired
	private ReservationService service;
	
	private ReservationForm form;
	
//	@Autowired
//	private ReservationConstants constants;
	
	@Autowired
	private FieldConverter cvt;
	
	private static final long serialVersionUID = -4816190754595005117L;

	@Override
	public String execute() throws Exception {
		form.setSerialNumber(cvt.generateSerialNumber());
		form.setReservationNo(cvt.generateReservationNo());
		form.setPatientID(cvt.reformPatientID(form.getExamItemID()));
//		form.setHistoryName(constants.getHistoryMap().get(form.getHistoryID()));
		form.setHistoryName(cvt.reformHistoryName(form.getHistoryID()));
		service.save(form);
		return SUCCESS;
	}

	/**
	 * 用户查看自己预约的拍摄是否被接受
	 */
	public void checkMyReservation(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		HttpServletRequest request = ServletActionContext.getRequest();
		User user = (User) session.getAttribute("user");
		int pid = user.getId();
		
	}
	
	public ReservationForm getForm() {
		return form;
	}

	public void setForm(ReservationForm form) {
		this.form = form;
	}
	
}
