package com.yi.projectMng;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import hhn_projectMng.domain.Project;
import hhn_projectMng.persistence.ProjectDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class ProjectDAOTest {
	
	@Autowired
	private ProjectDAO dao;
	
	@Test
	public void test01DAO() {
		System.out.println(dao);
	}
	
	@Test
	public void test02SelectByNo() throws Exception{
		int pno = 1;
		System.out.println(dao.readByNo(pno));
	}
	
	@Test
	public void test03Insert() throws Exception{
		Project p = new Project();
		p.setPno(3);
		p.setName("dao test");
		p.setContent("dao test");
		p.setStartdate("2020-04-22");
		p.setEnddate("2020-04-25");
		p.setPstatus("진행중");
		dao.insert(p);
	}
	         
	@Test
	public void test04Update() throws Exception {
		Project p = new Project();
		p.setPno(3);
		p.setName("dao test_수정");
		p.setContent("dao test_수정");
		p.setStartdate("2020-04-25");
		p.setEnddate("2020-04-28");
		p.setPstatus("준비");
		dao.update(p);
	}
	
	@Test
	public void test05List() throws Exception {
		for(Project p : dao.list()) {
			System.out.println(p);
		}
	}
	
	@Test
	public void test06Delete() throws Exception{
		int pno = 3;
		dao.delete(pno);
	}
	
	
	
	
	
	
}
