//임가현
package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ComedianDao {
	
	public ArrayList<Comedian> selectComedianList() { //ArrayList로 메소드명 selectComedianList를 선언해준다.
		ArrayList<Comedian> arrlist = new ArrayList<Comedian>();//객체참조변수를 선언해준다.
		
		
		//finally절에서 close가 가능하도록 한다.
		PreparedStatement preparedStatement = null;  // PreparedStatement 객체는 자주 여러번 사용되는 query를 미리 컴파일 시킴. 초기값은 null
		Connection connection = null;  // Connection 객체는 자바를 DB에 연결할 수 있게 해준다. 초기값은 null
		ResultSet resultset = null;  // ResultSet : 한번에 한 행씩 리턴하는 질의어의 결과. 초기값은 null
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");//드라이버 로딩 시작
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";//DB연결시작:포트번호,ip주소,DB명,DBid,DBpw 작성
			String dbUser = "root";
			String dbPass = "java0000";
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);//DB정보를 담아 connection으로 받는다.
			
			//쿼리 실행을 위한 객체생성 시작, 아이디,이름, 나이를 조회한다.
			preparedStatement = connection.prepareStatement("SELECT comedian_id as comedianId, comedian_name as comedianName, comedian_age as comedianAge from comedian");//as,큰따움표 생략가능(불가능할수있다)
			//쿼리를 실행한다.
			resultset = preparedStatement.executeQuery();
			
						
			/*while문 : 특정 조건을 만족할 때 까지 반복하는 역할로, 실행한 DB쿼리를 한줄씩 읽어들인다.
			 * while문이 실행되면 객체가 생성되어 resultset.next()메스드를 이용하여 읽어온 정보를 셋팅해준다.
			 * 접근지정자가 private이므로 세터메소드를 통해서 셋팅이 가능하다. 셋팅된 값은 arrlist.add(comedian)에 담겨, 다시 ArrayList에 담긴다.*/
			while(resultset.next()) {
				Comedian comedian = new Comedian();
				comedian.setComedianId(resultset.getInt("comedianId")); //get 부분은 Comedian.java의 private랑 맞춰써줘야한다, 
				comedian.setComedianName(resultset.getString("comedianName"));
				comedian.setComedianAge(resultset.getInt("comedianAge"));
				arrlist.add(comedian);
			}
			for(Comedian s: arrlist) { //for문을 이용해 list에 값이 잘담겨 졌는지 확인해준다.
				System.out.println(s.getComedianId());
				System.out.println(s.getComedianName());
				System.out.println(s.getComedianAge());
		
			}
		/*try~catch구문(예워처리하다) :구문 안에서 에러(예외처리)의 내용을 확인할 수 있다.
		 * try예약어와 {}를 사용하여 그 안에 오류가 나는 소스를 담아두면, try에서 에러를 감지하는 역할을 한다.
		 * 만약 try에서 에러를 감지했다면, 이러와 관련된 내용을 catch로 넘겨서 예외처리(에러)를 해주게 된다.
		 * 이 '과정을 예외처리를 한다'라고 한다.*/
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


