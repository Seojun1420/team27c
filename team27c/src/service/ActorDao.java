package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ActorDao {
	
	public ArrayList<Actor> selectActorList() {		//selectorActorList ���� 
		
		ArrayList<Actor> arrayActor = null;					//arayActor������ null�� �ʱ�ȭ�ϰ�
		Connection connection = null;						// �׿� connection�� preparedStatement
		PreparedStatement preparedStatement = null; 		//resultSet��  null�� �ʱ�ȭ
		ResultSet resultSet = null;					
		
		ArrayList<Actor> arrlist = new ArrayList<Actor>(); // ��ü�������� arrlist�� ArrayList<Actor>��
															// ������ ��ü�� �ּҰ��� �Ҵ����ش�.
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); 
			//db����
			
			preparedStatement = connection.prepareStatement("select actor_id,actor_name,actor_age from actor");
			//select �������� ������ �غ��Ѵ�. *�� ��ü��ȸ�� �� ���� ������ actorList.jsp�� ���̺� ���� �ҷ����� ���� �÷��� ���� ��ȸ�ϴ� select���� ���־���. 
			
			resultSet = preparedStatement.executeQuery();
			
			while(resultSet.next()) {
				Actor actor = new Actor();
				actor.setActorId(resultSet.getInt("actor_id"));
				actor.setActorName(resultSet.getString("actor_pw"));
				actor.setActorAge(resultSet.getInt("actor_age"));
				arrlist.add(actor);
			}
		} catch (SQLException ex) {
			ex.getStackTrace();
			System.out.println(ex.getMessage());	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}finally {
			if(resultSet == null) try {resultSet.close();} catch(SQLException ex) {}
			if(preparedStatement == null) try {resultSet.close();} catch(SQLException ex) {}
			if(connection == null) try {resultSet.close();} catch(SQLException ex) {}
		}
		
		return arrlist;
		
		
		
	}
		
}
