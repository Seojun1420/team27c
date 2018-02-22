//team27c 김재희
package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ActorDao {
	//Connection,prparedStatement,ResultSet클래스의 변수connection,statement,resultSet을 null로 초기화 한다.
	Connection connection = null;
	PreparedStatement statement = null;
	ResultSet resultSet = null;
	Actor actor = null;
	
	public void actionUpdateActor(Actor actor) {
		try {
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("드라이버로딩");
				String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
				String dbUser = "root";
				String dbPass = "java0000";
				connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				System.out.println("DB연결");
				statement = connection.prepareStatement("UPDATE actor SET actor_name=?, actor_age=? WHERE actor_id=?");
				statement.setString(1, actor.getActorName());
				statement.setInt(2, actor.getActorAge());
				statement.setInt(3, actor.getActorId());
				statement.executeUpdate();
				System.out.println("쿼리실행");
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
				System.out.println("드라이버로딩");
				String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
				String dbUser = "root";
				String dbPass = "java0000";
				connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				System.out.println("DB연결");
				statement = connection.prepareStatement("SELECT * FROM actor WHERE actor_id=?");
				statement.setInt(1, actorId);
				resultSet = statement.executeQuery();
				System.out.println(statement + "쿼리실행");
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
				System.out.println("드라이버로딩");
				String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
				String dbUser = "root";
				String dbPass = "java0000";
				connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				System.out.println("DB연결");
				statement = connection.prepareStatement("DELETE FROM actor WHERE actor_id=?");
				statement.setInt(1, actorId);
				statement.executeUpdate();
				System.out.println("쿼리실행");
				
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
				/*드라이버로딩, db연결을 한다.*/
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("드라이버로딩");
				String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
				String dbUser = "root";
				String dbPass = "java0000";
				connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				System.out.println("DB연결");
				
				/*connection객체참조변수의 주소를 찾아가 insert쿼리문을 매개변수로 prepareStatement메서드를 실행해
				 쿼리실행을 위한 준비를 한다.
				 각각의 물음표 자리에 actor의 get메서드를 실행해 겟팅해온 데이터들을 순서대로 참조변수statement 주소
				 를 찾아가 set메서드를 사용해 입력해준다. 그리고 쿼리문장을 실행*/
				statement = connection.prepareStatement("INSERT INTO actor VALUES (?, ?, ?)");
				statement.setInt(1, actor.getActorId());
				statement.setString(2, actor.getActorName());
				statement.setInt(3, actor.getActorAge());
				statement.executeUpdate();
		
		// 닫아준다.		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (statement != null) try {statement.close();} catch (SQLException ex) {}
			if (connection != null) try {connection.close();} catch (SQLException ex) {}
		}
	}
	

	// ArrayList<Actor>리턴타입의 selectActorList메서드
	public ArrayList<Actor> selectActorList() {
		// ArrayList<Actor>타입으로 ArrayList<Actor>리스트의 객체를 생성해 그 주소값을 list객체참조변수에 할당한다
		ArrayList<Actor> list = new ArrayList<Actor>();

		try {
			// 드라이버 로딩을 시작한다
			// db연결에 필요한 정보들과 db연결
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr"; 																							
			String dbUser = "root";
			String dbPass = "java0000";

			/*
			 * 쿼리 as : 별명으로 지정하기 위해 사용한다, 긴 테이블명이나 컬럼명을 계속 쓰기 힘들기 때문에 별명으로 지정해서 사용가능하다
			 * ORDER BY : 선택한 행을 리턴할 특정 순서를 지정한다. 순서는 열 또는 표현식 값의 오름차순 또는 내림차순 배열 순서로 정렬된다.
			 * SELECT 쿼리 문을 String형 sql변수에 초기화한다. ORDER BY로 나이순으로 오름차순으로 정렬하였다.
			 */
			String sql = "SELECT actor_id as actorId,actor_name as actorName,actor_age as actorAge FROM actor ORDER BY actor_id ASC";
			// DB연결에 필요한 정보들을 담아 connection객체참조변수에 할당한다
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			// 쿼리를 실행을 위한 준비를 하고 sql에는 SELECT문이 저장되어있다.
			statement = connection.prepareStatement(sql);
			// 쿼리를 실행해 실행한 결과의 주소값을 resultSet에 저장한다
			resultSet = statement.executeQuery();

			/*while : 반복횟수를 알 수 없고 조건에 따라서 반복하는 경우에 사용하는 반복문이다.
			while문을 실행하고 객체참조변수 resultSet의 주소를 찾아가 next메서드를 실행한다
			Actor의 새로운 객체를 생성해 생성한 객체의 주소값을 actor객체참조변수에 할당하고
			resultSet객체참조변수의 주소를 찾아가 getInt메서드를 실행해 actorId를 매개변수로 DB에 있는 actor_id 결과를 가져와
			actor객체참조변수의 주소를 찾아가 set메서드를 사용해 가져왔던 결과의 주소값을 셋팅한다. 
			나머지 actorName과 actorAge도 동일한 방법으로 셋팅된다.
			객체참조변수 list에 add메서드를 사용해 actor의 주소값을 추가해준다.
			*/
			while (resultSet.next()) {
				Actor actor = new Actor();
				actor.setActorId(resultSet.getInt("actorId"));
				actor.setActorName(resultSet.getString("actorName"));
				actor.setActorAge(resultSet.getInt("actorAge"));
				list.add(actor);
			}
		/* try, catch : try문안의 수행할 문장들에서 예외가 발생하지 않는다면 catch문 다음의 문장들은 수행이 되지 않는다. 
		 * 하지만 try문안의 문장들을 수행 중 해당예외가 발생하면 예외에 해당되는 catch문이 수행된다. 
		 * finally : finally 구문은 try문장 수행 중 예외발생 여부에 상관없이 무조건 실행된다. */	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (resultSet != null) try {resultSet.close();} catch (SQLException ex) {}
			if (statement != null) try {statement.close();} catch (SQLException ex) {}
			if (connection != null) try {connection.close();} catch (SQLException ex) {}
		}

		return list; // list의 주소를 리턴한다.
	}

}
