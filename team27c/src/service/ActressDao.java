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
	
	/*ActionUpdateActress메서드선언 리턴타입 void 매개변수는 Actress클래스이다.*/
	public void ActionUpdateActress(Actress actressDao) {
		/*기본적인 변수선언과 쿼리문을 sql 변수에저장*/
		Connection conn=null;
		PreparedStatement statement=null;
		String sql="UPDATE actress SET actress_name=?,actress_age=? WHERE actress_id=?";
		
		try {
			/*드라이버 로딩및 db 접속에 필요한정보를 각각 변수에 저장하고
			 * getConnection 메서드를 사용해  db 에접속한다.*/
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			/*prepareStatement 메서드를 사용해 sql 실행 준비시켜주고
			 * setString,setInt 메서드를 사용해 sql 을 완성시켜준다.
			 * 이때 매개변수로 매개변수로받은 클래스의 주소.get 메서드를 사용해 값을 받아온다.
			 * 쿼리문을 실행하기위해 executeUpdate 메서드를사용한다.*/
			statement=conn.prepareStatement(sql);
			statement.setString(1, actressDao.getActressName());
			statement.setInt(2, actressDao.getActressAge());
			statement.setInt(3, actressDao.getActressId());
			
			statement.executeUpdate();
			/*try catch 문을 사용해 예외 발생을 방지해주고
			 * finally 부분은 예외발생하고 실행이안된부분에 가비지 컬렉터가 삭제하기전  끝내야하는 메서드를 끝내준다.
			 */
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(statement!=null) try {statement.close();}catch(SQLException ex) {}
			if(conn!=null) try {conn.close();}catch(SQLException ex) {}
		}
	}
	/*SelectUpdateActress 메서드선언 리턴타입 Actress 클래스 매개변수 int 타입의 actressId*/
	public Actress SelectUpdateActress(int actressId) {
		/*기본적으로 필요한 변수선언 */
		Connection conn=null;
		PreparedStatement statement=null;
		ResultSet resultSet = null;
		Actress actress = new Actress();
		String sql = "SELECT * FROM actress WHERE actress_id=?";
		
		try {
			/*드라이버로딩 을 해주고 db 접속에 필요한 정보들을 String 타입의 변수에 넣어준다.
			 * getConnection 메서드를 사용 db 에접속하고 prparesStatement ㅁㅔ서드를 이용하여
			 * 쿼리실행 준비를해준다. 실행준비된 쿼리문에 setInt 메서드를 사용해 매개변수로받은 actressId
			 * 를 다시 setInt 메서드의 매개변수로 준다. executeQuery 메서드를 이용해 쿼리문을 실행한다.
			 */
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000"; 
			
			conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			statement=conn.prepareStatement(sql);
			statement.setInt(1, actressId);
			resultSet=statement.executeQuery();
			
			/*resultSet 클래스의 next()메서드를 이용해 db 테이블에 접근해  쿼리실행결과를
			 * 한줄 씩읽어오며 actress 객체참조변수에 할당된 주소 를찾아가 set메서드를 활용해 셋팅을해준다.
			 * 셋팅값은 next 메서드를 사용 해 읽어온 컬럼의 데이터들이다.
			 */
			while(resultSet.next()) {
				actress.setActressId(resultSet.getInt("actress_id"));
				actress.setActressName(resultSet.getString("actress_name"));
				actress.setActressAge(resultSet.getInt("actress_age"));
				
				
			}
			/*try catch 문을 사용해 예외 발생을 방지해주고
			 * finally 부분은 예외발생하고 실행이안된부분에 가비지 컬렉터가 삭제하기전  끝내야하는 메서드를 끝내준다.
			 */
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
	/*deleteActress 메서드를 작성해준다 리턴타입은 void 이고 매개변수로 int 데이터타입의 actressId 를 넘겨받는다. */
	public void deleteActress(int actressId) {
		/*기본적으로 필요한 변수를 선언하고 sql 변수에 쿼리를 저장한다. */
		Connection conn=null;
		PreparedStatement statement = null;
		String sql = "DELETE FROM actress WHERE actress_id=?";
		try {
			/*드라이버로딩과 db 접속에필요한 id,pw,ip,port,db 명을 각각 String 데이터타입의
			 * 변수에 저장한다. */
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			/*DriverManager 클래스에 getConnection 을 이용해 db 에접속하도록한다.
			 *prepareStatement 를 이용해 쿼리를 준비해주고 setInt 메서드를 이용해 쿼리를 완성해준다.
			 *executeUpdate 문을 사용해 완성된 쿼리를 실행해준다. 
			 */
			conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			statement=conn.prepareStatement(sql);
			statement.setInt(1, actressId);
			statement.executeUpdate();
			
			/*try catch 문을 사용해 예외 발생을 방지해주고
			 * finally 부분은 예외발생하고 실행이안된부분에 가비지 컬렉터가 삭제하기전  끝내야하는 메서드를 끝내준다.*/
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(statement != null) try {statement.close();} catch(SQLException ex) {}
			if(conn != null) try {conn.close();} catch(SQLException ex) {}		
		}
		
		}
	/*insertActress 메서드 리턴타입 void 매개변수 Actress 클래스*/
	public void insertActress(Actress atress) {
		/*기본적인 변수들 선언 및 sql 작성*/
		Connection conn=null;
		PreparedStatement statement=null;
		String sql="INSERT INTO actress values(?,?,?)";
		try {
			/*드라이버 로딩 과 데이터베이스를 사용하기위한 정보들을 String 데이터타입의 변수들에 저장한다.
			 * DriverManager.getConnection 을 이용해 DB에 접속을 하고 println 으로 접속이 되었는지 확인한다.
			 */
			Class.forName("com.mysql.jdbc.Driver");
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			conn=DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
			System.out.println(conn+"db연결");
			/*prepareStatement 메서드를 이용해 위에서 sql 변수에 저장한 쿼리문을 매개변수로 보내줘 메서드 실행준비를한다.
			 * 실행준비된 메서드에 setInt,setString 메서드를 이용해 셋팅해주는데 actress 객체참조변수에 할당된주소를찾아가
			 * get 메서드를 사용해 값을 가져와 셋팅해준다.
			 * executeUpdate() 메서드를 사용하여 완성된 쿼리문을 실행해준다.
			 */
			statement=conn.prepareStatement(sql);
			statement.setInt(1, atress.getActressId());
			statement.setString(2, atress.getActressName());
			statement.setInt(3, atress.getActressAge());
			statement.executeUpdate();
			/*try catch 문을 사용해 예외 발생을 방지해주고
			 * finally 부분은 예외발생하고 실행이안된부분에 가비지 컬렉터가 삭제하기전  끝내야하는 메서드를 끝내준다.
			 * 
			 */
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
