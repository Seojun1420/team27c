//team27c 왕서준
package service;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.ResultSet;

public class SingerDao {
	

	public ArrayList<Singer> selectSinger(){
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Singer> arrSinger= new ArrayList<Singer>();
	
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			//mysql 드라이버 로딩
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev? useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			pstmt = conn.prepareStatement("select singer_id as singer_id, singer_name, singer_age from singer");
			//mysql 연결을 위해 ip, port, dbid, dbpw, db명 입력

			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println(conn + "db연결");
			
			
			rs=pstmt.executeQuery();
			
			System.out.println(pstmt);
			
			Singer singer = null;
			
			while(rs.next()) {
				/*  
		    	 * while문을 사용해서 ResultSet 객체내부의 next 메서드를 호출하면 실행결과가 있다면 true임으로 
		    	 * while문 안의 블럭이 실행된다. 그리고 다음 실행결과를 확인해서 true 이면 반복을 false 이면 while문을 종료 하게 된다.
		    	 */
				singer = new Singer();
				  /*
			     * Singer생성자 메서드를 호출해 객체를 생성한 후 그 참조값을 singer 객체참조 변수에 할당한다.
			     * db에서 값을 받아와 저장할 singer 클래스타입의 singer 객체 참조변수를 선언한다.
			     */
				singer.setSinger_Id(rs.getInt("singer_id"));
				singer.setSinger_Name(rs.getString("singer_name"));
				singer.setSinger_Age(rs.getInt("singer_age"));
				/*
			     * singer 객체참조변수에 할당된 참조값을 찾아가 setSinger_Id, setSinger_Name, setSinger_Age 메서드를 호출후
			     * rs.next를 통해 가져온 값들을 셋팅해준다.
			     */
				arrSinger.add(singer);
				 //셋팅된 singer 객체참조변수를 list에 추가해준다.
			}

	
			for(Singer s: arrSinger) {
				System.out.println(s.getSinger_Id());
				System.out.println(s.getSinger_Name());
				System.out.println(s.getSinger_Age());
			}
		
		}catch(ClassNotFoundException c) {
			System.out.println("dzz");
		}catch(SQLException s) {
			s.printStackTrace();
		}
		return arrSinger; //배열리턴
		

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
		    pstmt.setInt(1, singer.getSinger_Id());
		    pstmt.setString(2, singer.getSinger_Name());
		    pstmt.setInt(3, singer.getSinger_Age());
		    
		    
		}catch(SQLException e){ //Class.forName
			e.printStackTrace();
		}catch(ClassNotFoundException e) { //jdbc
			e.printStackTrace();
		}finally {
			if (rs != null) try { rs.close(); } catch(SQLException e) {} //순서대로 가장 늦게 실행된 객체부터 닫아준다.
			if (pstmt != null) try {pstmt.close(); } catch(SQLException e) {}			
			if (conn != null) try { conn.close(); } catch(SQLException e) {}
		}
	}
}
