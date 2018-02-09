//team27c ������

package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RapperDao {


	public ArrayList<Rapper> selectRapperList() throws SQLException, ClassNotFoundException {
		ArrayList<Rapper> list = new ArrayList<Rapper>();
		PreparedStatement pstmt = null;//�̺κ��� �� �𸣴µ� �� �𸣴°� �ɰ��ѰŰ���? ��� ��ü�� �������� �� Ŭ���ؼ� �����ϴ°ɷ� �˰��ִ�.
		
		Connection conn = null;//�ʱ�ȭ��Ų��.
		
		ResultSet rs = null;
		
		try {
			//����̹� �ε� ����
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("����̹��ε��Ϸ�");
			//DB�������:��Ʈ��ȣ,ip�ּ�,DB��,DBid,DBpw �ۼ�
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			System.out.println("db����Ϸ�");
			pstmt = conn.prepareStatement("select rapper_id as RapperId,rapper_name as RapperName,rapper_age as RapperAge from rapper");
			//select ����������  id,name,age�� �ҷ����� ���������� �ϴ� �������� ������ �̷��� �ؾ� RapperId��� �� �� �ִٰ� ����� ���� �߸������� �ƴ϶��..
			System.out.println(pstmt+"<---pstmt");
			
			rs=pstmt.executeQuery();
			System.out.println("��������Ϸ�");
			
			while(rs.next()) {//�ݺ����� ������ whil�� ��� ������ false �� �� �� ���� �ݺ��Ѵ�. �Ʊ� rs�� ���� �ț��� conn�����ٰ� connection������ �ؼ� Ʋ�ȴ�.
				//rs ,conn���� �ٿ����� ���ΰŷθ� �����ؼ� ����.
				Rapper rapper;//�������� ��������� while �� �ۿ� �ִ� ���� �Ʒ��� �ű�.
				rapper = new Rapper();
				rapper.setRapperId(rs.getInt("RapperId"));
				rapper.setRapperName(rs.getString("RapperName"));
				rapper.setRapperAge(rs.getInt("RapperAge"));
				list.add(rapper);//���� ����Ʈ�� ����Ʈ�� �߰����ش�. ���⼭ rapper �� �� new Rapper �� �ϴ��� �𸣰ڴ�.
				//Rapper rapper = new Rapper �ϸ� ������ ���������� ����Ѵ�.
				
			}
		
		}finally{
			//��ü ����(close)// ���� �������� ���� ������ �ݾ��ش�. �Ʊ� ���� Ʋ���� ��������.
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}			
			if (pstmt != null) try {pstmt.close();}catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		}
		
		return list;//����Ʈ ����
	
		}
		
		 
	}
	

