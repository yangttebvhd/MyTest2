package lee;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface DetailDAO {
	//0. ��ü ����Ʈ����
	public List prd_list() throws DataAccessException;
	
	//1.Sf����Ʈ ����
	public DetailCommand Sf(String prd_id) throws DataAccessException;
	
	//1.Sf����Ʈ ����
	public DetailCommand Mf(String prd_id) throws DataAccessException;
		
	//1.Sf����Ʈ ����
	public DetailCommand Lf(String prd_id) throws DataAccessException;
}
