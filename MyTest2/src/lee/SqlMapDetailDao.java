package lee;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapDetailDao extends SqlSessionDaoSupport implements DetailDAO {

	@Override
	public List prd_list() throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("prd_list");
	}
	
	@Override
	public DetailCommand Sf(String prd_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return (DetailCommand)getSqlSession().selectOne("Sf",prd_id);
	}
	
	@Override
	public DetailCommand Mf(String prd_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return (DetailCommand)getSqlSession().selectOne("Mf",prd_id);
	}
	
	@Override
	public DetailCommand Lf(String prd_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return (DetailCommand)getSqlSession().selectOne("Lf",prd_id);
	}
	
}
