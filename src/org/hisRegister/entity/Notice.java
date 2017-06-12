package org.hisRegister.entity;

import java.util.Date;

/**
 * @author penelope
 * 2017����12:14:09
 */
public class Notice {
	private int id;
	private String question;
	private String answer;
	private Date time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Notice [id=" + id + ", question=" + question + ", answer=" + answer + ", time=" + time + "]";
	}
	
}
