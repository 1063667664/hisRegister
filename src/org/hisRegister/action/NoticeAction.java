package org.hisRegister.action;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hisRegister.entity.Notice;
import org.hisRegister.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author penelope
 * 2017����12:13:16
 */
@Controller
public class NoticeAction extends ActionSupport{
	@Autowired
	private NoticeService noticeService;
	private ArrayList<Notice> notices;
	private Notice notice;

	/**
	 * 
	 */
	private static final long serialVersionUID = -500531433367687455L;

	@Override
	public String execute() throws Exception {
		notices = noticeService.getNotices();
		return SUCCESS;
	}
	
	public String addQuestionForm(){
		HttpSession session = ServletActionContext.getRequest().getSession();
		if(session.getAttribute("doctor") == null){
			return "login";
		}
		return SUCCESS;
	}
	public String addQuestion(){
		noticeService.addNotice(notice);
		return SUCCESS;
	}
	

	public ArrayList<Notice> getNotices() {
		return notices;
	}

	public void setNotices(ArrayList<Notice> notices) {
		this.notices = notices;
	}
	
	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	
}
