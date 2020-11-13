package lee;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface DetailDAO {
	//0. 전체 리스트보기
	public List prd_list() throws DataAccessException;
	
	//1.Sf리스트 보기
	public DetailCommand Sf(String prd_id) throws DataAccessException;
	
	//1.Sf리스트 보기
	public DetailCommand Mf(String prd_id) throws DataAccessException;
		
	//1.Sf리스트 보기
	public DetailCommand Lf(String prd_id) throws DataAccessException;
}
