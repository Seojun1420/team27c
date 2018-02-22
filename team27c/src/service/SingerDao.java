//team27c 왕서준
package service;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

public class SingerDao {
	
	public ArrayList<Singer> selectSingerList(){
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Singer> list = new ArrayList<Singer>();
	
		try {
			//mysql 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver"); 
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			/*
			 * 쿼리 as : 별명으로 지정하기 위해 사용한다, 긴 테이블명이나 컬럼명을 계속 쓰기 힘들기 때문에 별명으로 지정해서 사용가능하다
			 * ORDER BY : 선택한 행을 리턴할 특정 순서를 지정한다. 순서는 열 또는 표현식 값의 오름차순 또는 내림차순 배열 순서로 정렬된다.
			 * SELECT 쿼리 문을 String형 sql변수에 초기화한다. ORDER BY로 나이순으로 오름차순으로 정렬하였다.
			 */
			
			String sql = "select singerId as singerId, singerName, singerAge from singer";
			//mysql 연결을 위해 ip, port, dbid, dbpw, db명 입력

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			Singer singer = null;
			
			/*  
	    	 * while문을 사용해서 ResultSet 객체내부의 next 메서드를 호출하면 실행결과가 있다면 true임으로 
	    	 * while문 안의 블럭이 실행된다. 그리고 다음 실행결과를 확인해서 true 이면 반복을 false 이면 while문을 종료 하게 된다.
		     * Singer생성자 메서드를 호출해 객체를 생성한 후 그 참조값을 singer 객체참조 변수에 할당한다.
		     * db에서 값을 받아와 저장할 singer 클래스타입의 singer 객체 참조변수를 선언한다.
			 * singer 객체참조변수에 할당된 참조값을 찾아가 setSinger_Id, setSinger_Name, setSinger_Age 메서드를 호출후
			 * rs.next를 통해 가져온 값들을 셋팅해준다.
			 */
			while(rs.next()) {
				singer = new Singer();
				singer.setSingerId(rs.getInt("singerId"));
				singer.setSingerName(rs.getString("singerName"));
				singer.setSingerAge(rs.getInt("singerAge"));
				list.add(singer);
				 //셋팅된 singer 객체참조변수를 list에 추가해준다.
			}
		
		}catch(ClassNotFoundException c) {
			c.printStackTrace();
		}catch(SQLException s) {
			s.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //순서대로 가장 늦게 실행된 객체부터 닫아준다.
			if (pstmt != null) try {pstmt.close(); } catch(SQLException e) {}			
			if (conn != null) try { conn.close(); } catch(SQLException e) {}
		}
		return list; //배열리턴
		

	}
	public void insertSingerList(Singer singer) throws ClassNotFoundException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("드라이버로딩성공");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
		    String sql = "INSERT INTO singer VALUES(?,?,?)";
		    
		    conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		    System.out.println("디비연결성공");
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setInt(1, singer.getSingerId());
		    pstmt.setString(2, singer.getSingerName());
		    pstmt.setInt(3, singer.getSingerAge());
		    
		    
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException e) { 
			e.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //순서대로 가장 늦게 실행된 객체부터 닫아준다.
			if (pstmt != null) try {pstmt.close(); } catch(SQLException e) {}			
			if (conn != null) try { conn.close(); } catch(SQLException e) {}
		}
	}
}
