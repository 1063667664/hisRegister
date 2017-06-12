package org.hisRegister.service.impl;

import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

import org.hisRegister.dao.ExamPointDao;
import org.hisRegister.entity.DicItem;
import org.hisRegister.service.ExamPointService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author penelope
 * 20172017年4月28日下午5:36:25
 */
@Service
public class ExamPointServiceImpl implements ExamPointService {

	@Autowired
	private ExamPointDao examPointDao;
	
	@Override
	public Map<String, String> getExamPointNames() {
		ArrayList<DicItem> examPointList = examPointDao.getExamPoints();
		Map<String,String> examPointNamesMap = new TreeMap<String,String>();
		for(int i=0; i<examPointList.size(); i++){
			examPointNamesMap.put(Integer.toString(i+1), examPointList.get(i).getText());
		}
		return examPointNamesMap;
	}

}
