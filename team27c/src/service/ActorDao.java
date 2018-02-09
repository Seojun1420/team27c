//team27c 김재희
package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ActorDao {

	// ArrayList<Actor>리턴타입의 selectActorList메서드
	public ArrayList<Actor> selectActorList() {
		// ArrayList<Actor>타입으로 ArrayList<Actor>리스트의 객체를 생성해 그 주소값을 list객체참조변수에 할당한다
		ArrayList<Actor> list = new ArrayList<Actor>();

		/*
		 * arrayActor을 null로 초기화, Connection,prparedStatement,ResultSet클래스의
		 * connection,statement,resultSet을 null로 초기화 한다.
		 */
		ArrayList<Actor> arrayActor = null;
		Connection connection = null;
		PreparedStatement Statement = null;
		ResultSet resultSet = null;

		try {
			// 드라이버 로딩을 시작한다
			// db연결에 필요한 정보들과 dub연결
			Class.forName("com.mysql.jdbc.Driver");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr"; // db연결에
																												// 필요한
			String dbUser = "root";
			String dbPass = "java0000";

			/*
			 * 쿼리 as : 별명으로 지정하기 위해 사용한다, 긴 테이블명이나 컬럼명을 계속 쓰기 힘들기 때문에 별명으로 지정해서 사용가능하다 ORDER
			 * BY : 선택한 행을 리턴할 특정 순서를 지정한다. 순서는 열 또는 표현식 값의 오름차순 또는 내림차순 배열 순서로 정렬된다.
			 */
			/*
			 * SELECT 쿼리 문을 String형 sql변수에 초기화한다. ORDER BY로 나이순으로 오름차순으로 정렬하였다.
			 */
			String sql = "SELECT actor_id as actorId,actor_name as actorName,actor_age as actorAge FROM actor ORDER BY actor_age DESC";
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			// 쿼리를 실행을 위한 준비를 하고 sql에는 SELECT문이 저장되어있다.
			Statement = connection.prepareStatement(sql);
			// 쿼리를 실행해 실행한 결과의 주소값을 resultSet에 저장한다
			resultSet = Statement.executeQuery();

			/*while : 반복횟수를 알 수 없고 조건에 따라서 반복하는 경우에 사용하는 반복문이다.
			객체참조변수 resultSet의 주소를 찾아가 next메서드를 실행한다
			Actor의 새로운 객체를 생성해 생성한 객체의 주소값을 actor객체참조변수에 할당하고
			resultSet의 getInt메서드를 실행해서 그 결과를 int타입의 actorId에 초기화한다
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
