package org.hisRegister.service;

import java.util.ArrayList;

import org.hisRegister.entity.Notice;

/**
 * @author penelope
 * 2017����12:14:27
 */
public interface NoticeService {

	ArrayList<Notice> getNotices();

	void addNotice(Notice notice);

}
