package service;

import service.Actress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

public class ActressDao {

	public ArrayList<Actress> selectActress(){
		ArrayList<Actress> arrlist = new ArrayList<Actress>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
	
		try {
			Class.forName("com.mysql.jdbc.Driver");

			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println(conn + "db¿¬°á");
			
			pstmt = conn.prepareStatement("select actress_id,actress_name,actress_age from actress");
			rs=pstmt.executeQuery();
			
			System.out.println(pstmt);
			
			Actress actress = new Actress();
			
			while(rs.next()) {
				actress.setActressId(rs.getString("actress_id"));
				actress.setActressName(rs.getString("actress_name"));
				actress.setActressAge(rs.getString("actress_age"));
				
			}
			arrlist.add(actress);
		
			for(Actress s: arrlist) {
				System.out.println(s.getActressId());
				System.out.println(s.getActressName());
				System.out.println(s.getActressAge());
		
			}
		
		}catch(ClassNotFoundException c) {
			System.out.println("dzz");
		}catch(SQLException s) {
			s.printStackTrace();
		}
		return arrlist;
		

	}

}
