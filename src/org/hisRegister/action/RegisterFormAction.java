/**
 * 
 */
package org.hisRegister.action;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hisRegister.constants.RegisterConstants;
import org.hisRegister.service.ExamItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author wujingjing
 *
 */
@Controller
public class RegisterFormAction extends ActionSupport {

	private static final long serialVersionUID = -8597330840765045676L;
	
	@Autowired
	private RegisterConstants constants;
	@Autowired
	private ExamItemService examItemService;
	
	private Map<String,String> examItemMap;
	private Map<String,String> ageTypeMap;
	private Map<String,String> genderMap;

	public String execute(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(session.getAttribute("doctor") == null){
			return "doctorLogin";
		}
//		this.examItemMap = constants.getExamItemMap();
		this.ageTypeMap = constants.getAgeTypeMap();
		this.genderMap = constants.getGenderMap();
		
		setExamItemMap(examItemService.getExamItemNames());
				
		System.out.println("action转发到registerForm.jsp");
		return SUCCESS;
	}

	public Map<String, String> getExamItemMap() {
		return examItemMap;
	}

	public void setExamItemMap(Map<String, String> examItemMap) {
		this.examItemMap = examItemMap;
	}

	public Map<String, String> getAgeTypeMap() {
		return ageTypeMap;
	}

	public void setAgeTypeMap(Map<String, String> ageTypeMap) {
		this.ageTypeMap = ageTypeMap;
	}

	public Map<String, String> getGenderMap() {
		return genderMap;
	}

	public void setGenderMap(Map<String, String> genderMap) {
		this.genderMap = genderMap;
	}

	
}
