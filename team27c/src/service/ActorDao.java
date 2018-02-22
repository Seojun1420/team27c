//team27c ������
package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ActorDao {
	//Connection,prparedStatement,ResultSetŬ������ ����connection,statement,resultSet�� null�� �ʱ�ȭ �Ѵ�.
	Connection connection = null;
	PreparedStatement statement = null;
	ResultSet resultSet = null;
	Actor actor = null;
	
	public void actionUpdateActor(Actor actor) {
		try {
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("����̹��ε�");
				String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
				String dbUser = "root";
				String dbPass = "java0000";
				connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				System.out.println("DB����");
				statement = connection.prepareStatement("UPDATE actor SET actor_name=?, actor_age=? WHERE actor_id=?");
				statement.setString(1, actor.getActorName());
				statement.setInt(2, actor.getActorAge());
				statement.setInt(3, actor.getActorId());
				statement.executeUpdate();
				System.out.println("��������");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (statement != null) try {statement.close();} catch (SQLException ex) {}
			if (connection != null) try {connection.close();} catch (SQLException ex) {}
		}
	}
	

	
	public Actor selectUpdateActor(int actorId) {
		try {
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("����̹��ε�");
				String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
				String dbUser = "root";
				String dbPass = "java0000";
				connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				System.out.println("DB����");
				statement = connection.prepareStatement("SELECT * FROM actor WHERE actor_id=?");
				statement.setInt(1, actorId);
				resultSet = statement.executeQuery();
				System.out.println(statement + "��������");
				if(resultSet.next()) {
					actor = new Actor();
					actor.setActorId(resultSet.getInt("actor_id"));
					actor.setActorName(resultSet.getString("actor_name"));
					actor.setActorAge(resultSet.getInt("actor_age"));
				}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (resultSet != null) try {resultSet.close();} catch (SQLException ex) {}
			if (statement != null) try {statement.close();} catch (SQLException ex) {}
			if (connection != null) try {connection.close();} catch (SQLException ex) {}
		}
		
		return actor;
	}
	
	
	
	public void deleteActor(int actorId) {
		try {
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("����̹��ε�");
				String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
				String dbUser = "root";
				String dbPass = "java0000";
				connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				System.out.println("DB����");
				statement = connection.prepareStatement("DELETE FROM actor WHERE actor_id=?");
				statement.setInt(1, actorId);
				statement.executeUpdate();
				System.out.println("��������");
				
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (statement != null) try {statement.close();} catch (SQLException ex) {}
			if (connection != null) try {connection.close();} catch (SQLException ex) {}
		}
		
	}

	
	public void insertActor(Actor actor) {
		try {	
				/*����̹��ε�, db������ �Ѵ�.*/
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("����̹��ε�");
				String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
				String dbUser = "root";
				String dbPass = "java0000";
				connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				System.out.println("DB����");
				
				/*connection��ü���������� �ּҸ� ã�ư� insert�������� �Ű������� prepareStatement�޼��带 ������
				 ���������� ���� �غ� �Ѵ�.
				 ������ ����ǥ �ڸ��� actor�� get�޼��带 ������ �����ؿ� �����͵��� ������� ��������statement �ּ�
				 �� ã�ư� set�޼��带 ����� �Է����ش�. �׸��� ���������� ����*/
				statement = connection.prepareStatement("INSERT INTO actor VALUES (?, ?, ?)");
				statement.setInt(1, actor.getActorId());
				statement.setString(2, actor.getActorName());
				statement.setInt(3, actor.getActorAge());
				statement.executeUpdate();
		
		// �ݾ��ش�.		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (statement != null) try {statement.close();} catch (SQLException ex) {}
			if (connection != null) try {connection.close();} catch (SQLException ex) {}
		}
	}
	

	// ArrayList<Actor>����Ÿ���� selectActorList�޼���
	public ArrayList<Actor> selectActorList() {
		// ArrayList<Actor>Ÿ������ ArrayList<Actor>����Ʈ�� ��ü�� ������ �� �ּҰ��� list��ü���������� �Ҵ��Ѵ�
		ArrayList<Actor> list = new ArrayList<Actor>();

		try {
			// ����̹� �ε��� �����Ѵ�
			// db���ῡ �ʿ��� ������� db����
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr"; 																							
			String dbUser = "root";
			String dbPass = "java0000";

			/*
			 * ���� as : �������� �����ϱ� ���� ����Ѵ�, �� ���̺���̳� �÷����� ��� ���� ����� ������ �������� �����ؼ� ��밡���ϴ�
			 * ORDER BY : ������ ���� ������ Ư�� ������ �����Ѵ�. ������ �� �Ǵ� ǥ���� ���� �������� �Ǵ� �������� �迭 ������ ���ĵȴ�.
			 * SELECT ���� ���� String�� sql������ �ʱ�ȭ�Ѵ�. ORDER BY�� ���̼����� ������������ �����Ͽ���.
			 */
			String sql = "SELECT actor_id as actorId,actor_name as actorName,actor_age as actorAge FROM actor ORDER BY actor_id ASC";
			// DB���ῡ �ʿ��� �������� ��� connection��ü���������� �Ҵ��Ѵ�
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			// ������ ������ ���� �غ� �ϰ� sql���� SELECT���� ����Ǿ��ִ�.
			statement = connection.prepareStatement(sql);
			// ������ ������ ������ ����� �ּҰ��� resultSet�� �����Ѵ�
			resultSet = statement.executeQuery();

			/*while : �ݺ�Ƚ���� �� �� ���� ���ǿ� ���� �ݺ��ϴ� ��쿡 ����ϴ� �ݺ����̴�.
			while���� �����ϰ� ��ü�������� resultSet�� �ּҸ� ã�ư� next�޼��带 �����Ѵ�
			Actor�� ���ο� ��ü�� ������ ������ ��ü�� �ּҰ��� actor��ü���������� �Ҵ��ϰ�
			resultSet��ü���������� �ּҸ� ã�ư� getInt�޼��带 ������ actorId�� �Ű������� DB�� �ִ� actor_id ����� ������
			actor��ü���������� �ּҸ� ã�ư� set�޼��带 ����� �����Դ� ����� �ּҰ��� �����Ѵ�. 
			������ actorName�� actorAge�� ������ ������� ���õȴ�.
			��ü�������� list�� add�޼��带 ����� actor�� �ּҰ��� �߰����ش�.
			*/
			while (resultSet.next()) {
				Actor actor = new Actor();
				actor.setActorId(resultSet.getInt("actorId"));
				actor.setActorName(resultSet.getString("actorName"));
				actor.setActorAge(resultSet.getInt("actorAge"));
				list.add(actor);
			}
		/* try, catch : try������ ������ ����鿡�� ���ܰ� �߻����� �ʴ´ٸ� catch�� ������ ������� ������ ���� �ʴ´�. 
		 * ������ try������ ������� ���� �� �ش翹�ܰ� �߻��ϸ� ���ܿ� �ش�Ǵ� catch���� ����ȴ�. 
		 * finally : finally ������ try���� ���� �� ���ܹ߻� ���ο� ������� ������ ����ȴ�. */	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (resultSet != null) try {resultSet.close();} catch (SQLException ex) {}
			if (statement != null) try {statement.close();} catch (SQLException ex) {}
			if (connection != null) try {connection.close();} catch (SQLException ex) {}
		}

		return list; // list�� �ּҸ� �����Ѵ�.
	}

}
