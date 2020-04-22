package hhn_projectMng.persistence;

import java.util.List;

import hhn_projectMng.domain.Project;

public interface ProjectDAO {
	public List<Project> list() throws Exception;
	public void insert(Project p) throws Exception;
	public Project readByNo(int pno) throws Exception;
	public void delete(int pno) throws Exception;
	public void update(Project p) throws Exception;
}
