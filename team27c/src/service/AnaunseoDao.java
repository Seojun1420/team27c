//team27 도정만
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
		/*
		 * selectAnaunseoList 메서드는 db에 저장된 아나운서의 id와 이름, 나이를 보여 주는 메서드.
		 * Anaunseo 클래스 타입의 ArrayList를 리턴한다.
		 */
		ArrayList<Anaunseo> list = new ArrayList<Anaunseo>();  		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//mysql 드라이버 로딩
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
		    String dbUser = "root";
		    String dbPass = "java0000";
		    String sql = "SELECT anaunseo_id as anaunseoId, anaunseo_name as anaunseoName, anaunseo_age as anaunseoAge FROM anaunseo ORDER BY anaunseo_id ASC";
		    //mysql 연결을 위해 ip, port, dbid, dbpw, db명 입력
		      
		    connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		    /* DriverManger 클래스의 getConnection 메서드 호출한다 .
		     * 이때  jdbcDriver, dbUser, dbpass를 매개변수 값으로 보낸다.
		     */
		    statement=connection.prepareStatement(sql);
		    //connection 객체 참조 변수에 할당된 참조값을 찾아가 prepareStatement메서드를실행하고 준비된 쿼리문을 입력한다.		      		    
		    rs=statement.executeQuery();
		    /*
		     * statement 객체참조 변수에 할당된 참조값을 찾아가 executeQuery 메서드를 호출하면 준비된 쿼리 실행 후
		     *  실행결과를 rs 객체참조변수에 참조값을 할당한다.		    
		     */
		    while(rs.next()) {
		    	/*  
		    	 * while문을 사용해서 ResultSet 객체내부의 next 메서드를 호출하면 실행결과가 있다면 true임으로 
		    	 * while문 안의 블럭이 실행된다. 그리고 다음 실행결과를 확인해서 true 이면 반복을 false 이면 while문을 종료 하게 된다.
		    	 */
		    	Anaunseo anaunseo = new Anaunseo();
			    /*
			     * Anaunseo생성자 메서드를 호출해 객체를 생성한 후 그 참조값을 anaunseo 객체참조 변수에 할당한다.
			     * db에서 값을 받아와 저장할 Anaunseo 클래스타입의 anaunseo 객체 참조변수를 선언한다.
			     */
			    anaunseo.setAnaunseoId(rs.getInt("anaunseoId"));
			    anaunseo.setAnaunseoName(rs.getString("anaunseoName"));
			    anaunseo.setAnaunseoAge(rs.getInt("anaunseoAge"));
			    /*
			     * anaunseo 객체참조변수에 할당된 참조값을 찾아가 setAnaunseoId, setAnaunseoName, setAnaunseoAge 메서드를 호출후
			     * rs.next를 통해 가져온 값들을 셋팅해준다.
			     */
			    list.add(anaunseo);
			    //셋팅된 anaunseo 객체참조변수를 list에 추가해준다.
		    }
		    //단위테스트 코드
		}catch(SQLException e){ //Class.forName
			e.printStackTrace();
		}catch(ClassNotFoundException e) { //jdbc
			e.printStackTrace();
		}finally{		
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //순서대로 가장 늦게 실행된 객체부터 닫아준다.
			if (statement != null) try { statement.close(); } catch(SQLException e) {}			
			if (connection != null) try { connection.close(); } catch(SQLException e) {}
		}
		return list;
		//웹페이지 화면에 셋팅된 값들을 출력해야 하므로 jsp페이지의 메서드가 호출된 곳으로 list를 return 해준다.
		
	}
	public void insertAnaunseo(Anaunseo anaunseo) {
		/*
		 * insertAnaunseo 메서드는 새로운 아나운서를 등록하는 메서드.
		 * void 타입이므로 return은 없고, Anaunseo 클래스에 셋팅된 값을 매개변수값으로 받아온다.
		 */
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//mysql 드라이버 로딩
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
		    String dbUser = "root";
		    String dbPass = "java0000";
		    String sql = "INSERT INTO anaunseo VALUES(?,?,?)";
		    //mysql 연결을 위해 ip, port, dbid, dbpw, db명 입력
		      
		    connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		    /* DriverManger 클래스의 getConnection 메서드 호출한다 .
		     * 이때  jdbcDriver, dbUser, dbpass를 매개변수 값으로 보낸다.
		     */
		    
		    statement=connection.prepareStatement(sql);
		    //connection 객체 참조 변수에 할당된 참조값을 찾아가 prepareStatement메서드를실행하고 준비된 쿼리문을 입력한다.	
		    statement.setInt(1, anaunseo.getAnaunseoId());
		    statement.setString(2, anaunseo.getAnaunseoName());
		    statement.setInt(3, anaunseo.getAnaunseoAge());	
		    /*
		     * anaunseo 객체참조변수에 할당된 참조값을 찾아가 getAnaunseoId, getAnaunseoName, getAnaunseoAge 메서드를 호출후
		     * return 받은 값들을 statment 객체 참조 변수에 할당된 참조값을 찾아가 PreparedStatement 클래스의 setInt, setString 메서드를
		     * 호출 후 매개변수값으로 지정한다.
		     * 쿼리 완성!
		     */
		    
		    statement.executeUpdate();
		    //INSERT 쿼리문 이므로 executeUpdate 메서드를 실행해 쿼리를 실행시켜준다.
		    
		}catch(SQLException e){ //Class.forName
			e.printStackTrace();
		}catch(ClassNotFoundException e) { //jdbc
			e.printStackTrace();
		}finally{		 
			if (statement != null) try { statement.close(); } catch(SQLException e) {}	//순서대로 가장 늦게 실행된 객체부터 닫아준다.	
			if (connection != null) try { connection.close(); } catch(SQLException e) {}
		}
	}
	public void deleteAnaunseo(int anaunseoId) {
		/*
		 * deleteAnaunseo 메서드는 db에 저장되있는 아나운서를 삭제하는 메서드.
		 * void 타입이므로 return은 없고, Anaunseo 클래스에 셋팅된 값을 매개변수값으로 받아온다.
		 */
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//mysql 드라이버 로딩

			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
			String dbId = "root";
			String dbPw = "java0000";
			String sql = "DELETE FROM anaunseo WHERE anaunseo_id=?";			
			
			connection=DriverManager.getConnection(jdbcDriver, dbId, dbPw);
			//mysql 연결을 위해 ip, port, dbid, dbpw, db명 입력
			statement=connection.prepareStatement(sql);
			//connection 객체 참조 변수에 할당된 참조값을 찾아가 prepareStatement메서드를실행하고 준비된 쿼리문을 입력한다.	
			statement.setInt(1, anaunseoId);
			//준비된 쿼리문 완성!

			statement.executeUpdate();
			//쿼리실행
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(statement != null) try { statement.close(); } catch(SQLException e) {}
			if(connection != null) try { connection.close(); } catch(SQLException e) {}
		}
	}
	public Anaunseo selectUpdateAnaunnseo(int anaunseoId) {
		/*
		 * selectUpdateAnaunnseo 메서드는 db에 저장되있는 하나의 아나운서 정보를 읽어오는 메서드.
		 * Anaunseo 클래스 타입이므로 return은 Anaunseo 클래스타입의 anaunseo 객체참조변수를 return 
		 * anaunseoId 값을  매개변수값으로 받아온다.
		 */
		Anaunseo anaunseo = new Anaunseo();
		/*
		 * return할 값을 setting 하기위해 Anaunseo 클래스타입의 anaunseo 객체참조변수를 선언하고 
		 * Ananunseo 생성자 메서드를 호출해 새로운 객체를 생성하고 그 참조값을 할당한다. 
		 */
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//mysql 드라이버 로딩
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
		    String dbUser = "root";
		    String dbPass = "java0000";
		    String sql = "SELECT * FROM anaunseo WHERE anaunseo_id=?";
		    //mysql 연결을 위해 ip, port, dbid, dbpw, db명 입력
		      
		    connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		    /* DriverManger 클래스의 getConnection 메서드 호출한다 .
		     * 이때  jdbcDriver, dbUser, dbpass를 매개변수 값으로 보낸다.
		     */
		    
		    statement=connection.prepareStatement(sql);
		    //connection 객체 참조 변수에 할당된 참조값을 찾아가 prepareStatement메서드를실행하고 준비된 쿼리문을 입력한다.
		    statement.setInt(1, anaunseoId);
		    //준비된 쿼리문을 완성한다.
		    
		    rs=statement.executeQuery();
		    // 쿼리를 실행하고 실행결과를 rs객체참조변수에 할당한다.
		    
		    if(rs.next()) {
		    	/*
		    	 *  ResultSet 클래스의 next 메서드 호출해 읽어올 값이 있으면 true 없으면 false
		    	 *  ture이면 if문을 실행한다.
		    	 */
		    	
		    	anaunseo.setAnaunseoId(rs.getInt("anaunseo_id"));
		    	anaunseo.setAnaunseoName(rs.getString("anaunseo_name"));
		    	anaunseo.setAnaunseoAge(rs.getInt("anaunseo_age"));
		    	/*
		    	 * ResultSet 클래스의 getInt, getString 메서드를 호출해 id, name, age 값을 return 받아
		    	 * Anaunseo 클래스의 set 메서드를 호출해 id, name, age를 셋팅해준다.
		    	 */
		    	
		    }
		    
		}catch(SQLException e){ //Class.forName
			e.printStackTrace();
		}catch(ClassNotFoundException e) { //jdbc
			e.printStackTrace();
		}finally{
			if (rs != null) try { rs.close(); } catch(SQLException e) {}
			if (statement != null) try { statement.close(); } catch(SQLException e) {}	//순서대로 가장 늦게 실행된 객체부터 닫아준다.
			if (connection != null) try { connection.close(); } catch(SQLException e) {}
		}
		return anaunseo;
		//웹페이지 화면에 셋팅된 값들을 출력해야 하므로 jsp페이지의 메서드가 호출된 곳으로 anaunseo 객체참조변수를 return 해준다.
	}
	public void ActionUpdateAnaunnseo(Anaunseo anaunseo) {
		/*
		 * selectUpdateAnaunnseo 메서드는 db에 저장되있는 하나의 아나운서 정보를 읽어오는 메서드.
		 * Anaunseo 클래스 타입이므로 return은 Anaunseo 클래스타입의 anaunseo 객체참조변수를 return 
		 * anaunseoId 값을  매개변수값으로 받아온다.
		 */
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//mysql 드라이버 로딩
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
		    String dbUser = "root";
		    String dbPass = "java0000";
		    String sql = "UPDATE anaunseo SET anaunseo_name=?, anaunseo_age=? WHERE anaunseo_id=?";
		    //mysql 연결을 위해 ip, port, dbid, dbpw, db명 입력
		      
		    connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		    /* DriverManger 클래스의 getConnection 메서드 호출한다 .
		     * 이때  jdbcDriver, dbUser, dbpass를 매개변수 값으로 보낸다.
		     */
		    
		    statement=connection.prepareStatement(sql);
		    //connection 객체 참조 변수에 할당된 참조값을 찾아가 prepareStatement메서드를실행하고 준비된 쿼리문을 입력한다.
		    statement.setString(1, anaunseo.getAnaunseoName());
		    statement.setInt(2, anaunseo.getAnaunseoAge());
		    statement.setInt(3, anaunseo.getAnaunseoId());
		    //준비된 쿼리를 완성시켜준다.
		    
		    statement.executeUpdate();
		    //쿼리를 실행 시켜준다.
		    		    
		}catch(SQLException e){ //Class.forName
			e.printStackTrace();
		}catch(ClassNotFoundException e) { //jdbc
			e.printStackTrace();
		}finally{		
			if (statement != null) try { statement.close(); } catch(SQLException e) {}//순서대로 가장 늦게 실행된 객체부터 닫아준다.	
			if (connection != null) try { connection.close(); } catch(SQLException e) {}
		}
	}
		
}