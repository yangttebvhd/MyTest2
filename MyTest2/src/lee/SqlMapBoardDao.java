package lee;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapBoardDao extends SqlSessionDaoSupport implements BoardDAO {

	@Override
	public List list() throws DataAccessException {
		return getSqlSession().selectList("list");
	}
	
	@Override
	public List SfBoardList(String prd_id) throws DataAccessException {
		// TODO Auto-generated method stub
		System.out.println("SqlMapBoardDao가 받은 매개변수 prd_id=>"+prd_id);
		return getSqlSession().selectList("SfBoardList",prd_id);
	}
	
	@Override
	public int getNewNum() throws DataAccessException {
		return (Integer)getSqlSession().selectOne("getNewNum");
	}
	
	@Override
	public void write(BoardCommand data) throws DataAccessException {
		getSqlSession().insert("write",data);
	}
	
	@Override
	public void updateReadcnt(String num) throws DataAccessException {
		getSqlSession().update("updateReadcnt",num);
	}
	
	@Override
	public BoardCommand retrieve(String num) throws DataAccessException {
		return (BoardCommand)getSqlSession().selectOne("retrieve",num);
	}
	
	@Override
	public void delete(String num) throws DataAccessException {
		getSqlSession().delete("delete",num);
	}
	
	@Override
	public void update(BoardCommand data) throws DataAccessException {
		// TODO Auto-generated method stub
		getSqlSession().update("update",data);
	}
	
	@Override
	public List search(BoardCommand data) throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("search",data);
	}
	
}






