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
			
						
			/*while�� : Ư�� ������ ������ �� ���� �ݺ��ϴ� ���ҷ�, ������ DB������ ���پ� �о���δ�.
			 * while���� ����Ǹ� ��ü�� �����Ǿ� resultset.next()�޽��带 �̿��Ͽ� �о�� ������ �������ش�.
			 * ���������ڰ� private�̹Ƿ� ���͸޼ҵ带 ���ؼ� ������ �����ϴ�. ���õ� ���� arrlist.add(comedian)�� ���, �ٽ� ArrayList�� ����.*/
			while(resultset.next()) {
				Comedian comedian = new Comedian();
				comedian.setComedianId(resultset.getInt("comedianId")); //get �κ��� Comedian.java�� private�� ���������Ѵ�, 
				comedian.setComedianName(resultset.getString("comedianName"));
				comedian.setComedianAge(resultset.getInt("comedianAge"));
				arrlist.add(comedian);
			}
			for(Comedian s: arrlist) { //for���� �̿��� list�� ���� �ߴ�� ������ Ȯ�����ش�.
				System.out.println(s.getComedianId());
				System.out.println(s.getComedianName());
				System.out.println(s.getComedianAge());
		
			}
		/*try~catch����(����ó���ϴ�) :���� �ȿ��� ����(����ó��)�� ������ Ȯ���� �� �ִ�.
		 * try������ {}�� ����Ͽ� �� �ȿ� ������ ���� �ҽ��� ��Ƶθ�, try���� ������ �����ϴ� ������ �Ѵ�.
		 * ���� try���� ������ �����ߴٸ�, �̷��� ���õ� ������ catch�� �Ѱܼ� ����ó��(����)�� ���ְ� �ȴ�.
		 * �� '������ ����ó���� �Ѵ�'��� �Ѵ�.*/
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


