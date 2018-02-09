//임가현
package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ComedianDao {
	
	public ArrayList<Comedian> selectComedianList() {
		ArrayList<Comedian> arrlist = new ArrayList<Comedian>();
		
		
		//finally절에서 close가 가능하도록.
		PreparedStatement preparedStatement = null;  // PreparedStatement 객체는 자주 여러번 사용되는 query를 미리 컴파일 시킴. 초기값은 null
		Connection connection = null;  // Connection 객체는 자바를 DB에 연결할 수 있게 해준다. 초기값은 null
		ResultSet resultset = null;  // ResultSet : 한번에 한 행씩 리터하는 질의어의 결과. 초기값은 null
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");//드라이버 로딩 시작
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";//DB연결시작:포트번호,ip주소,DB명,DBid,DBpw 작성
			String dbUser = "root";
			String dbPass = "java0000";
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);//DB정보를 담아 connection을 받는다.
			
			//쿼리 실행을 위한 객체생성 시작
			preparedStatement = connection.prepareStatement("SELECT comedian_id, comedian_name, comedian_age from comedian");
			//쿼리 실행
			resultset = preparedStatement.executeQuery();
			
						
			//while문 : 특정 조건을 만족할 때 까지 반복,id,name,age를 순서대로  
			while(resultset.next()) {
				Comedian comedian = new Comedian();
				comedian.setComedianId(resultset.getString("comedian_id"));
				comedian.setComedianName(resultset.getString("comedian_name"));
				comedian.setComedianAge(resultset.getString("comedian_age"));
				arrlist.add(comedian);
			}
		} catch (SQLException ex) {
			ex.getStackTrace();
			System.out.println(ex.getMessage());	
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}finally {
			if(resultset != null) try {resultset.close();} catch(SQLException ex) {}
			if(preparedStatement == null) try {preparedStatement.close();} catch(SQLException ex) {}
			if(connection == null) try {connection.close();} catch(SQLException ex) {}
		}
		return arrlist;
	
		}
	}


