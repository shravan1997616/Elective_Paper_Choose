package Elective;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql:///elective","root","");
			return con;
		}catch(Exception e) {
			System.out.println(e);
			return null;
		}
		
	}
}
