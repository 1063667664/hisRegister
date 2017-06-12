/**
 * 
 */
package org.hisRegister.tool;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.hisRegister.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

/**
 * @author wujingjing
 *
 */
@Component
public class FieldConverter {
	
	@Autowired
	private HistoryService HistoryService;
	
	public String changeNameToPY(String name){
		char[] chars = name.trim().toCharArray();
		String pyName = "";
		HanyuPinyinOutputFormat format = new HanyuPinyinOutputFormat();
		format.setCaseType(HanyuPinyinCaseType.LOWERCASE);
		format.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
		format.setVCharType(HanyuPinyinVCharType.WITH_V);
		try{
			for(int i=0; i<chars.length; i++){
				if(String.valueOf(chars[i]).matches("[\u4e00-\u9fa5]+")){
					pyName += PinyinHelper.toHanyuPinyinStringArray(chars[i], format)[0];
				}else{
					pyName += chars[i];
				}
			}
		}catch(BadHanyuPinyinOutputFormatCombination e){
			System.out.println("拼音转换出错");
		}
		return pyName;
	}
	
	public String reformCheckNum(String examItemName){
//		int maxRecord = registerDao.getMaxRecord() + 1;
		int maxRecord = (int)(Math.random()*10000 + 1);
		return examItemName + maxRecord;
	}

	public String reformRecordID(String examItemName) {
		return examItemName + new SimpleDateFormat("yyyyMMddmm").format(new Date());
	}
	
	public String reformPatientID(String examItemName){
//		return examItemName + registerDao.getMaxRecord();
		return examItemName + (int)(Math.random()*10000 + 1);
	}
	
	public String generateSerialNumber(){
		return new SimpleDateFormat("yyyy-MM-dd-mm-ss").format(new Date());
	}
	public String generateReservationNo(){
		return new SimpleDateFormat("yyyy-MM-dd-mm").format(new Date());
	}

	public String reformHistoryName(String historyID) {
		Map<String,String> historyNames = HistoryService.getHistoryNames();
		return historyNames.get(historyID);
	}

}
