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
			
		
		// PreparedStatement ��ü�� ���� ������ ���Ǵ� query�� �̸� ������ ��Ŵ. �ʱⰪ�� null
		PreparedStatement pstmt = null;
		// Connection ��ü�� �ڹٸ� DB�� ������ �� �ְ� ���ش�. �ʱⰪ�� null
		Connection conn = null;
		
		// ResultSet : �ѹ��� �� �྿ �����ϴ� ���Ǿ��� ���. �ʱⰪ�� null
		ResultSet rs = null;
		
		
		try {
			//����̹� �ε� ����
			Class.forName("com.mysql.jdbc.Driver");
			//DB�������:��Ʈ��ȣ,ip�ּ�,DB��,DBid,DBpw �ۼ�
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			//
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

		
		}finally{
			//��ü ����(close)
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		return arrComedian;
	
		}
	}


