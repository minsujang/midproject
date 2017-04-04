package dao;

public class PinfoDao {

	private static PinfoDao instance;
	private PinfoDao(){
		
	}
	public static PinfoDao getInstance(){
		if(instance == null){
			instance = new PinfoDao();
		}
		return instance;
	}

}
