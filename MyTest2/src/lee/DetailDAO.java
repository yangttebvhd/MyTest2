package lee;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface DetailDAO {
	//0. ��ü ����Ʈ����
	public List prd_list() throws DataAccessException;
	
	//1.��ǰ �� ������ ����
	public DetailCommand prd(String prd_id) throws DataAccessException;
}
