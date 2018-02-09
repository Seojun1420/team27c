package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RapperDao {


	public ArrayList<Rapper> selectRapperList() throws SQLException, ClassNotFoundException {
		ArrayList<Rapper> list = new ArrayList<Rapper>();
		PreparedStatement pstmt = null;
		
		Connection conn = null;
		
		ResultSet rs = null;
		//select rapper_id as RapperId,rapper_name as RapperName,rapper_age as RapperAge from rapper
		
		try {
			//드라이버 로딩 시작
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("드라이버로딩완료");
			//DB연결시작:포트번호,ip주소,DB명,DBid,DBpw 작성
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			//
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println("db연결완료");
			pstmt = conn.prepareStatement("select rapper_id as RapperId,rapper_name as RapperName,rapper_age as RapperAge from rapper");
			//select 쿼리문에서  id,name,age를 불러오는 쿼리문써줌
			System.out.println(pstmt+"<---pstmt");
			
			rs=pstmt.executeQuery();
			System.out.println("쿼리실행완료");
			Rapper rapper;
			while(rs.next()) {
				rapper = new Rapper();
				rapper.setRapperId(rs.getInt("RapperId"));
				rapper.setRapperName(rs.getString("RapperName"));
				rapper.setRapperAge(rs.getInt("RapperAge"));
				list.add(rapper);
				
			}
		
		}finally{
			//객체 종료(close)
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}			
			if (pstmt != null) try {pstmt.close();}catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return list;
	
		}
		
		 
	}
	

