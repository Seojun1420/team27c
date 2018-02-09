package service;

import service.Singer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

public class SingerDao {

	public ArrayList<Singer> selectSinger(){
		ArrayList<Singer> arrlist = new ArrayList<Singer>();
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
			
			pstmt = conn.prepareStatement("select singer_id,singer_name,singer_age from singer");
			rs=pstmt.executeQuery();
			
			System.out.println(pstmt);
			
			Singer singer = null;
			
			while(rs.next()) {
				singer = new Singer();
				singer.setSinger_Id(rs.getInt("singer_id"));
				singer.setSinger_Name(rs.getString("singer_name"));
				singer.setSinger_Age(rs.getInt("singer_age"));
				arrlist.add(singer);
			}
		
		
			for(Singer s: arrlist) {
				System.out.println(s.getSinger_Id());
				System.out.println(s.getSinger_Name());
				System.out.println(s.getSinger_Age());
		
			}
		
		}catch(ClassNotFoundException c) {
			System.out.println("dzz");
		}catch(SQLException s) {
			s.printStackTrace();
		}
		return arrlist;
		

	}

}
