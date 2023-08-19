package Elective;
import java.sql.*;
//import java.util.*;

public class UserLogin {

	public boolean openFA(String a ,String b) {
		boolean ans=false;
		try{
			Connection con = Conn.getCon();
			Statement st = con.createStatement();
			String q = "select *from userfa where id='"+a+"' and pass='"+b+"'";
			ResultSet rs = st.executeQuery(q);
			if(rs.next()){
				ans = true;
			}
		}catch(Exception e){
			ans = false;
		} 
		return ans;
	}
	public boolean openStudent(String a ,String b) {
		boolean ans=false;
		try{
			Connection con = Conn.getCon();
			Statement st = con.createStatement();
			String q = "select *from userstudent where id='"+a+"' and pass='"+b+"'";
			ResultSet rs = st.executeQuery(q);
			if(rs.next()){
				ans = true;
			}
		}catch(Exception e){
			ans = false;
		} 
		return ans;
	}
}
