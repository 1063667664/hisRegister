package org.hisRegister.entity;

/**
 * @author penelope
 * 20172017年5月6日下午3:13:05
 */
public class Doctor {
	private int id;
	private String doctorName;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Doctor [id=" + id + ", doctorName=" + doctorName + ", password=" + password + "]";
	}
	
}
