package org.tingoo.gaapi.action;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.htmlcleaner.HtmlCleaner;
import org.htmlcleaner.PrettyXmlSerializer;
import org.htmlcleaner.TagNode;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.tingoo.gaapi.bean.Wage;
import org.tingoo.gaapi.bean.WageId;
import org.tingoo.gaapi.util.ImportUtil;

public class ImportAction {
	private static Log logger = LogFactory.getLog(ImportAction.class);

	public static final String SUCCESS = "success";
	private String url = "search";
	
	private String username;
	private String password;
	
	public String execute() {
		return SUCCESS;
	}
	
	private void importfile(String filepath) {
		HtmlCleaner cleaner = new HtmlCleaner();
		
		try {
			logger.info("cleaning");
			TagNode node = cleaner.clean(new File(filepath));


			logger.debug("write to ByteArrayOutputStream");
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			// 源文件处理完成,保存到outfile
			PrettyXmlSerializer serializer = new PrettyXmlSerializer(cleaner.getProperties());
			serializer.writeXmlToStream(node, baos );
			
//			SimpleXmlSerializer xml2 = new SimpleXmlSerializer(cleaner.getProperties());
//			xml2.writeXmlToFile(node, outfile);

			logger.debug("build jdom ");
			ByteArrayInputStream bais = new ByteArrayInputStream(baos.toByteArray());
			//JDom 再读取outfile，不使用JDomSerializer直接导出是因为在处理过程中有namespace无法识别
			SAXBuilder builder = new SAXBuilder();
			Document doc = builder.build(bais);
			Element root = doc.getRootElement();
			
			Element table = (Element) root.getChild("body").getChildren().get(1);
			
			List<Element> tds, trs = table.getChild("tbody").getChildren();
			Element tr;
			
			logger.info("covert the wage element,and save to db");
			int size = trs.size()-2;
			Session s = ImportUtil.getSession();
			Transaction t = s.beginTransaction();
			for(int i=1; i<size; i++) {
				tr = trs.get(i);
				tds = tr.getChildren();
				
				int tdi = 0;
				Wage wage = new Wage();
				WageId id = new WageId();
				wage.setId(id);
				id.setCode(tds.get(tdi++).getText());
				wage.setName(tds.get(tdi++).getText());
				wage.setDeptcode(tds.get(tdi++).getText());
				wage.setDeptname(tds.get(tdi++).getText());
				wage.setZhiwuGz(tds.get(tdi++).getText());
				wage.setJibieGz(tds.get(tdi++).getText());
				wage.setJishudengjiGz(tds.get(tdi++).getText());
				wage.setGangweiGz(tds.get(tdi++).getText());
				wage.setShenghuoBt(tds.get(tdi++).getText());
				wage.setGongzuoJt1(tds.get(tdi++).getText());
				wage.setGongzuoJt2(tds.get(tdi++).getText());
				wage.setJingxianJt(tds.get(tdi++).getText());
				wage.setTeshuJt(tds.get(tdi++).getText());
				wage.setZhufangBt(tds.get(tdi++).getText());
				wage.setYiliao(tds.get(tdi++).getText());
				wage.setTongxun(tds.get(tdi++).getText());
				wage.setChegai(tds.get(tdi++).getText());
				wage.setQita1(tds.get(tdi++).getText());
				wage.setQita2(tds.get(tdi++).getText());
				wage.setBufa(tds.get(tdi++).getText());
				wage.setYingfa(tds.get(tdi++).getText());
				wage.setGongjijing(tds.get(tdi++).getText());
				wage.setGeshui(tds.get(tdi++).getText());
				wage.setYanglaobaoxian(tds.get(tdi++).getText());
				wage.setYiliaobaoxian(tds.get(tdi++).getText());
				wage.setShiyebaoxian(tds.get(tdi++).getText());
				wage.setQitadaikou(tds.get(tdi++).getText());
				wage.setKoukuanheji(tds.get(tdi++).getText());
				wage.setShifaheji(tds.get(tdi++).getText());
				id.setYuefen(tds.get(tdi++).getText());
				wage.setBeizhu(tds.get(tdi++).getText());
				
				s.saveOrUpdate(wage);
			}
			
			t.commit();
			s.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JDOMException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		String filepath = "D:\\program\\eclipse\\workspace\\gaapi\\src\\test\\resources\\gz.xls";
		new ImportAction().importfile(filepath);
	}
}
