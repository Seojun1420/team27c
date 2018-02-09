//team27c ������
package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ActorDao {

	// ArrayList<Actor>����Ÿ���� selectActorList�޼���
	public ArrayList<Actor> selectActorList() {
		// ArrayList<Actor>Ÿ������ ArrayList<Actor>����Ʈ�� ��ü�� ������ �� �ּҰ��� list��ü���������� �Ҵ��Ѵ�
		ArrayList<Actor> list = new ArrayList<Actor>();

		/*
		 * arrayActor�� null�� �ʱ�ȭ, Connection,prparedStatement,ResultSetŬ������
		 * connection,statement,resultSet�� null�� �ʱ�ȭ �Ѵ�.
		 */
		ArrayList<Actor> arrayActor = null;
		Connection connection = null;
		PreparedStatement Statement = null;
		ResultSet resultSet = null;

		try {
			// ����̹� �ε��� �����Ѵ�
			// db���ῡ �ʿ��� ������� dub����
			Class.forName("com.mysql.jdbc.Driver");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr"; // db���ῡ
																												// �ʿ���
			String dbUser = "root";
			String dbPass = "java0000";

			/*
			 * ���� as : �������� �����ϱ� ���� ����Ѵ�, �� ���̺���̳� �÷����� ��� ���� ����� ������ �������� �����ؼ� ��밡���ϴ� ORDER
			 * BY : ������ ���� ������ Ư�� ������ �����Ѵ�. ������ �� �Ǵ� ǥ���� ���� �������� �Ǵ� �������� �迭 ������ ���ĵȴ�.
			 */
			/*
			 * SELECT ���� ���� String�� sql������ �ʱ�ȭ�Ѵ�. ORDER BY�� ���̼����� ������������ �����Ͽ���.
			 */
			String sql = "SELECT actor_id as actorId,actor_name as actorName,actor_age as actorAge FROM actor ORDER BY actor_age DESC";
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			// ������ ������ ���� �غ� �ϰ� sql���� SELECT���� ����Ǿ��ִ�.
			Statement = connection.prepareStatement(sql);
			// ������ ������ ������ ����� �ּҰ��� resultSet�� �����Ѵ�
			resultSet = Statement.executeQuery();

			/*while : �ݺ�Ƚ���� �� �� ���� ���ǿ� ���� �ݺ��ϴ� ��쿡 ����ϴ� �ݺ����̴�.
			��ü�������� resultSet�� �ּҸ� ã�ư� next�޼��带 �����Ѵ�
			Actor�� ���ο� ��ü�� ������ ������ ��ü�� �ּҰ��� actor��ü���������� �Ҵ��ϰ�
			resultSet�� getInt�޼��带 �����ؼ� �� ����� intŸ���� actorId�� �ʱ�ȭ�Ѵ�
			*/
			while (resultSet.next()) {
				Actor actor = new Actor();
				int actorId = resultSet.getInt("actorId");
				String actorName = resultSet.getString("actorName");
				int actorAge = resultSet.getInt("actorAge");

				actor.setActorId(actorId);
				actor.setActorName(actorName);
				actor.setActorAge(actorAge);
				list.add(actor);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (resultSet == null)
				try {
					resultSet.close();
				} catch (SQLException ex) {
				}
			if (Statement == null)
				try {
					resultSet.close();
				} catch (SQLException ex) {
				}
			if (connection == null)
				try {
					resultSet.close();
				} catch (SQLException ex) {
				}
		}

		return list;
	}

}
