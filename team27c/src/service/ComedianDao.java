//�Ӱ���
package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ComedianDao {
	
	public ArrayList<Comedian> selectComedianList() { //ArrayList�� �޼ҵ�� selectComedianList�� �������ش�.
		ArrayList<Comedian> arrlist = new ArrayList<Comedian>();//��ü���������� �������ش�.
		
		
		//finally������ close�� �����ϵ��� �Ѵ�.
		PreparedStatement preparedStatement = null;  // PreparedStatement ��ü�� ���� ������ ���Ǵ� query�� �̸� ������ ��Ŵ. �ʱⰪ�� null
		Connection connection = null;  // Connection ��ü�� �ڹٸ� DB�� ������ �� �ְ� ���ش�. �ʱⰪ�� null
		ResultSet resultset = null;  // ResultSet : �ѹ��� �� �྿ �����ϴ� ���Ǿ��� ���. �ʱⰪ�� null
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");//����̹� �ε� ����
			
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";//DB�������:��Ʈ��ȣ,ip�ּ�,DB��,DBid,DBpw �ۼ�
			String dbUser = "root";
			String dbPass = "java0000";
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);//DB������ ��� connection���� �޴´�.
			
			//���� ������ ���� ��ü���� ����, ���̵�,�̸�, ���̸� ��ȸ�Ѵ�.
			preparedStatement = connection.prepareStatement("SELECT comedian_id as comedianId, comedian_name as comedianName, comedian_age as comedianAge from comedian");//as,ū����ǥ ��������(�Ұ����Ҽ��ִ�)
			//������ �����Ѵ�.
			resultset = preparedStatement.executeQuery();
			
						
			//while�� : Ư�� ������ ������ �� ���� �ݺ��Ѵ�.  
			while(resultset.next()) {
				Comedian comedian = new Comedian();
				comedian.setComedianId(resultset.getInt("comedianId")); //get �κ��� Comedian.java�� private�� ���������Ѵ�, 
				comedian.setComedianName(resultset.getString("comedianName"));
				comedian.setComedianAge(resultset.getInt("comedianAgd"));
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


