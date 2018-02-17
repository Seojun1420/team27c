//team27c �ռ���
package service;


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
			Class.forName("com.mysql.jdbc.Driver"); 
			//mysql ����̹� �ε�
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			pstmt = conn.prepareStatement("select singer_id as singer_id, singer_name, singer_age from singer");
			//mysql ������ ���� ip, port, dbid, dbpw, db�� �Է�

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println(conn + "db����");
			
			
			rs=pstmt.executeQuery();
			
			System.out.println(pstmt);
			
			Singer singer = null;
			
			while(rs.next()) {
				/*  
		    	 * while���� ����ؼ� ResultSet ��ü������ next �޼��带 ȣ���ϸ� �������� �ִٸ� true������ 
		    	 * while�� ���� ���� ����ȴ�. �׸��� ���� �������� Ȯ���ؼ� true �̸� �ݺ��� false �̸� while���� ���� �ϰ� �ȴ�.
		    	 */
				singer = new Singer();
				  /*
			     * Singer������ �޼��带 ȣ���� ��ü�� ������ �� �� �������� singer ��ü���� ������ �Ҵ��Ѵ�.
			     * db���� ���� �޾ƿ� ������ singer Ŭ����Ÿ���� singer ��ü ���������� �����Ѵ�.
			     */
				singer.setSinger_Id(rs.getInt("singer_id"));
				singer.setSinger_Name(rs.getString("singer_name"));
				singer.setSinger_Age(rs.getInt("singer_age"));
				/*
			     * singer ��ü���������� �Ҵ�� �������� ã�ư� setSinger_Id, setSinger_Name, setSinger_Age �޼��带 ȣ����
			     * rs.next�� ���� ������ ������ �������ش�.
			     */
				arrSinger.add(singer);
				 //���õ� singer ��ü���������� list�� �߰����ش�.
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
		return arrSinger; //�迭����
		

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
		    pstmt.setInt(1, singer.getSinger_Id());
		    pstmt.setString(2, singer.getSinger_Name());
		    pstmt.setInt(3, singer.getSinger_Age());
		    
		    
		}catch(SQLException e){ //Class.forName
			e.printStackTrace();
		}catch(ClassNotFoundException e) { //jdbc
			e.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //������� ���� �ʰ� ����� ��ü���� �ݾ��ش�.
			if (pstmt != null) try {pstmt.close(); } catch(SQLException e) {}			
			if (conn != null) try { conn.close(); } catch(SQLException e) {}
		}
	}
}
