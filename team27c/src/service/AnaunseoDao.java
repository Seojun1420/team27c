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
		ArrayList<Anaunseo> list = new ArrayList<Anaunseo>();  		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//mysql 드라이버 로딩
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
		    String dbUser = "root";
		    String dbPass = "java0000";
		    String sql = "SELECT anaunseo_id as anaunseoId, anaunseo_name as anaunseoName, anaunseo_age as anaunseoAge FROM anaunseo ORDER BY anaunseo_name";
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
		    Anaunseo anaunseo;
		    // db에서 값을 받아와 저장할 Anaunseo 클래스타입의 anaunseo 객체 참조변수를 선언한다.
		    while(rs.next()) {
		    	/*  
		    	 * while문을 사용해서 ResultSet 객체내부의 next 메서드를 호출하면 실행결과가 있다면 true임으로 
		    	 * while문 안의 블럭이 실행된다. 그리고 다음 실행결과를 확인해서 true 이면 반복을 false 이면 while문을 종료 하게 된다.
		    	 */
			    anaunseo = new Anaunseo();
			    //Anaunseo생성자 메서드를 호출해 객체를 생성한 후 그 참조값을 anaunseo 객체참조 변수에 할당한다.
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
		
	}
	/*public void insertAnaunseoList() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
		    String dbUser = "root";
		    String dbPass = "java0000";
		    String sql = "";			
		}catch(SQLException e){ //Class.forName
			e.printStackTrace();
		}catch(ClassNotFoundException e) { //jdbc
			e.printStackTrace();
		}finally{		
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //순서대로 가장 늦게 실행된 객체부터 닫아준다.
			if (statement != null) try { statement.close(); } catch(SQLException e) {}			
			if (connection != null) try { connection.close(); } catch(SQLException e) {}
		}
	}*/
}