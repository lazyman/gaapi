package cn.com.lazyhome.ga.duty;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import cn.com.lazyhome.util.HibernateUtil;

public class DutyImpl implements Duty {
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	@SuppressWarnings("unchecked")
	public List<WatchInfo> getCityDuty(Calendar date) throws SQLException {
		Session session = HibernateUtil.getSessionFactory().openSession();
		
		
		String sql = "select wi from WatchInfo wi, WatchType wt  where wi.watchdept = wt.typename and wi.pid = ? and wi.filltime = ? order by wi.filltime desc, wt.sort ";
		Query q = session.createQuery(sql);
		q.setInteger(0, 108);
		q.setDate(1, new Date(date.getTimeInMillis()));

		List<WatchInfo> list = q.list();
		
		return list;

//		JSONObject cityduty = new JSONObject();
//
//		try {
//			// 把指定的查询日期放到这里
//			cityduty.put("date", sdf.format(date.getTime()));
//			JSONArray duties = new JSONArray();
//			JSONObject duty = null;
//			WatchInfo wi;
//			
//			for(int i=0; i<list.size(); i++) {
//				duty = new JSONObject();
//				wi = list.get(i);
//				
//				duty.put("WATCHDEPT", wi.getWatchdept());
//				duty.put("WATCHMEN", wi.getWatchmen());
//				duty.put("WATCHTEL", wi.getWatchtel());
//				
//				duties.put(duty);
//			}
//			cityduty.put("duties", duties);
//		} catch (JSONException e) {
//			e.printStackTrace();
//		}
//
//		
//		return cityduty;
	}

	public JSONObject getLocalDuty(Calendar date) throws SQLException {

		Connection conn = DriverManager.getConnection("proxool.gaweb_yh");
		// 查询需要显示的部门
		String sql = "Select dp.name as deptname, dp.tel as tel, dp.intel as intel, tbb.* from tbb,Department dp where tbb.TbbDate=? and tbb.DepartmentID<>1 and tbb.DepartmentID=dp.ID and tbb.LevelNo=0 order by dp.OrderNo";
		String dutySql = "Select u.username, u.truename, u.worktel, u.mobile, u.shortno, td.* from tbbDetails td, users u where td.userid = u.id and td.tbbID=?";
		PreparedStatement deptStmt = conn.prepareStatement(sql);
		PreparedStatement dutyStmt = conn.prepareStatement(dutySql);

		deptStmt.setDate(1, new Date(date.getTimeInMillis()));
		ResultSet deptRs = deptStmt.executeQuery();
		ResultSet personRs;

		JSONArray depts = new JSONArray();
		JSONObject localduty, duty;
		localduty = new JSONObject();
		
		
		JSONArray dutyPersons = null, dutyManagers = null;
		JSONObject person;

		
		try {
			// 把指定的查询日期放到这里
			localduty.put("date", sdf.format(date.getTime()));
			while (deptRs.next()) {
				duty = new JSONObject();
				duty.put("deptid", deptRs.getString("departmentid"));
				duty.put("deptname", deptRs.getString("deptname"));
				duty.put("tel", deptRs.getString("tel"));
				duty.put("intel", deptRs.getString("intel"));
				
				dutyPersons = new JSONArray();
				dutyManagers = new JSONArray();
				
				dutyStmt.setString(1, deptRs.getString("id"));
				personRs = dutyStmt.executeQuery();
				while(personRs.next()) {
					person = new JSONObject();
					person.put("name", personRs.getString("truename"));
					person.put("worktel", personRs.getString("worktel"));
					person.put("mobile", personRs.getString("mobile"));
					person.put("shortno", personRs.getString("shortno"));
					
					if(personRs.getString("isManager").equals("1")) {
						dutyManagers.put(person);
					} else {
						dutyPersons.put(person);
					}
				}
				
				duty.put("managers", dutyManagers);
				duty.put("dutyPersons", dutyPersons);
				depts.put(duty);
			}
			
			localduty.put("depts", depts);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		conn.close();

		return localduty;
	}

}
