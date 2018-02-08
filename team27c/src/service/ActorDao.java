package service;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ActorDao {
	
	public Actor() { }

		public ArrayList<Actor> selectActor() {
			ArrayList<Actor> actor = null;
			PreparedStatement pstmt = null;
			Connection conn = null;
			ResultSet rs = null;
			
				try {
					Class.forName("com.mysql.jdbc.Driver");
					
					String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
					String dbUser = "root";
					String dbPass = "java0000";
					
					conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
					pstmt = conn.prepareStatement("select * from actor");
					rs = pstmt.executeQuery();
					
					Actor
					
				}catch {
					
				}
			
		
		
		
		
	
		
	}
}
