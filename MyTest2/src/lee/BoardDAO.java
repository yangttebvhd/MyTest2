package lee;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface BoardDAO{
	public List list() throws DataAccessException;
	
	public List PrdBoardList(String prd_id) throws DataAccessException;
	
	public int getNewNum() throws DataAccessException;
	
	public void write(BoardCommand data) throws DataAccessException;
	
	public void updateReadcnt(String num) throws DataAccessException;
	
	public BoardCommand retrieve(String num)  throws DataAccessException;
	
	public void delete(String num)  throws DataAccessException;
	
	public void update(BoardCommand data) throws DataAccessException;
	
	public List search(BoardCommand data) throws DataAccessException;
}
