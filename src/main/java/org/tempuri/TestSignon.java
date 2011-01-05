package org.tempuri;

import java.rmi.RemoteException;

import javax.xml.rpc.ServiceException;
import javax.xml.soap.SOAPException;

import org.apache.axis.message.SOAPHeaderElement;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.tempuri.singlesignon.IdentifyUserAuthorityResponseIdentifyUserAuthorityResult;
import org.tempuri.singlesignon.SingleSignOn;
import org.tempuri.singlesignon.SingleSignOnLocator;
import org.tempuri.singlesignon.SingleSignOnSoapStub;

public class TestSignon {
	public static void test1() {
		SingleSignOn service = new SingleSignOnLocator();
		SOAPHeaderElement header = new SOAPHeaderElement("http://tempuri.org/", "CredentialSoapHeader");
		
		SingleSignOnSoapStub client;
		try {
			String appid = "7aeeac44-258c-472a-9794-42c8759cba1e";
			String username = "98212402";
			String appsn = "9174EF3E93199EB9960513DE3BE6E82218A49DB6";
			
			String loginapp = "c73c7cbc-95f6-4838-906e-2a6722038ac9";
			String loginsn = "7039DC804EC3E1D019F80BB153BE02844975A68C";
			
			header.addChildElement("ApplicationID").setValue(appid);
			header.addChildElement("UserName").setValue(username);
			header.addChildElement("ApplicationSN").setValue(appsn);
			
			client = (SingleSignOnSoapStub) service.getSingleSignOnSoap();
			client.setHeader(header);
			
			
//			String strOrgUnitID = "5030d644-3199-4cc1-bc2d-c4dcfb9577cf";//Íø¾¯
//			strOrgUnitID = "dc3aea44-3976-4ef2-b870-eef75ea045c7";//½»¾¯
//			GetSubUsersResponseGetSubUsersResult ret = client.getSubUsers(strOrgUnitID);
//			String str1 = ret.get_any()[0].toString();
			
			
			String loginuser = "98212408";
			String password = "111111";
			password = "F3EBECF1ECBDA4A74E23AE217D2FF2196BB0A6D4";//98212402
			password = "A16A76BD75BE2CF49B67D8C752C6D7FB865D0A2A";//98212408
			
			loginuser = "33170411";
			password = "3D4F2BF07DC1BE38B20CD6E46949A1071F9D0E3D";
			password = "3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d";
			String str;
			
			str = client.identifyUserAuthority(loginuser, password, loginapp).get_any()[0].toString();
//			str = client.getUserAppSystems(loginuser).get_any()[0].toString();
//			str = client.getRolesByUserID(loginuser, loginapp).get_any()[0].toString();
//			str = client.createSignOnToken(loginuser).get_any()[0].toString();
			String token = "bcd66b23-5267-4559-b497-2aad6649beb2";
//			str = client.identifySignOnToken(token).get_any()[0].toString();
			
			
			System.out.println(str);
			Document doc = DocumentHelper.parseText(str);
			Element root = doc.getRootElement();
			
			System.out.println(root.element("value").getText());
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (RemoteException e) {
			e.printStackTrace();
		} catch (SOAPException e) {
			e.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		}
	}
	
	
	public static void main(String[] args) {
		test1();
	}

}
