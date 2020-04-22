package hhn_projectMng.domain;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Project {
	private int pno;
	private String name;
	private String content;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date startdate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
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
	public void setStartdate(String startdate) throws ParseException {
		this.startdate = new SimpleDateFormat("yyyy-MM-dd").parse(startdate);
	}
	public Date getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) throws ParseException {
		this.enddate = new SimpleDateFormat("yyyy-MM-dd").parse(enddate);
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
