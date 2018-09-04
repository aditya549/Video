package adityadao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import userbean.userbean;

public class logindao {

	public static void login(userbean user) {
		// TODO Auto-generated method stub
		try {
	
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "aditya", "aditya");
			PreparedStatement ps=con.prepareStatement("select * from video where username=? and password=?");

			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ResultSet rs=ps.executeQuery();
			boolean stat=rs.next();
			if(stat) {
				user.setValid(true);
				System.out.println("logged in");
				user.setUsername(rs.getString("username"));
				user.setEmail(rs.getString("email"));
				
			}
			else {
				user.setValid(false);
				System.out.println("not logged in");
			}
		}catch(Exception e) {
			System.out.println(e);
		}

	}

}
