//team27c �ռ���
package service;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

public class SingerDao {
	
	public void updateSingerAction(Singer singerDao) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "UPDATE singer SET singerName=?, singerAge=? WHERE singerId = ?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, singerDao.getSingerName());
			pstmt.setInt(2, singerDao.getSingerAge());
			pstmt.setInt(3, singerDao.getSingerId());
			
			pstmt.executeUpdate();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
		 //������� ���� �ʰ� ����� ��ü���� �ݾ��ش�.
			if (pstmt != null) try {pstmt.close(); } catch(SQLException e) {}			
			if (conn != null) try { conn.close(); } catch(SQLException e) {}
		}
		
	}
	
	public Singer updateSinger(int singerId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Singer singer = new Singer();
		String sql = "SELECT * FROM singer WHERE singerId = ?";
	
		// �ܼ�â���� ����ϱ� ���� ��
		System.out.println(" ���� ������Ʈ ");
		try {
			//db�� �����ϱ� ���� id, pw, �ּ� �����ڵ��̸� String�� �������·� ���!
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); 
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, singerId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				singer.setSingerId(rs.getInt("singerId"));
				singer.setSingerName(rs.getString("singerName"));
				singer.setSingerAge(rs.getInt("singerAge"));	
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException e) { 
			e.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //������� ���� �ʰ� ����� ��ü���� �ݾ��ش�.
			if (pstmt != null) try {pstmt.close(); } catch(SQLException e) {}			
			if (conn != null) try { conn.close(); } catch(SQLException e) {}
		}
		return singer;
	}

	public void DeleteSinger(int singerId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println(" ���� ���� ");	
		try {
			Class.forName("com.mysql.jdbc.Driver");
		
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			String sql = "DELETE FROM singer WHERE singerId = ?";
			
		    conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); 
		    System.out.println(conn+"db����");
		    pstmt = conn.prepareStatement(sql);
		    System.out.println("������ �غ�");
		    pstmt.setInt(1, singerId);
		    System.out.println("������ ����");
		    System.out.println(pstmt+"<---������ ����");
		
		    pstmt.executeUpdate();
		    System.out.println("������ ����");
		    
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException e) { 
			e.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //������� ���� �ʰ� ����� ��ü���� �ݾ��ش�.
			if (pstmt != null) try {pstmt.close(); } catch(SQLException e) {}			
			if (conn != null) try { conn.close(); } catch(SQLException e) {}
		}
		
	}
	
	public ArrayList<Singer> selectSingerList(){
		//�⺻������ �ʿ��� ���� ���� �� ArrayList ����
		ArrayList<Singer> list = new ArrayList<Singer>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			//mysql ����̹� �ε�
			Class.forName("com.mysql.jdbc.Driver"); 
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			//mysql ������ ���� ip, port, dbid, dbpw, db�� �Է�
			String sql = "select singerId as singerId, singerName, singerAge from singer";
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println(conn+"db����");
			
			/*
			 * ���� as : �������� �����ϱ� ���� ����Ѵ�, �� ���̺���̳� �÷����� ��� ���� ����� ������ �������� �����ؼ� ��밡���ϴ�
			 * ORDER BY : ������ ���� ������ Ư�� ������ �����Ѵ�. ������ �� �Ǵ� ǥ���� ���� �������� �Ǵ� �������� �迭 ������ ���ĵȴ�.
			 * SELECT ���� ���� String�� sql������ �ʱ�ȭ�Ѵ�. ORDER BY�� ���̼����� ������������ �����Ͽ���.
			 */
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
	
			
			/*  
	    	 * while���� ����ؼ� ResultSet ��ü������ next �޼��带 ȣ���ϸ� �������� �ִٸ� true������ 
	    	 * while�� ���� ���� ����ȴ�. �׸��� ���� �������� Ȯ���ؼ� true �̸� �ݺ��� false �̸� while���� ���� �ϰ� �ȴ�.
		     * Singer������ �޼��带 ȣ���� ��ü�� ������ �� �� �������� singer ��ü���� ������ �Ҵ��Ѵ�.
		     * db���� ���� �޾ƿ� ������ singer Ŭ����Ÿ���� singer ��ü ���������� �����Ѵ�.
			 * singer ��ü���������� �Ҵ�� �������� ã�ư� setSinger_Id, setSinger_Name, setSinger_Age �޼��带 ȣ����
			 * rs.next�� ���� ������ ������ �������ش�.
			 */
			while(rs.next()) {
				Singer singer = new Singer();
				int singerId = rs.getInt("singerId");
				String singerName = rs.getString("singerName");
				int singerAge = rs.getInt("singerAge");
				
				singer.setSingerId(singerId);
				singer.setSingerName(singerName);
				singer.setSingerAge(singerAge);
				list.add(singer);
			
				 //���õ� singer ��ü���������� list�� �߰����ش�.
			}
			/*
			 * for ���� �̿��� list �� ���� �ߴ�� ������ Ȯ�����ش�.
			 */
			for(Singer s: list) {
				System.out.println(s.getSingerId());
				System.out.println(s.getSingerName());
				System.out.println(s.getSingerAge());
			}
		}catch(ClassNotFoundException c) {
			c.printStackTrace();
		}catch(SQLException s) {
			s.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //������� ���� �ʰ� ����� ��ü���� �ݾ��ش�.
			if (pstmt != null) try {pstmt.close(); } catch(SQLException e) {}			
			if (conn != null) try { conn.close(); } catch(SQLException e) {}
		}
		return list; //�迭����
		
	}
	public void insertSinger(Singer singer) throws ClassNotFoundException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "INSERT INTO singer VALUES(?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
		    conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); 
		    System.out.println(conn+"db����");
		    
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, singer.getSingerId());
		    pstmt.setString(2, singer.getSingerName());
		    pstmt.setInt(3, singer.getSingerAge());
		    pstmt.executeUpdate();
		    
		    
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException e) { 
			e.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //������� ���� �ʰ� ����� ��ü���� �ݾ��ش�.
			if (pstmt != null) try {pstmt.close(); } catch(SQLException e) {}			
			if (conn != null) try { conn.close(); } catch(SQLException e) {}
		}
	}
}
