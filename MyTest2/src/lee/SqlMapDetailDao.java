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
	public DetailCommand prd(String prd_id) throws DataAccessException {
		// TODO Auto-generated method stub
		return (DetailCommand)getSqlSession().selectOne("prd",prd_id);
	}
	
}
