package lee;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface DetailDAO {
	//1.상품리스트 보기
	public List list2() throws DataAccessException;
}
