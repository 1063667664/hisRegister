package org.hisRegister.constants;

import java.util.Map;

import org.hisRegister.service.ExamItemService;
import org.hisRegister.service.ExamPointService;
import org.hisRegister.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author penelope
 */
//@Component
public class ReservationConstants {

	@Autowired
	private HistoryService historyService;
	
	@Autowired
	private ExamItemService examItemService;
	
	@Autowired
	private ExamPointService examPointService;

	private Map<String, String> examItemMap ;
	private Map<String, String> examPointMap ;
	private Map<String, String> historyMap ;
	
	public ReservationConstants() {

		setExamItemMap(examItemService.getExamItemNames());
		setExamPointMap(examPointService.getExamPointNames());
		setHistoryMap(historyService.getHistoryNames());

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

	public Map<String, String> getHistoryMap() {
		return historyMap;
	}

	public void setHistoryMap(Map<String, String> historyMap) {
		this.historyMap = historyMap;
	}

}
