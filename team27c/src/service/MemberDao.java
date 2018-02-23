package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDao {
	Connection connection = null;
	PreparedStatement statement = null;
	ResultSet resultSet = null;
	
	public int loginMember(Member member) {
		int result = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("드라이버로딩성공");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println("디비연결성공");
			statement = connection.prepareStatement("SELECT * FROM member WHERE member_id=?");
			System.out.println("쿼리준비");
			statement.setString(1, member.getMember_id());
			System.out.println(statement+"<--쿼리셋팅");
			resultSet = statement.executeQuery();
			System.out.println("쿼리실행");
			resultSet.next();
			if(member.getMember_id().equals(resultSet.getString("member_id"))) {
				System.out.println("아이디일치");
				if(member.getMember_pw().equals(resultSet.getString("member_pw"))) {
					System.out.println("비밀번호일치");
					result = 1;
				}else {
					System.out.println("비밀번호불일치");
					result = 2;
				}
			}else {
				System.out.println("아이디불일치");
				result = 3;
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
		}
		
		
		return result;
	}

}
