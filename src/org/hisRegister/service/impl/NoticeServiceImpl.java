package org.hisRegister.service.impl;

import java.util.ArrayList;

import org.hisRegister.dao.NoticeDao;
import org.hisRegister.entity.Notice;
import org.hisRegister.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author penelope
 * 2017����12:15:01
 */
@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;
	
	@Override
	public ArrayList<Notice> getNotices() {
		// TODO Auto-generated method stub
		return noticeDao.getNotices();
	}

	@Override
	public void addNotice(Notice notice) {
		// TODO Auto-generated method stub
		noticeDao.addNotice(notice);
	}
	
}
