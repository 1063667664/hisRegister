/**
 * 
 */
package org.hisRegister.entity;

/**
 * @author wujingjing
 *
 */
public class RegistrationForm {
	private String checkNum;
	private String recordID;
	private String patientID;
	private String patName;
	private String patNamePY;
	private String patGender;
	private String flag = "未检查";
	private Integer age;
	private String ageType;
	private String examItemName;
	private Boolean ifUsingFlag = false ;
	
	public RegistrationForm(String checkNum, String recordID, String patientID,
		String patName, String patGender, String flag, Integer age,
		String ageType, String examItemName, Boolean ifUsingFlag) {
	super();
	this.checkNum = checkNum;
	this.recordID = recordID;
	this.patientID = patientID;
	this.patName = patName;
	this.patGender = patGender;
	this.flag = flag;
	this.age = age;
	this.ageType = ageType;
	this.examItemName = examItemName;
	this.ifUsingFlag = ifUsingFlag;
}
	public RegistrationForm() {
		super();
	}
	
	public String getCheckNum() {
		return checkNum;
	}
	public void setCheckNum(String checkNum) {
		this.checkNum = checkNum;
	}
	public String getRecordID() {
		return recordID;
	}
	public void setRecordID(String recordID) {
		this.recordID = recordID;
	}
	public String getPatientID() {
		return patientID;
	}
	public void setPatientID(String patientID) {
		this.patientID = patientID;
	}
	public String getPatName() {
		return patName;
	}
	public void setPatName(String patName) {
		this.patName = patName;
	}
	
	public String getPatNamePY() {
		return patNamePY;
	}
	public void setPatNamePY(String patNamePY) {
		this.patNamePY = patNamePY;
	}
	public String getPatGender() {
		return patGender;
	}
	public void setPatGender(String patGender) {
		this.patGender = patGender;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getAgeType() {
		return ageType;
	}
	public void setAgeType(String ageType) {
		this.ageType = ageType;
	}
	public String getExamItemName() {
		return examItemName;
	}
	public void setExamItemName(String examItemName) {
		this.examItemName = examItemName;
	}
	public Boolean getIfUsingFlag() {
		return ifUsingFlag;
	}
	public void setIfUsingFlag(Boolean ifUsingFlag) {
		this.ifUsingFlag = ifUsingFlag;
	}
	
	/*public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}*/
	@Override
	public String toString() {
		return "RegistrationForm [checkNum=" + checkNum + ", recordID="
				+ recordID + ", patientID=" + patientID + ", patName="
				+ patName + ", patGender=" + patGender + ", flag=" + flag
				+ ", age=" + age + ", ageType=" + ageType + ", examItemName="
				+ examItemName + ", ifUsingFlag=" + ifUsingFlag + "]";
	}
	
}
