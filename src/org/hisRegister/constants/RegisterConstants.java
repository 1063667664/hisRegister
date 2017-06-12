/**
 * 
 */
package org.hisRegister.constants;

import java.util.Map;
import java.util.TreeMap;

import org.springframework.stereotype.Component;

/**
 * @author wujingjing
 *
 */
@Component
public class RegisterConstants {
	private Map<String,String> examItemMap = new TreeMap<String,String>();
	private Map<String,String> ageTypeMap = new TreeMap<String,String>();
	private Map<String,String> genderMap = new TreeMap<String,String>();
	private Map<String,String> historyMap = new TreeMap<String,String>();
	
	public RegisterConstants(){
		this.examItemMap.put("1", "CT");
		this.examItemMap.put("2", "MR");
		this.examItemMap.put("3", "DJ");
		
		this.ageTypeMap.put("1", "岁");
		this.ageTypeMap.put("2", "天");
		this.ageTypeMap.put("3", "小时");
		
		this.genderMap.put("0", "男");
		this.genderMap.put("1", "女");
		
		this.historyMap.put("1", "郑大校医院");
		this.historyMap.put("2", "郑大一附院");
	}
	
	public Map<String,String> getExamItemMap(){
		return this.examItemMap;
	}

	public Map<String, String> getAgeTypeMap() {
		return this.ageTypeMap;
	}

	public Map<String, String> getGenderMap() {
		return this.genderMap;
	}

	public Map<String, String> getHistoryMap() {
		return this.historyMap;
	}
	
}
