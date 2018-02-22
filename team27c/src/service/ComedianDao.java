//team27c �Ӱ���
package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ComedianDao {
	
	//finally������ close�� �����ϵ��� �Ѵ�.
	PreparedStatement preparedstatement = null;  // PreparedStatement ��ü�� ���� ������ ���Ǵ� query�� �̸� ������ ��Ŵ. �ʱⰪ�� null
	Connection connection = null;  // Connection ��ü�� �ڹٸ� DB�� ������ �� �ְ� ���ش�. �ʱⰪ�� null
	ResultSet resultset = null;  // ResultSet : �ѹ��� �� �྿ �����ϴ� ���Ǿ��� ���. �ʱⰪ�� null
	
	@SuppressWarnings("null")
	public ArrayList<Comedian> selectComedianList() { //ArrayList�� �޼ҵ�� selectComedianList�� �������ش�.
		ArrayList<Comedian> arraylist = new ArrayList<Comedian>();//��ü���������� �������ش�.
		
		try {
			Class.forName("com.mysql.jdbc.Driver");//����̹� �ε� ����
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" + "useUnicode=true&characterEncoding=euckr";//DB�������:��Ʈ��ȣ,ip�ּ�,DB��,DBid,DBpw �ۼ�
			String dbUser = "root";
			String dbPass = "java0000";
			connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);//DB������ ��� connection���� �޴´�.
			
			//���� ������ ���� ��ü���� ����, ���̵�,�̸�, ���̸� ��ȸ�Ѵ�.
			preparedstatement = connection.prepareStatement("SELECT comedian_id as comedianId, comedian_name as comedianName, comedian_age as comedianAge from comedian");//as,ū����ǥ ��������(�Ұ����Ҽ��ִ�)
			//������ �����Ѵ�.
			resultset = preparedstatement.executeQuery();
			
						
			/*while�� : Ư�� ������ ������ �� ���� �ݺ��ϴ� ���ҷ�, ������ DB������ ���پ� �о���δ�.
			 * while���� ����Ǹ� ��ü�� �����Ǿ� resultset.next()�޽��带 �̿��Ͽ� �о�� ������ �������ش�.
			 * ���������ڰ� private�̹Ƿ� ���͸޼ҵ带 ���ؼ� ������ �����ϴ�. ���õ� ���� arrlist.add(comedian)�� ���, �ٽ� ArrayList�� ����.*/
			while(resultset.next()) {
				Comedian comedian = new Comedian();
				comedian.setComedianId(resultset.getInt("comedianId")); //get �κ��� Comedian.java�� private�� ���������Ѵ�, 
				comedian.setComedianName(resultset.getString("comedianName"));
				comedian.setComedianAge(resultset.getInt("comedianAge"));
				arraylist.add(comedian);
			}
			for(Comedian s: arraylist) { //for���� �̿��� list�� ���� �ߴ�� ������ Ȯ�����ش�.
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
			if(preparedstatement == null) try {preparedstatement.close();} catch(SQLException ex) {}
			if(connection == null) try {connection.close();} catch(SQLException ex) {}
		}
		return arraylist;
	
		}

	
	
	public void insertComedianrList(Comedian comedian) {
		try {	
				Class.forName("com.mysql.jdbc.Driver"); //����̹��ε�����
				String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?useUnicode=true&characterEncoding=euckr";
				String dbUser = "root";
				String dbPass = "java0000";
				connection = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
				System.out.println("DB����");
				/*connection��ü���������� �ּҸ� ã�ư�  prepareStatement�޼��带 �������ְ�, ���������� �غ��Ѵ�.
				 *�������� ����ǥ�ڸ��� get�޼��带 ������ �����ؿ� �����͸� ������� prepareStatement��ü���������� �ּҸ� ã�ư�
				 *set�޼��带 �̿��� �Է����ְ�, �������ش�.*/
				preparedstatement = connection.prepareStatement("INSERT INTO comedian VALUES (?, ?, ?)");
				preparedstatement.setInt(1, comedian.getComedianId());
				preparedstatement.setString(2, comedian.getComedianName());
				preparedstatement.setInt(3, comedian.getComedianAge());
				preparedstatement.executeUpdate();
		
		// �ݾ��ش�.		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (preparedstatement != null) try {preparedstatement.close();} catch (SQLException ex) {}
			if (connection != null) try {connection.close();} catch (SQLException ex) {}
		}
	}
	
	}
	
	
