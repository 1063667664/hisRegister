/**
 * 
 */
package org.hisRegister.action;

import org.hisRegister.constants.RegisterConstants;
import org.hisRegister.entity.RegistrationForm;
import org.hisRegister.service.RegisterService;
import org.hisRegister.tool.FieldConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author wujingjing
 */
@Controller
public class RegisterAction extends ActionSupport{

	private static final long serialVersionUID = -8597330840765045676L;
	
	@Autowired
	private RegisterService service;
	
	private RegistrationForm form;
	
	@Autowired
	private FieldConverter fieldConverter;
	@Autowired
	private RegisterConstants constants;
	
	public String execute(){
		form.setExamItemName(constants.getExamItemMap().get(form.getExamItemName()));
		form.setCheckNum(fieldConverter.reformCheckNum(form.getExamItemName()));
		form.setRecordID(fieldConverter.reformRecordID(form.getExamItemName()));
		form.setPatNamePY(fieldConverter.changeNameToPY(form.getPatName()));
		form.setPatientID(fieldConverter.reformPatientID(form.getExamItemName()));
		form.setAgeType(constants.getAgeTypeMap().get(form.getAgeType()));
		form.setPatGender(constants.getGenderMap().get(form.getPatGender()));
		service.saveRegisterForm(form);
		System.out.println("申请成功！");
		return SUCCESS;
	}

	public RegistrationForm getForm() {
		return form;
	}

	public void setForm(RegistrationForm form) {
		this.form = form;
	}


}
