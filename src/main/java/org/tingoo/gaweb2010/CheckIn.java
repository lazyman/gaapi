package org.tingoo.gaweb2010;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CheckIn {
	String[] holidays = {
			"2010-9-22", "2010-9-23", "2010-9-24", //中秋
			"2010-10-1", "2010-10-2", "2010-10-3", "2010-10-4", "2010-10-5", "2010-10-6", "2010-10-7"// 国庆
			};
	Date[] dates;
	
	private void task() {
		// TODO Auto-generated method stub
		//connection
		String className = "net.sourceforge.jtds.jdbc.Driver";
		String url = "jdbc:jtds:sqlserver://10.123.36.29:1433/kaoqin_att";
		String user = "kaoqin";
		String password = "yhgaj12345";
		
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String beginstr = "2010-12-17";
			String endstr = "2011-01-31";
			
			
			// begin and end 
			Date begindate = sdf.parse(beginstr);
			Calendar begin = Calendar.getInstance();
			begin.setTime(begindate);
			
			Date enddate = sdf.parse(endstr);
			Calendar end = Calendar.getInstance();
			begin.set(Calendar.SECOND, end.get(Calendar.SECOND));
			end.setTime(enddate);
			
			
			// morning and afternoon
			Calendar morning1 = Calendar.getInstance();
			Calendar morning2 = Calendar.getInstance();
			Calendar afternoon1 = Calendar.getInstance();
			Calendar afternoon2 = Calendar.getInstance();
			
			morning1.setTime(begin.getTime());
			morning1.set(Calendar.HOUR_OF_DAY, 7);
			morning1.set(Calendar.MINUTE, 26);
			morning1.set(Calendar.SECOND, 26);
			morning2.setTime(begin.getTime());
			morning2.set(Calendar.HOUR_OF_DAY, 11);
			morning2.set(Calendar.MINUTE, 36);
			morning2.set(Calendar.SECOND, 26);
			
			
			//13：56：26-17：6：26（14：00-17：00）
			afternoon1.setTime(begin.getTime());
			afternoon1.set(Calendar.HOUR_OF_DAY, 13);
			afternoon1.set(Calendar.MINUTE, 56);
			afternoon1.set(Calendar.SECOND, 26);
			afternoon2.setTime(begin.getTime());
			afternoon2.set(Calendar.HOUR_OF_DAY, 17);
			afternoon2.set(Calendar.MINUTE, 6);
			afternoon2.set(Calendar.SECOND, 26);
			
			
			
			//connection
			Class.forName(className);
			Connection conn = DriverManager.getConnection(url, user, password);

			//416 教导 418 胡怀东 475 董长洪
			String sql = "select * from userinfo where userid = 416";
			sql = "insert into kaoqin.CHECKINOUT( " +
					" userid, checktime, SENSORID) values(416, ?, 1)";
			PreparedStatement prest;
			
			
			while(morning1.before(end)) {
				System.out.println(sdf.format(morning1.getTime()));
				if(morning1.get(Calendar.DAY_OF_WEEK) != Calendar.SUNDAY 
						&& morning1.get(Calendar.DAY_OF_WEEK) != Calendar.SATURDAY
						&& !inholiday(morning1)) {
					
					System.out.println("\t not  holiday");
					//execute
					prest = conn.prepareStatement(sql);
					prest.setTimestamp(1, new Timestamp(morning1.getTimeInMillis()));
					prest.execute();
					
					prest = conn.prepareStatement(sql);
					prest.setTimestamp(1, new Timestamp(morning2.getTimeInMillis()));
					prest.execute();
					
					prest = conn.prepareStatement(sql);
					prest.setTimestamp(1, new Timestamp(afternoon1.getTimeInMillis()));
					prest.execute();
					
					prest = conn.prepareStatement(sql);
					prest.setTimestamp(1, new Timestamp(afternoon2.getTimeInMillis()));
					prest.execute();
				}
				
				morning1.add(Calendar.DATE, 1);
				morning2.add(Calendar.DATE, 1);
				afternoon1.add(Calendar.DATE, 1);
				afternoon2.add(Calendar.DATE, 1);
			}
			
			
//			while(rs.next()) {
//				System.out.println(rs.getString("name"));
//			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (ParseException e) {
			e.printStackTrace();
		}
	
	}
	private boolean inholiday(Calendar morning1) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		dates = new Date[holidays.length];
		Calendar c = Calendar.getInstance();
		c.setTimeInMillis(morning1.getTimeInMillis());
		
		c.set(Calendar.HOUR_OF_DAY, 0);
		c.set(Calendar.MINUTE, 0);
		c.set(Calendar.SECOND, 0);
		
		for(int i=0; i< holidays.length; i++) {
			try {
				dates[i] = sdf.parse(holidays[i]);
				
				if(c.getTime().equals(dates[i])) {
					System.out.println(sdf.format(c.getTime()));
					return true;
				}
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		
		return false;
	}
	public static void main(String[] args) {
		new CheckIn().task();
	}
}
