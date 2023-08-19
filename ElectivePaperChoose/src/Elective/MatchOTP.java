package Elective;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;



public class MatchOTP {
	public boolean open(String a,String b) {
		boolean ans=false;
		try{
			Connection con = Conn.getCon();
			Statement st = con.createStatement();
			String q = "select *from mailsend where otp='"+a+"'";
			
			ResultSet rs = st.executeQuery(q);
			if(rs.next()){
				
				String mail = rs.getString("mail");
				String otp = rs.getString("otp");
				if(b.equals("Faculty Advisor")) {
					String qr = "select *from userfa where id='"+mail+"'";
					ResultSet r = st.executeQuery(qr);
					if(r.next()) {
						String mail2 = r.getString("id");
						System.out.println(mail+"  "+mail2+" "+otp+" "+a);
						if(a.equalsIgnoreCase(otp) && mail.equalsIgnoreCase(mail2)) {
							ans = true;
						}
					}
				
				}else if(b.equals("Student")) {
					String qr = "select *from student_info where mail='"+mail+"'";
					ResultSet r = st.executeQuery(qr);
					if(r.next()) {
						String reg = r.getString("reg");
						
						String qr1 = "select *from userstudent where id='"+reg+"'";
						ResultSet r1 = st.executeQuery(qr1);
						
						if(r1.next()) {
							String reg1=r1.getString("id");
							
							if(a.equalsIgnoreCase(otp) && reg.equalsIgnoreCase(reg1)) {
								ans = true;
							}
							
						}
					}
				}
			}
			
		}catch(Exception e){
			ans = false;
		} 
		return ans;
	}

}
