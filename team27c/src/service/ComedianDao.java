package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ComedianDao {
	
	public ArrayList<ComedianDao> selectComedainList() throws ClassNotFoundException, SQLException {
		ArrayList<ComedianDao> arrComedian = new ArrayList<ComedianDao>();
			
		
		// PreparedStatement 객체는 자주 여러번 사용되는 query를 미리 컴파일 시킴. 초기값은 null
		PreparedStatement pstmt = null;
		// Connection 객체는 자바를 DB에 연결할 수 있게 해준다. 초기값은 null
		Connection conn = null;
		
		// ResultSet : 한번에 한 행씩 리터하는 질의어의 결과. 초기값은 null
		ResultSet rs = null;
		
		
		try {
			//드라이버 로딩 시작
			Class.forName("com.mysql.jdbc.Driver");
			//DB연결시작:포트번호,ip주소,DB명,DBid,DBpw 작성
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			//
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

		
		}finally{
			//객체 종료(close)
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return arrComedian;
	
		}
	}


