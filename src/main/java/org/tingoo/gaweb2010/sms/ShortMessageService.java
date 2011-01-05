package org.tingoo.gaweb2010.sms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ShortMessageService {
	private static Log logger = LogFactory.getLog(ShortMessageService.class);
	
	public void send(String mobile, String msg) {
		try {
			Connection conn = DriverManager.getConnection("proxool.tzsm");

//			logger.info("\nsms login ok");
			
			String sql = "insert into tzsm.sendsm_0160(ID, SRCADDR, DESTADDR, MSG) values(tzsm.SEQ_ID.NEXTVAL, ?, ?, ?)";

			PreparedStatement pres = conn.prepareStatement(sql);
			
			int parameterIndex = 1;
			pres.setString(parameterIndex++, "10657308061052");
			pres.setString(parameterIndex++, mobile);
			pres.setString(parameterIndex++, msg);
			
			
			pres.execute();
			pres.close();
			conn.close();
			
			
			logger.info("sent message :" + msg);
			logger.info("to:" + mobile);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
