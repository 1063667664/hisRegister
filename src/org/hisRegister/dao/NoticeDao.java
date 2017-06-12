package org.hisRegister.dao;

import java.util.ArrayList;

import org.hisRegister.entity.Notice;

/**
 * @author penelope
 * 2017����12:13:37
 */
public interface NoticeDao {

	ArrayList<Notice> getNotices();

	void addNotice(Notice notice);

}
