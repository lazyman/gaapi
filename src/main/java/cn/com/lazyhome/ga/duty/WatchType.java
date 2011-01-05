package cn.com.lazyhome.ga.duty;

public class WatchType {
	private Number id;
	/**
	 * name
	 */
	private String typename;
	/**
	 * 关联到本身id，指定当前type将被多少个父type所辖，如：
	 *    	ID	TYPENAME	PID						SORT	REMARK
	 * 		124	车队			,45,104,106,107,108,	10		车队
	 *		45	市局			0						11		市局
	 *		104	三门			0						2	
	 *		106	温岭			0						6	
	 *		107	仙居			0						3	
	 *		108	玉环			0						5	
	 *	说明市局(45)、三门(104)、温岭(106)、仙居(107)、玉环(108)都有车队(124)这一type
	 */
	private String pid;
	/**
	 * 排序
	 */
	private Number sort;
	/**
	 * 备注
	 */
	private String remark;
	
	
	public Number getId() {
		return id;
	}
	public void setId(Number id) {
		this.id = id;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public Number getSort() {
		return sort;
	}
	public void setSort(Number sort) {
		this.sort = sort;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
