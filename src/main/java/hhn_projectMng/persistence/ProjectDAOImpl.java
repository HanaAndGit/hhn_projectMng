package hhn_projectMng.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hhn_projectMng.domain.Project;

@Repository
public class ProjectDAOImpl implements ProjectDAO {
private static final String namespace = "mappers.ProjectMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Project> list() throws Exception {
		return sqlSession.selectList(namespace + "list");
	}

	@Override
	public void insert(Project p) throws Exception {
		sqlSession.insert(namespace + "insert", p);
	}

	@Override
	public Project readByNo(int pno) throws Exception {
		return sqlSession.selectOne(namespace + "selectByNo", pno);
	}

	@Override
	public void delete(int pno) throws Exception {
		sqlSession.delete(namespace + "delete", pno);	
	}

	@Override
	public void update(Project p) throws Exception {
		sqlSession.update(namespace + "update", p);
		
	}

}
