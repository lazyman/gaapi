package org.tingoo.gaapi.action;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
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

	// 单个文件上传可以用 File files,String filesFileName,String filesContentType
	// 名称要与jsp中的name相同(三个变量都要生成get,set)
	private File[] files;
	// 要以File[]变量名开头
	private String[] filesFileName;
	// 要以File[]变量名开头
	private String[] filesContentType;

	private ServletContext servletContext;

	public String execute() {
		return SUCCESS;
	}
	public String dealimport() {
		ServletContext servletContext = ServletActionContext.getServletContext();
		String dataDir = servletContext.getRealPath("/gz/tmp");
		logger.debug(dataDir);
		new File(dataDir).mkdirs();

		int i = 0;
//		File saveFile = new File(dataDir, filesFileName[i]);
//		files[i].renameTo(saveFile);

		importfile(files[i]);

		return SUCCESS;
	}

	public File[] getFiles() {
		return files;
	}

	public void setFiles(File[] files) {
		this.files = files;
	}

	public String[] getFilesFileName() {
		return filesFileName;
	}

	public void setFilesFileName(String[] filesFileName) {
		this.filesFileName = filesFileName;
	}

	public String[] getFilesContentType() {
		return filesContentType;
	}

	public void setFilesContentType(String[] filesContentType) {
		this.filesContentType = filesContentType;
	}

	public ServletContext getServletContext() {
		return servletContext;
	}

	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	private void importfile(File filepath) {
		HtmlCleaner cleaner = new HtmlCleaner();

		try {
			logger.info("cleaning");
			TagNode node = cleaner.clean(filepath);

			logger.debug("write to ByteArrayOutputStream");
			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			// 源文件处理完成,保存到outfile
			PrettyXmlSerializer serializer = new PrettyXmlSerializer(cleaner
					.getProperties());
			serializer.writeXmlToStream(node, baos);

			// SimpleXmlSerializer xml2 = new
			// SimpleXmlSerializer(cleaner.getProperties());
			// xml2.writeXmlToFile(node, outfile);

			logger.debug("build jdom ");
			ByteArrayInputStream bais = new ByteArrayInputStream(baos
					.toByteArray());
			// JDom 再读取outfile，不使用JDomSerializer直接导出是因为在处理过程中有namespace无法识别
			SAXBuilder builder = new SAXBuilder();
			Document doc = builder.build(bais);
			Element root = doc.getRootElement();

			Element table = (Element) root.getChild("body").getChildren()
					.get(1);

			List<Element> tds, trs = table.getChild("tbody").getChildren();
			Element tr;

			logger.info("covert the wage element,and save to db");
			int size = trs.size() - 2;
			Session s = ImportUtil.getSession();
			Transaction t = s.beginTransaction();
			for (int i = 1; i < size; i++) {
				tr = trs.get(i);
				tds = tr.getChildren();

				int tdi = 0;
				Wage wage = new Wage();
				WageId id = new WageId();
				wage.setId(id);

				id.setCode(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setName(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setDeptcode(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setDeptname(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setZhiwuGz(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setJibieGz(deleleQuestMark(tds.get(tdi++).getText()));
				wage
						.setJishudengjiGz(deleleQuestMark(tds.get(tdi++)
								.getText()));
				wage.setGangweiGz(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setShenghuoBt(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setGongzuoJt1(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setGongzuoJt2(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setJingxianJt(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setTeshuJt(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setZhufangBt(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setYiliao(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setTongxun(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setChegai(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setQita1(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setQita2(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setBufa(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setYingfa(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setGongjijing(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setGeshui(deleleQuestMark(tds.get(tdi++).getText()));
				wage
						.setYanglaobaoxian(deleleQuestMark(tds.get(tdi++)
								.getText()));
				wage
						.setYiliaobaoxian(deleleQuestMark(tds.get(tdi++)
								.getText()));
				wage.setShiyebaoxian(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setQitadaikou(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setKoukuanheji(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setShifaheji(deleleQuestMark(tds.get(tdi++).getText()));
				id.setYuefen(deleleQuestMark(tds.get(tdi++).getText()));
				wage.setBeizhu(deleleQuestMark(tds.get(tdi++).getText()));

				s.saveOrUpdate(wage);
			}

			t.commit();
			s.close();

			logger.info("import wage finished");
		} catch (IOException e) {
			e.printStackTrace();
		} catch (JDOMException e) {
			e.printStackTrace();
		}
	}

	private String deleleQuestMark(String str) {
		String tmp = str.replace("?", "");

		return tmp;
	}

	public static void main(String[] args) {
		String filepath = "D:\\program\\eclipse\\workspace\\gaapi\\src\\test\\resources\\gz.xls";
		File f = new File(filepath);

		new ImportAction().importfile(f);
	}
}
