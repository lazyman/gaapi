package cn.com.lazyhome.ga.duty;

import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;

import org.json.JSONObject;

public interface Duty {
	/**
	 * 取得本地值班表
	 * @param date
	 * @return json
	 * @throws SQLException
	 */
	public JSONObject getLocalDuty(Calendar date) throws SQLException;
	/**
	 * 取得市局值表
	 * @param date
	 * @return json
	 * @throws SQLException
	 */
	public List<WatchInfo> getCityDuty(Calendar date) throws SQLException;
}
