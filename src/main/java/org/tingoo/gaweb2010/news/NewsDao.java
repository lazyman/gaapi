package org.tingoo.gaweb2010.news;

import cn.com.lazyhome.util.Paging;

public interface NewsDao {
	/**
	 * ������Ŀ��ţ����б�ֻȡ���⡢ʱ�䡢���
	 * @param dirid
	 * @param page
	 * @return
	 */
	Paging<News> findByDir(String dirid, Paging<News> page);
	/**
	 * ȡȫ����Ϣ
	 * @param newsid
	 * @return
	 */
	News get(long newsid);

}
