//team27c �ռ���
package service;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

public class SingerDao {
	
	public ArrayList<Singer> selectSingerList(){
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Singer> list = new ArrayList<Singer>();
	
		try {
			//mysql ����̹� �ε�
			Class.forName("com.mysql.jdbc.Driver"); 
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			/*
			 * ���� as : �������� �����ϱ� ���� ����Ѵ�, �� ���̺���̳� �÷����� ��� ���� ����� ������ �������� �����ؼ� ��밡���ϴ�
			 * ORDER BY : ������ ���� ������ Ư�� ������ �����Ѵ�. ������ �� �Ǵ� ǥ���� ���� �������� �Ǵ� �������� �迭 ������ ���ĵȴ�.
			 * SELECT ���� ���� String�� sql������ �ʱ�ȭ�Ѵ�. ORDER BY�� ���̼����� ������������ �����Ͽ���.
			 */
			
			String sql = "select singerId as singerId, singerName, singerAge from singer";
			//mysql ������ ���� ip, port, dbid, dbpw, db�� �Է�

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			Singer singer = null;
			
			/*  
	    	 * while���� ����ؼ� ResultSet ��ü������ next �޼��带 ȣ���ϸ� �������� �ִٸ� true������ 
	    	 * while�� ���� ���� ����ȴ�. �׸��� ���� �������� Ȯ���ؼ� true �̸� �ݺ��� false �̸� while���� ���� �ϰ� �ȴ�.
		     * Singer������ �޼��带 ȣ���� ��ü�� ������ �� �� �������� singer ��ü���� ������ �Ҵ��Ѵ�.
		     * db���� ���� �޾ƿ� ������ singer Ŭ����Ÿ���� singer ��ü ���������� �����Ѵ�.
			 * singer ��ü���������� �Ҵ�� �������� ã�ư� setSinger_Id, setSinger_Name, setSinger_Age �޼��带 ȣ����
			 * rs.next�� ���� ������ ������ �������ش�.
			 */
			while(rs.next()) {
				singer = new Singer();
				singer.setSingerId(rs.getInt("singerId"));
				singer.setSingerName(rs.getString("singerName"));
				singer.setSingerAge(rs.getInt("singerAge"));
				list.add(singer);
				 //���õ� singer ��ü���������� list�� �߰����ش�.
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
	public void insertSingerList(Singer singer) throws ClassNotFoundException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("����̹��ε�����");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
		    String sql = "INSERT INTO singer VALUES(?,?,?)";
		    
		    conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		    System.out.println("��񿬰Ἲ��");
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, singer.getSingerId());
		    pstmt.setString(2, singer.getSingerName());
		    pstmt.setInt(3, singer.getSingerAge());
		    
		    
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
