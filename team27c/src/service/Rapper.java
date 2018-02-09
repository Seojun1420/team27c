package service;

/*import java.sql.Connection;
import java.util.ArrayList;
*/
public class Rapper {
	/*public Connection conn =null;
	String jdbcDriver = "jdbc:mysql://localhost:3306/mysql;jjdev?" +
			"useUnicode=true&characterEncoding=euckr";
	String dbUser = "root";
	String dbPass = "java0000";
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
	public void RapperDao() ArrayList selectRapperList() {
		return new ArrayList<>();*/
	/*
	}
	*/
/*	public ArrayList<Rapper> */
	private String RapperId;
	private String RapperName;
	private String RapperAge;
	public String getRapperId() {
		return RapperId;
	}
	public void setRapperId(String rapperId) {
		RapperId = rapperId;
	}
	public String getRapperName() {
		return RapperName;
	}
	public void setRapperName(String rapperName) {
		RapperName = rapperName;
	}
	public String getRapperAge() {
		return RapperAge;
	}
	public void setRapperAge(String rapperAge) {
		RapperAge = rapperAge;
	}
}
