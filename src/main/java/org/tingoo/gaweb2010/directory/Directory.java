package org.tingoo.gaweb2010.directory;

import java.util.List;

import org.tingoo.gaweb2010.news.*;

public class Directory {
	private String dirid;
	private String parentid;
	private String dirnamechs;
	private String dirnameeng;
	private Integer depth;
	private Integer isshow;
	private Integer dirsort;
	
	private Directory parent;
	private List<News> newses;
	
	public Directory getParent() {
		return parent;
	}
	public void setParent(Directory parent) {
		this.parent = parent;
	}
	public String getDirid() {
		return dirid;
	}
	public void setDirid(String dirid) {
		this.dirid = dirid;
	}
	public String getParentid() {
		return parentid;
	}
	public void setParentid(String parentid) {
		this.parentid = parentid;
	}
	public String getDirnamechs() {
		return dirnamechs;
	}
	public void setDirnamechs(String dirnamechs) {
		this.dirnamechs = dirnamechs;
	}
	public String getDirnameeng() {
		return dirnameeng;
	}
	public void setDirnameeng(String dirnameeng) {
		this.dirnameeng = dirnameeng;
	}
	public Integer getDepth() {
		return depth;
	}
	public void setDepth(Integer depth) {
		this.depth = depth;
	}
	public Integer getIsshow() {
		return isshow;
	}
	public void setIsshow(Integer isshow) {
		this.isshow = isshow;
	}
	public Integer getDirsort() {
		return dirsort;
	}
	public void setDirsort(Integer dirsort) {
		this.dirsort = dirsort;
	}
	public List<News> getNewses() {
		return newses;
	}
	public void setNewses(List<News> newses) {
		this.newses = newses;
	}
}
