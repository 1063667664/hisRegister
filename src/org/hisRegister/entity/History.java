package org.hisRegister.entity;

/**
 * @author penelope
 * 2017下午3:10:30
 */
public class History {
	
	private int id;
	private String hisName;
	private String hisGrade;
	private String province;
	private String city;
	private String hisAddress;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHisName() {
		return hisName;
	}
	public void setHisName(String hisName) {
		this.hisName = hisName;
	}
	public String getHisGrade() {
		return hisGrade;
	}
	public void setHisGrade(String hisGrade) {
		this.hisGrade = hisGrade;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHisAddress() {
		return hisAddress;
	}
	public void setHisAddress(String hisAddress) {
		this.hisAddress = hisAddress;
	}
	@Override
	public String toString() {
		return "History [id=" + id + ", hisName=" + hisName + ", hisGrade=" + hisGrade + ", province=" + province
				+ ", city=" + city + ", hisAddress=" + hisAddress + "]";
	}
	
	

}
