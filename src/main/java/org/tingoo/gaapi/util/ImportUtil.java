package org.tingoo.gaapi.util;

import java.io.UnsupportedEncodingException;
import java.rmi.RemoteException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;

import javax.xml.rpc.ServiceException;
import javax.xml.soap.SOAPException;

import org.apache.axis.message.SOAPHeaderElement;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.tempuri.orgquery.OrgQuery;
import org.tempuri.orgquery.OrgQueryLocator;
import org.tempuri.orgquery.OrgQuerySoapStub;
import org.tingoo.gaapi.bean.Department;
import org.tingoo.gaapi.bean.Member;

import cn.com.lazyhome.util.HibernateUtil;

/**
 * 导入部门和用户数据
 * 
 * @author Administrator
 * 
 */
public class ImportUtil {
	private static Log logger = LogFactory.getLog(ImportUtil.class);

	/**
	 * 导入所有部门
	 */
	@SuppressWarnings("unchecked")
	public void importDepart() {
		OrgQuery service = new OrgQueryLocator();
		SOAPHeaderElement header = new SOAPHeaderElement("http://tempuri.org/",
				"CredentialSoapHeader");

		OrgQuerySoapStub client;
		try {
			String appid = "7aeeac44-258c-472a-9794-42c8759cba1e";
			String username = "98212402";
			String appsn = "9174EF3E93199EB9960513DE3BE6E82218A49DB6";

			header.addChildElement("ApplicationID").setValue(appid);
			header.addChildElement("UserName").setValue(username);
			header.addChildElement("ApplicationSN").setValue(appsn);

			client = (OrgQuerySoapStub) service.getOrgQuerySoap();
			client.setHeader(header);
			// client.

			String strOrgUnitID = "5030d644-3199-4cc1-bc2d-c4dcfb9577cf";// 网警

			String str1;
			Document doc;
			Element root;
			List<Element> orgs;

			Element e;

			strOrgUnitID = "0";
			str1 = client.getSubOrgUnits(strOrgUnitID).get_any()[0].toString();
			logger.debug("client.getSubOrgUnits();");
			logger.debug("strOrgUnitID=" + strOrgUnitID);
			logger.debug(str1);

			doc = DocumentHelper.parseText(str1);
			root = doc.getRootElement();
			int n = 1;

			Session s = getSession();
			Transaction t = s.beginTransaction();
			Department dep;
			orgs = root.element("value").element("orgunits").elements();
			n = 1;
			for (Iterator<Element> i = orgs.iterator(); i.hasNext();) {
				e = i.next();

				dep = toDepartment(e);

				n++;
				s.saveOrUpdate(dep);
			}
			t.commit();
			s.close();

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

	/**
	 * 导入所有用户
	 */
	@SuppressWarnings("unchecked")
	public void importUser() {
		try {
			Session s = getSession();
			List<Department> departments = s.createQuery("from Department").list();
			s.close();

			Department dep;
			int size = departments.size();
			for (int i = 0; i < size; i++) {
				dep = departments.get(i);
//				strOrgUnitID = dep.getId();

				logger.info("total:" + size + "\tcur:" + i);

				importUser(dep);
			}

		} catch (ServiceException e) {
			logger.fatal(e, e);
		} catch (RemoteException e) {
			logger.fatal(e, e);
		} catch (SOAPException e) {
			logger.fatal(e);
		} catch (DocumentException e) {
			logger.fatal(e, e);
		}
	}

	/**
	 * 取制定部门的人员信息 
	 * @param dep
	 * @throws SOAPException
	 * @throws ServiceException
	 * @throws RemoteException
	 * @throws DocumentException
	 */
	@SuppressWarnings("unchecked")
	public void importUser(Department dep) throws SOAPException,
			ServiceException, RemoteException, DocumentException {
		OrgQuerySoapStub client = getSoapClient();
		String strOrgUnitID = "5030d644-3199-4cc1-bc2d-c4dcfb9577cf";// 网警
		// strOrgUnitID = "dc3aea44-3976-4ef2-b870-eef75ea045c7";//交警
		// GetSubUsersResponseGetSubUsersResult ret =
		// client.getSubUsers(strOrgUnitID);


		strOrgUnitID = dep.getId();
		String str1 = client.getSubUsers(strOrgUnitID).get_any()[0].toString();
		// logger.info("client.getSubUsers(strOrgUnitID);");
		logger.info("dep.getName()" + dep.getName() + "\tstrOrgUnitID="
				+ strOrgUnitID);
		// logger.info(dep.getName());
		logger.debug(str1);

		Document doc = DocumentHelper.parseText(str1);
		Element root = doc.getRootElement();

		String type = root.elementText("type");
		if (type.equals("01")) {
			List<Element> users = root.element("value").element("users").elements();

			Session s = getSession();
			Transaction t;
			int usersize = users.size();
			logger.info("found users:" + usersize);
			for (int j = 0; j < usersize; j++) {
				t = s.beginTransaction();

				Element e = users.get(j);
				Member m = toMember(e);
				m.setDepartment(dep);

				try {
					s.saveOrUpdate(m);
					t.commit();
				} catch (Exception ex) {
					t.rollback();
					logger.info(m);
					logger.fatal(ex.getMessage(), ex);
				}
			}
			s.close();
		} else {
			logger.warn(root.elementText("value"));
		}
	}

	/**
	 * 根据警号获取用户信息
	 * 
	 * @param username
	 */
	public void getUserInfo(String username) {
		OrgQuerySoapStub client;
		try {
			client = getSoapClient();
			String str1 = client.getUserInfo(username).get_any()[0].toString();

			logger.info(str1);
			Document doc = DocumentHelper.parseText(str1);
			Element root = doc.getRootElement();

			Element e = root.element("value").element("user");

			Member m = toMember(e);

			Session s = getSession();
			Transaction t = s.beginTransaction();
			try {
				s.saveOrUpdate(m);
				t.commit();
			} catch (Exception ex) {
				t.rollback();
				logger.info(m);
				logger.fatal(ex.getMessage(), ex);
			}
		} catch (SOAPException e) {
			logger.fatal(e, e);
		} catch (ServiceException e) {
			logger.fatal(e, e);
		} catch (RemoteException e) {
			logger.fatal(e, e);
		} catch (DocumentException e) {
			logger.fatal(e, e);
		}

	}

	/**
	 * 将xml转为Department bean
	 * 
	 * @param e
	 * @return
	 */
	private Department toDepartment(Element e) {
		// <orgunits>
		// <orgunit>
		// <departid>93f6dabd-0eb3-495a-9eb0-fc2b27efa595</departid>
		// <departnum>331021000000 </departnum>
		// <departname>&#x5C40;&#x9886;&#x5BFC;</departname>
		// <orderindex>1</orderindex>
		// <isorg>0</isorg>
		// <ishaschild>0</ishaschild>
		// <parentid>5263edab-db35-4866-8beb-fe07242f909a</parentid>
		// <type>0</type>
		// <oaid>1342</oaid>
		// <basetype>0</basetype>
		// <islooktel>0</islooktel>
		// </orgunit>

		Department dep = new Department();
		dep.setId(e.elementText("departid"));
		dep.setCode(e.elementText("departnum"));
		dep.setName(e.elementText("departname"));
		int index = 0;
		try {
			index = Integer.parseInt(e.elementText("orderindex"));
			dep.setOrderindex(index);
		} catch (Exception ex) {
			dep.setOrderindex(index);
		}
		dep.setIsorg(e.elementText("isorg"));
		dep.setIshaschid(e.elementText("ishaschid"));
		dep.setParent(e.elementText("parentid"));
		try {
			index = Integer.parseInt(e.elementText("type"));
			dep.setType(index);
		} catch (Exception ex) {
			index = 0;
			dep.setType(index);
		}
		try {
			index = Integer.parseInt(e.elementText("oaid"));
			dep.setOaid(index);
		} catch (Exception ex) {
			index = 0;
			dep.setOaid(index);
		}
		dep.setBasetype(e.elementText("basetype"));
		dep.setIslooktel(e.elementText("islooktel"));

		return dep;
	}

	/**
	 * 将xml转为Member bean
	 * 
	 * @param e
	 * @return
	 */
	private Member toMember(Element e) {

		// <user>
		// <departname>&#x7F51;&#x7EDC;&#x8B66;&#x5BDF;&#x5927;&#x961F;(&#x4FE1;&#x901A;&#x79D1;)</departname>
		// <departid>5030d644-3199-4cc1-bc2d-c4dcfb9577cf</departid>
		// <departnum>331021240000</departnum>
		// <parentid>5263edab-db35-4866-8beb-fe07242f909a</parentid>
		// <departtype>0</departtype>
		// <departorderindex>11</departorderindex>
		// <failedpwdattemptcount>0</failedpwdattemptcount>
		// <failedpwdanswerattemptcount>0</failedpwdanswerattemptcount>
		// <userid>627c46f2-aa28-48dc-b957-76eb25303eb4</userid>
		// <password>3D4F2BF07DC1BE38B20CD6E46949A1071F9D0E3D</password>
		// <isapproved>1</isapproved>
		// <islockedout>0</islockedout>
		// <createdate>2010-03-29T09:39:29+08:00</createdate>
		// <orderindex>32</orderindex>
		// <policeid>98212407</policeid>
		// <membername>&#x9A86;&#x5C0F;&#x4E3D;</membername>
		// <sex>0</sex>
		// <duty>&#x534F;&#x8B66;</duty>
		// <birthday>0001-01-01T00:00:00+08:00</birthday>
		// <ismarry>0</ismarry>
		// <shortmobile>60015967079220</shortmobile>
		// <mobile>15967079220</mobile>
		// <officephone>87357957</officephone>
		// <type>3</type>
		// <state>0</state>
		// <startworkdate>0001-1-1</startworkdate>
		// <createtime>2010-03-29T09:39:29+08:00</createtime>
		// <modifytime>2010-11-10T14:35:50+08:00</modifytime>
		// <innerofficephone>7957</innerofficephone>
		// </user>
		// </users></value></return>

		Member m = new Member();

		m.setId(e.elementText("userid"));
		m.setUsername(e.elementText("username"));
		m.setPassword(e.elementText("password"));
		m.setIsapproved(e.elementText("isapproved"));
		m.setIslockedout(e.elementText("islockedout"));
		m.setCreatedate(e.elementText("createdate"));
		try {
			int index = Integer.parseInt(e.elementText("orderindex"));
			m.setOrderindex(index);
		} catch (Exception ex) {
			m.setOrderindex(0);
		}
		m.setPoliceid(e.elementText("policeid"));
		m.setMembername(e.elementText("membername"));
		m.setSex(e.elementText("sex"));
		m.setDuty(e.elementText("duty"));
		m.setBirthday(e.elementText("birthday"));
		m.setIsmarry(e.elementText("ismarry"));
		m.setShortmobile(e.elementText("shortmobile"));
		m.setMobile(e.elementText("mobile"));
		m.setOfficephone(e.elementText("officephone"));
		m.setType(e.elementText("type"));
		m.setState(e.elementText("state"));
		m.setStartworkdate(e.elementText("startworkdate"));
		m.setCreatetime(e.elementText("createtime"));
		m.setModifytime(e.elementText("modifytime"));
		m.setInnerofficephone(e.elementText("innerofficephone"));

		return m;
	}

	public static Session getSession() {
		Session s = HibernateUtil.getSessionFactory("gaapi").openSession();
		return s;
	}

	/**
	 * 获取web service 操作连接
	 * 
	 * @return
	 * @throws SOAPException
	 * @throws ServiceException
	 */
	private OrgQuerySoapStub getSoapClient() throws SOAPException,
			ServiceException {
		OrgQuery service = new OrgQueryLocator();
		SOAPHeaderElement header = new SOAPHeaderElement("http://tempuri.org/",
				"CredentialSoapHeader");

		OrgQuerySoapStub client = null;

		String appid = "7aeeac44-258c-472a-9794-42c8759cba1e";
		String username = "98212402";
		String appsn = "9174EF3E93199EB9960513DE3BE6E82218A49DB6";

		header.addChildElement("ApplicationID").setValue(appid);
		header.addChildElement("UserName").setValue(username);
		header.addChildElement("ApplicationSN").setValue(appsn);

		client = (OrgQuerySoapStub) service.getOrgQuerySoap();
		client.setHeader(header);

		return client;
	}

	/**
	 * 利用MD5进行加密
	 * 
	 * @param str
	 *            待加密的字符串
	 * @return 加密后的字符串
	 * @throws NoSuchAlgorithmException
	 *             没有这种产生消息摘要的算法
	 * @throws UnsupportedEncodingException
	 */
	public String EncoderByMd5(String str, int size)
			throws NoSuchAlgorithmException, UnsupportedEncodingException {
		// 确定计算方法
		MessageDigest md5 = MessageDigest.getInstance("sha1");

		byte[] sha1 = md5.digest(str.getBytes("utf-8"));

		int i;
		StringBuffer buf = new StringBuffer("");
		for (int offset = 0; offset < sha1.length; offset++) {
			i = sha1[offset];
			if (i < 0)
				i += 256;
			if (i < 16)
				buf.append("0");
			buf.append(Integer.toHexString(i));
		}
		// 加密后的字符串
		if (size == 16) {
			return buf.substring(8, 24);
		} else {
			return buf.toString();
		}
	}

	public static void main(String[] args) {
		ImportUtil util = new ImportUtil();
		try {
			System.out.println(util.EncoderByMd5("111111"));

			// util.importDepart();
			// util.importUser();
			util.getUserInfo("98212402");
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}

	private String EncoderByMd5(String str) throws NoSuchAlgorithmException,
			UnsupportedEncodingException {
		return EncoderByMd5(str, 32);
	}
}
