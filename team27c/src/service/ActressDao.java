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
	
	/*selectActress()�޼��� ���� ����Ÿ��ArrayList<Actress> �Ű����� ���� */
	public ArrayList<Actress> selectActress(){
		//�⺻������ �ʿ��� ���� ���� �� ArrayList ����
		ArrayList<Actress> list = new ArrayList<Actress>();
		Connection conn = null;
		PreparedStatement statement = null;
		ResultSet rs = null;
		Actress actress = null;
	
		try {
			/*����̹� �ε� �� �����ͺ��̽��� ����ϱ����� �������� String ������Ÿ���� �����鿡 �����Ѵ�.
			 * DriverManager.getConnection �� �̿��� DB�� ������ �ϰ� println ���� ������ �Ǿ����� Ȯ���Ѵ�.
			 */
			Class.forName("com.mysql.jdbc.Driver");

			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			String sql = "SELECT actress_id,actress_name,actress_age FROM actress ORDER BY actress_id";
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
				actress = new Actress();
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
