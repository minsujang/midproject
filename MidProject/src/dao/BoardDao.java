package dao;

public class BoardDao {
	private static BoardDao instance;
	private BoardDao(){
		
	}
	public static BoardDao getInstance(){
		if(instance == null){
			instance = new BoardDao();
		}
		return instance;
	}
}
