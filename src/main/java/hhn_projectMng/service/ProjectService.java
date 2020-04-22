package hhn_projectMng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hhn_projectMng.domain.Project;
import hhn_projectMng.persistence.ProjectDAO;


@Repository
public class ProjectService {
	@Autowired
	ProjectDAO dao;
	
	public List<Project> list() throws Exception{
		return dao.list();
	}
	
	public void create(Project p) throws Exception{
		dao.insert(p);
	}
	
	public Project readByNo(int pno) throws Exception {
		return dao.readByNo(pno);
	}
	
	public void delete(int pno) throws Exception{
		dao.delete(pno);
	}
	public void update(Project p) throws Exception{
		dao.update(p);
	}
	
	
}
