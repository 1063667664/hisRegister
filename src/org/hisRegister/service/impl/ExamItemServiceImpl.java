package org.hisRegister.service.impl;

import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

import org.hisRegister.dao.ExamItemDao;
import org.hisRegister.entity.DicItem;
import org.hisRegister.service.ExamItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author penelope
 * 20172017年4月28日下午5:37:02
 */
@Service
public class ExamItemServiceImpl implements ExamItemService {

	@Autowired
	private ExamItemDao examItemdao;
	
	@Override
	public Map<String, String> getExamItemNames() {
		ArrayList<DicItem> examItemList = examItemdao.getExamItems();
		Map<String,String> examItemNamesMap = new TreeMap<String,String>();
		for(int i=0; i<examItemList.size();i++){
			examItemNamesMap.put(Integer.toString(i+1), examItemList.get(i).getText());
		}
		return examItemNamesMap;
	}

}
