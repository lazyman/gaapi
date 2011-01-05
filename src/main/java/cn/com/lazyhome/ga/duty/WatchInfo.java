package cn.com.lazyhome.ga.duty;

import java.sql.Date;

public class WatchInfo {
	private String id;
	/**
	 * ���������ҡ���
	 */
	private String substation;
	/**
	 * ֵ����
	 */
	private String watchmen;
	/**
	 * ����㣬������WatchType.id
	 */
	private Number pid;
	/**
	 * ����
	 */
	private Number sort;
	/**
	 * ֵ��ʱ��
	 */
	private Date filltime;
	/**
	 * ���ڲ���
	 */
	private String watchdept;
	/**
	 * ֵ���˵绰
	 */
	private String watchtel;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubstation() {
		return substation;
	}
	public void setSubstation(String substation) {
		this.substation = substation;
	}
	public String getWatchmen() {
		return watchmen;
	}
	public void setWatchmen(String watchmen) {
		this.watchmen = watchmen;
	}
	public Number getPid() {
		return pid;
	}
	public void setPid(Number pid) {
		this.pid = pid;
	}
	public Number getSort() {
		return sort;
	}
	public void setSort(Number sort) {
		this.sort = sort;
	}
	public Date getFilltime() {
		return filltime;
	}
	public void setFilltime(Date filltime) {
		this.filltime = filltime;
	}
	public String getWatchdept() {
		return watchdept;
	}
	public void setWatchdept(String watchdept) {
		this.watchdept = watchdept;
	}
	public String getWatchtel() {
		return watchtel;
	}
	public void setWatchtel(String watchtel) {
		this.watchtel = watchtel;
	}
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(this.watchdept);
		sb.append(":");
		sb.append(this.watchmen);
		sb.append(" ");
		sb.append(this.watchtel);
		return sb.toString();
	}
}
