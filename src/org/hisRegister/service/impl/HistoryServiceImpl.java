package org.hisRegister.service.impl;

import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

import org.hisRegister.dao.HistoryDao;
import org.hisRegister.entity.History;
import org.hisRegister.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author penelope
 * 2017下午4:22:25
 */
@Service("historyService")
public class HistoryServiceImpl implements HistoryService{

	@Autowired
	private HistoryDao historyDao;
	@SuppressWarnings("null")
	@Override
	public Map<String, String> getHistoryNames() {
		ArrayList<History> histories = historyDao.getHistorys();
		System.out.println("history_info 中共有" + histories.size() + "条数据");
		Map<String,String> historyNameMap = new TreeMap<String,String>();
		for(int i=0; i<histories.size(); i++){
//			System.out.println(histories.get(i));
			historyNameMap.put(Integer.toString(i+1), histories.get(i).getHisName());
		}
		return historyNameMap;
	}
	
}
