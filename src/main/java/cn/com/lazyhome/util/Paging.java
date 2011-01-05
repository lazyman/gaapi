package cn.com.lazyhome.util;

import java.util.List;

public class Paging<E> {
	private int curpage;												//当前页
	private int lastpage;												//
	private int totalpage;												//总页数（最后页）
	private int count;													//记录总数
	private int size;													//单页记录数
	private boolean first = false;										//是否为起始页
	private boolean last = false;										//是否为结束页
	
	private String querycondition;										//额外的查询条件
	private String url;													//部分使用本页面的URL
	private List<E> data;
	/**
	 * 页面上的起始编号
	 */
	private int begini;
	/**
	 * 页面上的结束编号
	 */
	private int endi;
	
	/**
	 * 数据是否缓存
	 */
	private boolean cache = false;
	
	private String prelable;
	private String nextlable;
	private String pretitle;
	private String nexttitle;
	
	
	public String getPrelable() {
		// <a href="service.do?act=search&page=${paging.curpage }">上一页</a>
		prelable = "<a href='" + url + "&page=" + (getCurpage()-1) + "&" + querycondition + "'>" + pretitle + "</a>";
		System.out.println(prelable);
		return prelable;
	}
	public String getNextlable() {
		return nextlable;
	}
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getQuerycondition() {
		return querycondition;
	}
	public void setQuerycondition(String querycondition) {
		this.querycondition = querycondition;
	}
	public Paging(int page, int size) {
		this.curpage = page;
		this.size = size;
		cache = false;

		//begini & endi
		//当count为0时而自动跳过了begini & endi的计算
		endi = size * curpage;
		begini = endi - size;
		if(begini < 0) {
			begini = 0;
		}
	}
	public Paging(int page, int size, int count) {
		this(page, size, count, false);
	}
	public Paging(int page, int size, int count, boolean cache) {
		this.curpage = page;
		this.count = count;
		this.size = size;
		this.cache = cache;

		//begini & endi
//		endi = size * curpage;
//		begini = endi - size;
		if(count>0) {
			if(size < 1) {
				this.size = 20;
			} else {
				this.size = size;
			}
			init();
		}
	}
	protected void init() {
		//总页数
		totalpage = count/size;
		int mod = count % size;
		if(mod != 0) {
			totalpage ++;
		}
		lastpage = totalpage;
		
		setCurpage(curpage);
	}
	
	public void setCurpage(int page) {
		this.curpage = page;
		//当前页
		if(page < 1) {
			this.curpage = 1;
		}
		if(page > totalpage) {
			this.curpage = totalpage;
		}
		//begini & endi
		endi = size * curpage;
		begini = endi - size;
		if(endi > count) {
			endi = count;
		}
		if(begini < 0) {
			begini = 0;
		}
		//first & last
		// 原代码为
		//if(curpage == 1) {
		//	first = true;
		//}
		//当curpage<0时不能正确判断
		if(curpage <= 1) {
			first = true;
		}
		if(curpage >= totalpage) {
			last = true;
		}
	}
	public boolean isCache() {
		return cache;
	}
	public void setCache(boolean cache) {
		this.cache = cache;
	}
	public void setCount(int count) {
		this.count = count;
		init();
	}
	public List<E> getData() {
		if(cache) {
			return data.subList(begini, endi);
		} else {
			return data;
		}
	}
	public void setData(List<E> data) {
		this.data = data;
	}
	public int getCurpage() {
		return curpage;
	}
	public int getLastpage() {
		return lastpage;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public int getCount() {
		return count;
	}
	public int getSize() {
		return size;
	}
	public boolean isFirst() {
		return first;
	}
	public boolean isLast() {
		return last;
	}
	public int getBegini() {
		return begini;
	}
	public int getEndi() {
		return endi;
	}
}
