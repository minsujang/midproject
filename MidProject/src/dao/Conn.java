package dao;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Conn {

	public static Connection getConnection(){
		Connection conn = null;
		
		try{
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)
				ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
		
	}
}
