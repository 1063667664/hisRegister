package org.hisRegister.action;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hisRegister.service.ExamItemService;
import org.hisRegister.service.ExamPointService;
import org.hisRegister.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 2017����4:12:32
 */
//@Controller
public class ReservationFormAction extends ActionSupport{
	
//	@Autowired
//	private ReservationConstants constants;
	
	private Map<String,String> historyMap;
	private Map<String,String> examItemMap;
	private Map<String,String> examPointMap;

	@Autowired
	private HistoryService historyService;
	
	@Autowired
	private ExamItemService examItemService;
	
	@Autowired
	private ExamPointService examPointService;
	
	private static final long serialVersionUID = -8042363206115160880L;

	@Override
	public String execute() throws Exception {
//		this.historyMap = constants.getHistoryMap();
//		this.examItemMap = constants.getExamItemMap();
//		this.examPointMap = constants.getExamPointMap();
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(session.getAttribute("user") == null){
			return "login";
		}
		setHistoryMap(historyService.getHistoryNames());
		setExamItemMap(examItemService.getExamItemNames());
		setExamPointMap(examPointService.getExamPointNames());
				
		System.out.println("action转发到reservationForm.jsp");
		return SUCCESS;
	}

	public Map<String, String> getHistoryMap() {
		return historyMap;
	}

	public void setHistoryMap(Map<String, String> historyMap) {
		this.historyMap = historyMap;
	}

	public Map<String, String> getExamItemMap() {
		return examItemMap;
	}

	public void setExamItemMap(Map<String, String> examItemMap) {
		this.examItemMap = examItemMap;
	}

	public Map<String, String> getExamPointMap() {
		return examPointMap;
	}

	public void setExamPointMap(Map<String, String> examPointMap) {
		this.examPointMap = examPointMap;
	}

	
}
