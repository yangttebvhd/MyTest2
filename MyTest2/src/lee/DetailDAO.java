package lee;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface DetailDAO {
	//0. ��ü ����Ʈ����
	public List prd_list() throws DataAccessException;
	
	//1.Sf����Ʈ ����
	public DetailCommand Sf(String Sf_prd_id) throws DataAccessException;
	
	//1.Sf����Ʈ ����
	public DetailCommand Mf(String Mf_prd_id) throws DataAccessException;
		
	//1.Sf����Ʈ ����
	public DetailCommand Lf(String Lf_prd_id) throws DataAccessException;
}
