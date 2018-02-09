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
		Actress actress = new Actress();
		
	
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
			
			
			while(rs.next()) {
				actress.setActressId(rs.getString("actress_id"));
				actress.setActressName(rs.getString("atress_name"));
				actress.setActressAge(rs.getString("actress_age"));
			}
			arrlist.add(actress);
		
			//return arrlist;
	
		}catch(SQLException s) {
			
		}catch(ClassNotFoundException c) {
			
		}
		return arrlist;
		

	}

}
