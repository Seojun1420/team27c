//team27c 왕서준
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
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Singer> arrSinger= new ArrayList<Singer>();
	
		try {
			Class.forName("com.mysql.jdbc.Driver"); //드라이버 로딩을 위한 드라이버파일입니다.

			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println(conn + "db연결");
			
			pstmt = conn.prepareStatement("select singer_id as singer_id, singer_name, singer_age from singer");
			rs=pstmt.executeQuery();
			
			System.out.println(pstmt);
			
			Singer singer = null;
			
			while(rs.next()) {
				singer = new Singer();
				singer.setSinger_Id(rs.getInt("singer_id"));
				singer.setSinger_Name(rs.getString("singer_name"));
				singer.setSinger_Age(rs.getInt("singer_age"));
				arrSinger.add(singer);
			}

	
			for(Singer s: arrSinger) {
				System.out.println(s.getSinger_Id());
				System.out.println(s.getSinger_Name());
				System.out.println(s.getSinger_Age());
			}
		
		}catch(ClassNotFoundException c) {
			System.out.println("dzz");
		}catch(SQLException s) {
			s.printStackTrace();
		}
		return arrSinger; //배열리턴
		

	}

}
