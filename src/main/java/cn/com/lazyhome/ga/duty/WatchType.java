package cn.com.lazyhome.ga.duty;

public class WatchType {
	private Number id;
	/**
	 * name
	 */
	private String typename;
	/**
	 * ����������id��ָ����ǰtype�������ٸ���type��Ͻ���磺
	 *    	ID	TYPENAME	PID						SORT	REMARK
	 * 		124	����			,45,104,106,107,108,	10		����
	 *		45	�о�			0						11		�о�
	 *		104	����			0						2	
	 *		106	����			0						6	
	 *		107	�ɾ�			0						3	
	 *		108	��			0						5	
	 *	˵���о�(45)������(104)������(106)���ɾ�(107)����(108)���г���(124)��һtype
	 */
	private String pid;
	/**
	 * ����
	 */
	private Number sort;
	/**
	 * ��ע
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
