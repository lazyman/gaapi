package org.tingoo.gaapi.bean;

// Generated 2011-1-14 9:02:39 by Hibernate Tools 3.2.4.GA

/**
 * User generated by hbm2java
 */
public class User implements java.io.Serializable {

	private int id;
	private MemberDetail memberDetail;

	public User() {
	}

	public User(int id) {
		this.id = id;
	}

	public User(int id, MemberDetail memberDetail) {
		this.id = id;
		this.memberDetail = memberDetail;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public MemberDetail getMemberDetail() {
		return this.memberDetail;
	}

	public void setMemberDetail(MemberDetail memberDetail) {
		this.memberDetail = memberDetail;
	}

}
