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
	public DetailCommand Sf(String Sf_prd_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return (DetailCommand)getSqlSession().selectOne("Sf",Sf_prd_id);
	}
	
	@Override
	public DetailCommand Mf(String Mf_prd_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return (DetailCommand)getSqlSession().selectOne("Mf",Mf_prd_id);
	}
	
	@Override
	public DetailCommand Lf(String Lf_prd_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return (DetailCommand)getSqlSession().selectOne("Lf",Lf_prd_id);
	}
	
}
