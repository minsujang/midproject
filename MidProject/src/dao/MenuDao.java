package dao;

import model.Menu;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dao.Conn;

public class MenuDao {

	private static MenuDao instance;

	private MenuDao() {

	}

	public static MenuDao getInstance() {
		if (instance == null) {
			instance = new MenuDao();
		}
		return instance;

	}

	public int insert(Menu menu) {
		int result = 0;
		Connection conn = Conn.getConnection();
		PreparedStatement pstmt = null;

		String sql = "insert into Menu values(?,?,?,?)";
		
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}

			} catch (Exception e) {

			}
		}
		return result;

	}
}
