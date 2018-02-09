package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ActorDao {
	
	public ArrayList<Actor> selectActorList() {		//selectorActorList 선언 
		
		ArrayList<Actor> arrayActor = null;					//arayActor변수를 null로 초기화하고
		Connection connection = null;						// 그외 connection과 preparedStatement
		PreparedStatement preparedStatement = null; 		//resultSet도  null로 초기화
		ResultSet resultSet = null;					
		
		ArrayList<Actor> arrlist = new ArrayList<Actor>(); // 객체참조변수 arrlist에 ArrayList<Actor>의
															// 생성된 객체의 주소값을 할당해준다.
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); 
			//db연결
			
			preparedStatement = connection.prepareStatement("select actor_id,actor_name,actor_age from actor");
			//select 쿼리문을 실행할 준비를한다. *로 전체조회를 할 수는 있지만 actorList.jsp의 테이블에 각각 불러오기 위해 컬럼을 각각 조회하는 select문을 써주었다. 
			
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
