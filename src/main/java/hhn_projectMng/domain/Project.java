package hhn_projectMng.domain;

import java.util.Date;

public class Project {
	private int pno;
	private String name;
	private String content;
	private Date startdate;
	private Date enddate;
	private String pstatus;
	
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Project(int pno, String name, String content, Date startdate, Date enddate, String pstatus) {
		super();
		this.pno = pno;
		this.name = name;
		this.content = content;
		this.startdate = startdate;
		this.enddate = enddate;
		this.pstatus = pstatus;
	}
	
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}
	public String getPstatus() {
		return pstatus;
	}
	public void setPstatus(String pstatus) {
		this.pstatus = pstatus;
	}
	
	
	@Override
	public String toString() {
		return "Project [pno=" + pno + ", name=" + name + ", content=" + content + ", startdate=" + startdate
				+ ", enddate=" + enddate + ", pstatus=" + pstatus + "]";
	}
	
	
}
