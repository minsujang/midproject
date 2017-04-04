package dao;

public class ReservationDao {

	private static ReservationDao instance;
	private ReservationDao(){
		
	}
	public static ReservationDao getInstance(){
		if(instance== null){
			instance = new ReservationDao();
		}
		return instance;
		
	}
}
