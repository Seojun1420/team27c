//team27c �蹮��
package service;

import service.Actress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

public class ActressDao {
	
	
	public void ActionUpdateActress(Actress actressDao) {
		Connection conn=null;
		PreparedStatement statement=null;
		String sql="UPDATE actress SET actress_name=?,actress_age=? WHERE actress_id=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			statement=conn.prepareStatement(sql);
			statement.setString(1, actressDao.getActressName());
			statement.setInt(2, actressDao.getActressAge());
			statement.setInt(3, actressDao.getActressId());
			
			statement.executeUpdate();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(statement!=null) try {statement.close();}catch(SQLException ex) {}
			if(conn!=null) try {conn.close();}catch(SQLException ex) {}
		}
	}
	public Actress SelectUpdateActress(int actressId) {
		Connection conn=null;
		PreparedStatement statement=null;
		ResultSet resultSet = null;
		Actress actress = new Actress();
		String sql = "SELECT * FROM actress WHERE actress_id=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000"; 
			
			conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			statement=conn.prepareStatement(sql);
			statement.setInt(1, actressId);
			resultSet=statement.executeQuery();
			
			while(resultSet.next()) {
				actress.setActressId(resultSet.getInt("actress_id"));
				actress.setActressName(resultSet.getString("actress_name"));
				actress.setActressAge(resultSet.getInt("actress_age"));
				
				
			}
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(resultSet != null) try {resultSet.close();} catch(SQLException ex) {}
			if(statement != null) try {statement.close();} catch(SQLException ex) {}
			if(conn != null) try {conn.close();} catch(SQLException ex) {}		
		}
		return actress;
		
	}
	public void deleteActress(int actressId) {
		Connection conn=null;
		PreparedStatement statement = null;
		String sql = "DELETE FROM actress WHERE actress_id=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			statement=conn.prepareStatement(sql);
			statement.setInt(1, actressId);
			statement.executeUpdate();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(statement != null) try {statement.close();} catch(SQLException ex) {}
			if(conn != null) try {conn.close();} catch(SQLException ex) {}		
		}
		
		}
	
	public void insertActress(Actress atress) {
		Connection conn=null;
		PreparedStatement statement=null;
		String sql="INSERT INTO actress values(?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			System.out.println(conn+"db����");
			
			statement=conn.prepareStatement(sql);
			statement.setInt(1, atress.getActressId());
			statement.setString(2, atress.getActressName());
			statement.setInt(3, atress.getActressAge());
			statement.executeUpdate();
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(statement != null) try {statement.close();} catch(SQLException ex) {}
			if(conn != null) try {conn.close();} catch(SQLException ex) {}		
		}
		
	}
	
	/*selectActress()�޼��� ���� ����Ÿ��ArrayList<Actress> �Ű����� ���� */
	public ArrayList<Actress> selectActress(){
		//�⺻������ �ʿ��� ���� ���� �� ArrayList ����
		ArrayList<Actress> list = new ArrayList<Actress>();
		Connection conn = null;
		PreparedStatement statement = null;
		ResultSet rs = null;
		
		try {
			/*����̹� �ε� �� �����ͺ��̽��� ����ϱ����� �������� String ������Ÿ���� �����鿡 �����Ѵ�.
			 * DriverManager.getConnection �� �̿��� DB�� ������ �ϰ� println ���� ������ �Ǿ����� Ȯ���Ѵ�.
			 */
			Class.forName("com.mysql.jdbc.Driver");

			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			String sql = "SELECT actress_id,actress_name,actress_age FROM actress ORDER BY actress_id ASC";
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println(conn + ":db����");
			
			/*���ӵ� db������ prepareStatement �޼��带 ����� sql�� �����غ����ش�.
			 * executeQuery()�޼��带 ����� sql�����غ� �ִ����� �������ش�.
			 * ������ �߽���Ǿ����� Ȯ���ϱ����� println ����غ���.
			 */
			statement = conn.prepareStatement(sql);
			rs=statement.executeQuery();
			
			System.out.println(statement);
			
			/*rs.next() �޼���� db���� �����Ѱ��� ���پ� �о�´�.
			 * while�� �� ����Ǹ� actress�� ��ü�� �����Ǹ� �����Ȱ�ü�� rs.next() �޼��带�̿���  �о�� db��������
			 * ���� ���� ���ش�. ���������ڰ� private �Ǿ��־� ����  �޼��带 ���ؼ��� �����̰����ϸ� ���õȰ���
			 * �ٽ� list.add �� �̿��� ArrayList �� ����ش�.
 			 */
			while(rs.next()) {
				Actress actress = new Actress();
				int actressId =rs.getInt("actress_id");
				String actressName =rs.getString("actress_name");
				int actressAge =rs.getInt("actress_age");
				
				actress.setActressId(actressId);
				actress.setActressName(actressName);
				actress.setActressAge(actressAge);
				list.add(actress);
			}
			/*
			 * for ���� �̿��� list �� ���� �ߴ�� ������ Ȯ�����ش�.
			 */
			for(Actress s: list) {
				System.out.println(s.getActressId());
				System.out.println(s.getActressName());
				System.out.println(s.getActressAge());
			}
			/*selectActress �޼���  try���� ����Ǹ� ���߰��� ���ܰ��߻� �Ǿ�����  ���ܽ���Ⱥκб����� ����ǰ� �������� ��������ʴ´�.
			 * ���ܰ� �߻��ϸ� catch ������ �Ѿ�� ���ܸ� ó���ϰ� printStackTrace() �޼��带 ����� ��� ���ܰ��߻��Ͽ����� �ܼ�â��������ش�.
			 * finally �κ��� ���ܹ߻��ϰ� �����̾ȵȺκп� ������ �÷��Ͱ� �����ϱ���  �������ϴ� �޼��带 �����ش�. 
			 */
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(rs != null) try {rs.close();} catch(SQLException ex) {}
			if(statement != null) try {statement.close();} catch(SQLException ex) {}
			if(conn != null) try {conn.close();} catch(SQLException ex) {}		
		}
		return list;
	}
}
