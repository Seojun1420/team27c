//team27 ������
package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AnaunseoDao {
	Connection connection = null;
	PreparedStatement statement = null; 
	ResultSet rs = null;	
	public ArrayList<Anaunseo> selectAnaunseoList() {
		ArrayList<Anaunseo> list = new ArrayList<Anaunseo>();  		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//mysql ����̹� �ε�
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
		    String dbUser = "root";
		    String dbPass = "java0000";
		    String sql = "SELECT anaunseo_id as anaunseoId, anaunseo_name as anaunseoName, anaunseo_age as anaunseoAge FROM anaunseo ORDER BY anaunseo_id ASC";
		    //mysql ������ ���� ip, port, dbid, dbpw, db�� �Է�
		      
		    connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		    /* DriverManger Ŭ������ getConnection �޼��� ȣ���Ѵ� .
		     * �̶�  jdbcDriver, dbUser, dbpass�� �Ű����� ������ ������.
		     */
		    statement=connection.prepareStatement(sql);
		    //connection ��ü ���� ������ �Ҵ�� �������� ã�ư� prepareStatement�޼��带�����ϰ� �غ�� �������� �Է��Ѵ�.		      		    
		    rs=statement.executeQuery();
		    /*
		     * statement ��ü���� ������ �Ҵ�� �������� ã�ư� executeQuery �޼��带 ȣ���ϸ� �غ�� ���� ���� ��
		     *  �������� rs ��ü���������� �������� �Ҵ��Ѵ�.		    
		     */
		    while(rs.next()) {
		    	/*  
		    	 * while���� ����ؼ� ResultSet ��ü������ next �޼��带 ȣ���ϸ� �������� �ִٸ� true������ 
		    	 * while�� ���� ���� ����ȴ�. �׸��� ���� �������� Ȯ���ؼ� true �̸� �ݺ��� false �̸� while���� ���� �ϰ� �ȴ�.
		    	 */
		    	Anaunseo anaunseo = new Anaunseo();
			    /*
			     * Anaunseo������ �޼��带 ȣ���� ��ü�� ������ �� �� �������� anaunseo ��ü���� ������ �Ҵ��Ѵ�.
			     * db���� ���� �޾ƿ� ������ Anaunseo Ŭ����Ÿ���� anaunseo ��ü ���������� �����Ѵ�.
			     */
			    anaunseo.setAnaunseoId(rs.getInt("anaunseoId"));
			    anaunseo.setAnaunseoName(rs.getString("anaunseoName"));
			    anaunseo.setAnaunseoAge(rs.getInt("anaunseoAge"));
			    /*
			     * anaunseo ��ü���������� �Ҵ�� �������� ã�ư� setAnaunseoId, setAnaunseoName, setAnaunseoAge �޼��带 ȣ����
			     * rs.next�� ���� ������ ������ �������ش�.
			     */
			    list.add(anaunseo);
			    //���õ� anaunseo ��ü���������� list�� �߰����ش�.
		    }
		    //�����׽�Ʈ �ڵ�
		}catch(SQLException e){ //Class.forName
			e.printStackTrace();
		}catch(ClassNotFoundException e) { //jdbc
			e.printStackTrace();
		}finally{		
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //������� ���� �ʰ� ����� ��ü���� �ݾ��ش�.
			if (statement != null) try { statement.close(); } catch(SQLException e) {}			
			if (connection != null) try { connection.close(); } catch(SQLException e) {}
		}
		return list;
		
	}
	public void insertAnaunseoList(Anaunseo anaunseo) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("����̹��ε�����");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
		    String dbUser = "root";
		    String dbPass = "java0000";
		    String sql = "INSERT INTO anaunseo VALUES(?,?,?)";	
		    
		    connection=DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		    System.out.println("��񿬰Ἲ��");
		    statement=connection.prepareStatement(sql);
		    statement.setInt(1, anaunseo.getAnaunseoId());
		    statement.setString(2, anaunseo.getAnaunseoName());
		    statement.setInt(3, anaunseo.getAnaunseoAge());
		    
		    statement.executeUpdate();
		    System.out.println("������Ʈ ����");
		    
		}catch(SQLException e){ //Class.forName
			e.printStackTrace();
		}catch(ClassNotFoundException e) { //jdbc
			e.printStackTrace();
		}finally{		
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //������� ���� �ʰ� ����� ��ü���� �ݾ��ش�.
			if (statement != null) try { statement.close(); } catch(SQLException e) {}			
			if (connection != null) try { connection.close(); } catch(SQLException e) {}
		}
	}
	public void deleteAnaunseoList(int anaunseoId) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("����̹��ε� ����");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
			String dbId = "root";
			String dbPw = "java0000";
			String sql = "DELETE FROM anaunseo WHERE anaunseo_id=?";
			
			connection=DriverManager.getConnection(jdbcDriver, dbId, dbPw);
			System.out.println("db����");
			statement=connection.prepareStatement(sql);
			System.out.println("������ �غ�");
			statement.setInt(1, anaunseoId);
			System.out.println("������ ����");
			System.out.println(statement+"<----������ ����");
			
			statement.executeUpdate();
			System.out.println("���� ����");
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(statement != null) try { statement.close(); } catch(SQLException e) {}
			if(connection != null) try { connection.close(); } catch(SQLException e) {}
		}
	}
}