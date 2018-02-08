package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import service.Singer;


public class SingerDao {
	
	public static void main(String[] agrs) {
		
	}
		
		public ArrayList<Singer> selectSingerList() throws ClassNotFoundException, SQLException{
			
			ArrayList<Singer> arrSinger = new ArrayList<Singer>();
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
		
			Class.forName("com.mysql.jdbc.Driver");
			String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" +
					"useUnicode=true&characterEncoding=euckr";
			String dbUser = "root";
			String dbPass = "java0000";
			conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
			
			pstmt = conn.prepareStatement("SELECT * FROM Singer");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Singer singer = new Singer();
				singer.setSinger_Id(rs.getInt("Singer_Id"));
				singer.setSinger_Name(rs.getString("Singer_Name"));
				singer.setSinger_Age(rs.getInt("Singer_Age"));
				arrSinger.add(singer);
			}
			
			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
			
			return arrSinger;
		}
	}

