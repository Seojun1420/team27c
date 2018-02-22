//team27c 박지하

package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RapperDao {
	Connection connection  = null;
	PreparedStatement statement = null;
	ResultSet resultset = null;
	
	public void deleteRapper(int rapperId){
		try {
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("드라이버로딩완료");
		//DB연결시작:포트번호,ip주소,DB명,DBid,DBpw 작성
		String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";
		String dbUser = "root";
		String dbPass = "java0000";
		connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
		System.out.println("DB연결");
		statement = connection.prepareStatement("DELETE FROM rapper WHERE rapper_id=?");
			statement.setInt(1,rapperId);
			statement.executeUpdate();
	
} catch (ClassNotFoundException e) {
	e.printStackTrace();
} catch (SQLException e) {
	e.printStackTrace();
} finally {
	if (statement != null) try {statement.close();} catch (SQLException ex) {}
	if (connection != null) try {connection.close();} catch (SQLException ex) {}
}
}


	
	
	public void insertRapperList(Rapper rapper) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("드라이버로딩완료");
			//DB연결시작:포트번호,ip주소,DB명,DBid,DBpw 작성
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println("DB연결");
			
			statement = connection.prepareStatement("INSERT INTO rapper VALUES (?, ?, ?)");
			statement.setInt(1,  rapper.getRapperId());
			statement.setString(2, rapper.getRapperName());
			statement.setInt(3, rapper.getRapperAge());
			statement.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (statement != null) try {statement.close();} catch (SQLException ex) {}
			if (connection != null) try {connection.close();} catch (SQLException ex) {}
		}
		}


	private String rapperName() {
		// TODO Auto-generated method stub
		return null;
	}


	public ArrayList<Rapper> selectRapperList1() {
		ArrayList<Rapper> list = new ArrayList<Rapper>();
		PreparedStatement pstmt = null;//이부분을 잘 모르는데 잘 모르는건 심각한거겠지? 방법 자체는 오류나는 거 클릭해서 수정하는걸로 알고있다.
		
		Connection conn = null;//초기화시킨다.
		
		ResultSet rs = null;
		
		try {
			
			//드라이버 로딩 시작
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("드라이버로딩완료");
			//DB연결시작:포트번호,ip주소,DB명,DBid,DBpw 작성
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println("db연결완료");
			pstmt = conn.prepareStatement("select rapper_id as RapperId,rapper_name as RapperName,rapper_age as RapperAge from rapper");
			//select 쿼리문에서  id,name,age를 불러오는 쿼리문써줌 일단 선생님이 수정을 이렇게 해야 RapperId라고 쓸 수 있다고 들었다 내가 잘못들은게 아니라면..
			System.out.println(pstmt+"<---pstmt");
			
			rs=pstmt.executeQuery();
			System.out.println("쿼리실행완료");
			
			while(rs.next()) {//반복문의 일종인 whil문 사용 조건이 false 가 될 떄 까지 반복한다. 아까 rs를 썻다 안썻다 conn을썻다가 connection을썻다 해서 틀렸다.
				//rs ,conn으로 줄였으면 줄인거로만 통일해서 쓰자.
				//선생님의 설명을듣고 while 문 밖에 있던 것을 아래로 옮김.
				Rapper rapper = new Rapper();
				rapper.setRapperId(rs.getInt("RapperId"));
				rapper.setRapperName(rs.getString("RapperName"));
				rapper.setRapperAge(rs.getInt("RapperAge"));
				list.add(rapper);//레퍼 리스트를 리스트에 추가해준다. 여기서 rapper 을 왜 new Rapper 로 하는지 모르겠다.
				//Rapper rapper = new Rapper 하면 오류가 떴던것으로 기억한다.
				
			}
			
		
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}finally{
			//객체 종료(close)// 가장 마지막에 열린 순서로 닫아준다. 아까 순서 틀려서 오류났다.
			if (rs != null) try { rs.close(); } catch(SQLException e) {}			
			if (pstmt != null) try {pstmt.close();}catch(SQLException e) {}
			if (conn != null) try { conn.close(); } catch(SQLException e) {}
		}
		
		return list;//리스트 종료
	
		}
		
		 
	}
	

