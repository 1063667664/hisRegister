package org.hisRegister.entity;

import java.sql.Timestamp;


/**
 * @author penelope
 * 2017下午1:40:08
 */
public class ReservationForm {
	private int id;
	private String serialNumber;
	private String reservationNo;
	private String patientID;
	private String examItemID;
	private String examPointID;
	private String historyID;
	private String historyName;
	private Timestamp dateForReservation;
	private String status = "预约中";
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSerialNumber() {
		return serialNumber;
	}
	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}
	public String getReservationNo() {
		return reservationNo;
	}
	public void setReservationNo(String reservationNo) {
		this.reservationNo = reservationNo;
	}
	public String getPatientID() {
		return patientID;
	}
	public void setPatientID(String patientID) {
		this.patientID = patientID;
	}
	public String getExamItemID() {
		return examItemID;
	}
	public void setExamItemID(String examItemID) {
		this.examItemID = examItemID;
	}
	public String getExamPointID() {
		return examPointID;
	}
	public void setExamPointID(String examPointID) {
		this.examPointID = examPointID;
	}
	public String getHistoryID() {
		return historyID;
	}
	public void setHistoryID(String historyID) {
		this.historyID = historyID;
	}
	public String getHistoryName() {
		return historyName;
	}
	public void setHistoryName(String historyName) {
		this.historyName = historyName;
	}
	
	public Timestamp getDateForReservation() {
		return dateForReservation;
	}
	public void setDateForReservation(Timestamp dateForReservation) {
		this.dateForReservation = dateForReservation;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "ReservationForm [id=" + id + ", serialNumber=" + serialNumber + ", reservationNo=" + reservationNo
				+ ", patientID=" + patientID + ", examItemID=" + examItemID + ", examPointID=" + examPointID
				+ ", historyID=" + historyID + ", historyName=" + historyName + ", dateForReservation="
				+ dateForReservation + ", status=" + status + "]";
	}
	
	
}
