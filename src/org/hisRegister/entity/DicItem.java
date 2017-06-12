package org.hisRegister.entity;

/**
 * @author penelope
 * 20172017年4月28日下午5:43:47
 */
public class DicItem {
	
	private int id ;
	private String text;
	private int typeID;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getTypeID() {
		return typeID;
	}
	public void setTypeID(int typeID) {
		this.typeID = typeID;
	}
	@Override
	public String toString() {
		return "DicItem [id=" + id + ", text=" + text + ", typeID=" + typeID + "]";
	}
	
	

}
