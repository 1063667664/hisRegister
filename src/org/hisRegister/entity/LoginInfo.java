package org.hisRegister.entity;

/**
 * @author penelope
 * 2017下午3:04:55
 */
public class LoginInfo {
	private int id;
	private String username;
	public LoginInfo(String username) {
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "LoginInfo [id=" + id + ", username=" + username + "]";
	}
	
}
