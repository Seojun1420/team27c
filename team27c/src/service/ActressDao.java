//team27c 김문기
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
			System.out.println(conn+"db연결");
			
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
	
	/*selectActress()메서드 선언 리턴타입ArrayList<Actress> 매개변수 없음 */
	public ArrayList<Actress> selectActress(){
		//기본적으로 필요한 변수 선언 및 ArrayList 선언
		ArrayList<Actress> list = new ArrayList<Actress>();
		Connection conn = null;
		PreparedStatement statement = null;
		ResultSet rs = null;
		
		try {
			/*드라이버 로딩 과 데이터베이스를 사용하기위한 정보들을 String 데이터타입의 변수들에 저장한다.
			 * DriverManager.getConnection 을 이용해 DB에 접속을 하고 println 으로 접속이 되었는지 확인한다.
			 */
			Class.forName("com.mysql.jdbc.Driver");

			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			String sql = "SELECT actress_id,actress_name,actress_age FROM actress ORDER BY actress_id ASC";
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println(conn + ":db연결");
			
			/*접속된 db정보에 prepareStatement 메서드를 사용해 sql문 실행준비해준다.
			 * executeQuery()메서드를 사용해 sql실행준비에 있던것을 실행해준다.
			 * 쿼리가 잘실행되었는지 확인하기위해 println 출력해본다.
			 */
			statement = conn.prepareStatement(sql);
			rs=statement.executeQuery();
			
			System.out.println(statement);
			
			/*rs.next() 메서드로 db쿼리 실행한것을 한줄씩 읽어온다.
			 * while문 이 실행되면 actress의 객체가 생성되며 생성된객체에 rs.next() 메서드를이용해  읽어온 db정보들을
			 * 각각 셋팅 해준다. 접근지정자가 private 되어있어 셋터  메서드를 통해서만 셋팅이가능하며 셋팅된값을
			 * 다시 list.add 를 이용해 ArrayList 에 담아준다.
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
			 * for 문을 이용해 list 에 값이 잘담겨 졌는지 확인해준다.
			 */
			for(Actress s: list) {
				System.out.println(s.getActressId());
				System.out.println(s.getActressName());
				System.out.println(s.getActressAge());
			}
			/*selectActress 메서드  try문이 실행되며 그중간에 예외가발생 되었을떄  예외실행된부분까지만 실행되고 나머지는 실행되지않는다.
			 * 예외가 발생하면 catch 문으로 넘어와 예외를 처리하고 printStackTrace() 메서드를 사용해 어디서 예외가발생하였는지 콘솔창에출력해준다.
			 * finally 부분은 예외발생하고 실행이안된부분에 가비지 컬렉터가 삭제하기전  끝내야하는 메서드를 끝내준다. 
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
