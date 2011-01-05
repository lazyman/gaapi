package org.tingoo.gaweb2010.news;

import cn.com.lazyhome.util.Paging;

public interface NewsDao {
	/**
	 * 传入栏目编号，得列表，只取标题、时间、编号
	 * @param dirid
	 * @param page
	 * @return
	 */
	Paging<News> findByDir(String dirid, Paging<News> page);
	/**
	 * 取全部信息
	 * @param newsid
	 * @return
	 */
	News get(long newsid);

}
