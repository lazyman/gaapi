package cn.com.lazyhome.util;

import java.util.Calendar;

public class Util {
	/**
	 * 仅比较两个日期，不比时间
	 * @param cal1
	 * @param cal2
	 * @return
	 */
	public boolean equDate(Calendar cal1, Calendar cal2) {
		if(cal1.equals(cal2)) {
			return true;
		} else if(cal1.get(Calendar.DATE) == cal2.get(Calendar.DATE)
					&& cal1.get(Calendar.MONTH) == cal2.get(Calendar.MONTH)
					&& cal1.get(Calendar.YEAR) == cal2.get(Calendar.YEAR)
				) {
			//年、月、日相同
			return true;
		} else {
			return false;
		}
	}

}
