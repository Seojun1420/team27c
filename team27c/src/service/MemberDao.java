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
			System.out.println("����̹��ε�����");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println("��񿬰Ἲ��");
			statement = connection.prepareStatement("SELECT * FROM member WHERE member_id=?");
			System.out.println("�����غ�");
			statement.setString(1, member.getMember_id());
			System.out.println(statement+"<--��������");
			resultSet = statement.executeQuery();
			System.out.println("��������");
			resultSet.next();
			if(member.getMember_id().equals(resultSet.getString("member_id"))) {
				System.out.println("���̵���ġ");
				if(member.getMember_pw().equals(resultSet.getString("member_pw"))) {
					System.out.println("��й�ȣ��ġ");
					result = 1;
				}else {
					System.out.println("��й�ȣ����ġ");
					result = 2;
				}
			}else {
				System.out.println("���̵����ġ");
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
