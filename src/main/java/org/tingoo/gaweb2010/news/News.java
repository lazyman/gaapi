package org.tingoo.gaweb2010.news;

import java.sql.Clob;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Calendar;

import org.tingoo.gaweb2010.directory.Directory;

public class News {
	private long newsid;				//新闻编号
	private String directoryid;			//栏目编号
	private String subjectsid;			//所属专题编号
	private String title1;				//新闻标题
	private String title2;				//副标题
	private Clob contents;			//新闻内容
	private String contentstr;
	private String from;				//新闻来源
	private String keys;				//关键字
	private String author;				//新闻作者
	private String editor;				//责任编辑
	private long hits;				//点击数
	private Timestamp filltime;				//添加日期
	private String userid;				//发布文章用户ID
	private int newstype;				//新闻类型；0为文字新闻；1为图片新闻
	private String picurl;				//图片新闻路径
	
	private Directory directory;		//栏目(编号)
	private boolean news;
	
	
	public boolean isNews() {
		Calendar now = Calendar.getInstance();
		Calendar fillcal = Calendar.getInstance();
		fillcal.setTime(filltime);
		now.add(Calendar.DAY_OF_MONTH, -1);
		
		if(now.after(fillcal)) {
			news = false;
		} else {
			news = true;
		}
		
		return news;
	}
	public void setNews(boolean news) {
		this.news = news;
	}
	
	public int getNewstype() {
		return newstype;
	}
	public void setNewstype(int newstype) {
		this.newstype = newstype;
	}
	public String getPicurl() {
		return picurl;
	}
	public void setPicurl(String picurl) {
		this.picurl = picurl;
	}
	public Directory getDirectory() {
		return directory;
	}
	public void setDirectory(Directory directory) {
		this.directory = directory;
	}
	public long getNewsid() {
		return newsid;
	}
	public void setNewsid(long newsid) {
		this.newsid = newsid;
	}
	public String getDirectoryid() {
		return directoryid;
	}
	public void setDirectoryid(String directoryid) {
		this.directoryid = directoryid;
	}
	public String getSubjectsid() {
		return subjectsid;
	}
	public void setSubjectsid(String subjectsid) {
		this.subjectsid = subjectsid;
	}
	public String getTitle1() {
		return title1;
	}
	public void setTitle1(String title1) {
		this.title1 = title1;
	}
	public String getTitle2() {
		return title2;
	}
	public void setTitle2(String title2) {
		this.title2 = title2;
	}
	public Clob getContents() {
		return contents;
	}
	public void setContents(Clob contents) {
		this.contents = contents;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getKeys() {
		return keys;
	}
	public void setKeys(String keys) {
		this.keys = keys;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getEditor() {
		return editor;
	}
	public void setEditor(String editor) {
		this.editor = editor;
	}
	public long getHits() {
		return hits;
	}
	public void setHits(long hits) {
		this.hits = hits;
	}
	public Timestamp getFilltime() {
		return filltime;
	}
	public void setFilltime(Timestamp filltime) {
		this.filltime = filltime;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getContentstr() {
		try {
			return contents.getSubString(1, (int)contents.length());
		} catch (SQLException e) {
			e.printStackTrace();
			return e.getMessage();
		}
	}
	
}
