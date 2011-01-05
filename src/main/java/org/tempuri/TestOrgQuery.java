package org.tempuri;

import java.rmi.RemoteException;
import java.util.Iterator;
import java.util.List;

import javax.xml.rpc.ServiceException;
import javax.xml.soap.SOAPException;

import org.apache.axis.message.SOAPHeaderElement;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.tempuri.orgquery.GetSubUsersResponseGetSubUsersResult;
import org.tempuri.orgquery.OrgQuery;
import org.tempuri.orgquery.OrgQueryLocator;
import org.tempuri.orgquery.OrgQuerySoapStub;

public class TestOrgQuery {
	public static void test1() {
		OrgQuery service = new OrgQueryLocator();
		SOAPHeaderElement header = new SOAPHeaderElement("http://tempuri.org/", "CredentialSoapHeader");
		
		OrgQuerySoapStub client;
		try {
			String appid = "7aeeac44-258c-472a-9794-42c8759cba1e";
			String username = "98212408";
			String appsn = "9174EF3E93199EB9960513DE3BE6E82218A49DB6";
			
			header.addChildElement("ApplicationID").setValue(appid);
			header.addChildElement("UserName").setValue(username);
			header.addChildElement("ApplicationSN").setValue(appsn);
			
			client = (OrgQuerySoapStub) service.getOrgQuerySoap();
			client.setHeader(header);
//			client.
			
			String strOrgUnitID = "5030d644-3199-4cc1-bc2d-c4dcfb9577cf";//Íø¾¯
//			strOrgUnitID = "dc3aea44-3976-4ef2-b870-eef75ea045c7";//½»¾¯
//			GetSubUsersResponseGetSubUsersResult ret = client.getSubUsers(strOrgUnitID);
			
			String str1;
			Document doc;
			Element root;
			List<Element> users, orgs;
			
//			str1 = client.getSubUsers(strOrgUnitID).get_any()[0].toString();
//			doc = DocumentHelper.parseText(str1);
//			root = doc.getRootElement();
//			users = root.element("value").element("users").elements();
//			
//			for(Iterator<Element> i = users.iterator(); i.hasNext();) {
//				Element e = i.next();
//				System.out.println(e.elementText("departname"));
//				System.out.println(e.elementText("membername"));
//				System.out.println(e.elementText("duty"));
//			}

			Element e;
//			strOrgUnitID = "5263edab-db35-4866-8beb-fe07242f909a";
//			
//			str1 = client.getFatherOrgUnit(strOrgUnitID).get_any()[0].toString();
//			doc = DocumentHelper.parseText(str1);
//			root = doc.getRootElement();
//			System.out.println(str1);
//			
//			e = root.element("value").element("orgunit");
//
//			System.out.println(e.elementText("departid"));
//			System.out.println(e.elementText("departnum"));
//			System.out.println(e.elementText("departname"));
//			System.out.println(e.elementText("parentid"));
			
			
			//<orgunits>
//			  <orgunit>
//			    <departid>93f6dabd-0eb3-495a-9eb0-fc2b27efa595</departid>
//			    <departnum>331021000000 </departnum>
//			    <departname>&#x5C40;&#x9886;&#x5BFC;</departname>
//			    <orderindex>1</orderindex>
//			    <isorg>0</isorg>
//			    <ishaschild>0</ishaschild>
//			    <parentid>5263edab-db35-4866-8beb-fe07242f909a</parentid>
//			    <type>0</type>
//			    <oaid>1342</oaid>
//			    <basetype>0</basetype>
//			    <islooktel>0</islooktel>
//			  </orgunit>
			
//			strOrgUnitID = "0";
//			str1 = client.getSubOrgUnits(strOrgUnitID).get_any()[0].toString();
//			System.out.println(str1);
//			doc = DocumentHelper.parseText(str1);
//			root = doc.getRootElement();
//			int n=1;
//			
//			orgs = root.element("value").element("orgunits").elements();
//			n=1;
//			for(Iterator<Element> i = orgs.iterator(); i.hasNext();) {
//				e = i.next();
//				
//				System.out.println(n);
//				System.out.println(e.elementText("departid"));
//				System.out.println(e.elementText("departnum"));
//				System.out.println(e.elementText("departname"));
//				System.out.println(e.elementText("parentid"));
//				System.out.println();
//				n++;
//			}
			
//			users = root.element("value").element("suborgunits").element("users").elements();
//			
//			for(Iterator<Element> i = users.iterator(); i.hasNext();) {
//				e = i.next();
//				
//				System.out.println(n);
//				System.out.println(e.elementText("departname"));
//				System.out.println(e.elementText("membername"));
//				System.out.println(e.elementText("duty"));
//				
//				n++;
//			}
			
			
			str1 = client.getUserInfo(username).get_any()[0].toString();
			System.out.println(str1);
			
			doc = DocumentHelper.parseText(str1);
			root = doc.getRootElement();
			e = root.element("value").element("user");

			System.out.println(e.elementText("departname"));
			System.out.println(e.elementText("membername"));
			System.out.println(e.elementText("duty"));
			System.out.println(e.elementText("password"));
			
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
