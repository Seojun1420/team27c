//team27c ±èÀçÈñ
package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ActorDao {
	
	public ActorDao() {}
	
	public int insertActor(Actor actor) {
		System.out.println(actor);
		
		return 0;
	}
	
	public ArrayList<Actor> selectActorList() {					
		
		ArrayList<Actor> list = new ArrayList<Actor>(); 
		
		ArrayList<Actor> arrayActor = null;					
		Connection connection = null;						
		PreparedStatement Statement = null; 		
		ResultSet resultSet = null;				
		
		try {
				Class.forName("com.mysql.jdbc.Driver");
				String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
				String dbUser = "root";
				String dbPass = "java0000";
				String sql = "SELECT actor_id as actorId,actor_name as actorName,actor_age as actorAge FROM actor";
				connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); 
				Statement = connection.prepareStatement(sql);
				resultSet = Statement.executeQuery();
				
				while(resultSet.next()) {
					Actor actor = new Actor();
					int actorId = resultSet.getInt("actorId");
					String actorName = resultSet.getString("actorName");
					int actorAge = resultSet.getInt("actorAge");
					
					actor.setActorId(actorId);
					actor.setActorName(actorName);
					actor.setActorAge(actorAge);
					list.add(actor);
				}
			// ´ÜÀ§Å×½ºÆ® ÄÚµå
			System.out.println(list.size()+"7");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();	
		} catch (SQLException e) {
			e.printStackTrace();	
		}finally {
			if(resultSet == null) try {resultSet.close();} catch(SQLException ex) {}
			if(Statement == null) try {resultSet.close();} catch(SQLException ex) {}
			if(connection == null) try {resultSet.close();} catch(SQLException ex) {}
		}
		
		return list;
		
		
		
	}
		
}
