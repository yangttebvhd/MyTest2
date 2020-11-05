package lee;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

public class SqlMapDetailDao extends SqlSessionDaoSupport implements DetailDAO {

	@Override
	public List list2() throws DataAccessException {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("list2");
	}

}
