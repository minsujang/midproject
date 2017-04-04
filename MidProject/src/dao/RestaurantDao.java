package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.Restaurant;

public class RestaurantDao {
	
	private static RestaurantDao instance;
	
	private RestaurantDao() {
		
	}
	public static RestaurantDao getInstance(){
		if (instance ==null){
			instance = new RestaurantDao();
		}
		return instance;
		
	}
	public int update(Restaurant rs) {

		String sql ="insert into Restaurant values(?,?,?,?,?,?,?)";
		int result=0;
		
				
		Connection conn = null;
		PreparedStatement pstmt = null;
		try{
			conn =Conn.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, rs.getRname());
			pstmt.setString(2, rs.getRtel());
			pstmt.setString(3, rs.getKind());
			pstmt.setString(4, rs.getR_info());
			pstmt.setInt(5, rs.getFloor());
			pstmt.setString(6, rs.getLoc());
			pstmt.setString(7, rs.getImg());
			
			result= pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			try{
				if(conn!=null)conn.close();
				if(pstmt!=null)pstmt.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	
		return result;
		

		
		
		// TODO Auto-generated method stub
		
	}
}
