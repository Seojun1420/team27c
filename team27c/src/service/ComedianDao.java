package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ComedianDao {

	public ComedianDao() {
		
		
		PreparedStatement pstmt = null;
		Connection conn = null;
		ResultSet rs = null;
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
		}
	}
}
